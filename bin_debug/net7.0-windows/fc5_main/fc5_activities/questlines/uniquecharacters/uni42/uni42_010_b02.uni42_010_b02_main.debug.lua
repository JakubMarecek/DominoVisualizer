LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni42/uni42_010_b02.domino
-- User graph: UNI42_010_B02_main
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="fDistanceFail" Type="Core|float" />
    <DataIn Name="fDistanceWarning" Type="Core|float" />
    <DataIn Name="FollowTarget" Type="Nomad|entity{}" />
    <DataIn Name="oWarningMsg" Type="Nomad|oasis" />
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Follow_NpcVehicle.Brick_Follow_NPC_Vehicle_v6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NpcDestinationCheckListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ForceExitVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MovementListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/AllowAutoDrive_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntitiesOutRange.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehiclePositionLockModifier.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1610730874.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4005098475.bnk]], "CSoundResource");
        cboxRes:LoadResource([[997332065.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2791052978.bnk]], "CSoundResource");
        cboxRes:LoadResource([[632510140.bnk]], "CSoundResource");
        cboxRes:LoadResource([[500088707.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3955467122.bnk]], "CSoundResource");
        cboxRes:LoadResource([[843120210.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1246416004.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2529478452.bnk]], "CSoundResource");
        cboxRes:LoadResource([[155942083.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1789098607.bnk]], "CSoundResource");
        cboxRes:LoadResource([[288186606.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2223229897.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1926191068.bnk]], "CSoundResource");
        cboxRes:LoadResource([[532129301.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3086316816.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1416536216.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI42/UNI42_010_B02.UNI42_010_B02_main.debug.lua")] = {
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
            [0] = {
                name = "Target_TooFar",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "fDistanceFail",
                type = "float",
            },
            [1] = {
                name = "fDistanceWarning",
                type = "float",
            },
            [2] = {
                name = "FollowTarget",
                type = "entity",
            },
            [3] = {
                name = "oWarningMsg",
                type = "oasis",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Follow_NpcVehicle.Brick_Follow_NPC_Vehicle_v6.debug.lua")] = {
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
                name = "Target_KilledDestroyed",
                delayed = false,
            },
            [4] = {
                name = "Target_TooFar",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "fDistanceFail",
                type = "float",
            },
            [3] = {
                name = "fDistanceSuccess",
                type = "float",
            },
            [4] = {
                name = "fDistanceWarning",
                type = "float",
            },
            [5] = {
                name = "FollowTarget",
                type = "entity",
            },
            [6] = {
                name = "IsPersistentCharacter",
                type = "bool",
            },
            [7] = {
                name = "oObjective",
                type = "oasis",
            },
            [8] = {
                name = "opt_Detection_Group",
                type = "group",
            },
            [9] = {
                name = "opt_Target_MobileMarker",
                type = "entity",
            },
            [10] = {
                name = "oWarningMsg",
                type = "oasis",
            },
        },
        dataInCount = 11,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Aborted",
                delayed = true,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "Finished",
                delayed = true,
            },
            [3] = {
                name = "Paused",
                delayed = true,
            },
            [4] = {
                name = "Resumed",
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
                name = "eNPC",
                type = "entity",
            },
            [1] = {
                name = "Interrupt_STP_on_Talk",
                type = "bool",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "eMobileMarker",
                type = "entity",
            },
            [2] = {
                name = "eNPC",
                type = "entity",
            },
            [3] = {
                name = "fHeight",
                type = "float",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
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
            [3] = {
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "User",
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
    metadataTable[GetPathID("Domino/System/AI/NpcDestinationCheckListener.lua")] = {
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
                name = "Reachable",
                delayed = true,
            },
            [3] = {
                name = "Unreachable",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Agent",
                type = "entity",
            },
            [1] = {
                name = "AutoDisable",
                type = "bool",
            },
            [2] = {
                name = "Destination",
                type = "entity",
            },
            [3] = {
                name = "DestinationToleranceDistance",
                type = "float",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")] = {
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
                name = "FromGroup",
                type = "group",
            },
            [1] = {
                name = "ToGroup",
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
    metadataTable[GetPathID("Domino/System/GetHealthState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Critical",
                delayed = false,
            },
            [1] = {
                name = "Dead",
                delayed = false,
            },
            [2] = {
                name = "Down",
                delayed = false,
            },
            [3] = {
                name = "Healthy",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Health",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GetPawnVehicleInfo.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InVehicle",
                delayed = false,
            },
            [1] = {
                name = "NotInVehicle",
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
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "seatType",
                type = "string",
            },
            [2] = {
                name = "vehicle",
                type = "entity",
            },
            [3] = {
                name = "vehicleType",
                type = "string",
            },
        },
        dataOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/MovementListener_v2.lua")] = {
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
                name = "Idle",
                delayed = true,
            },
            [3] = {
                name = "Moving",
                delayed = true,
            },
            [4] = {
                name = "pitch_Changed",
                delayed = true,
            },
            [5] = {
                name = "roll_Changed",
                delayed = true,
            },
            [6] = {
                name = "x_Changed",
                delayed = true,
            },
            [7] = {
                name = "y_Changed",
                delayed = true,
            },
            [8] = {
                name = "yaw_Changed",
                delayed = true,
            },
            [9] = {
                name = "z_Changed",
                delayed = true,
            },
        },
        controlOutCount = 10,
        dataIn = {
            [0] = {
                name = "angleThreshold",
                type = "float",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "entityGroup",
                type = "group",
            },
            [3] = {
                name = "movingThreshold",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "instigator",
                type = "entity",
            },
            [1] = {
                name = "isMoving",
                type = "bool",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Allow",
            },
            [1] = {
                name = "DoNotAllow",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnAllow",
                delayed = false,
            },
            [1] = {
                name = "OnDoNotAllow",
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
    metadataTable[GetPathID("Domino/System/RandomFloat_v2.lua")] = {
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
                name = "Max",
                type = "float",
            },
            [1] = {
                name = "Min",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/VehiclePositionLockModifier.lua")] = {
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
                name = "VehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    self._name = "UNI42_010_B02_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main";
    self.Target_TooFar = DummyFunction;
    self.Car = nil;
    self.Player_Group = nil;
    self.Reloaded = false;
    self.SeatCheck = 0;
    self.var_Success = false;
    self.VehicleCount = 0;
    self.VehicleHealth = 0;
    self.VehicleMaxHealth = 0;
    self.I_shouldnt_need_this_stupid_variable = nil;
    self.Host = nil;
    self.Client = nil;
    self.Player_Added = nil;
    self.StoppedCar = false;
    self.IsCarMoving = false;
    self.GFH_Junior = nil;
    self.bDriveCompleted = false;
    self.eClientVehicle = nil;
    self.box_PlayDialog_v6_81 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|33162483");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_81_Finished,
    });
    self.box_OnceOnly_v3_288 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_288;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_288");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|63190080");
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
                [0] = self.f_box_OnceOnly_v3_288_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_233 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|78196054");
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
                [0] = self.f_box_OnceOnly_v3_233_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_168 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|80196153");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_168_TimeElapsed,
    });
    self.box_PlayDialog_v6_165 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|82266233");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_165_Finished,
    });
    self.box_OnceOnly_v3_201 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|102638035");
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
                [0] = self.f_box_OnceOnly_v3_201_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_210 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|191885127");
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
        [0] = self.f_box_MultipleOR_210_Out,
    });
    self.box_OnceOnly_v3_116 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|197417098");
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
                [0] = self.f_box_OnceOnly_v3_116_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_167 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|199242793");
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
        [0] = self.f_box_MultipleOR_167_Out,
    });
    self.box_Delay_v5_130 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|231045315");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_130_TimeElapsed,
    });
    self.box_MultipleOR_136 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|295272964");
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
        [0] = self.f_box_MultipleOR_136_Out,
    });
    self.box_ContextualActionListener_184 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|323710997");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_184_End,
    });
    self.box_MultipleOR_255 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_255");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|326159396");
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
        [0] = self.f_box_MultipleOR_255_Out,
    });
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|355080472");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
    });
    self.box_Delay_v5_162 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|356164274");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_162_TimeElapsed,
    });
    self.box_ExitZoneWarningListener_v3_107 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|381447625");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_107_FailingZoneEntered,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|386568758");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_Delay_v5_148 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|395559370");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_148_TimeElapsed,
    });
    self.box_MultipleOR_180 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|400623483");
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
        [0] = self.f_box_MultipleOR_180_Out,
    });
    self.box_CoopActivePlayers_37 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|422489986");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_37_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_37_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_37_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_37_TwoPlayers,
    });
    self.box_OnceOnly_v3_237 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|430078835");
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
                [0] = self.f_box_OnceOnly_v3_237_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_134 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|436147874");
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
                [0] = self.f_box_OnceOnly_v3_134_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_113 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|449650340");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_113_TimeElapsed,
    });
    self.box_PlayDialog_v6_89 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|478097509");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_89_Finished,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|487830661");
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
    self.box_OnceOnly_v3_220 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|493608482");
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
                [0] = self.f_box_OnceOnly_v3_220_Out_0,
            },
            count = 2,
        },
    });
    self.box_CharacterLoadedIdListener_36 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|506593516");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_36_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_36_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_36_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_36_LoadedIdReceived,
    });
    self.box_Delay_v5_230 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|514230957");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_230_TimeElapsed,
    });
    self.box_PlayDialog_v6_152 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|517084155");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_152_Finished,
    });
    self.box_Brick_NarrativeQuickCinema_V4_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V4_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V4_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|517263627");
    l0:SetConnections({
        -- Aborted,
        [0] = self.f_box_Brick_NarrativeQuickCinema_V4_12_Aborted,
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V4_12_Finished,
        -- Paused,
        [3] = self.f_box_Brick_NarrativeQuickCinema_V4_12_Paused,
        -- Resumed,
        [4] = self.f_box_Brick_NarrativeQuickCinema_V4_12_Resumed,
    });
    self.box_PlayDialog_v6_211 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|518682474");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_211_Finished,
    });
    self.box_Gate_v3_240 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|537420260");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_240_Out,
    });
    self.box_OnceOnly_v3_241 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|589689399");
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
                [0] = self.f_box_OnceOnly_v3_241_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_238 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|594119215");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_238_Out,
    });
    self.box_SoundModifier_v2_229 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|618965746");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_229_Started,
    });
    self.box_VehicleListener_v3_28 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|637708847");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_28_OnSit,
    });
    self.box_Gate_v3_202 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|638107579");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_202_Out,
    });
    self.box_ProximityTrigger_v2_35 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|643821202");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_35_Enter,
    });
    self.box_GroupSizeListener_v5_298 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_298;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_298");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|653726423");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_298_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_298_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_298_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_298_MemberRemoved,
    });
    self.box_EntityStatusListener_58 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|661708780");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_58_Loaded,
    });
    self.box_Delay_v5_225 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|663684367");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_225_TimeElapsed,
    });
    self.box_Gate_v3_193 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|693537537");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_193_Out,
    });
    self.box_EntityStatusListener_154 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|711100599");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_154_Loaded,
    });
    self.box_Delay_v5_80 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|716301265");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_80_TimeElapsed,
    });
    self.box_OnceOnly_v3_60 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|722521676");
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
                [0] = self.f_box_OnceOnly_v3_60_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|723393068");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_PlayDialog_v6_149 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|741208543");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_164 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|763550334");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_164_Finished,
    });
    self.box_Gate_v3_125 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|764329576");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_125_Out,
    });
    self.box_OnceOnly_v3_205 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|772597975");
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
                [0] = self.f_box_OnceOnly_v3_205_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_96 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|780998229");
    l0:SetConnections({
    });
    self.box_Delay_v5_212 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|786293872");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_212_TimeElapsed,
    });
    self.box_OnceOnly_v3_75 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|815206614");
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
                [0] = self.f_box_OnceOnly_v3_75_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_223 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|815395860");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_223_TimeElapsed,
    });
    self.box_MultipleOR_253 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_253");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|821932267");
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
        [0] = self.f_box_MultipleOR_253_Out,
    });
    self.box_Delay_v5_224 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|827865740");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_224_TimeElapsed,
    });
    self.box_OnceOnly_v3_56 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|850366767");
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
                [0] = self.f_box_OnceOnly_v3_56_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_151 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|857801876");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_151_Out,
    });
    self.box_Gate_v3_234 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|882063130");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_234_Out,
    });
    self.box_RemoveEntity_v2_297 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_297;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_297");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|900575966");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_297_Out,
    });
    self.box_PlayDialog_v6_68 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|903398578");
    l0:SetConnections({
    });
    self.box_SpawnAI_155 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|910437713");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_291 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_291;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_291");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|964429952");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_291_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_291_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_291_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_291_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_291_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_291_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_291_Use,
    });
    self.box_OnceOnly_v3_183 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|983929232");
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
                [0] = self.f_box_OnceOnly_v3_183_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_21 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|987159013");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_21_Finished,
    });
    self.box_Delay_v5_272 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_272;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_272");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|995868510");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_272_TimeElapsed,
    });
    self.box_OnceOnly_v3_195 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1000065636");
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
    self.box_MultipleOR_170 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1000714312");
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
        [0] = self.f_box_MultipleOR_170_Out,
    });
    self.box_EntityStatusListener_90 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1000885007");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_90_Loaded,
    });
    self.box_OnceOnly_v3_199 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1014423399");
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
                [0] = self.f_box_OnceOnly_v3_199_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_176 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1028091668");
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
        [0] = self.f_box_MultipleOR_176_Out,
    });
    self.box_Delay_v5_157 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1033851257");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_157_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_85 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1053223044");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_85_Enter,
    });
    self.box_OnceOnly_v3_197 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1078356548");
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
                [0] = self.f_box_OnceOnly_v3_197_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1114802518");
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
        [0] = self.f_box_MultipleOR_23_Out,
    });
    self.box_PlayDialog_v6_156 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1145576433");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_156_Finished,
    });
    self.box_MultipleOR_118 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1160981242");
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
        [0] = self.f_box_MultipleOR_118_Out,
    });
    self.box_OnceOnly_v3_228 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1179976316");
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
                [0] = self.f_box_OnceOnly_v3_228_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_294 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_294;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_294");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1186592069");
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
        [0] = self.f_box_MultipleOR_294_Out,
    });
    self.box_OnceOnly_v3_239 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1195944726");
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
                [0] = self.f_box_OnceOnly_v3_239_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleAND_v2_189 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1200412182");
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
        [0] = self.f_box_MultipleAND_v2_189_Out,
    });
    self.box_Brick_Follow_NPC_Vehicle_v6_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Follow_NpcVehicle.Brick_Follow_NPC_Vehicle_v6.debug.lua");
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Follow_NPC_Vehicle_v6_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1207896261");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Brick_Follow_NPC_Vehicle_v6_8_Started,
        -- Success,
        [2] = self.f_box_Brick_Follow_NPC_Vehicle_v6_8_Success,
        -- Target_TooFar,
        [4] = self.f_box_Brick_Follow_NPC_Vehicle_v6_8_Target_TooFar,
    });
    self.box_HealthListener_v6_252 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_252;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_252");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1223359222");
    l0:SetConnections({
        -- Revived,
        [7] = self.f_box_HealthListener_v6_252_Revived,
    });
    self.box_PlayDialog_v6_221 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1239602368");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_221_Finished,
    });
    self.box_EntityStatusListener_188 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1240501461");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_188_Enabled,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_188_Unloaded,
    });
    self.box_MultipleOR_135 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1243869659");
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
        [0] = self.f_box_MultipleOR_135_Out,
    });
    self.box_PlayDialog_v6_163 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1245185591");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_163_Finished,
    });
    self.box_MultipleOR_57 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1286010661");
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
        [0] = self.f_box_MultipleOR_57_Out,
    });
    self.box_Delay_v5_145 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1299939278");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_145_TimeElapsed,
    });
    self.box_OnceOnly_v3_218 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1311242058");
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
    self.box_CoopActivePlayers_123 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1316495987");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_123_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_123_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_123_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_123_TwoPlayers,
    });
    self.box_SpawnAI_190 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1318599607");
    l0:SetConnections({
    });
    self.box_Delay_v5_86 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1319384045");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_86_TimeElapsed,
    });
    self.box_Gate_v3_196 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1326864146");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_196_Out,
    });
    self.box_Delay_v5_77 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1346069512");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_77_TimeElapsed,
    });
    self.box_Gate_v3_200 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1354401872");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_200_Out,
    });
    self.box_VehicleListener_v3_278 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_278");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1374649486");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_278_Enabled,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_278_OnStandUp,
    });
    self.box_ContextualActionListener_16 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1380191009");
    l0:SetConnections({
        -- Select,
        [7] = self.f_box_ContextualActionListener_16_Select,
    });
    self.box_MovementListener_v2_262 = cbox:CreateBox("Domino/System/MovementListener_v2.lua");
    l0 = self.box_MovementListener_v2_262;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MovementListener_v2_262");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1383687168");
    l0:SetConnections({
        -- Idle,
        [2] = self.f_box_MovementListener_v2_262_Idle,
    });
    self.box_Delay_v5_97 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1389501195");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_97_TimeElapsed,
    });
    self.box_Gate_v3_204 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1403243271");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_204_Out,
    });
    self.box_MultipleOR_182 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1406477716");
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
        [0] = self.f_box_MultipleOR_182_Out,
    });
    self.box_Switch_146 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1446465102");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
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
                [0] = self.f_box_Switch_146_Output_0,
                [1] = self.f_box_Switch_146_Output_1,
                [2] = self.f_box_Switch_146_Output_2,
            },
            count = 3,
        },
    });
    self.box_EntityStatusListener_84 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1474043542");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_84_Loaded,
    });
    self.box_MultipleOR_198 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1487494266");
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
        [0] = self.f_box_MultipleOR_198_Out,
    });
    self.box_Gate_v3_219 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1488789594");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_219_Out,
    });
    self.box_MultipleOR_258 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_258");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1494304215");
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
        [0] = self.f_box_MultipleOR_258_Out,
    });
    self.box_Delay_v5_126 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1516973483");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_126_TimeElapsed,
    });
    self.box_MultipleOR_161 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1520743159");
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
        [0] = self.f_box_MultipleOR_161_Out,
    });
    self.box_HealthListener_v6_119 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1525692212");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_119_Downed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_119_Revived,
    });
    self.box_PlayDialog_v6_33 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1537854252");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_33_Finished,
    });
    self.box_PlayDialog_v6_83 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1565263527");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_83_Finished,
    });
    self.box_EntityStatusListener_265 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_265;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_265");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1565635211");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_265_Loaded,
    });
    self.box_OnceOnly_v3_138 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1568654292");
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
                [0] = self.f_box_OnceOnly_v3_138_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_242 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_242;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_242");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1578856877");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_242_Out,
    });
    self.box_NpcDestinationCheckListener_9 = cbox:CreateBox("Domino/System/AI/NpcDestinationCheckListener.lua");
    l0 = self.box_NpcDestinationCheckListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NpcDestinationCheckListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1579561853");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_NpcDestinationCheckListener_9_Disabled,
        -- Enabled,
        [1] = self.f_box_NpcDestinationCheckListener_9_Enabled,
        -- Reachable,
        [2] = self.f_box_NpcDestinationCheckListener_9_Reachable,
        -- Unreachable,
        [3] = self.f_box_NpcDestinationCheckListener_9_Unreachable,
    });
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1581811376");
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
        [0] = self.f_box_MultipleOR_22_Out,
    });
    self.box_OnceOnly_v3_235 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1596982409");
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
                [0] = self.f_box_OnceOnly_v3_235_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_206 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1600716452");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_206_Out,
    });
    self.box_Gate_v3_178 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1609094222");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_178_Out,
    });
    self.box_VehicleListener_v3_247 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1614373421");
    l0:SetConnections({
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_247_OnAllSitting,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_247_OnSit,
    });
    self.box_Gate_v3_236 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1614835234");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_236_Out,
    });
    self.box_Delay_v5_127 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1617576487");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_127_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_92 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1660015158");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_92_Enter,
    });
    self.box_VehicleListener_v3_217 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1682856370");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_217_OnSit,
    });
    self.box_OnceOnly_v3_158 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1687952394");
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
                [0] = self.f_box_OnceOnly_v3_158_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_209 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1712050406");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_209_Loaded,
    });
    self.box_MovementListener_v2_120 = cbox:CreateBox("Domino/System/MovementListener_v2.lua");
    l0 = self.box_MovementListener_v2_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MovementListener_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1714608126");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_MovementListener_v2_120_Disabled,
        -- Enabled,
        [1] = self.f_box_MovementListener_v2_120_Enabled,
        -- Idle,
        [2] = self.f_box_MovementListener_v2_120_Idle,
        -- Moving,
        [3] = self.f_box_MovementListener_v2_120_Moving,
        -- pitch_Changed,
        [4] = self.f_box_MovementListener_v2_120_pitch_Changed,
        -- roll_Changed,
        [5] = self.f_box_MovementListener_v2_120_roll_Changed,
        -- x_Changed,
        [6] = self.f_box_MovementListener_v2_120_x_Changed,
        -- y_Changed,
        [7] = self.f_box_MovementListener_v2_120_y_Changed,
        -- yaw_Changed,
        [8] = self.f_box_MovementListener_v2_120_yaw_Changed,
        -- z_Changed,
        [9] = self.f_box_MovementListener_v2_120_z_Changed,
    });
    self.box_Delay_v5_143 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1718828185");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_143_TimeElapsed,
    });
    self.box_EntityStatusListener_102 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1738378281");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_102_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_102_Unloaded,
    });
    self.box_BindMarkerOverHead_v2_59 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
    l0 = self.box_BindMarkerOverHead_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1756904171");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BindMarkerOverHead_v2_59_Out,
    });
    self.box_VehicleDamageListener_v2_25 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1768156132");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_25_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_25_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_25_Disabled,
    });
    self.box_MultipleOR_254 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_254");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1777348180");
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
        [0] = self.f_box_MultipleOR_254_Out,
    });
    self.box_OnceOnly_v3_203 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1781797600");
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
    self.box_MultipleOR_277 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_277");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1785914222");
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
    self.box_OnceOnly_v3_63 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1790001430");
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
                [0] = self.f_box_OnceOnly_v3_63_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_4 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1793716824");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_4_Finished,
    });
    self.box_ProximityRadiusListener_v3_110 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1811508286");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_110_SomeoneNear,
    });
    self.box_PlayDialog_v6_76 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1811687321");
    l0:SetConnections({
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1831059538");
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
        [0] = self.f_box_MultipleOR_38_Out,
    });
    self.box_PlayDialog_v6_222 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1836224609");
    l0:SetConnections({
    });
    self.box_Delay_v5_290 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_290;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_290");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1836766219");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_290_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_290_TimeElapsed,
    });
    self.box_MultipleOR_55 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1844230639");
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
    self.box_Delay_v5_263 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_263;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_263");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1862685054");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_263_TimeElapsed,
    });
    self.box_OnceOnly_v3_194 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1873946799");
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
                [0] = self.f_box_OnceOnly_v3_194_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityRadiusListener_v3_40 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1896068489");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_40_SomeoneFar,
    });
    self.box_MultipleOR_214 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1900186716");
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
    self.box_Delay_v5_5 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1911742999");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_5_TimeElapsed,
    });
    self.box_PlayDialog_v6_52 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1929004631");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_52_Finished,
    });
    self.box_Delay_v5_99 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1931291465");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_99_TimeElapsed,
    });
    self.box_Switch_166 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1932337941");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Switch_166_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_166_Output_0,
                [1] = self.f_box_Switch_166_Output_1,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_142 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1932454876");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_142_Finished,
    });
    self.box_PlayDialog_v6_140 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1955208070");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_187 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1963661388");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_187_Loaded,
    });
    self.box_PlayDialog_v6_91 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1985999455");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_91_Finished,
    });
    self.box_MultipleOR_305 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_305;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_305");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2026296745");
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
        [0] = self.f_box_MultipleOR_305_Out,
    });
    self.box_HealthListener_v6_256 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_256;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_256");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2034660594");
    l0:SetConnections({
        -- Revived,
        [7] = self.f_box_HealthListener_v6_256_Revived,
    });
    self.box_VehicleListener_v3_49 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2118432531");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_49_Enabled,
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_49_OnAllSitting,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_49_OnStandUp,
    });
    self.box_Gate_v3_232 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2124210975");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_232_Out,
    });
    self.box_MultipleOR_169 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2124523748");
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
        [0] = self.f_box_MultipleOR_169_Out,
    });
    self.box_Delay_v5_144 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2125108416");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_144_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2133839372");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_MultipleOR_248 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_248");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2141986628");
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
        [0] = self.f_box_MultipleOR_248_Out,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2144561983");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_186();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|844367966", "844367966", "UNI42_010_B02_main", "In", "box_OutputOrder_v2_186.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_117();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|403023254", "403023254", "UNI42_010_B02_main", "OnLeaveZone", "box_Simple_Node_117.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_191_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_189();
    l0 = self.box_MultipleAND_v2_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1721431939", "1721431939", "UNI42_010_B02_main", "box_Simple_Node_191.Out", "box_MultipleAND_v2_189.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_188();
    l0 = self.box_EntityStatusListener_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1403249674", "1403249674", "UNI42_010_B02_main", "box_Simple_Node_31.Out", "box_EntityStatusListener_188.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_102();
    l0 = self.box_EntityStatusListener_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|785862432", "785862432", "UNI42_010_B02_main", "box_Simple_Node_67.Out", "box_EntityStatusListener_102.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ExitZoneWarningListener_v3_107();
    l0 = self.box_ExitZoneWarningListener_v3_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1761701699", "1761701699", "UNI42_010_B02_main", "box_Simple_Node_67.Out", "box_ExitZoneWarningListener_v3_107.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_106_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_BindMarkerOverHead_v2_59();
    l0 = self.box_BindMarkerOverHead_v2_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|454525884", "454525884", "UNI42_010_B02_main", "box_Simple_Node_106.Out", "box_BindMarkerOverHead_v2_59.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_243_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_238();
    l0 = self.box_Gate_v3_238;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1886688842", "1886688842", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_238.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_142();
    l0 = self.box_PlayDialog_v6_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|515510936", "515510936", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_142.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_222();
    l0 = self.box_PlayDialog_v6_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1827244939", "1827244939", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_222.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_83();
    l0 = self.box_PlayDialog_v6_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|895681684", "895681684", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_83.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_219();
    l0 = self.box_Gate_v3_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1953762056", "1953762056", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_219.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_33();
    l0 = self.box_PlayDialog_v6_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|646850385", "646850385", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_33.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_96();
    l0 = self.box_PlayDialog_v6_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|231606353", "231606353", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_96.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_4();
    l0 = self.box_PlayDialog_v6_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1356200149", "1356200149", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_4.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_232();
    l0 = self.box_Gate_v3_232;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|297831614", "297831614", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_232.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_152();
    l0 = self.box_PlayDialog_v6_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|9653495", "9653495", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_152.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_125();
    l0 = self.box_Gate_v3_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|922271460", "922271460", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_125.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_196();
    l0 = self.box_Gate_v3_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|438887518", "438887518", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_196.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_81();
    l0 = self.box_PlayDialog_v6_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1331008721", "1331008721", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_81.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_242();
    l0 = self.box_Gate_v3_242;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1979095558", "1979095558", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_242.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_151();
    l0 = self.box_Gate_v3_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1387242272", "1387242272", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_151.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_76();
    l0 = self.box_PlayDialog_v6_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|192827953", "192827953", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_76.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_221();
    l0 = self.box_PlayDialog_v6_221;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|602373572", "602373572", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_221.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_236();
    l0 = self.box_Gate_v3_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2127287501", "2127287501", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_236.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_140();
    l0 = self.box_PlayDialog_v6_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|350877987", "350877987", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_140.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_206();
    l0 = self.box_Gate_v3_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|262464982", "262464982", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_206.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_211();
    l0 = self.box_PlayDialog_v6_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|233121329", "233121329", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_211.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_234();
    l0 = self.box_Gate_v3_234;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|95836089", "95836089", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_234.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_200();
    l0 = self.box_Gate_v3_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2045955133", "2045955133", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_200.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_202();
    l0 = self.box_Gate_v3_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1687254727", "1687254727", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_202.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_156();
    l0 = self.box_PlayDialog_v6_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1020275266", "1020275266", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_156.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_91();
    l0 = self.box_PlayDialog_v6_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|755128166", "755128166", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_91.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_178();
    l0 = self.box_Gate_v3_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1955508811", "1955508811", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_178.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_149();
    l0 = self.box_PlayDialog_v6_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1638636870", "1638636870", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_149.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_193();
    l0 = self.box_Gate_v3_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1207614034", "1207614034", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_193.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_204();
    l0 = self.box_Gate_v3_204;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1783116181", "1783116181", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_204.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_89();
    l0 = self.box_PlayDialog_v6_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1671707766", "1671707766", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_89.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_240();
    l0 = self.box_Gate_v3_240;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|798481252", "798481252", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_Gate_v3_240.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_21();
    l0 = self.box_PlayDialog_v6_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|52597903", "52597903", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_21.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_52();
    l0 = self.box_PlayDialog_v6_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|640015916", "640015916", "UNI42_010_B02_main", "box_Simple_Node_243.Out", "box_PlayDialog_v6_52.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_71_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2120044176", "2120044176", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_Delay_v5_29.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_99();
    l0 = self.box_Delay_v5_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|83794731", "83794731", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_Delay_v5_99.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_VehicleDamageListener_v2_25();
    l0 = self.box_VehicleDamageListener_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1507087367", "1507087367", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_VehicleDamageListener_v2_25.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MovementListener_v2_120();
    l0 = self.box_MovementListener_v2_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1563609955", "1563609955", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_MovementListener_v2_120.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_86();
    l0 = self.box_Delay_v5_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|56025899", "56025899", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_Delay_v5_86.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0 = self.box_CoopActivePlayers_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|710346323", "710346323", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_CoopActivePlayers_37.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
    params = self:OnEnter_box_EntityStatusListener_90();
    l0 = self.box_EntityStatusListener_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1174533271", "1174533271", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_EntityStatusListener_90.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_144();
    l0 = self.box_Delay_v5_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|91056206", "91056206", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_Delay_v5_144.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_EntityStatusListener_84();
    l0 = self.box_EntityStatusListener_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|565842459", "565842459", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_EntityStatusListener_84.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_143();
    l0 = self.box_Delay_v5_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|227900439", "227900439", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_Delay_v5_143.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_ProximityTrigger_v2_35();
    l0 = self.box_ProximityTrigger_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|804015886", "804015886", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_ProximityTrigger_v2_35.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_85();
    l0 = self.box_ProximityTrigger_v2_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1776531960", "1776531960", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_ProximityTrigger_v2_85.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_40();
    l0 = self.box_ProximityRadiusListener_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1896760029", "1896760029", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_ProximityRadiusListener_v3_40.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_92();
    l0 = self.box_ProximityTrigger_v2_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|39460264", "39460264", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_ProximityTrigger_v2_92.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_EntityStatusListener_188();
    l0 = self.box_EntityStatusListener_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|680133348", "680133348", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_EntityStatusListener_188.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|675588102", "675588102", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_EntityStatusListener_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_148();
    l0 = self.box_Delay_v5_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|98692858", "98692858", "UNI42_010_B02_main", "box_Simple_Node_71.Out", "box_Delay_v5_148.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_69_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_74();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1733318619", "1733318619", "UNI42_010_B02_main", "box_Simple_Node_69.Out", "box_EndActivityObjective_v2_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_174_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_166();
    l0 = self.box_Switch_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1729291542", "1729291542", "UNI42_010_B02_main", "box_Simple_Node_174.Out", "box_Switch_166.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_112_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Follow_NPC_Vehicle_v6_8();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|569109185", "569109185", "UNI42_010_B02_main", "box_OutputOrder_v2_112.Out", "box_Brick_Follow_NPC_Vehicle_v6_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_112_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_217();
    l0 = self.box_VehicleListener_v3_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1279052441", "1279052441", "UNI42_010_B02_main", "box_OutputOrder_v2_112.Out", "box_VehicleListener_v3_217.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_112_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_40();
    l0 = self.box_ProximityRadiusListener_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1370176317", "1370176317", "UNI42_010_B02_main", "box_OutputOrder_v2_112.Out", "box_ProximityRadiusListener_v3_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_112_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1804305210", "1804305210", "UNI42_010_B02_main", "box_OutputOrder_v2_112.Out", "box_MultipleOR_253.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_285_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_153();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2116389642", "2116389642", "UNI42_010_B02_main", "box_Simple_Node_285.Out", "box_OutputOrder_v2_153.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_175_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_168();
    l0 = self.box_Delay_v5_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2049698244", "2049698244", "UNI42_010_B02_main", "box_Simple_Node_175.Out", "box_Delay_v5_168.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_OutputOrder_v2_173();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|873726162", "873726162", "UNI42_010_B02_main", "box_Simple_Node_175.Out", "box_OutputOrder_v2_173.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_283_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_208();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|353299256", "353299256", "UNI42_010_B02_main", "box_Simple_Node_283.Out", "box_SetBoolean_v2_208.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_301_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_300();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1624784486", "1624784486", "UNI42_010_B02_main", "box_OutputOrder_v2_301.Out", "box_Print_v2_300.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_301_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_298();
    l0 = self.box_GroupSizeListener_v5_298;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|512801406", "512801406", "UNI42_010_B02_main", "box_OutputOrder_v2_301.Out", "box_GroupSizeListener_v5_298.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_171();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|855615274", "855615274", "UNI42_010_B02_main", "box_OutputOrder_v2_42.Out", "box_Simple_Node_171.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_50();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1988396122", "1988396122", "UNI42_010_B02_main", "box_OutputOrder_v2_42.Out", "box_UseContextualActionModifier_v3_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RadioModifier_v3_39_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|208248746", "208248746", "UNI42_010_B02_main", "box_RadioModifier_v3_39.Out", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_81_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_270();
    l0 = self.box_PlayDialog_v6_81;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1607216984", "1607216984", "UNI42_010_B02_main", "box_PlayDialog_v6_81.Finished", "box_RandomFloat_v2_270.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_292_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_25();
    l0 = self.box_VehicleDamageListener_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1774745870", "1774745870", "UNI42_010_B02_main", "box_OutputOrder_v2_292.Out", "box_VehicleDamageListener_v2_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_292_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_39();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1510532106", "1510532106", "UNI42_010_B02_main", "box_OutputOrder_v2_292.Out", "box_RadioModifier_v3_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_274_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_15();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|427640644", "427640644", "UNI42_010_B02_main", "box_Compare_Boolean_274.A_is_False", "box_UseContextualActionModifier_v3_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_274_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_275();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|843621922", "843621922", "UNI42_010_B02_main", "box_Compare_Boolean_274.A_is_True", "box_Simple_Node_275.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_288_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_289();
    l0 = self.box_OnceOnly_v3_288;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1781301573", "1781301573", "UNI42_010_B02_main", "box_OnceOnly_v3_288.Out", "box_Compare_Boolean_289.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_233_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_83();
    l0 = self.box_OnceOnly_v3_233;
    l1 = self.box_PlayDialog_v6_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|519071245", "519071245", "UNI42_010_B02_main", "box_OnceOnly_v3_233.Out", "box_PlayDialog_v6_83.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_168_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_168;
    l1 = self.box_MultipleOR_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|263321823", "263321823", "UNI42_010_B02_main", "box_Delay_v5_168.TimeElapsed", "box_MultipleOR_167.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_165_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_165;
    l1 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1201877943", "1201877943", "UNI42_010_B02_main", "box_PlayDialog_v6_165.Finished", "box_MultipleOR_169.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_201_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_156();
    l0 = self.box_OnceOnly_v3_201;
    l1 = self.box_PlayDialog_v6_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1414192755", "1414192755", "UNI42_010_B02_main", "box_OnceOnly_v3_201.Out", "box_PlayDialog_v6_156.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_AllowAutoDrive_v2_266_OnDoNotAllow()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_36();
    l0 = self.box_CharacterLoadedIdListener_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|799169579", "799169579", "UNI42_010_B02_main", "box_AllowAutoDrive_v2_266.OnDoNotAllow", "box_CharacterLoadedIdListener_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetHealthState_79_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2062799777", "2062799777", "UNI42_010_B02_main", "box_GetHealthState_79.Down", "box_OnceOnly_v3_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetHealthState_79_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|273012690", "273012690", "UNI42_010_B02_main", "box_GetHealthState_79.Healthy", "box_MultipleOR_118.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_153_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_154();
    l0 = self.box_EntityStatusListener_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1556015914", "1556015914", "UNI42_010_B02_main", "box_OutputOrder_v2_153.Out", "box_EntityStatusListener_154.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_139();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1393679410", "1393679410", "UNI42_010_B02_main", "box_OutputOrder_v2_153.Out", "box_OutputOrder_v2_139.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RadioModifier_v3_131_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_269();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1694304380", "1694304380", "UNI42_010_B02_main", "box_RadioModifier_v3_131.Out", "box_VehicleSeatModifier_v2_269.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_210_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_210;
    l1 = self.box_OnceOnly_v3_288;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|200825303", "200825303", "UNI42_010_B02_main", "box_MultipleOR_210.Out", "box_OnceOnly_v3_288.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_116_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_116;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|342178611", "342178611", "UNI42_010_B02_main", "box_OnceOnly_v3_116.Out", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_167_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_146();
    l0 = self.box_MultipleOR_167;
    l1 = self.box_Switch_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1283917421", "1283917421", "UNI42_010_B02_main", "box_MultipleOR_167.Out", "box_Switch_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_130_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_143();
    l0 = self.box_Delay_v5_130;
    l1 = self.box_Delay_v5_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1407568016", "1407568016", "UNI42_010_B02_main", "box_Delay_v5_130.TimeElapsed", "box_Delay_v5_143.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_98_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_98_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1385862846", "1385862846", "UNI42_010_B02_main", "box_SetBoolean_v2_98.Out", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehiclePositionLockModifier_18_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_191();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|766807016", "766807016", "UNI42_010_B02_main", "box_VehiclePositionLockModifier_18.Unlocked", "box_Simple_Node_191.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_136_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_24();
    l0 = self.box_MultipleOR_136;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1214097725", "1214097725", "UNI42_010_B02_main", "box_MultipleOR_136.Out", "box_TriggerState_v2_24.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RadioModifier_v3_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_259();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1957942561", "1957942561", "UNI42_010_B02_main", "box_RadioModifier_v3_26.Out", "box_VehicleSeatModifier_v2_259.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_184_End()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_268();
    l0 = self.box_ContextualActionListener_184;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1159044402", "1159044402", "UNI42_010_B02_main", "box_ContextualActionListener_184.End", "box_UseContextualActionModifier_v3_268.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_255_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MovementListener_v2_120();
    l0 = self.box_MultipleOR_255;
    l1 = self.box_MovementListener_v2_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1330072863", "1330072863", "UNI42_010_B02_main", "box_MultipleOR_255.Out", "box_MovementListener_v2_120.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_249_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_260();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|427814364", "427814364", "UNI42_010_B02_main", "box_VehicleSeatModifier_v2_249.Unlocked", "box_VehicleSeatModifier_v2_260.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_24_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_234();
    l0 = self.box_Gate_v3_234;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1458723312", "1458723312", "UNI42_010_B02_main", "box_TriggerState_v2_24.Disabled", "box_Gate_v3_234.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_160_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_210;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|895469474", "895469474", "UNI42_010_B02_main", "box_OutputOrder_v2_160.Out", "box_MultipleOR_210.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_160_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|570066451", "570066451", "UNI42_010_B02_main", "box_OutputOrder_v2_160.Out", "box_MultipleOR_161.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_160_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_28();
    l0 = self.box_VehicleListener_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|148085186", "148085186", "UNI42_010_B02_main", "box_OutputOrder_v2_160.Out", "box_VehicleListener_v3_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_35();
    l0 = self.box_EntityStatusListener_13;
    l1 = self.box_ProximityTrigger_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1461703676", "1461703676", "UNI42_010_B02_main", "box_EntityStatusListener_13.Loaded", "box_ProximityTrigger_v2_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_162_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_162;
    l1 = self.box_MultipleOR_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1711186872", "1711186872", "UNI42_010_B02_main", "box_Delay_v5_162.TimeElapsed", "box_MultipleOR_167.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_105_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_113();
    l0 = self.box_Delay_v5_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1861793461", "1861793461", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_105.Enabled", "box_Delay_v5_113.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RadioModifier_v3_48_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_130();
    l0 = self.box_Delay_v5_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1065724578", "1065724578", "UNI42_010_B02_main", "box_RadioModifier_v3_48.Out", "box_Delay_v5_130.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ExitZoneWarningListener_v3_107_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_122();
    l0 = self.box_ExitZoneWarningListener_v3_107;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|925826369", "925826369", "UNI42_010_B02_main", "box_ExitZoneWarningListener_v3_107.FailingZoneEntered", "box_OutputOrder_v2_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_240();
    l0 = self.box_Delay_v5_29;
    l1 = self.box_Gate_v3_240;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|615426012", "615426012", "UNI42_010_B02_main", "box_Delay_v5_29.TimeElapsed", "box_Gate_v3_240.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_148_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_236();
    l0 = self.box_Delay_v5_148;
    l1 = self.box_Gate_v3_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1361299493", "1361299493", "UNI42_010_B02_main", "box_Delay_v5_148.TimeElapsed", "box_Gate_v3_236.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_180_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_180;
    l1 = self.box_OnceOnly_v3_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|217037712", "217037712", "UNI42_010_B02_main", "box_MultipleOR_180.Out", "box_OnceOnly_v3_183.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_37_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_37_OnePlayer();
    l0 = self.box_CoopActivePlayers_37;
    l1 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|299293093", "299293093", "UNI42_010_B02_main", "box_CoopActivePlayers_37.OnePlayer", "box_MultipleOR_182.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_37_PlayerAdded()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_37_PlayerAdded();
    l0 = self.box_CoopActivePlayers_37;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|676945373", "676945373", "UNI42_010_B02_main", "box_CoopActivePlayers_37.PlayerAdded", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CoopActivePlayers_37_PlayerRemoved()
    self:OnExit_box_CoopActivePlayers_37_PlayerRemoved();
end;

function export:f_box_CoopActivePlayers_37_TwoPlayers()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_37_TwoPlayers();
    l0 = self.box_CoopActivePlayers_37;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|102731928", "102731928", "UNI42_010_B02_main", "box_CoopActivePlayers_37.TwoPlayers", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_237_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_89();
    l0 = self.box_OnceOnly_v3_237;
    l1 = self.box_PlayDialog_v6_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|337297645", "337297645", "UNI42_010_B02_main", "box_OnceOnly_v3_237.Out", "box_PlayDialog_v6_89.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_139_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_99();
    l0 = self.box_Delay_v5_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1276820813", "1276820813", "UNI42_010_B02_main", "box_OutputOrder_v2_139.Out", "box_Delay_v5_99.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_139_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_84();
    l0 = self.box_EntityStatusListener_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|644006771", "644006771", "UNI42_010_B02_main", "box_OutputOrder_v2_139.Out", "box_EntityStatusListener_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_134_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_243();
    l0 = self.box_OnceOnly_v3_134;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1238433026", "1238433026", "UNI42_010_B02_main", "box_OnceOnly_v3_134.Out", "box_Simple_Node_243.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_284_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_265();
    l0 = self.box_EntityStatusListener_265;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1001535330", "1001535330", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_284.Disabled", "box_EntityStatusListener_265.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_113_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_114();
    l0 = self.box_Delay_v5_113;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|589085231", "589085231", "UNI42_010_B02_main", "box_Delay_v5_113.TimeElapsed", "box_UseContextualActionModifier_v3_114.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FastTravelModifier_v2_124_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_43();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1793976296", "1793976296", "UNI42_010_B02_main", "box_FastTravelModifier_v2_124.Enabled", "box_ActivityRetry_43.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_89_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_PlayDialog_v6_89;
    l1 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1387913873", "1387913873", "UNI42_010_B02_main", "box_PlayDialog_v6_89.Finished", "box_Delay_v5_29.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|567499751", "567499751", "UNI42_010_B02_main", "box_MultipleOR_1.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OnceOnly_v3_220_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_222();
    l0 = self.box_OnceOnly_v3_220;
    l1 = self.box_PlayDialog_v6_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1031478463", "1031478463", "UNI42_010_B02_main", "box_OnceOnly_v3_220.Out", "box_PlayDialog_v6_222.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_303_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_187();
    l0 = self.box_EntityStatusListener_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|643991", "643991", "UNI42_010_B02_main", "box_Simple_Node_303.Out", "box_EntityStatusListener_187.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_36_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_36_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_CharacterLoadedIdListener_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|381608078", "381608078", "UNI42_010_B02_main", "box_CharacterLoadedIdListener_36.LoadedIdReceived", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_208_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_208_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1126829485", "1126829485", "UNI42_010_B02_main", "box_SetBoolean_v2_208.Out", "box_OutputOrder_v2_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|747967113", "747967113", "UNI42_010_B02_main", "box_OutputOrder_v2_61.Out", "box_OnceOnly_v3_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2096302636", "2096302636", "UNI42_010_B02_main", "box_OutputOrder_v2_61.Out", "box_OutputOrder_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_230_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RadioModifier_v3_48();
    l0 = self.box_Delay_v5_230;
    l1 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1113660474", "1113660474", "UNI42_010_B02_main", "box_Delay_v5_230.TimeElapsed", "box_RadioModifier_v3_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_152_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_225();
    l0 = self.box_PlayDialog_v6_152;
    l1 = self.box_Delay_v5_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|154014764", "154014764", "UNI42_010_B02_main", "box_PlayDialog_v6_152.Finished", "box_Delay_v5_225.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_12_Aborted()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_100();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_12;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|484817204", "484817204", "UNI42_010_B02_main", "box_Brick_NarrativeQuickCinema_V4_12.Aborted", "box_ActivityRetry_100.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_12_Finished()
    local l0, l1;
    l0 = self.box_Brick_NarrativeQuickCinema_V4_12;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1720915939", "1720915939", "UNI42_010_B02_main", "box_Brick_NarrativeQuickCinema_V4_12.Finished", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_12_Paused()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_282();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_12;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|330933184", "330933184", "UNI42_010_B02_main", "box_Brick_NarrativeQuickCinema_V4_12.Paused", "box_UseContextualActionModifier_v3_282.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_12_Resumed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_282();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_12;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1310967341", "1310967341", "UNI42_010_B02_main", "box_Brick_NarrativeQuickCinema_V4_12.Resumed", "box_UseContextualActionModifier_v3_282.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_211_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_223();
    l0 = self.box_PlayDialog_v6_211;
    l1 = self.box_Delay_v5_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1057876707", "1057876707", "UNI42_010_B02_main", "box_PlayDialog_v6_211.Finished", "box_Delay_v5_223.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Boolean_213_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1982718489", "1982718489", "UNI42_010_B02_main", "box_Compare_Boolean_213.A_is_False", "box_MultipleOR_214.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_240_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_240;
    l1 = self.box_OnceOnly_v3_239;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|517259133", "517259133", "UNI42_010_B02_main", "box_Gate_v3_240.Out", "box_OnceOnly_v3_239.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_215_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_215_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1532886986", "1532886986", "UNI42_010_B02_main", "box_SetBoolean_v2_215.Out", "box_OnceOnly_v3_197.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_50_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1801510327", "1801510327", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_50.Enabled", "box_OutputOrder_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_114_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_110();
    l0 = self.box_ProximityRadiusListener_v3_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1063910479", "1063910479", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_114.UseCalled", "box_ProximityRadiusListener_v3_110.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_273_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_273_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_168();
    l0 = self.box_Delay_v5_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1560207426", "1560207426", "UNI42_010_B02_main", "box_RandomFloat_v2_273.Out", "box_Delay_v5_168.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_VehicleSeatModifier_v2_269_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_284();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1277157610", "1277157610", "UNI42_010_B02_main", "box_VehicleSeatModifier_v2_269.Unlocked", "box_UseContextualActionModifier_v3_284.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_241_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_76();
    l0 = self.box_OnceOnly_v3_241;
    l1 = self.box_PlayDialog_v6_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1499932595", "1499932595", "UNI42_010_B02_main", "box_OnceOnly_v3_241.Out", "box_PlayDialog_v6_76.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_238_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_238;
    l1 = self.box_OnceOnly_v3_237;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|96000224", "96000224", "UNI42_010_B02_main", "box_Gate_v3_238.Out", "box_OnceOnly_v3_237.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleSeatModifier_v2_259_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_249();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|463269029", "463269029", "UNI42_010_B02_main", "box_VehicleSeatModifier_v2_259.Unlocked", "box_VehicleSeatModifier_v2_249.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_264_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MovementListener_v2_262();
    l0 = self.box_MovementListener_v2_262;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1440167963", "1440167963", "UNI42_010_B02_main", "box_OutputOrder_v2_264.Out", "box_MovementListener_v2_262.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_264_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_71();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1880424476", "1880424476", "UNI42_010_B02_main", "box_OutputOrder_v2_264.Out", "box_Simple_Node_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_104();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|363778417", "363778417", "UNI42_010_B02_main", "box_OutputOrder_v2_34.Out", "box_Compare_Boolean_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_16();
    l0 = self.box_ContextualActionListener_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|635433324", "635433324", "UNI42_010_B02_main", "box_OutputOrder_v2_34.Out", "box_ContextualActionListener_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1772904896", "1772904896", "UNI42_010_B02_main", "box_OutputOrder_v2_34.Out", "box_Simple_Node_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_229_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_230();
    l0 = self.box_SoundModifier_v2_229;
    l1 = self.box_Delay_v5_230;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2128187620", "2128187620", "UNI42_010_B02_main", "box_SoundModifier_v2_229.Started", "box_Delay_v5_230.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_VehicleListener_v3_28_OnSit()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_28;
    l1 = self.box_MultipleOR_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2139940366", "2139940366", "UNI42_010_B02_main", "box_VehicleListener_v3_28.OnSit", "box_MultipleOR_161.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_202_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_202;
    l1 = self.box_OnceOnly_v3_201;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|872301883", "872301883", "UNI42_010_B02_main", "box_Gate_v3_202.Out", "box_OnceOnly_v3_201.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_35_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_133();
    l0 = self.box_ProximityTrigger_v2_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|428583776", "428583776", "UNI42_010_B02_main", "box_ProximityTrigger_v2_35.Enter", "box_OutputOrder_v2_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_298_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_301();
    l0 = self.box_GroupSizeListener_v5_298;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2058686676", "2058686676", "UNI42_010_B02_main", "box_GroupSizeListener_v5_298.Enabled", "box_OutputOrder_v2_301.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_58_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_46();
    l0 = self.box_EntityStatusListener_58;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1916465485", "1916465485", "UNI42_010_B02_main", "box_EntityStatusListener_58.Loaded", "box_SetEntity_v2_46.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_225_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_206();
    l0 = self.box_Delay_v5_225;
    l1 = self.box_Gate_v3_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|519666145", "519666145", "UNI42_010_B02_main", "box_Delay_v5_225.TimeElapsed", "box_Gate_v3_206.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_193_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_193;
    l1 = self.box_OnceOnly_v3_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|440394786", "440394786", "UNI42_010_B02_main", "box_Gate_v3_193.Out", "box_OnceOnly_v3_158.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_46_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_46_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1944425621", "1944425621", "UNI42_010_B02_main", "box_SetEntity_v2_46.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_171_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|712673105", "712673105", "UNI42_010_B02_main", "box_Simple_Node_171.Out", "box_MultipleOR_176.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_154_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_155();
    l0 = self.box_EntityStatusListener_154;
    l1 = self.box_SpawnAI_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1701180187", "1701180187", "UNI42_010_B02_main", "box_EntityStatusListener_154.Loaded", "box_SpawnAI_155.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_186_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1902159873", "1902159873", "UNI42_010_B02_main", "box_OutputOrder_v2_186.Out", "box_ActivityAcknowledgeGate_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_186_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_31();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1800074659", "1800074659", "UNI42_010_B02_main", "box_OutputOrder_v2_186.Out", "box_Simple_Node_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_281();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|393453869", "393453869", "UNI42_010_B02_main", "box_OutputOrder_v2_186.Out", "box_Print_v2_281.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_102();
    l0 = self.box_EntityStatusListener_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1792765939", "1792765939", "UNI42_010_B02_main", "box_OutputOrder_v2_186.Out", "box_EntityStatusListener_102.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_80_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_200();
    l0 = self.box_Delay_v5_80;
    l1 = self.box_Gate_v3_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|725107112", "725107112", "UNI42_010_B02_main", "box_Delay_v5_80.TimeElapsed", "box_Gate_v3_200.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_60_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_285();
    l0 = self.box_OnceOnly_v3_60;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1999018540", "1999018540", "UNI42_010_B02_main", "box_OnceOnly_v3_60.Out", "box_Simple_Node_285.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_88();
    l0 = self.box_MultipleOR_11;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|895878312", "895878312", "UNI42_010_B02_main", "box_MultipleOR_11.Out", "box_UseContextualActionModifier_v3_88.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ForceExitVehicle_v2_93_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_78();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|798240854", "798240854", "UNI42_010_B02_main", "box_ForceExitVehicle_v2_93.ForceExitted", "box_UseContextualActionModifier_v3_78.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_47();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1275103721", "1275103721", "UNI42_010_B02_main", "box_OutputOrder_v2_53.Out", "box_UseContextualActionModifier_v3_47.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_47();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|911616895", "911616895", "UNI42_010_B02_main", "box_OutputOrder_v2_53.Out", "box_UseContextualActionModifier_v3_47.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_172();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|370084628", "370084628", "UNI42_010_B02_main", "box_OutputOrder_v2_53.Out", "box_Simple_Node_172.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_87_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_193();
    l0 = self.box_Gate_v3_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1334463997", "1334463997", "UNI42_010_B02_main", "box_TriggerState_v2_87.Disabled", "box_Gate_v3_193.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_164_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_164;
    l1 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1716424393", "1716424393", "UNI42_010_B02_main", "box_PlayDialog_v6_164.Finished", "box_MultipleOR_169.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Gate_v3_125_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_125;
    l1 = self.box_OnceOnly_v3_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1496924031", "1496924031", "UNI42_010_B02_main", "box_Gate_v3_125.Out", "box_OnceOnly_v3_138.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_205_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_211();
    l0 = self.box_OnceOnly_v3_205;
    l1 = self.box_PlayDialog_v6_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1128160867", "1128160867", "UNI42_010_B02_main", "box_OnceOnly_v3_205.Out", "box_PlayDialog_v6_211.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_212_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_232();
    l0 = self.box_Delay_v5_212;
    l1 = self.box_Gate_v3_232;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|528289483", "528289483", "UNI42_010_B02_main", "box_Delay_v5_212.TimeElapsed", "box_Gate_v3_232.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_279_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_279();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2061465478", "2061465478", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_279.Enabled", "box_UseContextualActionModifier_v3_279.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_279_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_264();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2108460023", "2108460023", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_279.UseCalled", "box_OutputOrder_v2_264.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_75_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_75;
    l1 = self.box_CoopActivePlayers_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|56515922", "56515922", "UNI42_010_B02_main", "box_OnceOnly_v3_75.Out", "box_CoopActivePlayers_123.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Delay_v5_223_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_219();
    l0 = self.box_Delay_v5_223;
    l1 = self.box_Gate_v3_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|701646634", "701646634", "UNI42_010_B02_main", "box_Delay_v5_223.TimeElapsed", "box_Gate_v3_219.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GetHealthState_257_Down()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_256();
    l0 = self.box_HealthListener_v6_256;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|821444594", "821444594", "UNI42_010_B02_main", "box_GetHealthState_257.Down", "box_HealthListener_v6_256.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetHealthState_257_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_210;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1525236995", "1525236995", "UNI42_010_B02_main", "box_GetHealthState_257.Healthy", "box_MultipleOR_210.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_253_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NpcDestinationCheckListener_9();
    l0 = self.box_MultipleOR_253;
    l1 = self.box_NpcDestinationCheckListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|845343861", "845343861", "UNI42_010_B02_main", "box_MultipleOR_253.Out", "box_NpcDestinationCheckListener_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_224_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_202();
    l0 = self.box_Delay_v5_224;
    l1 = self.box_Gate_v3_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|566722817", "566722817", "UNI42_010_B02_main", "box_Delay_v5_224.TimeElapsed", "box_Gate_v3_202.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_231_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_278();
    l0 = self.box_VehicleListener_v3_278;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|245148080", "245148080", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_231.Enabled", "box_VehicleListener_v3_278.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_56_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_96();
    l0 = self.box_OnceOnly_v3_56;
    l1 = self.box_PlayDialog_v6_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|57507787", "57507787", "UNI42_010_B02_main", "box_OnceOnly_v3_56.Out", "box_PlayDialog_v6_96.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_151_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_151;
    l1 = self.box_OnceOnly_v3_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1907952537", "1907952537", "UNI42_010_B02_main", "box_Gate_v3_151.Out", "box_OnceOnly_v3_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_261_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_279();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1862820770", "1862820770", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_261.Disabled", "box_UseContextualActionModifier_v3_279.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_261_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_261();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|401696392", "401696392", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_261.Enabled", "box_UseContextualActionModifier_v3_261.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_261_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_263();
    l0 = self.box_Delay_v5_263;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1932536131", "1932536131", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_261.UseCalled", "box_Delay_v5_263.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Gate_v3_234_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_234;
    l1 = self.box_OnceOnly_v3_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|434997547", "434997547", "UNI42_010_B02_main", "box_Gate_v3_234.Out", "box_OnceOnly_v3_233.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TriggerState_v2_94_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_238();
    l0 = self.box_Gate_v3_238;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1330551992", "1330551992", "UNI42_010_B02_main", "box_TriggerState_v2_94.Disabled", "box_Gate_v3_238.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_267_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_267();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|480965866", "480965866", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_267.Enabled", "box_UseContextualActionModifier_v3_267.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_267_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_112();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|608064838", "608064838", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_267.UseCalled", "box_OutputOrder_v2_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_297_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_302();
    l0 = self.box_RemoveEntity_v2_297;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|977393077", "977393077", "UNI42_010_B02_main", "box_RemoveEntity_v2_297.Out", "box_Simple_Node_302.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_104_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V4_12();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1895955175", "1895955175", "UNI42_010_B02_main", "box_Compare_Boolean_104.A_is_False", "box_Brick_NarrativeQuickCinema_V4_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_104_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_132();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2007732878", "2007732878", "UNI42_010_B02_main", "box_Compare_Boolean_104.A_is_True", "box_UseContextualActionModifier_v3_132.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1812202605", "1812202605", "UNI42_010_B02_main", "box_OutputOrder_v2_51.Out", "box_MultipleOR_136.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_94();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|155319611", "155319611", "UNI42_010_B02_main", "box_OutputOrder_v2_51.Out", "box_TriggerState_v2_94.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_261();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2012149767", "2012149767", "UNI42_010_B02_main", "box_OutputOrder_v2_62.Out", "box_UseContextualActionModifier_v3_261.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_228;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1879868596", "1879868596", "UNI42_010_B02_main", "box_OutputOrder_v2_62.Out", "box_OnceOnly_v3_228.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AddActivityObjective_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1248308591", "1248308591", "UNI42_010_B02_main", "box_AddActivityObjective_v2_17.Out", "box_MultipleOR_118.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_128_Out()
    self:OnExit_box_SetBoolean_v2_128_Out();
end;

function export:f_box_ProximityTrigger_v2_291_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_291;
    l1 = self.box_MultipleOR_294;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|787067312", "787067312", "UNI42_010_B02_main", "box_ProximityTrigger_v2_291.Enter", "box_MultipleOR_294.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_291_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_291;
    l1 = self.box_MultipleOR_294;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|751612647", "751612647", "UNI42_010_B02_main", "box_ProximityTrigger_v2_291.OnOccupied", "box_MultipleOR_294.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_108_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_108_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_109();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1030296509", "1030296509", "UNI42_010_B02_main", "box_GetPlayerGroup_v2_108.Out", "box_OutputOrder_v2_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_183_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_183;
    l1 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|30045724", "30045724", "UNI42_010_B02_main", "box_OnceOnly_v3_183.Out", "box_MultipleOR_176.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_21_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_86();
    l0 = self.box_PlayDialog_v6_21;
    l1 = self.box_Delay_v5_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1868510727", "1868510727", "UNI42_010_B02_main", "box_PlayDialog_v6_21.Finished", "box_Delay_v5_86.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_15_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_15();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1048743695", "1048743695", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_15.Enabled", "box_UseContextualActionModifier_v3_15.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_15_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_82();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1541155959", "1541155959", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_15.UseCalled", "box_OutputOrder_v2_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_272_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_81();
    l0 = self.box_Delay_v5_272;
    l1 = self.box_PlayDialog_v6_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1734907522", "1734907522", "UNI42_010_B02_main", "box_Delay_v5_272.TimeElapsed", "box_PlayDialog_v6_81.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_195_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_4();
    l0 = self.box_OnceOnly_v3_195;
    l1 = self.box_PlayDialog_v6_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|162550435", "162550435", "UNI42_010_B02_main", "box_OnceOnly_v3_195.Out", "box_PlayDialog_v6_4.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_170_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_145();
    l0 = self.box_MultipleOR_170;
    l1 = self.box_Delay_v5_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1071765432", "1071765432", "UNI42_010_B02_main", "box_MultipleOR_170.Out", "box_Delay_v5_145.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_90_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_92();
    l0 = self.box_EntityStatusListener_90;
    l1 = self.box_ProximityTrigger_v2_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|645384218", "645384218", "UNI42_010_B02_main", "box_EntityStatusListener_90.Loaded", "box_ProximityTrigger_v2_92.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_50();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1847811368", "1847811368", "UNI42_010_B02_main", "box_OutputOrder_v2_54.Out", "box_UseContextualActionModifier_v3_50.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_128();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1528834435", "1528834435", "UNI42_010_B02_main", "box_OutputOrder_v2_54.Out", "box_SetBoolean_v2_128.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_199_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_52();
    l0 = self.box_OnceOnly_v3_199;
    l1 = self.box_PlayDialog_v6_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1879336412", "1879336412", "UNI42_010_B02_main", "box_OnceOnly_v3_199.Out", "box_PlayDialog_v6_52.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_245_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_246();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1774327164", "1774327164", "UNI42_010_B02_main", "box_VehicleSeatModifier_v2_245.Locked", "box_VehicleSeatModifier_v2_246.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_88_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|612160215", "612160215", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_88.Disabled", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_176_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_174();
    l0 = self.box_MultipleOR_176;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1098734711", "1098734711", "UNI42_010_B02_main", "box_MultipleOR_176.Out", "box_Simple_Node_174.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_299_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_291();
    l0 = self.box_ProximityTrigger_v2_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|843734402", "843734402", "UNI42_010_B02_main", "box_OutputOrder_v2_299.Out", "box_ProximityTrigger_v2_291.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_299_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_298();
    l0 = self.box_GroupSizeListener_v5_298;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|779003388", "779003388", "UNI42_010_B02_main", "box_OutputOrder_v2_299.Out", "box_GroupSizeListener_v5_298.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_299_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_297();
    l0 = self.box_RemoveEntity_v2_297;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|448758660", "448758660", "UNI42_010_B02_main", "box_OutputOrder_v2_299.Out", "box_RemoveEntity_v2_297.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_157_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_204();
    l0 = self.box_Delay_v5_157;
    l1 = self.box_Gate_v3_204;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|333719907", "333719907", "UNI42_010_B02_main", "box_Delay_v5_157.TimeElapsed", "box_Gate_v3_204.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_85_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_85;
    l1 = self.box_MultipleOR_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1311735830", "1311735830", "UNI42_010_B02_main", "box_ProximityTrigger_v2_85.Enter", "box_MultipleOR_135.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_32_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_32_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|115903029", "115903029", "UNI42_010_B02_main", "box_SetEntity_v2_32.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_197_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_197;
    l1 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1164471470", "1164471470", "UNI42_010_B02_main", "box_OnceOnly_v3_197.Out", "box_MultipleOR_255.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPawnVehicleInfo_181_InVehicle()
    self:OnExit_box_GetPawnVehicleInfo_181_InVehicle();
end;

function export:f_box_GetPawnVehicleInfo_181_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_181_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1590307448", "1590307448", "UNI42_010_B02_main", "box_GetPawnVehicleInfo_181.NotInVehicle", "box_MultipleOR_180.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPawnVehicleInfo_181_Out()
    self:OnExit_box_GetPawnVehicleInfo_181_Out();
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_20();
    l0 = self.box_MultipleOR_23;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|595023409", "595023409", "UNI42_010_B02_main", "box_MultipleOR_23.Out", "box_ActivityRetry_20.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_156_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_157();
    l0 = self.box_PlayDialog_v6_156;
    l1 = self.box_Delay_v5_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2104192915", "2104192915", "UNI42_010_B02_main", "box_PlayDialog_v6_156.Finished", "box_Delay_v5_157.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_73_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_58();
    l0 = self.box_EntityStatusListener_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|594437562", "594437562", "UNI42_010_B02_main", "box_IsEntityLoaded_v3_73.False", "box_EntityStatusListener_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_73_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_32();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|329956535", "329956535", "UNI42_010_B02_main", "box_IsEntityLoaded_v3_73.True", "box_SetEntity_v2_32.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_118_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_119();
    l0 = self.box_MultipleOR_118;
    l1 = self.box_HealthListener_v6_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2095337771", "2095337771", "UNI42_010_B02_main", "box_MultipleOR_118.Out", "box_HealthListener_v6_119.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_228_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_68();
    l0 = self.box_OnceOnly_v3_228;
    l1 = self.box_PlayDialog_v6_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1851231182", "1851231182", "UNI42_010_B02_main", "box_OnceOnly_v3_228.Out", "box_PlayDialog_v6_68.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_260_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_49();
    l0 = self.box_VehicleListener_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1674776040", "1674776040", "UNI42_010_B02_main", "box_VehicleSeatModifier_v2_260.Unlocked", "box_VehicleListener_v3_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_295_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_293();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1111042661", "1111042661", "UNI42_010_B02_main", "box_IsValueNil_v3_295.No", "box_Compare_Entity_293.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_295_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_305;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|890956475", "890956475", "UNI42_010_B02_main", "box_IsValueNil_v3_295.Yes", "box_MultipleOR_305.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_294_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_304();
    l0 = self.box_MultipleOR_294;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|270088646", "270088646", "UNI42_010_B02_main", "box_MultipleOR_294.Out", "box_Compare_Entity_304.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_239_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_91();
    l0 = self.box_OnceOnly_v3_239;
    l1 = self.box_PlayDialog_v6_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1343408342", "1343408342", "UNI42_010_B02_main", "box_OnceOnly_v3_239.Out", "box_PlayDialog_v6_91.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_189_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_121();
    l0 = self.box_MultipleAND_v2_189;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|566144386", "566144386", "UNI42_010_B02_main", "box_MultipleAND_v2_189.Out", "box_VehicleModifier_v2_121.SetAsUsable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUsable
    l1:Exec(7, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_8_Started()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_247();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_8;
    l1 = self.box_VehicleListener_v3_247;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|474569919", "474569919", "UNI42_010_B02_main", "box_Brick_Follow_NPC_Vehicle_v6_8.Started", "box_VehicleListener_v3_247.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_8_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_283();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_8;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|787695412", "787695412", "UNI42_010_B02_main", "box_Brick_Follow_NPC_Vehicle_v6_8.Success", "box_Simple_Node_283.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_8_Target_TooFar()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_6();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_8;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1593231569", "1593231569", "UNI42_010_B02_main", "box_Brick_Follow_NPC_Vehicle_v6_8.Target_TooFar", "box_ActivityRetry_6.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_10_OnSetCommandeerDisabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehiclePositionLockModifier_18();
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|18119071", "18119071", "UNI42_010_B02_main", "box_VehicleModifier_v2_10.OnSetCommandeerDisabled", "box_VehiclePositionLockModifier_18.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_252_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_252;
    l1 = self.box_MultipleOR_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1049424795", "1049424795", "UNI42_010_B02_main", "box_HealthListener_v6_252.Revived", "box_MultipleOR_253.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_221_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_212();
    l0 = self.box_PlayDialog_v6_221;
    l1 = self.box_Delay_v5_212;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2055591078", "2055591078", "UNI42_010_B02_main", "box_PlayDialog_v6_221.Finished", "box_Delay_v5_212.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_188_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_73();
    l0 = self.box_EntityStatusListener_188;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1933189237", "1933189237", "UNI42_010_B02_main", "box_EntityStatusListener_188.Enabled", "box_IsEntityLoaded_v3_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_188_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_190();
    l0 = self.box_EntityStatusListener_188;
    l1 = self.box_SpawnAI_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|976811424", "976811424", "UNI42_010_B02_main", "box_EntityStatusListener_188.Unloaded", "box_SpawnAI_190.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_135_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_87();
    l0 = self.box_MultipleOR_135;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1809355483", "1809355483", "UNI42_010_B02_main", "box_MultipleOR_135.Out", "box_TriggerState_v2_87.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_163_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_163;
    l1 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|396196138", "396196138", "UNI42_010_B02_main", "box_PlayDialog_v6_163.Finished", "box_MultipleOR_169.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_57_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_57;
    l1 = self.box_OnceOnly_v3_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1458097748", "1458097748", "UNI42_010_B02_main", "box_MultipleOR_57.Out", "box_OnceOnly_v3_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetHealthState_250_Down()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_252();
    l0 = self.box_HealthListener_v6_252;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1064616768", "1064616768", "UNI42_010_B02_main", "box_GetHealthState_250.Down", "box_HealthListener_v6_252.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetHealthState_250_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_160();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1340104902", "1340104902", "UNI42_010_B02_main", "box_GetHealthState_250.Healthy", "box_OutputOrder_v2_160.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_145_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_145;
    l1 = self.box_MultipleOR_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|410110741", "410110741", "UNI42_010_B02_main", "box_Delay_v5_145.TimeElapsed", "box_MultipleOR_167.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OnceOnly_v3_218_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_221();
    l0 = self.box_OnceOnly_v3_218;
    l1 = self.box_PlayDialog_v6_221;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|666191969", "666191969", "UNI42_010_B02_main", "box_OnceOnly_v3_218.Out", "box_PlayDialog_v6_221.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_CoopActivePlayers_123_OnePlayer()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_123;
    l1 = self.box_MultipleOR_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1602328517", "1602328517", "UNI42_010_B02_main", "box_CoopActivePlayers_123.OnePlayer", "box_MultipleOR_258.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_123_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_101();
    l0 = self.box_CoopActivePlayers_123;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1487024346", "1487024346", "UNI42_010_B02_main", "box_CoopActivePlayers_123.PlayerAdded", "box_Print_v2_101.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_123_TwoPlayers()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_287();
    l0 = self.box_CoopActivePlayers_123;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1784576269", "1784576269", "UNI42_010_B02_main", "box_CoopActivePlayers_123.TwoPlayers", "box_GetPawnVehicleInfo_287.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_246_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_274();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|542415281", "542415281", "UNI42_010_B02_main", "box_VehicleSeatModifier_v2_246.Locked", "box_Compare_Boolean_274.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_86_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_178();
    l0 = self.box_Delay_v5_86;
    l1 = self.box_Gate_v3_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|221661668", "221661668", "UNI42_010_B02_main", "box_Delay_v5_86.TimeElapsed", "box_Gate_v3_178.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_280_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AllowAutoDrive_v2_271();
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|992206750", "992206750", "UNI42_010_B02_main", "box_VehicleSeatModifier_v2_280.Locked", "box_AllowAutoDrive_v2_271.Allow", clone:GetLuaBox(), l0:GetLuaBox());
    -- Allow
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_132_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_105();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1629875991", "1629875991", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_132.Disabled", "box_UseContextualActionModifier_v3_105.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_196_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_196;
    l1 = self.box_OnceOnly_v3_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1098722576", "1098722576", "UNI42_010_B02_main", "box_Gate_v3_196.Out", "box_OnceOnly_v3_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_77_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_242();
    l0 = self.box_Delay_v5_77;
    l1 = self.box_Gate_v3_242;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|816562794", "816562794", "UNI42_010_B02_main", "box_Delay_v5_77.TimeElapsed", "box_Gate_v3_242.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_200_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_200;
    l1 = self.box_OnceOnly_v3_199;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1947626291", "1947626291", "UNI42_010_B02_main", "box_Gate_v3_200.Out", "box_OnceOnly_v3_199.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_302_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_303();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1771517199", "1771517199", "UNI42_010_B02_main", "box_Simple_Node_302.Out", "box_Simple_Node_303.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_282_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_282();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2022244201", "2022244201", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_282.Enabled", "box_UseContextualActionModifier_v3_282.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_278_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ForceExitVehicle_v2_93();
    l0 = self.box_VehicleListener_v3_278;
    l1 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|592667474", "592667474", "UNI42_010_B02_main", "box_VehicleListener_v3_278.Enabled", "box_ForceExitVehicle_v2_93.ForceExit", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceExit
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_278_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleSeatModifier_v2_280();
    l0 = self.box_VehicleListener_v3_278;
    l1 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|75426767", "75426767", "UNI42_010_B02_main", "box_VehicleListener_v3_278.OnStandUp", "box_VehicleSeatModifier_v2_280.Lock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_16_Select()
    local l0, l1;
    l0 = self.box_ContextualActionListener_16;
    l1 = self.box_OnceOnly_v3_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2074429740", "2074429740", "UNI42_010_B02_main", "box_ContextualActionListener_16.Select", "box_OnceOnly_v3_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MovementListener_v2_262_Idle()
    local params, l0, l1;
    params = self:OnEnter_box_RadioModifier_v3_131();
    l0 = self.box_MovementListener_v2_262;
    l1 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1582090946", "1582090946", "UNI42_010_B02_main", "box_MovementListener_v2_262.Idle", "box_RadioModifier_v3_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_97_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_140();
    l0 = self.box_Delay_v5_97;
    l1 = self.box_PlayDialog_v6_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1861151684", "1861151684", "UNI42_010_B02_main", "box_Delay_v5_97.TimeElapsed", "box_PlayDialog_v6_140.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_115_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_111();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1822836400", "1822836400", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_115.Disabled", "box_EndActivityObjective_v2_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_287_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_287_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_72();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|825362469", "825362469", "UNI42_010_B02_main", "box_GetPawnVehicleInfo_287.InVehicle", "box_SetEntity_v2_72.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_287_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_287_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1233600001", "1233600001", "UNI42_010_B02_main", "box_GetPawnVehicleInfo_287.NotInVehicle", "box_MultipleOR_258.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_287_Out()
    self:OnExit_box_GetPawnVehicleInfo_287_Out();
end;

function export:f_box_Gate_v3_204_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_204;
    l1 = self.box_OnceOnly_v3_203;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|413639863", "413639863", "UNI42_010_B02_main", "box_Gate_v3_204.Out", "box_OnceOnly_v3_203.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_172_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_175();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2063748563", "2063748563", "UNI42_010_B02_main", "box_Simple_Node_172.Out", "box_Simple_Node_175.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_182_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_181();
    l0 = self.box_MultipleOR_182;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|103882755", "103882755", "UNI42_010_B02_main", "box_MultipleOR_182.Out", "box_GetPawnVehicleInfo_181.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_146_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_163();
    l0 = self.box_Switch_146;
    l1 = self.box_PlayDialog_v6_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|753197730", "753197730", "UNI42_010_B02_main", "box_Switch_146.Output", "box_PlayDialog_v6_163.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_146_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_165();
    l0 = self.box_Switch_146;
    l1 = self.box_PlayDialog_v6_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|897923886", "897923886", "UNI42_010_B02_main", "box_Switch_146.Output", "box_PlayDialog_v6_165.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_146_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_164();
    l0 = self.box_Switch_146;
    l1 = self.box_PlayDialog_v6_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1386931000", "1386931000", "UNI42_010_B02_main", "box_Switch_146.Output", "box_PlayDialog_v6_164.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_268_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1105451917", "1105451917", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_268.Disabled", "box_MultipleOR_277.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_109_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_27();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|618288239", "618288239", "UNI42_010_B02_main", "box_OutputOrder_v2_109.Out", "box_FastTravelModifier_v2_27.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_109_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_67();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|350349568", "350349568", "UNI42_010_B02_main", "box_OutputOrder_v2_109.Out", "box_Simple_Node_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_84_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_85();
    l0 = self.box_EntityStatusListener_84;
    l1 = self.box_ProximityTrigger_v2_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|444772871", "444772871", "UNI42_010_B02_main", "box_EntityStatusListener_84.Loaded", "box_ProximityTrigger_v2_85.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_198_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_126();
    l0 = self.box_MultipleOR_198;
    l1 = self.box_Delay_v5_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|384238893", "384238893", "UNI42_010_B02_main", "box_MultipleOR_198.Out", "box_Delay_v5_126.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_219_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_219;
    l1 = self.box_OnceOnly_v3_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1929536740", "1929536740", "UNI42_010_B02_main", "box_Gate_v3_219.Out", "box_OnceOnly_v3_218.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_258_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntityOutRange_286();
    l0 = self.box_MultipleOR_258;
    l1 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|224838272", "224838272", "UNI42_010_B02_main", "box_MultipleOR_258.Out", "box_RemoveEntityOutRange_286.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_126_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_257();
    l0 = self.box_Delay_v5_126;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|179633572", "179633572", "UNI42_010_B02_main", "box_Delay_v5_126.TimeElapsed", "box_GetHealthState_257.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_161_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NpcDestinationCheckListener_9();
    l0 = self.box_MultipleOR_161;
    l1 = self.box_NpcDestinationCheckListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|812052282", "812052282", "UNI42_010_B02_main", "box_MultipleOR_161.Out", "box_NpcDestinationCheckListener_9.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_119_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_141();
    l0 = self.box_HealthListener_v6_119;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2055825377", "2055825377", "UNI42_010_B02_main", "box_HealthListener_v6_119.Downed", "box_OutputOrder_v2_141.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_119_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_95();
    l0 = self.box_HealthListener_v6_119;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|846231902", "846231902", "UNI42_010_B02_main", "box_HealthListener_v6_119.Revived", "box_EndActivityObjective_v2_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_33_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_5();
    l0 = self.box_PlayDialog_v6_33;
    l1 = self.box_Delay_v5_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|463298054", "463298054", "UNI42_010_B02_main", "box_PlayDialog_v6_33.Finished", "box_Delay_v5_5.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetPawnVehicleInfo_177_InVehicle()
    self:OnExit_box_GetPawnVehicleInfo_177_InVehicle();
end;

function export:f_box_GetPawnVehicleInfo_177_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_177_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1758531920", "1758531920", "UNI42_010_B02_main", "box_GetPawnVehicleInfo_177.NotInVehicle", "box_MultipleOR_180.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_177_Out()
    self:OnExit_box_GetPawnVehicleInfo_177_Out();
end;

function export:f_box_OutputOrder_v2_82_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_184();
    l0 = self.box_ContextualActionListener_184;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|484526175", "484526175", "UNI42_010_B02_main", "box_OutputOrder_v2_82.Out", "box_ContextualActionListener_184.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_82_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_272();
    l0 = self.box_Delay_v5_272;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|42034577", "42034577", "UNI42_010_B02_main", "box_OutputOrder_v2_82.Out", "box_Delay_v5_272.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_83_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_148();
    l0 = self.box_PlayDialog_v6_83;
    l1 = self.box_Delay_v5_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|48646324", "48646324", "UNI42_010_B02_main", "box_PlayDialog_v6_83.Finished", "box_Delay_v5_148.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_265_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_231();
    l0 = self.box_EntityStatusListener_265;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|546924628", "546924628", "UNI42_010_B02_main", "box_EntityStatusListener_265.Loaded", "box_UseContextualActionModifier_v3_231.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_138_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_142();
    l0 = self.box_OnceOnly_v3_138;
    l1 = self.box_PlayDialog_v6_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|864815896", "864815896", "UNI42_010_B02_main", "box_OnceOnly_v3_138.Out", "box_PlayDialog_v6_142.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_242_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_242;
    l1 = self.box_OnceOnly_v3_241;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|216121720", "216121720", "UNI42_010_B02_main", "box_Gate_v3_242.Out", "box_OnceOnly_v3_241.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NpcDestinationCheckListener_9_Disabled()
    local l0, l1;
    l0 = self.box_NpcDestinationCheckListener_9;
    l1 = self.box_MultipleOR_254;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|597748803", "597748803", "UNI42_010_B02_main", "box_NpcDestinationCheckListener_9.Disabled", "box_MultipleOR_254.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_NpcDestinationCheckListener_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_28();
    l0 = self.box_NpcDestinationCheckListener_9;
    l1 = self.box_VehicleListener_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|395498498", "395498498", "UNI42_010_B02_main", "box_NpcDestinationCheckListener_9.Enabled", "box_VehicleListener_v3_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_NpcDestinationCheckListener_9_Reachable()
    local l0, l1;
    l0 = self.box_NpcDestinationCheckListener_9;
    l1 = self.box_MultipleOR_254;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|819548498", "819548498", "UNI42_010_B02_main", "box_NpcDestinationCheckListener_9.Reachable", "box_MultipleOR_254.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NpcDestinationCheckListener_9_Unreachable()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_127();
    l0 = self.box_NpcDestinationCheckListener_9;
    l1 = self.box_Delay_v5_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1239907795", "1239907795", "UNI42_010_B02_main", "box_NpcDestinationCheckListener_9.Unreachable", "box_Delay_v5_127.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_17();
    l0 = self.box_MultipleOR_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|188229705", "188229705", "UNI42_010_B02_main", "box_MultipleOR_22.Out", "box_AddActivityObjective_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_235_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_149();
    l0 = self.box_OnceOnly_v3_235;
    l1 = self.box_PlayDialog_v6_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1431150570", "1431150570", "UNI42_010_B02_main", "box_OnceOnly_v3_235.Out", "box_PlayDialog_v6_149.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_206_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_206;
    l1 = self.box_OnceOnly_v3_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1388165816", "1388165816", "UNI42_010_B02_main", "box_Gate_v3_206.Out", "box_OnceOnly_v3_205.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_178_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_178;
    l1 = self.box_OnceOnly_v3_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1681428990", "1681428990", "UNI42_010_B02_main", "box_Gate_v3_178.Out", "box_OnceOnly_v3_194.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_247_OnAllSitting()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_247;
    l1 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1370005821", "1370005821", "UNI42_010_B02_main", "box_VehicleListener_v3_247.OnAllSitting", "box_MultipleOR_248.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleListener_v3_247_OnSit()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_247;
    l1 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1603342983", "1603342983", "UNI42_010_B02_main", "box_VehicleListener_v3_247.OnSit", "box_MultipleOR_248.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntityOutRange_286_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_290();
    l0 = self.box_Delay_v5_290;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1455475056", "1455475056", "UNI42_010_B02_main", "box_RemoveEntityOutRange_286.Out", "box_Delay_v5_290.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Gate_v3_236_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_236;
    l1 = self.box_OnceOnly_v3_235;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1697615305", "1697615305", "UNI42_010_B02_main", "box_Gate_v3_236.Out", "box_OnceOnly_v3_235.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_127_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_250();
    l0 = self.box_Delay_v5_127;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|81628113", "81628113", "UNI42_010_B02_main", "box_Delay_v5_127.TimeElapsed", "box_GetHealthState_250.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_289_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_209();
    l0 = self.box_EntityStatusListener_209;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|297458132", "297458132", "UNI42_010_B02_main", "box_Compare_Boolean_289.A_is_False", "box_EntityStatusListener_209.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_92_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_ProximityTrigger_v2_92;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1663619682", "1663619682", "UNI42_010_B02_main", "box_ProximityTrigger_v2_92.Enter", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_276_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|433138798", "433138798", "UNI42_010_B02_main", "box_Simple_Node_276.Out", "box_MultipleOR_277.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_111_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1298549631", "1298549631", "UNI42_010_B02_main", "box_EndActivityObjective_v2_111.Out", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_122_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_107();
    l0 = self.box_ExitZoneWarningListener_v3_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1107890920", "1107890920", "UNI42_010_B02_main", "box_OutputOrder_v2_122.Out", "box_ExitZoneWarningListener_v3_107.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_122_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_124();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|332987634", "332987634", "UNI42_010_B02_main", "box_OutputOrder_v2_122.Out", "box_FastTravelModifier_v2_124.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_217_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_215();
    l0 = self.box_VehicleListener_v3_217;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1495217418", "1495217418", "UNI42_010_B02_main", "box_VehicleListener_v3_217.OnSit", "box_SetBoolean_v2_215.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_158_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_21();
    l0 = self.box_OnceOnly_v3_158;
    l1 = self.box_PlayDialog_v6_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|640878079", "640878079", "UNI42_010_B02_main", "box_OnceOnly_v3_158.Out", "box_PlayDialog_v6_21.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_270_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_270_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_97();
    l0 = self.box_Delay_v5_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|337416250", "337416250", "UNI42_010_B02_main", "box_RandomFloat_v2_270.Out", "box_Delay_v5_97.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_209_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_207();
    l0 = self.box_EntityStatusListener_209;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1052860900", "1052860900", "UNI42_010_B02_main", "box_EntityStatusListener_209.Loaded", "box_VehicleModifier_v2_207.SetExplosion", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExplosion
    l1:Exec(17, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MovementListener_v2_120_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_213();
    l0 = self.box_MovementListener_v2_120;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1847175167", "1847175167", "UNI42_010_B02_main", "box_MovementListener_v2_120.Enabled", "box_Compare_Boolean_213.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MovementListener_v2_120_Idle()
    local l0, l1;
    self:OnExit_box_MovementListener_v2_120_Idle();
    l0 = self.box_MovementListener_v2_120;
    l1 = self.box_MultipleOR_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1361543071", "1361543071", "UNI42_010_B02_main", "box_MovementListener_v2_120.Idle", "box_MultipleOR_214.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MovementListener_v2_120_Moving()
    local l0, l1;
    self:OnExit_box_MovementListener_v2_120_Moving();
    l0 = self.box_MovementListener_v2_120;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1802891099", "1802891099", "UNI42_010_B02_main", "box_MovementListener_v2_120.Moving", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_143_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_125();
    l0 = self.box_Delay_v5_143;
    l1 = self.box_Gate_v3_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1361972196", "1361972196", "UNI42_010_B02_main", "box_Delay_v5_143.TimeElapsed", "box_Gate_v3_125.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_10();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|964862071", "964862071", "UNI42_010_B02_main", "box_OutputOrder_v2_19.Out", "box_VehicleModifier_v2_10.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(6, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_10();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|402966975", "402966975", "UNI42_010_B02_main", "box_OutputOrder_v2_19.Out", "box_VehicleModifier_v2_10.SetAsIndestructable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsIndestructable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_10();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1223043155", "1223043155", "UNI42_010_B02_main", "box_OutputOrder_v2_19.Out", "box_VehicleModifier_v2_10.SetCommandeerDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetCommandeerDisabled
    l0:Exec(9, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_102_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_159();
    l0 = self.box_EntityStatusListener_102;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2033064851", "2033064851", "UNI42_010_B02_main", "box_EntityStatusListener_102.Loaded", "box_UseContextualActionModifier_v3_159.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_102_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_159();
    l0 = self.box_EntityStatusListener_102;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1578454149", "1578454149", "UNI42_010_B02_main", "box_EntityStatusListener_102.Unloaded", "box_UseContextualActionModifier_v3_159.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_14_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_244();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|614599710", "614599710", "UNI42_010_B02_main", "box_VehicleSeatModifier_v2_14.Locked", "box_VehicleSeatModifier_v2_244.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BindMarkerOverHead_v2_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_79();
    l0 = self.box_BindMarkerOverHead_v2_59;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1570192996", "1570192996", "UNI42_010_B02_main", "box_BindMarkerOverHead_v2_59.Out", "box_GetHealthState_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_72_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_72_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|595545117", "595545117", "UNI42_010_B02_main", "box_SetEntity_v2_72.Out", "box_MultipleOR_258.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Entity_304_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_295();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1700381090", "1700381090", "UNI42_010_B02_main", "box_Compare_Entity_304.NotEqual", "box_IsValueNil_v3_295.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_25_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_25;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|208636936", "208636936", "UNI42_010_B02_main", "box_VehicleDamageListener_v2_25.Broken", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleDamageListener_v2_25_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_25;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|995314910", "995314910", "UNI42_010_B02_main", "box_VehicleDamageListener_v2_25.Destroyed", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_25_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_25;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2085725813", "2085725813", "UNI42_010_B02_main", "box_VehicleDamageListener_v2_25.Disabled", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_254_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_127();
    l0 = self.box_MultipleOR_254;
    l1 = self.box_Delay_v5_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1556471500", "1556471500", "UNI42_010_B02_main", "box_MultipleOR_254.Out", "box_Delay_v5_127.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_OnceOnly_v3_203_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_152();
    l0 = self.box_OnceOnly_v3_203;
    l1 = self.box_PlayDialog_v6_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1900014311", "1900014311", "UNI42_010_B02_main", "box_OnceOnly_v3_203.Out", "box_PlayDialog_v6_152.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_150_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_147();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1596321821", "1596321821", "UNI42_010_B02_main", "box_OutputOrder_v2_150.Out", "box_Simple_Node_147.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_150_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1719378549", "1719378549", "UNI42_010_B02_main", "box_OutputOrder_v2_150.Out", "box_MultipleOR_198.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_277_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_267();
    l0 = self.box_MultipleOR_277;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1682745064", "1682745064", "UNI42_010_B02_main", "box_MultipleOR_277.Out", "box_UseContextualActionModifier_v3_267.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_63_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_69();
    l0 = self.box_OnceOnly_v3_63;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|775207021", "775207021", "UNI42_010_B02_main", "box_OnceOnly_v3_63.Out", "box_Simple_Node_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_4_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_80();
    l0 = self.box_PlayDialog_v6_4;
    l1 = self.box_Delay_v5_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1518510756", "1518510756", "UNI42_010_B02_main", "box_PlayDialog_v6_4.Finished", "box_Delay_v5_80.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_110_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_115();
    l0 = self.box_ProximityRadiusListener_v3_110;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1087763137", "1087763137", "UNI42_010_B02_main", "box_ProximityRadiusListener_v3_110.SomeoneNear", "box_UseContextualActionModifier_v3_115.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_179_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|508312994", "508312994", "UNI42_010_B02_main", "box_OutputOrder_v2_179.Out", "box_MultipleOR_182.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_179_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_177();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1854885534", "1854885534", "UNI42_010_B02_main", "box_OutputOrder_v2_179.Out", "box_GetPawnVehicleInfo_177.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_74_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|603905460", "603905460", "UNI42_010_B02_main", "box_EndActivityObjective_v2_74.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_179();
    l0 = self.box_MultipleOR_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|197521936", "197521936", "UNI42_010_B02_main", "box_MultipleOR_38.Out", "box_OutputOrder_v2_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_290_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_291();
    l0 = self.box_Delay_v5_290;
    l1 = self.box_ProximityTrigger_v2_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|605888612", "605888612", "UNI42_010_B02_main", "box_Delay_v5_290.Started", "box_ProximityTrigger_v2_291.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_290_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_299();
    l0 = self.box_Delay_v5_290;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|393069291", "393069291", "UNI42_010_B02_main", "box_Delay_v5_290.TimeElapsed", "box_OutputOrder_v2_299.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_292();
    l0 = self.box_MultipleOR_55;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|347305405", "347305405", "UNI42_010_B02_main", "box_MultipleOR_55.Out", "box_OutputOrder_v2_292.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FastTravelModifier_v2_27_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AllowAutoDrive_v2_266();
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|176492991", "176492991", "UNI42_010_B02_main", "box_FastTravelModifier_v2_27.Disabled", "box_AllowAutoDrive_v2_266.DoNotAllow", clone:GetLuaBox(), l0:GetLuaBox());
    -- DoNotAllow
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_133_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1233468304", "1233468304", "UNI42_010_B02_main", "box_OutputOrder_v2_133.Out", "box_MultipleOR_135.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_133_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|387726861", "387726861", "UNI42_010_B02_main", "box_OutputOrder_v2_133.Out", "box_MultipleOR_136.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_263_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_261();
    l0 = self.box_Delay_v5_263;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1058234866", "1058234866", "UNI42_010_B02_main", "box_Delay_v5_263.TimeElapsed", "box_UseContextualActionModifier_v3_261.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_194_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_33();
    l0 = self.box_OnceOnly_v3_194;
    l1 = self.box_PlayDialog_v6_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|710668782", "710668782", "UNI42_010_B02_main", "box_OnceOnly_v3_194.Out", "box_PlayDialog_v6_33.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_40_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_30();
    l0 = self.box_ProximityRadiusListener_v3_40;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|729713455", "729713455", "UNI42_010_B02_main", "box_ProximityRadiusListener_v3_40.SomeoneFar", "box_VehicleModifier_v2_30.SetExplosion", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExplosion
    l1:Exec(17, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_214_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_137();
    l0 = self.box_MultipleOR_214;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|679851822", "679851822", "UNI42_010_B02_main", "box_MultipleOR_214.Out", "box_Compare_Boolean_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_47_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_129();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|957464444", "957464444", "UNI42_010_B02_main", "box_UseContextualActionModifier_v3_47.Disabled", "box_SetBoolean_v2_129.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_5_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_196();
    l0 = self.box_Delay_v5_5;
    l1 = self.box_Gate_v3_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|205096033", "205096033", "UNI42_010_B02_main", "box_Delay_v5_5.TimeElapsed", "box_Gate_v3_196.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_AllowAutoDrive_v2_271_OnAllow()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_103();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|903149805", "903149805", "UNI42_010_B02_main", "box_AllowAutoDrive_v2_271.OnAllow", "box_ActivityEnd_103.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_52_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_224();
    l0 = self.box_PlayDialog_v6_52;
    l1 = self.box_Delay_v5_224;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|253126855", "253126855", "UNI42_010_B02_main", "box_PlayDialog_v6_52.Finished", "box_Delay_v5_224.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_99_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_229();
    l0 = self.box_Delay_v5_99;
    l1 = self.box_SoundModifier_v2_229;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1702016160", "1702016160", "UNI42_010_B02_main", "box_Delay_v5_99.TimeElapsed", "box_SoundModifier_v2_229.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_166_None()
    local l0, l1;
    l0 = self.box_Switch_166;
    l1 = self.box_MultipleOR_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1092218804", "1092218804", "UNI42_010_B02_main", "box_Switch_166.None", "box_MultipleOR_170.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_166_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_162();
    l0 = self.box_Switch_166;
    l1 = self.box_Delay_v5_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1315426770", "1315426770", "UNI42_010_B02_main", "box_Switch_166.Output", "box_Delay_v5_162.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Switch_166_Output_1()
    local l0, l1;
    l0 = self.box_Switch_166;
    l1 = self.box_MultipleOR_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1419870349", "1419870349", "UNI42_010_B02_main", "box_Switch_166.Output", "box_MultipleOR_170.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_142_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_144();
    l0 = self.box_PlayDialog_v6_142;
    l1 = self.box_Delay_v5_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1182995482", "1182995482", "UNI42_010_B02_main", "box_PlayDialog_v6_142.Finished", "box_Delay_v5_144.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Entity_293_NotEqual()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_305;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2116095105", "2116095105", "UNI42_010_B02_main", "box_Compare_Entity_293.NotEqual", "box_MultipleOR_305.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleModifier_v2_121_OnSetAsDestructible()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_14();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1342365194", "1342365194", "UNI42_010_B02_main", "box_VehicleModifier_v2_121.OnSetAsDestructible", "box_VehicleSeatModifier_v2_14.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_121_OnSetAsUsable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_121();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|495953509", "495953509", "UNI42_010_B02_main", "box_VehicleModifier_v2_121.OnSetAsUsable", "box_VehicleModifier_v2_121.SetAsDestructable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsDestructable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_141_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1900883104", "1900883104", "UNI42_010_B02_main", "box_OutputOrder_v2_141.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_141_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|399470931", "399470931", "UNI42_010_B02_main", "box_OutputOrder_v2_141.Out", "box_OnceOnly_v3_134.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_187_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_189();
    l0 = self.box_EntityStatusListener_187;
    l1 = self.box_MultipleAND_v2_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1664704475", "1664704475", "UNI42_010_B02_main", "box_EntityStatusListener_187.Loaded", "box_MultipleAND_v2_189.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_PlayDialog_v6_91_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_77();
    l0 = self.box_PlayDialog_v6_91;
    l1 = self.box_Delay_v5_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|910615103", "910615103", "UNI42_010_B02_main", "box_PlayDialog_v6_91.Finished", "box_Delay_v5_77.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Boolean_137_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_126();
    l0 = self.box_Delay_v5_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|877814193", "877814193", "UNI42_010_B02_main", "box_Compare_Boolean_137.A_is_False", "box_Delay_v5_126.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_137_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_150();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1777677630", "1777677630", "UNI42_010_B02_main", "box_Compare_Boolean_137.A_is_True", "box_OutputOrder_v2_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_305_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_296();
    l0 = self.box_MultipleOR_305;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1256219639", "1256219639", "UNI42_010_B02_main", "box_MultipleOR_305.Out", "box_GroupAddToGroup_v2_296.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_256_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_256;
    l1 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|748797216", "748797216", "UNI42_010_B02_main", "box_HealthListener_v6_256.Revived", "box_MultipleOR_255.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleSeatModifier_v2_244_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_245();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2027533821", "2027533821", "UNI42_010_B02_main", "box_VehicleSeatModifier_v2_244.Locked", "box_VehicleSeatModifier_v2_245.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_129_Out()
    self:OnExit_box_SetBoolean_v2_129_Out();
end;

function export:f_box_OutputOrder_v2_173_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_162();
    l0 = self.box_Delay_v5_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|530453882", "530453882", "UNI42_010_B02_main", "box_OutputOrder_v2_173.Out", "box_Delay_v5_162.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_173_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_145();
    l0 = self.box_Delay_v5_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1864864003", "1864864003", "UNI42_010_B02_main", "box_OutputOrder_v2_173.Out", "box_Delay_v5_145.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_VehicleListener_v3_49_Enabled()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_49;
    l1 = self.box_CoopActivePlayers_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|43228515", "43228515", "UNI42_010_B02_main", "box_VehicleListener_v3_49.Enabled", "box_CoopActivePlayers_37.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_VehicleListener_v3_49_OnAllSitting()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_VehicleListener_v3_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1792215692", "1792215692", "UNI42_010_B02_main", "box_VehicleListener_v3_49.OnAllSitting", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_49_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_VehicleListener_v3_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1868275951", "1868275951", "UNI42_010_B02_main", "box_VehicleListener_v3_49.OnStandUp", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_232_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_232;
    l1 = self.box_OnceOnly_v3_220;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|736700223", "736700223", "UNI42_010_B02_main", "box_Gate_v3_232.Out", "box_OnceOnly_v3_220.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_169_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_273();
    l0 = self.box_MultipleOR_169;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1255564570", "1255564570", "UNI42_010_B02_main", "box_MultipleOR_169.Out", "box_RandomFloat_v2_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_144_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_151();
    l0 = self.box_Delay_v5_144;
    l1 = self.box_Gate_v3_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2088629010", "2088629010", "UNI42_010_B02_main", "box_Delay_v5_144.TimeElapsed", "box_Gate_v3_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|150219776", "150219776", "UNI42_010_B02_main", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_98();
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1002161474", "1002161474", "UNI42_010_B02_main", "box_ActivityAcknowledgeGate_2.Reloaded", "box_SetBoolean_v2_98.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_248_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RadioModifier_v3_26();
    l0 = self.box_MultipleOR_248;
    l1 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|948657105", "948657105", "UNI42_010_B02_main", "box_MultipleOR_248.Out", "box_RadioModifier_v3_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_275_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_276();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|396893143", "396893143", "UNI42_010_B02_main", "box_Simple_Node_275.Out", "box_Simple_Node_276.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_108();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|71969877", "71969877", "UNI42_010_B02_main", "box_ActivityInitialized_3.Out", "box_GetPlayerGroup_v2_108.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|@CarIsLoaded");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_191_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|@CarSetup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_31_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|@FailWatch");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_67_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|@HurkWatch");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_106_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_243()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|@KillAllDialog");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_243_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|@ListenerCleanup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_71_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|@SkipQCA");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_69_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|@Start Get in the Car VO");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_174_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|@StartFollowBrick");
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
                [0] = self.f_box_OutputOrder_v2_112_Out_0,
                [1] = self.f_box_OutputOrder_v2_112_Out_1,
                [2] = self.f_box_OutputOrder_v2_112_Out_2,
                [3] = self.f_box_OutputOrder_v2_112_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_285()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_285");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|@StartVO");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_285_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|@Stop Get in the Car VO");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_175_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_283()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_283");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|@Success");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_283_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_301()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_301");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|15944484");
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
                [0] = self.f_box_OutputOrder_v2_301_Out_0,
                [1] = self.f_box_OutputOrder_v2_301_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|17303200");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|24845179");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_39_Out,
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = true,
        -- LockStationSwitching,
        [3] = true,
        -- StationOverride,
        [4] = "9015204464967465",
        -- TargetRadio,
        [5] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_81()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "843120210",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_292()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_292");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|44569017");
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
                [0] = self.f_box_OutputOrder_v2_292_Out_0,
                [1] = self.f_box_OutputOrder_v2_292_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_274()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_274");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|51555429");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_274_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_274_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Reloaded,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|77791849");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "E7_CultLocation_01_QUEST_B10_FAIL",
            id = "592364",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_165()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2529478452",
    };
    return params;
end;

function export:OnEnter_box_AllowAutoDrive_v2_266()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AllowAutoDrive_v2_266");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|113732847");
    l0:SetConnections({
        -- OnDoNotAllow,
        [1] = self.f_box_AllowAutoDrive_v2_266_OnDoNotAllow,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|145151374");
    l0:SetConnections({
        -- Down,
        [2] = self.f_box_GetHealthState_79_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_79_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|172724217");
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
                [0] = self.f_box_OutputOrder_v2_153_Out_0,
                [1] = self.f_box_OutputOrder_v2_153_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|173660245");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2103745059580063806",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|175915931");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_131_Out,
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
        -- StationOverride,
        [4] = "9015204464899149",
        -- TargetRadio,
        [5] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|223273342");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI42_010_B10_ReviveJunior",
            id = "705556",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_130()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|275237397");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_98_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehiclePositionLockModifier_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehiclePositionLockModifier_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|277617390");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehiclePositionLockModifier_18_Unlocked,
    });
    params = {
        -- VehicleEntity,
        [0] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_296()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_296");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|286025496");
    l0:SetConnections({
    });
    l0 = self.box_ProximityTrigger_v2_291;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(0),
        -- ToGroup,
        [1] = "#1482B6A5",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|303351822");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_26_Out,
    });
    params = {
        -- Enable,
        [0] = true,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = true,
        -- LockStationSwitching,
        [3] = true,
        -- StationOverride,
        [4] = "9015204464967465",
        -- TargetRadio,
        [5] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_184()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2105599668351158382",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_249()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_249");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|331780268");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_249_Unlocked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 1,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|332364215");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_24_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2103793314347109365",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|341656883");
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
                [0] = self.f_box_OutputOrder_v2_160_Out_0,
                [1] = self.f_box_OutputOrder_v2_160_Out_1,
                [2] = self.f_box_OutputOrder_v2_160_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103793314347109365",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_162()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|360131737");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_105_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103772949036165325",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|363094054");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_48_Out,
    });
    params = {
        -- Enable,
        [0] = true,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- StationOverride,
        [4] = "9015290477595379",
        -- TargetRadio,
        [5] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_107()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2104454741456109144",
        -- WarningZoneTrigger,
        [3] = "2104454449941495383",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|389163123");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_148()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|434117460");
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
                [0] = self.f_box_OutputOrder_v2_139_Out_0,
                [1] = self.f_box_OutputOrder_v2_139_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_284()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_284");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|445258189");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_284_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104353421761986399",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_113()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|460318326");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_FastTravelModifier_v2_124_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_89()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "532129301",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_303()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_303");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|504891224");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_303_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_36()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015206727351417",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|507267827");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_208_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|510851939");
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

function export:OnEnter_box_Delay_v5_230()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_152()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2791052978",
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V4_12()
    local params;
    params = {
        -- eNPC,
        [0] = self.GFH_Junior,
        -- Interrupt STP on Talk,
        [1] = true,
        -- oObjective,
        [2] = {
            section = "Objectives",
            item = "UNI42_010_B10_TalkToJunior",
            id = "570177",
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_211()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "532129301",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|520405757");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_213_A_is_False,
    });
    params = {
        -- A,
        [0] = self.IsCarMoving,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|531862304");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_240()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|541127021");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_215_Out,
    });
    params = {
        -- Bool,
        [0] = self.StoppedCar,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|552712004");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_50_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101441260771390412",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|568309784");
    l0:SetConnections({
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_114_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103772949036165325",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_273()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_273");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|579285702");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_273_Out,
    });
    params = {
        -- Max,
        [0] = 12,
        -- Min,
        [1] = 8,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_269()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_269");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|580250169");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_269_Unlocked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 1,
        -- vehicleEntity,
        [4] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_238()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_259()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_259");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|600392416");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_259_Unlocked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_264()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_264");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|601855889");
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
                [0] = self.f_box_OutputOrder_v2_264_Out_0,
                [1] = self.f_box_OutputOrder_v2_264_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|607546575");
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

function export:OnEnter_box_SoundModifier_v2_229()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "500088707",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_28()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.GFH_Junior,
        -- vehicle,
        [4] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_202()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_35()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.GFH_Junior,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103793314347109365",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|652506020");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2105821340689791538",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_298()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#1482B6A5",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_58()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100118268713915611",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_225()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.4,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_193()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|700222376");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_46_Out,
    });
    params = {
        -- Entity,
        [0] = "2100118268713915611",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|706800501");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_171_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_154()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103870601667024469",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|712475908");
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
                [0] = self.f_box_OutputOrder_v2_186_Out_0,
                [1] = self.f_box_OutputOrder_v2_186_Out_1,
                [2] = self.f_box_OutputOrder_v2_186_Out_2,
                [3] = self.f_box_OutputOrder_v2_186_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_80()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.4,
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|728306659");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_93_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = self.GFH_Junior,
        -- vehicle,
        [2] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_149()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2791052978",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|758000138");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
                [2] = self.f_box_OutputOrder_v2_53_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|758634995");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_87_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2103793248601394158",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_164()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1610730874",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_125()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_96()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1246416004",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_212()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.4,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_279()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|811045289");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_279_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_279_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101441260771390412",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_223()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_257()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_257");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|817505955");
    l0:SetConnections({
        -- Down,
        [2] = self.f_box_GetHealthState_257_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_257_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_224()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.4,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|845791751");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_231_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105821340689791538",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_151()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_261()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_261");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|877412541");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_261_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_261_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_261_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105821192559550850",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_234()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|891339045");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_94_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2103793315139832822",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_267");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|897961318");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_267_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_267_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104353421761986399",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_297()
    local params;
    params = {
        -- Group,
        [0] = "#1482B6A5",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_68()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1416536216",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_155()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103870601667024469",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|911500951");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_104_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_104_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Reloaded,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|926370506");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|941953410");
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
                [0] = self.f_box_OutputOrder_v2_62_Out_0,
                [1] = self.f_box_OutputOrder_v2_62_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|955312738");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_17_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI42_010_B10_ReviveJunior",
            id = "705556",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|963557498");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_128_Out,
    });
    params = {
        -- Bool,
        [0] = self.StoppedCar,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_291()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105794337594941095",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|965219437");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_108_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_21()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "4005098475",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|992283494");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_15_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_15_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105599668351158382",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_272()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
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
        [2] = "2103793315139832822",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1009499294");
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

function export:OnEnter_box_VehicleSeatModifier_v2_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1026721978");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_245_Locked,
    });
    params = {
        -- IsAI,
        [0] = false,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 1,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1027368701");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_88_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104633309211426285",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_299()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_299");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1031006156");
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
                [0] = self.f_box_OutputOrder_v2_299_Out_0,
                [1] = self.f_box_OutputOrder_v2_299_Out_1,
                [2] = self.f_box_OutputOrder_v2_299_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_157()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1036779424");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_85()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.GFH_Junior,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103793248601394158",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1055687814");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_32_Out,
    });
    params = {
        -- Entity,
        [0] = "2100118268713915611",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1096609172");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1112891542");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_181_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_181_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_181_Out,
    });
    params = {
        -- pawn,
        [0] = self.Host,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_156()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3955467122",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1146587462");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_73_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_73_True,
    });
    params = {
        -- entityId,
        [0] = "2100118268713915611",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_260()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1182006863");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_260_Unlocked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 2,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_295()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_295");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1184068497");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_295_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_295_Yes,
    });
    params = {
        -- ent,
        [4] = self.eClientVehicle,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_189()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Follow_NPC_Vehicle_v6_8()
    local params;
    params = {
        -- bRequiresObjective,
        [0] = true,
        -- Destination,
        [1] = "2099821045841143905",
        -- fDistanceFail,
        [2] = 192,
        -- fDistanceSuccess,
        [3] = 48,
        -- fDistanceWarning,
        [4] = 128,
        -- FollowTarget,
        [5] = self.GFH_Junior,
        -- IsPersistentCharacter,
        [6] = false,
        -- oObjective,
        [7] = {
            section = "Objectives",
            item = "UNI42_010_B10_GoToLocationA",
            id = "550387",
        },
        -- opt_Target_MobileMarker,
        [9] = "2101910054574785118",
        -- oWarningMsg,
        [10] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj4",
            id = "875092",
        },
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1211544823");
    l0:SetConnections({
        -- OnSetCommandeerDisabled,
        [9] = self.f_box_VehicleModifier_v2_10_OnSetCommandeerDisabled,
    });
    params = {
        -- targets,
        [0] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_252()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_221()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "632510140",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_188()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100118268713915611",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_163()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2223229897",
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_250()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_250");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1296708228");
    l0:SetConnections({
        -- Down,
        [2] = self.f_box_GetHealthState_250_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_250_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1297914649");
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

function export:OnEnter_box_Delay_v5_145()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_190()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100118264393782409",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1318707784");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_246_Locked,
    });
    params = {
        -- IsAI,
        [0] = false,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 2,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_86()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_280()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_280");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1324352808");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_280_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = false,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 1,
        -- vehicleEntity,
        [4] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1326677206");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_132_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104633309211426285",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_196()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_77()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.4,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_200()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_302()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_302");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1357128700");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_302_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1369796526");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Escort_NPC_To_Position",
            item = "BRICK_Escort_NPC_FailTooFar",
            id = "376650",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_282()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_282");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1372939006");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_282_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105736212066093190",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_278()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.GFH_Junior,
        -- vehicle,
        [4] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_16()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2104353421761986399",
    };
    return params;
end;

function export:OnEnter_box_MovementListener_v2_262()
    local params;
    params = {
        -- angleThreshold,
        [0] = 0.1,
        -- autoDisable,
        [1] = true,
        -- entityGroup,
        [2] = self.Car,
        -- movingThreshold,
        [3] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1395970766");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_115_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103772949036165325",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_287()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_287");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1398526386");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_287_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_287_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_287_Out,
    });
    l0 = self.box_CoopActivePlayers_123;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_204()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1405884573");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_172_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_146()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_268()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_268");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1456828879");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_268_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105599668351158382",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1462907553");
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
                [0] = self.f_box_OutputOrder_v2_109_Out_0,
                [1] = self.f_box_OutputOrder_v2_109_Out_1,
            },
            count = 2,
        },
    });
    params = {
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
        [2] = "2103793248601394158",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_219()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_126()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_119()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_33()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1926191068",
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1552357357");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_177_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_177_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_177_Out,
    });
    params = {
        -- pawn,
        [0] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1561813465");
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
                [0] = self.f_box_OutputOrder_v2_82_Out_0,
                [1] = self.f_box_OutputOrder_v2_82_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_83()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3955467122",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_265()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2105821340689791538",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_242()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_NpcDestinationCheckListener_9()
    local params;
    params = {
        -- Agent,
        [0] = self.GFH_Junior,
        -- AutoDisable,
        [1] = false,
        -- Destination,
        [2] = self.Car,
        -- DestinationToleranceDistance,
        [3] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_206()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_178()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_247()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.GFH_Junior,
        -- vehicle,
        [4] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntityOutRange_286()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntityOutRange_286");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1614593983");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntityOutRange_286_Out,
    });
    params = {
        -- Range,
        [0] = 50,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_236()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_127()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1620603398");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_289()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_289");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1647108372");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_289_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bDriveCompleted,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_92()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.GFH_Junior,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103793315139832822",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_276()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_276");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1661770414");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_276_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1669946090");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_111_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI42_010_B10_TalkToJunior",
            id = "570177",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1675956550");
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
                [0] = self.f_box_OutputOrder_v2_122_Out_0,
                [1] = self.f_box_OutputOrder_v2_122_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_281()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_281");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1679285712");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "UNI42_010_B02 - Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_217()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.GFH_Junior,
        -- vehicle,
        [4] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_270()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_270");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1692308180");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_270_Out,
    });
    params = {
        -- Max,
        [0] = 3,
        -- Min,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_209()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100118268713915611",
    };
    return params;
end;

function export:OnEnter_box_MovementListener_v2_120()
    local params;
    params = {
        -- angleThreshold,
        [0] = 0.1,
        -- autoDisable,
        [1] = false,
        -- entityGroup,
        [2] = self.Car,
        -- movingThreshold,
        [3] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_143()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1733857594");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_102()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103745059580063806",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1747843189");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_14_Locked,
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
        [4] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_BindMarkerOverHead_v2_59()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- eMobileMarker,
        [1] = "2101910054574785118",
        -- eNPC,
        [2] = self.GFH_Junior,
        -- fHeight,
        [3] = 0.45,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1758981856");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_72_Out,
    });
    params = {
        -- Entity,
        [0] = self._sld_vehicle_box_GetPawnVehicleInfo_287,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_304()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_304");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1762566224");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_304_NotEqual,
    });
    l0 = self.box_ProximityTrigger_v2_291;
    params = {
        -- Entity1,
        [0] = self.Car,
        -- Entity2,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_25()
    local params;
    params = {
        -- Vehicle,
        [0] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1779838640");
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
        [8] = "Fake Player Added",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_300()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_300");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1780618971");
    l0:SetConnections({
    });
    l0 = self.box_GroupSizeListener_v5_298;
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- int,
        [6] = l0:GetDataOutValue(1),
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Hurk_Removing_Vehicles_Near_Driveway",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1783593575");
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
                [0] = self.f_box_OutputOrder_v2_150_Out_0,
                [1] = self.f_box_OutputOrder_v2_150_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_4()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1789098607",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_110()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Player_Group,
        -- id2,
        [3] = self.GFH_Junior,
        -- nearZone,
        [4] = 4.5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_76()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3086316816",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1817484567");
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
                [0] = self.f_box_OutputOrder_v2_179_Out_0,
                [1] = self.f_box_OutputOrder_v2_179_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1819528442");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_74_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI42_010_B10_TalkToJunior",
            id = "570177",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_222()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3086316816",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_290()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1845524739");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_27_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1850379475");
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

function export:OnEnter_box_Delay_v5_263()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_40()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.GFH_Junior,
        -- farZone,
        [2] = 30,
        -- id2,
        [3] = self.Car,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1900424468");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_47_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101441260771390412",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_5()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.4,
    };
    return params;
end;

function export:OnEnter_box_AllowAutoDrive_v2_271()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AllowAutoDrive_v2_271");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1924767884");
    l0:SetConnections({
        -- OnAllow,
        [0] = self.f_box_AllowAutoDrive_v2_271_OnAllow,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_52()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "155942083",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_99()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4.5,
    };
    return params;
end;

function export:OnEnter_box_Switch_166()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_142()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "997332065",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_293()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_293");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1950755425");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_293_NotEqual,
    });
    l0 = self.box_ProximityTrigger_v2_291;
    params = {
        -- Entity1,
        [0] = self.eClientVehicle,
        -- Entity2,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1955006761");
    l0:SetConnections({
        -- OnSetAsDestructible,
        [3] = self.f_box_VehicleModifier_v2_121_OnSetAsDestructible,
        -- OnSetAsUsable,
        [7] = self.f_box_VehicleModifier_v2_121_OnSetAsUsable,
    });
    params = {
        -- targets,
        [0] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_140()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "288186606",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|1958884825");
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
                [0] = self.f_box_OutputOrder_v2_141_Out_0,
                [1] = self.f_box_OutputOrder_v2_141_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_187()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100118268713915611",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_91()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "632510140",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2002204565");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_137_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_137_A_is_True,
    });
    params = {
        -- A,
        [0] = self.StoppedCar,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_256()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_244()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2090335830");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_244_Locked,
    });
    params = {
        -- IsAI,
        [0] = false,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2104800391");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_129_Out,
    });
    params = {
        -- Bool,
        [0] = self.StoppedCar,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2111347975");
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
                [0] = self.f_box_OutputOrder_v2_173_Out_0,
                [1] = self.f_box_OutputOrder_v2_173_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2112565871");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleDestroyed",
            id = "432249",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_49()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = self.Car,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_232()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_144()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_275()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_275");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B02.domino|@UNI42_010_B02_main|2143635631");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_275_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_98_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Reloaded = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_37_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_37;
    self.Host = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_37_PlayerAdded()
    local l0;
    l0 = self.box_CoopActivePlayers_37;
    self.Client = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_37_PlayerRemoved()
    local l0;
    l0 = self.box_CoopActivePlayers_37;
    self.Client = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_37_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_37;
    self.Host = l0:GetDataOutValue(0);
    self.Client = l0:GetDataOutValue(1);
end;

function export:OnExit_box_CharacterLoadedIdListener_36_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_36;
    self.GFH_Junior = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_208_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bDriveCompleted = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_215_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.StoppedCar = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_273_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_168;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_46_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Car = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_128_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.StoppedCar = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_108_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Player_Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Car = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_181_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.I_shouldnt_need_this_stupid_variable = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_181_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.I_shouldnt_need_this_stupid_variable = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_181_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.I_shouldnt_need_this_stupid_variable = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_287_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_287 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_287_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_287 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_287_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_287 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_177_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.I_shouldnt_need_this_stupid_variable = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_177_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.I_shouldnt_need_this_stupid_variable = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_177_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.I_shouldnt_need_this_stupid_variable = l0:GetDataOutValue(2);
end;

function export:OnExit_box_RandomFloat_v2_270_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_97;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MovementListener_v2_120_Idle()
    local l0;
    l0 = self.box_MovementListener_v2_120;
    self.IsCarMoving = l0:GetDataOutValue(1);
end;

function export:OnExit_box_MovementListener_v2_120_Moving()
    local l0;
    l0 = self.box_MovementListener_v2_120;
    self.IsCarMoving = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetEntity_v2_72_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eClientVehicle = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_129_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.StoppedCar = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Target_TooFar()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Target_TooFar" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="fDistanceFail" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="fDistanceWarning" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="FollowTarget" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="oWarningMsg" AnchorDynType="0" DataTypeID="oasis" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
