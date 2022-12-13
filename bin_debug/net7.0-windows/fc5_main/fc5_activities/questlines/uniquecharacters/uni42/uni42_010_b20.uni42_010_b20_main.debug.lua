LUACO{
 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni42/uni42_010_b20.domino
-- User graph: UNI42_010_B20_main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NpcDestinationCheckListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/CreateVector3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ForceExitVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/ForceVehicleCrash.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MovementListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/AllowAutoDrive_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleHealthListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2081227071.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2091915765.bnk]], "CSoundResource");
        cboxRes:LoadResource([[651995933.bnk]], "CSoundResource");
        cboxRes:LoadResource([[399354770.bnk]], "CSoundResource");
        cboxRes:LoadResource([[467655077.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2128148481.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3760761181.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1800364368.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2017657925.bnk]], "CSoundResource");
        cboxRes:LoadResource([[152175496.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3160911581.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3095308672.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3067731274.bnk]], "CSoundResource");
        cboxRes:LoadResource([[503435706.bnk]], "CSoundResource");
        cboxRes:LoadResource([[500088707.bnk]], "CSoundResource");
        cboxRes:LoadResource([[668173769.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3836366129.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2529478452.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2223229897.bnk]], "CSoundResource");
        cboxRes:LoadResource([[186801429.bnk]], "CSoundResource");
        cboxRes:LoadResource([[68139709.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1185118050.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1610730874.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.UNI42_010_B20 = nil;
    Globals.UNI42_010_B20 = {
        bHurkInVehicle = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI42/UNI42_010_B20.UNI42_010_B20_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/CompareFloats.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
            [2] = {
                name = "Tolerance",
                type = "float",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/CreateVector3.lua")] = {
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
                name = "x",
                type = "float",
            },
            [1] = {
                name = "y",
                type = "float",
            },
            [2] = {
                name = "z",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "vector3",
                type = "list",
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
    metadataTable[GetPathID("Domino/System/ForceVehicleCrash.lua")] = {
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
                name = "gasPedal",
                type = "float",
            },
            [1] = {
                name = "steeringWheel",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/GetDistance.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Distance2D",
            },
            [1] = {
                name = "Distance3D",
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
                name = "Distance",
                type = "float",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/VehicleHealthListener_v2.lua")] = {
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
                name = "HealthChanged",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Vehicle",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Health",
                type = "float",
            },
            [1] = {
                name = "Instigator",
                type = "entity",
            },
            [2] = {
                name = "MaxHealth",
                type = "float",
            },
        },
        dataOutCount = 3,
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
    self._name = "UNI42_010_B20_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main";
    self.VehiclePatrolPath = nil;
    self.ModulateSpeed = nil;
    self.f_max = 0;
    self.f_current = 0;
    self.VehicleState = 7;
    self.objective = {
        section = "",
        item = "",
        id = "",
    };
    self.last_value = 0;
    self.StoppedCar = false;
    self.IsCarMoving = false;
    self.HurkTruck = nil;
    self.HurkJr = nil;
    self.gp_players = nil;
    self.eHost = nil;
    self.box_HealthListener_v6_120 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|4034368");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_120_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_120_Killed,
    });
    self.box_DisplayCustomUIMsg_v5_101 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|4784023");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_101_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v5_101_OnHide,
    });
    self.box_Music_Quest_v2_93 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|9180914");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_Music_Quest_v2_93_Stopped,
    });
    self.box_OnceOnly_v3_55 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|14685218");
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
                [0] = self.f_box_OnceOnly_v3_55_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_240 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|27253896");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_240_Loaded,
    });
    self.box_MultipleOR_281 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_281;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_281");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|32799659");
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
        [0] = self.f_box_MultipleOR_281_Out,
    });
    self.box_ProximityTrigger_v2_193 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|37623757");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_193_Enter,
    });
    self.box_VehicleDamageListener_v2_403 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_403;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_403");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|59405946");
    l0:SetConnections({
        -- BoxDisabled,
        [0] = self.f_box_VehicleDamageListener_v2_403_BoxDisabled,
        -- MinorDamage,
        [6] = self.f_box_VehicleDamageListener_v2_403_MinorDamage,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|62515451");
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
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|64470706");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_PlayDialog_v6_173 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|89735773");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_284 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_284");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|118877935");
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
                [0] = self.f_box_OnceOnly_v3_284_Out_0,
            },
            count = 2,
        },
    });
    self.box_ExitZoneWarningListener_v3_272 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_272;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_272");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|151587370");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_272_FailingZoneEntered,
    });
    self.box_PlayDialog_v6_172 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|153908137");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_285 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_285;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_285");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|164340897");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_89 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|177322672");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_89_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_89_FinishedInterrupted,
    });
    self.box_Music_Quest_v2_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|184515812");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_Music_Quest_v2_24_Stopped,
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|192802395");
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
        [0] = self.f_box_MultipleOR_42_Out,
    });
    self.box_VehicleListener_v3_323 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_323;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_323");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|205367905");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_323_OnSit,
    });
    self.box_Delay_v5_280 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_280;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_280");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|209170740");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_280_TimeElapsed,
    });
    self.box_HealthListener_v6_3 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|211895204");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_3_Killed,
    });
    self.box_OnceOnly_v3_339 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_339;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_339");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|248517621");
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
                [0] = self.f_box_OnceOnly_v3_339_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_181 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|252031624");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_181_Loaded,
    });
    self.box_SpawnAI_256 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_256;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_256");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|252630161");
    l0:SetConnections({
    });
    self.box_Delay_v5_270 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_270;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_270");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|257376380");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_270_TimeElapsed,
    });
    self.box_PlayDialog_v6_273 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_273;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_273");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|260411730");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_273_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_273_FinishedInterrupted,
    });
    self.box_Music_Quest_v2_87 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|277257973");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_Music_Quest_v2_87_Stopped,
    });
    self.box_PlayDialog_v6_338 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_338;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_338");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|307666019");
    l0:SetConnections({
    });
    self.box_VehicleListener_v3_331 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_331;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_331");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|321937432");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_331_OnSit,
    });
    self.box_OnceOnly_v3_221 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|332376321");
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
                [0] = self.f_box_OnceOnly_v3_221_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_207 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|347174810");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_182 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|362757071");
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
                [0] = self.f_box_OnceOnly_v3_182_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_99 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|367914346");
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
                [0] = self.f_box_OnceOnly_v3_99_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_262 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_262;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_262");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|368812726");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_262_Finished,
    });
    self.box_MultipleOR_278 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_278");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|372690291");
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
        [0] = self.f_box_MultipleOR_278_Out,
    });
    self.box_SpawnAI_296 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_296;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_296");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|383343046");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_296_Spawned,
    });
    self.box_PlayDialog_v6_340 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_340;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_340");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|383576952");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_217 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|389832883");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_217_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_217_FinishedInterrupted,
    });
    self.box_Delay_v5_438 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_438;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_438");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|398182403");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_438_TimeElapsed,
    });
    self.box_Delay_v5_269 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_269;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_269");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|444865090");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_269_TimeElapsed,
    });
    self.box_MultipleOR_222 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|452120393");
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
        [0] = self.f_box_MultipleOR_222_Out,
    });
    self.box_MultipleOR_132 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|461087915");
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
        [0] = self.f_box_MultipleOR_132_Out,
    });
    self.box_MultipleOR_100 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|479939741");
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
        [0] = self.f_box_MultipleOR_100_Out,
    });
    self.box_SpawnAI_298 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_298;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_298");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|484203390");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_298_Spawned,
    });
    self.box_MultipleOR_265 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_265;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_265");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|489381355");
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
        [0] = self.f_box_MultipleOR_265_Out,
    });
    self.box_Music_Quest_v2_346 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_346;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_346");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|489861319");
    l0:SetConnections({
    });
    self.box_BindMarkerOverHead_v2_312 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
    l0 = self.box_BindMarkerOverHead_v2_312;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_v2_312");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|493894291");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BindMarkerOverHead_v2_312_Out,
    });
    self.box_Delay_v5_168 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|502710150");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_168_TimeElapsed,
    });
    self.box_MultipleOR_144 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|552339365");
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
        [0] = self.f_box_MultipleOR_144_Out,
    });
    self.box_EntityStatusListener_211 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|554398999");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_211_Loaded,
    });
    self.box_ProximityTrigger_v2_230 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|572932145");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_230_Enter,
    });
    self.box_OnceOnly_v3_71 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|575349890");
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
                [0] = self.f_box_OnceOnly_v3_71_Out_0,
            },
            count = 2,
        },
    });
    self.box_Random_342 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_342;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_342");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|577232402");
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
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_342_Output_0,
                [1] = self.f_box_Random_342_Output_1,
                [2] = self.f_box_Random_342_Output_2,
                [3] = self.f_box_Random_342_Output_3,
                [4] = self.f_box_Random_342_Output_4,
            },
            count = 5,
        },
    });
    self.box_EntityStatusListener_294 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_294;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_294");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|578303485");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_294_Loaded,
    });
    self.box_ProximityTrigger_v2_364 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_364;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_364");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|581902606");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_364_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_364_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_364_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_364_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_364_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_364_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_364_Use,
    });
    self.box_PlayDialog_v6_260 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|585714120");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_260_Finished,
    });
    self.box_SpawnAI_257 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_257");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|606067394");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_165 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|607980140");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_165_Enter,
    });
    self.box_PlayDialog_v6_279 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_279;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|608230322");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_279_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_279_FinishedInterrupted,
    });
    self.box_ProximityTrigger_v2_259 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_259");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|625330276");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_259_Enter,
    });
    self.box_MultipleOR_218 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|632579276");
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
        [0] = self.f_box_MultipleOR_218_Out,
    });
    self.box_Music_Quest_v2_203 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|637729103");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_103 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|638823246");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_103_AllFar,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_103_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_103_Enabled,
    });
    self.box_Random_127 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|654554033");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
            [1] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_127_Output_0,
                [1] = self.f_box_Random_127_Output_1,
            },
            count = 2,
        },
    });
    self.box_HealthListener_v6_76 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|660795621");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_76_Killed,
    });
    self.box_Delay_v5_277 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_277");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|671567730");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_277_TimeElapsed,
    });
    self.box_SpawnAI_400 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_400;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_400");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|681040002");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_400_Spawned,
    });
    self.box_MultipleOR_398 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_398;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_398");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|684030205");
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
        [0] = self.f_box_MultipleOR_398_Out,
    });
    self.box_ProximityTrigger_v2_431 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_431;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_431");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|712677497");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_431_Enter,
    });
    self.box_ProximityTrigger_v2_406 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_406;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_406");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|728873129");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_406_Enter,
    });
    self.box_Delay_v5_138 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|731354236");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_138_TimeElapsed,
    });
    self.box_MultipleOR_216 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|745148546");
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
        [0] = self.f_box_MultipleOR_216_Out,
    });
    self.box_Delay_v5_197 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|769705770");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_197_TimeElapsed,
    });
    self.box_Delay_v5_271 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_271");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|770624158");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_271_TimeElapsed,
    });
    self.box_EntityStatusListener_180 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|773687197");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_180_Loaded,
    });
    self.box_Random_40 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|787401124");
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
                [0] = self.f_box_Random_40_Output_0,
                [1] = self.f_box_Random_40_Output_1,
                [2] = self.f_box_Random_40_Output_2,
            },
            count = 4,
        },
    });
    self.box_ProximityTrigger_v2_434 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_434;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_434");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|791086959");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_434_Enter,
    });
    self.box_OnceOnly_v3_313 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_313;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_313");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|801664455");
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
                [0] = self.f_box_OnceOnly_v3_313_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_95 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|815350954");
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
                [0] = self.f_box_OnceOnly_v3_95_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_245 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_245;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|817997317");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_245_Loaded,
    });
    self.box_ProximityRadiusListener_v3_442 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_442;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_442");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|823982853");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_442_SomeoneNear,
    });
    self.box_SpawnAI_302 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_302;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_302");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|829221277");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_302_Spawned,
    });
    self.box_ProximityRadiusListener_v3_413 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_413;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_413");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|830410848");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_413_SomeoneNear,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|854725326");
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
    self.box_MultipleOR_263 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_263;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_263");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|856680381");
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
    });
    self.box_VehicleListener_v3_109 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|867016019");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleListener_v3_109_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_109_Enabled,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_109_OnStandUp,
    });
    self.box_EntityStatusListener_39 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|899346468");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_39_Loaded,
    });
    self.box_Gate_v3_112 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|899418972");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_112_Out,
    });
    self.box_PlayDialog_v6_206 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|901509781");
    l0:SetConnections({
    });
    self.box_SpawnAI_308 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_308;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_308");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|912733749");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_308_Spawned,
    });
    self.box_GroupSizeListener_v5_13 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|915429338");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_13_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_13_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_13_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_13_MemberRemoved,
    });
    self.box_ProximityTrigger_v2_191 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|930350699");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_191_Enter,
    });
    self.box_VehicleListener_v3_426 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_426;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_426");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|967599461");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleListener_v3_426_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_426_Enabled,
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_426_OnAllSitting,
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_426_OnAllStanding,
        -- OnChangeSeat,
        [4] = self.f_box_VehicleListener_v3_426_OnChangeSeat,
        -- OnInteract,
        [5] = self.f_box_VehicleListener_v3_426_OnInteract,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_426_OnSit,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_426_OnStandUp,
    });
    self.box_MultipleAND_v2_15 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|969907502");
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
        [0] = self.f_box_MultipleAND_v2_15_Out,
    });
    self.box_ProximityTrigger_v2_224 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|970193078");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_224_Enter,
    });
    self.box_Delay_v5_232 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|973356011");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_232_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_392 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_392;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_392");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|980144955");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_392_Enter,
    });
    self.box_PlayDialog_v6_282 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_282;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_282");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|982206021");
    l0:SetConnections({
    });
    self.box_MultipleOR_198 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|989524693");
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
    self.box_EntityStatusListener_295 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_295;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_295");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|990201049");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_295_Loaded,
    });
    self.box_EntityStatusListener_91 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|995926726");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_91_Loaded,
    });
    self.box_EntityStatusListener_391 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_391;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_391");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|996107696");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_391_Loaded,
    });
    self.box_PlayDialog_v6_37 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1012158114");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_12 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1012985421");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_12_Out,
    });
    self.box_PlayDialog_v6_30 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1022285880");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_75 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1031484954");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_75_Killed,
    });
    self.box_MultipleOR_28 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1056924548");
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
        [0] = self.f_box_MultipleOR_28_Out,
    });
    self.box_ProximityTrigger_v2_177 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1059003039");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_177_Enter,
    });
    self.box_VehicleDamageListener_v2_267 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_267;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_267");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1061319211");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_267_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_267_Destroyed,
        -- Enabled,
        [4] = self.f_box_VehicleDamageListener_v2_267_Enabled,
        -- OnFire,
        [8] = self.f_box_VehicleDamageListener_v2_267_OnFire,
    });
    self.box_EntityStatusListener_238 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1061686569");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_238_Loaded,
    });
    self.box_MovementListener_v2_322 = cbox:CreateBox("Domino/System/MovementListener_v2.lua");
    l0 = self.box_MovementListener_v2_322;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MovementListener_v2_322");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1066574550");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_MovementListener_v2_322_Disabled,
        -- Enabled,
        [1] = self.f_box_MovementListener_v2_322_Enabled,
        -- Idle,
        [2] = self.f_box_MovementListener_v2_322_Idle,
        -- Moving,
        [3] = self.f_box_MovementListener_v2_322_Moving,
        -- pitch_Changed,
        [4] = self.f_box_MovementListener_v2_322_pitch_Changed,
        -- roll_Changed,
        [5] = self.f_box_MovementListener_v2_322_roll_Changed,
        -- x_Changed,
        [6] = self.f_box_MovementListener_v2_322_x_Changed,
        -- y_Changed,
        [7] = self.f_box_MovementListener_v2_322_y_Changed,
        -- yaw_Changed,
        [8] = self.f_box_MovementListener_v2_322_yaw_Changed,
        -- z_Changed,
        [9] = self.f_box_MovementListener_v2_322_z_Changed,
    });
    self.box_OnceOnly_v3_321 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_321;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_321");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1073850303");
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
                [0] = self.f_box_OnceOnly_v3_321_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_303 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_303;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_303");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1073953879");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_303_Spawned,
    });
    self.box_RemoveEntity_v2_253 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_253");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1082484870");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_253_Out,
    });
    self.box_HealthListener_v6_283 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_283;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_283");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1087479144");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_283_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_283_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_283_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_283_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_283_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_283_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_283_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_283_Revived,
    });
    self.box_EntityStatusListener_301 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_301;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_301");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1092897685");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_301_Loaded,
    });
    self.box_SpawnAI_299 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_299;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_299");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1099015813");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_299_Spawned,
    });
    self.box_MultipleOR_359 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_359;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_359");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1133182813");
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
        [0] = self.f_box_MultipleOR_359_Out,
    });
    self.box_ProximityTrigger_v2_167 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1169074835");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_167_Enter,
    });
    self.box_MultipleOR_374 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_374;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_374");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1173428091");
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
        [0] = self.f_box_MultipleOR_374_Out,
    });
    self.box_OnceOnly_v3_397 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_397;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_397");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1186160932");
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
                [0] = self.f_box_OnceOnly_v3_397_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_200 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1248399710");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_200_Out,
    });
    self.box_MultipleOR_111 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1254148514");
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
    self.box_SoundModifier_v2_170 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1254724458");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_170_Finished,
    });
    self.box_MultipleOR_320 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_320;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_320");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1258093549");
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
        [0] = self.f_box_MultipleOR_320_Out,
    });
    self.box_EntityStatusListener_239 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1273784171");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_239_Loaded,
    });
    self.box_Delay_v5_113 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1276422850");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_113_TimeElapsed,
    });
    self.box_OnceOnly_v3_341 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_341;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_341");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1295402074");
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
                [0] = self.f_box_OnceOnly_v3_341_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_94 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1305828192");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_94_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_94_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_94_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_94_OnOccupied,
    });
    self.box_Gate_v3_233 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1308119477");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_233_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_233_Out,
    });
    self.box_Delay_v5_349 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_349;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_349");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1308382191");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_349_TimeElapsed,
    });
    self.box_Music_Quest_v2_90 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1309742809");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_Music_Quest_v2_90_Stopped,
    });
    self.box_EntityStatusListener_46 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1333433382");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_46_Loaded,
    });
    self.box_OnceOnly_v3_2 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1338699990");
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
                [0] = self.f_box_OnceOnly_v3_2_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_261 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_261");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1356998587");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_261_Finished,
    });
    self.box_MultipleAND_v2_126 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1359159358");
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
        [0] = self.f_box_MultipleAND_v2_126_Out,
    });
    self.box_ProximityRadiusListener_v3_98 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1359294320");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_98_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_98_SomeoneNear,
    });
    self.box_OnceOnly_v3_36 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1367145987");
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
                [0] = self.f_box_OnceOnly_v3_36_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_57 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1373619504");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_57_TimeElapsed,
    });
    self.box_RemoveEntity_v2_432 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_432;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_432");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1376144379");
    l0:SetConnections({
    });
    self.box_SpawnAI_402 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_402;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_402");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1377306205");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_402_Spawned,
    });
    self.box_Delay_v5_110 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1385115611");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_110_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_427 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_427;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_427");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1387043355");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_427_Enter,
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1389361697");
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
        [0] = self.f_box_MultipleOR_19_Out,
    });
    self.box_MultipleOR_258 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_258");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1394849526");
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
        [0] = self.f_box_MultipleOR_258_Out,
    });
    self.box_HealthListener_v6_357 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_357;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_357");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1404590557");
    l0:SetConnections({
        -- Revived,
        [7] = self.f_box_HealthListener_v6_357_Revived,
    });
    self.box_HealthListener_v6_60 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1411501880");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_60_Killed,
    });
    self.box_PlayDialog_v6_337 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_337;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_337");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1414245385");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_63 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1416909443");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_63_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_63_Reloaded,
    });
    self.box_OnceOnly_v3_53 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1435978787");
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
                [0] = self.f_box_OnceOnly_v3_53_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_336 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_336;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_336");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1438801485");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_336_TimeElapsed,
    });
    self.box_VehicleListener_v3_17 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1465323741");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_17_OnSit,
    });
    self.box_VehicleListener_v3_122 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1495366531");
    l0:SetConnections({
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_122_OnAllSitting,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_122_OnStandUp,
    });
    self.box_EntityStatusListener_304 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_304;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_304");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1498402624");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_304_Loaded,
    });
    self.box_EntityStatusListener_401 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_401;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_401");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1502753958");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_401_Loaded,
    });
    self.box_Delay_v5_396 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_396;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_396");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1506518059");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_396_TimeElapsed,
    });
    self.box_SpawnAI_194 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1507622568");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_194_Spawned,
    });
    self.box_Gate_v3_137 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1519320717");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_137_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_137_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_137_Out,
    });
    self.box_MultipleOR_358 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_358;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_358");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1549431354");
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
        [0] = self.f_box_MultipleOR_358_Out,
    });
    self.box_VehicleHealthListener_v2_186 = cbox:CreateBox("Domino/System/VehicleHealthListener_v2.lua");
    l0 = self.box_VehicleHealthListener_v2_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleHealthListener_v2_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1559720069");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleHealthListener_v2_186_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleHealthListener_v2_186_Enabled,
        -- HealthChanged,
        [2] = self.f_box_VehicleHealthListener_v2_186_HealthChanged,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1562213661");
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
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1571181009");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_171 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1578466418");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_171_Enter,
    });
    self.box_MultipleOR_201 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1580498816");
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
        [0] = self.f_box_MultipleOR_201_Out,
    });
    self.box_EntityStatusListener_209 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1588337475");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_209_Loaded,
    });
    self.box_EntityStatusListener_399 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_399;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_399");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1604721334");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_399_Loaded,
    });
    self.box_ProximityRadiusListener_v3_436 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_436;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_436");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1612001152");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_436_SomeoneNear,
    });
    self.box_HealthListener_v6_309 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_309;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_309");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1612229630");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_309_Downed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_309_Revived,
    });
    self.box_ProximityTrigger_v2_214 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1614481532");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_214_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_214_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_214_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_214_OnOccupied,
    });
    self.box_MultipleOR_131 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1654233886");
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
    self.box_MultipleOR_146 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1663821033");
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
        [0] = self.f_box_MultipleOR_146_Out,
    });
    self.box_Bind_v4_213 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1675916489");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_213_Bound,
    });
    self.box_EntityStatusListener_307 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_307;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_307");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1679077646");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_307_Loaded,
    });
    self.box_Delay_v5_439 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_439;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_439");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1736328006");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_439_TimeElapsed,
    });
    self.box_Switch_5 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1756588534");
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
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_5_Output_0,
                [1] = self.f_box_Switch_5_Output_1,
            },
            count = 2,
        },
    });
    self.box_Bind_v4_86 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1762363479");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_86_Bound,
    });
    self.box_SoundModifier_v2_142 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1763192972");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_142_Finished,
        -- Started,
        [1] = self.f_box_SoundModifier_v2_142_Started,
    });
    self.box_OnceOnly_v3_367 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_367;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_367");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1764406177");
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
                [0] = self.f_box_OnceOnly_v3_367_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_241 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1795783346");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_241_Loaded,
    });
    self.box_EntityStatusListener_300 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_300;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_300");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1864691380");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_300_Loaded,
    });
    self.box_OnceOnly_v3_311 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_311;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_311");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1888732987");
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
                [0] = self.f_box_OnceOnly_v3_311_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_116 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1889415581");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_116_Loaded,
    });
    self.box_NpcDestinationCheckListener_332 = cbox:CreateBox("Domino/System/AI/NpcDestinationCheckListener.lua");
    l0 = self.box_NpcDestinationCheckListener_332;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NpcDestinationCheckListener_332");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1895256059");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_NpcDestinationCheckListener_332_Disabled,
        -- Enabled,
        [1] = self.f_box_NpcDestinationCheckListener_332_Enabled,
        -- Reachable,
        [2] = self.f_box_NpcDestinationCheckListener_332_Reachable,
        -- Unreachable,
        [3] = self.f_box_NpcDestinationCheckListener_332_Unreachable,
    });
    self.box_PositionModifier_v2_119 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1896847155");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_119_StartOut,
    });
    self.box_HealthListener_v6_80 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1905682091");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_80_Killed,
    });
    self.box_CharacterLoadedIdListener_45 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1916821333");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_45_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_45_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_45_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_45_LoadedIdReceived,
    });
    self.box_MultipleOR_356 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_356;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_356");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1922065245");
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
        [0] = self.f_box_MultipleOR_356_Out,
    });
    self.box_RemoveEntity_v2_435 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_435;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_435");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1924929480");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_365 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_365;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_365");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1936672964");
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
                [0] = self.f_box_OnceOnly_v3_365_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_204 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1963751681");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_204_TimeElapsed,
    });
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1967115348");
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
    self.box_MultipleOR_330 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_330;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_330");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1976698442");
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
        [0] = self.f_box_MultipleOR_330_Out,
    });
    self.box_OnceOnly_v3_219 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1984029184");
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
                [0] = self.f_box_OnceOnly_v3_219_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_149 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1987267806");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_149_Enter,
    });
    self.box_HealthListener_v6_74 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1997195632");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_74_Killed,
    });
    self.box_Music_Quest_v2_190 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2014310172");
    l0:SetConnections({
    });
    self.box_Bind_v4_115 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2016403701");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_115_Bound,
    });
    self.box_EntityStatusListener_297 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_297;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_297");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2024955450");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_297_Loaded,
    });
    self.box_Delay_v5_174 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2032250081");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_174_TimeElapsed,
    });
    self.box_HealthListener_v6_360 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_360;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_360");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2050364414");
    l0:SetConnections({
        -- Revived,
        [7] = self.f_box_HealthListener_v6_360_Revived,
    });
    self.box_PlayDialog_v6_205 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2055935024");
    l0:SetConnections({
    });
    self.box_SpawnAI_202 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2059355041");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_202_Spawned,
    });
    self.box_EntityStatusListener_237 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2061926829");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_237_Loaded,
    });
    self.box_RemoveEntity_v2_428 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_428;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_428");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2069512914");
    l0:SetConnections({
    });
    self.box_Gate_v3_141 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2069864570");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_141_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_141_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_141_Out,
    });
    self.box_EntityStatusListener_368 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_368;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_368");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2074782762");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_368_Loaded,
    });
    self.box_ProximityTrigger_v2_192 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2081661704");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_192_Enter,
    });
    self.box_MovementListener_v2_394 = cbox:CreateBox("Domino/System/MovementListener_v2.lua");
    l0 = self.box_MovementListener_v2_394;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MovementListener_v2_394");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2086573707");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MovementListener_v2_394_Enabled,
        -- Idle,
        [2] = self.f_box_MovementListener_v2_394_Idle,
    });
    self.box_Delay_v5_139 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2090921596");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_139_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_139_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_104 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2091531757");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_104_AllFar,
    });
    self.box_ProximityRadiusListener_v3_255 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_255");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2092151359");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_255_SomeoneNear,
    });
    self.box_EntityStatusListener_33 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2092925948");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_33_Loaded,
    });
    self.box_RemoveEntity_v2_228 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2099588581");
    l0:SetConnections({
    });
    self.box_VehicleDamageListener_v2_1 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2128179993");
    l0:SetConnections({
        -- BoxDisabled,
        [0] = self.f_box_VehicleDamageListener_v2_1_BoxDisabled,
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_1_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_1_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_1_Disabled,
        -- Enabled,
        [4] = self.f_box_VehicleDamageListener_v2_1_Enabled,
        -- MajorDamage,
        [5] = self.f_box_VehicleDamageListener_v2_1_MajorDamage,
        -- MinorDamage,
        [6] = self.f_box_VehicleDamageListener_v2_1_MinorDamage,
        -- Mint,
        [7] = self.f_box_VehicleDamageListener_v2_1_Mint,
        -- OnFire,
        [8] = self.f_box_VehicleDamageListener_v2_1_OnFire,
        -- Perfect,
        [9] = self.f_box_VehicleDamageListener_v2_1_Perfect,
        -- StateChange,
        [10] = self.f_box_VehicleDamageListener_v2_1_StateChange,
    });
    self.box_MultipleOR_325 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_325;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_325");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2133538327");
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
        [0] = self.f_box_MultipleOR_325_Out,
    });
    self.box_Delay_v5_324 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_324;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_324");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2142735270");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_324_TimeElapsed,
    });
    self.box_MultipleOR_254 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_254");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2144053372");
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
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|207066423", "207066423", "UNI42_010_B20_main", "In", "box_ActivityAcknowledgeGate_63.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_20();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|484774893", "484774893", "UNI42_010_B20_main", "OnLeaveZone", "box_Simple_Node_20.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_251_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_225();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|577694412", "577694412", "UNI42_010_B20_main", "box_Simple_Node_251.Out", "box_IsEntityLoaded_v3_225.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_IsEntityLoaded_v3_227();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|242571318", "242571318", "UNI42_010_B20_main", "box_Simple_Node_251.Out", "box_IsEntityLoaded_v3_227.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_252_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_231();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1213580124", "1213580124", "UNI42_010_B20_main", "box_Simple_Node_252.Out", "box_IsEntityLoaded_v3_231.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_IsEntityLoaded_v3_220();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1671486963", "1671486963", "UNI42_010_B20_main", "box_Simple_Node_252.Out", "box_IsEntityLoaded_v3_220.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_IsEntityLoaded_v3_246();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|921173581", "921173581", "UNI42_010_B20_main", "box_Simple_Node_252.Out", "box_IsEntityLoaded_v3_246.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_IsEntityLoaded_v3_226();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1161207050", "1161207050", "UNI42_010_B20_main", "box_Simple_Node_252.Out", "box_IsEntityLoaded_v3_226.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_212_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_188();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1619688562", "1619688562", "UNI42_010_B20_main", "box_Simple_Node_212.Out", "box_OutputOrder_v2_188.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_161_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_117();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1500114808", "1500114808", "UNI42_010_B20_main", "box_Simple_Node_161.Out", "box_ActivityObjectiveMarkerModifier_v3_117.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_344_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_283();
    l0 = self.box_HealthListener_v6_283;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|620046662", "620046662", "UNI42_010_B20_main", "box_Simple_Node_344.Out", "box_HealthListener_v6_283.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_VehicleHealthListener_v2_186();
    l0 = self.box_VehicleHealthListener_v2_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1573108136", "1573108136", "UNI42_010_B20_main", "box_Simple_Node_344.Out", "box_VehicleHealthListener_v2_186.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_315_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_309();
    l0 = self.box_HealthListener_v6_309;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1772650831", "1772650831", "UNI42_010_B20_main", "box_Simple_Node_315.Out", "box_HealthListener_v6_309.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_160_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|160009438", "160009438", "UNI42_010_B20_main", "box_Simple_Node_160.Out", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_176_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_13();
    l0 = self.box_GroupSizeListener_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2090058475", "2090058475", "UNI42_010_B20_main", "box_Simple_Node_176.Out", "box_GroupSizeListener_v5_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_88();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1964745861", "1964745861", "UNI42_010_B20_main", "box_Simple_Node_176.Out", "box_OutputOrder_v2_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_272();
    l0 = self.box_ExitZoneWarningListener_v3_272;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1007750404", "1007750404", "UNI42_010_B20_main", "box_Simple_Node_62.Out", "box_ExitZoneWarningListener_v3_272.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_151_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_333();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1352920187", "1352920187", "UNI42_010_B20_main", "box_Simple_Node_151.Out", "box_OutputOrder_v2_333.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_RadioModifier_v3_210();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|156913817", "156913817", "UNI42_010_B20_main", "box_Simple_Node_151.Out", "box_RadioModifier_v3_210.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_162_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_85();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1533534889", "1533534889", "UNI42_010_B20_main", "box_Simple_Node_162.Out", "box_RadioModifier_v3_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_316_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_BindMarkerOverHead_v2_312();
    l0 = self.box_BindMarkerOverHead_v2_312;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1547590062", "1547590062", "UNI42_010_B20_main", "box_Simple_Node_316.Out", "box_BindMarkerOverHead_v2_312.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_127();
    l0 = self.box_Random_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|428435167", "428435167", "UNI42_010_B20_main", "box_Simple_Node_64.Out", "box_Random_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_387_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_15();
    l0 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1522143024", "1522143024", "UNI42_010_B20_main", "box_Simple_Node_387.Out", "box_MultipleAND_v2_15.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 3);
end;

function export:f_box_Simple_Node_386_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_377();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|463740595", "463740595", "UNI42_010_B20_main", "box_Simple_Node_386.Out", "box_VehicleSeatModifier_v2_377.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_199_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1330219568", "1330219568", "UNI42_010_B20_main", "box_Simple_Node_199.Out", "box_MultipleOR_198.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_158_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_197();
    l0 = self.box_Delay_v5_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|612646991", "612646991", "UNI42_010_B20_main", "box_Simple_Node_158.Out", "box_Delay_v5_197.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_97_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_1();
    l0 = self.box_VehicleDamageListener_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|444578681", "444578681", "UNI42_010_B20_main", "box_Simple_Node_97.Out", "box_VehicleDamageListener_v2_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_175_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_13();
    l0 = self.box_GroupSizeListener_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1833202907", "1833202907", "UNI42_010_B20_main", "box_Simple_Node_175.Out", "box_GroupSizeListener_v5_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_154_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_120();
    l0 = self.box_HealthListener_v6_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1910426293", "1910426293", "UNI42_010_B20_main", "box_Simple_Node_154.Out", "box_HealthListener_v6_120.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_153_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_169();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|119460825", "119460825", "UNI42_010_B20_main", "box_Simple_Node_153.Out", "box_OutputOrder_v2_169.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_107_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|605003424", "605003424", "UNI42_010_B20_main", "box_Simple_Node_107.Out", "box_MultipleOR_100.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_159_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_141();
    l0 = self.box_Gate_v3_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|318976378", "318976378", "UNI42_010_B20_main", "box_Simple_Node_159.Out", "box_Gate_v3_141.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_197();
    l0 = self.box_Delay_v5_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|647137949", "647137949", "UNI42_010_B20_main", "box_Simple_Node_159.Out", "box_Delay_v5_197.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Gate_v3_233();
    l0 = self.box_Gate_v3_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1449670874", "1449670874", "UNI42_010_B20_main", "box_Simple_Node_159.Out", "box_Gate_v3_233.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_118_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_133();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1646989817", "1646989817", "UNI42_010_B20_main", "box_Simple_Node_118.Out", "box_RadioModifier_v3_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_388_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_382();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2077216588", "2077216588", "UNI42_010_B20_main", "box_Simple_Node_388.Out", "box_VehicleSeatModifier_v2_382.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_163_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_25();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|573668276", "573668276", "UNI42_010_B20_main", "box_Simple_Node_163.Out", "box_RadioModifier_v3_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_120_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_120;
    l1 = self.box_MultipleOR_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1321613660", "1321613660", "UNI42_010_B20_main", "box_HealthListener_v6_120.Downed", "box_MultipleOR_144.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_120_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_120;
    l1 = self.box_MultipleOR_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1510952345", "1510952345", "UNI42_010_B20_main", "box_HealthListener_v6_120.Killed", "box_MultipleOR_144.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_DisplayCustomUIMsg_v5_101_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_98();
    l0 = self.box_DisplayCustomUIMsg_v5_101;
    l1 = self.box_ProximityRadiusListener_v3_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2037260074", "2037260074", "UNI42_010_B20_main", "box_DisplayCustomUIMsg_v5_101.OnDisplay", "box_ProximityRadiusListener_v3_98.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_101_OnHide()
    local l0, l1;
    l0 = self.box_DisplayCustomUIMsg_v5_101;
    l1 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|646890959", "646890959", "UNI42_010_B20_main", "box_DisplayCustomUIMsg_v5_101.OnHide", "box_MultipleOR_100.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Music_Quest_v2_93_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_121();
    l0 = self.box_Music_Quest_v2_93;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|943486905", "943486905", "UNI42_010_B20_main", "box_Music_Quest_v2_93.Stopped", "box_ActivityRetry_121.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_55_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_123();
    l0 = self.box_OnceOnly_v3_55;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|269942657", "269942657", "UNI42_010_B20_main", "box_OnceOnly_v3_55.Out", "box_OutputOrder_v2_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_327_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_324();
    l0 = self.box_Delay_v5_324;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|382313653", "382313653", "UNI42_010_B20_main", "box_Compare_Boolean_327.A_is_False", "box_Delay_v5_324.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_327_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_326();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2027994614", "2027994614", "UNI42_010_B20_main", "box_Compare_Boolean_327.A_is_True", "box_OutputOrder_v2_326.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_147_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_130();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|866062992", "866062992", "UNI42_010_B20_main", "box_OutputOrder_v2_147.Out", "box_UseContextualActionModifier_v3_130.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_147_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1903009773", "1903009773", "UNI42_010_B20_main", "box_OutputOrder_v2_147.Out", "box_Simple_Node_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_147_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_160();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|12087930", "12087930", "UNI42_010_B20_main", "box_OutputOrder_v2_147.Out", "box_Simple_Node_160.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_240_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_442();
    l0 = self.box_EntityStatusListener_240;
    l1 = self.box_ProximityRadiusListener_v3_442;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|395619377", "395619377", "UNI42_010_B20_main", "box_EntityStatusListener_240.Loaded", "box_ProximityRadiusListener_v3_442.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_223_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_211();
    l0 = self.box_EntityStatusListener_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|339018874", "339018874", "UNI42_010_B20_main", "box_OutputOrder_v2_223.Out", "box_EntityStatusListener_211.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_223_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_307();
    l0 = self.box_EntityStatusListener_307;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|372389510", "372389510", "UNI42_010_B20_main", "box_OutputOrder_v2_223.Out", "box_EntityStatusListener_307.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_223_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_251();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|943371373", "943371373", "UNI42_010_B20_main", "box_OutputOrder_v2_223.Out", "box_Simple_Node_251.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_223_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_228();
    l0 = self.box_RemoveEntity_v2_228;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|355091197", "355091197", "UNI42_010_B20_main", "box_OutputOrder_v2_223.Out", "box_RemoveEntity_v2_228.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_223_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_193();
    l0 = self.box_ProximityTrigger_v2_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1564989708", "1564989708", "UNI42_010_B20_main", "box_OutputOrder_v2_223.Out", "box_ProximityTrigger_v2_193.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_281_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_280();
    l0 = self.box_MultipleOR_281;
    l1 = self.box_Delay_v5_280;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2075573949", "2075573949", "UNI42_010_B20_main", "box_MultipleOR_281.Out", "box_Delay_v5_280.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_193_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_229();
    l0 = self.box_ProximityTrigger_v2_193;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|473954942", "473954942", "UNI42_010_B20_main", "box_ProximityTrigger_v2_193.Enter", "box_OutputOrder_v2_229.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_373_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_374;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1021547983", "1021547983", "UNI42_010_B20_main", "box_OutputOrder_v2_373.Out", "box_MultipleOR_374.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_373_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_375();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|686270220", "686270220", "UNI42_010_B20_main", "box_OutputOrder_v2_373.Out", "box_Simple_Node_375.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_143_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_126();
    l0 = self.box_MultipleAND_v2_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1348398895", "1348398895", "UNI42_010_B20_main", "box_OutputOrder_v2_143.Out", "box_MultipleAND_v2_126.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_143_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_159();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|173207690", "173207690", "UNI42_010_B20_main", "box_OutputOrder_v2_143.Out", "box_Simple_Node_159.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_143_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_161();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|189361255", "189361255", "UNI42_010_B20_main", "box_OutputOrder_v2_143.Out", "box_Simple_Node_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_143_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_164();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|478978919", "478978919", "UNI42_010_B20_main", "box_OutputOrder_v2_143.Out", "box_Simple_Node_164.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_143_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_148();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|154221285", "154221285", "UNI42_010_B20_main", "box_OutputOrder_v2_143.Out", "box_UseContextualActionModifier_v3_148.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_403_BoxDisabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_404();
    l0 = self.box_VehicleDamageListener_v2_403;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|642384058", "642384058", "UNI42_010_B20_main", "box_VehicleDamageListener_v2_403.BoxDisabled", "box_VehicleModifier_v2_404.SetExplosion", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExplosion
    l1:Exec(17, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_403_MinorDamage()
    local params, l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_403();
    l0 = self.box_VehicleDamageListener_v2_403;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|266357720", "266357720", "UNI42_010_B20_main", "box_VehicleDamageListener_v2_403.MinorDamage", "box_VehicleDamageListener_v2_403.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_117();
    l0 = self.box_MultipleOR_51;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2132527626", "2132527626", "UNI42_010_B20_main", "box_MultipleOR_51.Out", "box_ActivityObjectiveMarkerModifier_v3_117.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_10();
    l0 = self.box_Delay_v5_4;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1980931280", "1980931280", "UNI42_010_B20_main", "box_Delay_v5_4.TimeElapsed", "box_ActivityEnd_10.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_220_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_242();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|443173574", "443173574", "UNI42_010_B20_main", "box_IsEntityLoaded_v3_220.True", "box_UseContextualActionModifier_v3_242.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_124_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1274782309", "1274782309", "UNI42_010_B20_main", "box_OutputOrder_v2_124.Out", "box_MultipleOR_131.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_124_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|781563084", "781563084", "UNI42_010_B20_main", "box_OutputOrder_v2_124.Out", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_412_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_436();
    l0 = self.box_ProximityRadiusListener_v3_436;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1918334381", "1918334381", "UNI42_010_B20_main", "box_SetContextualStrategy_412.Out", "box_ProximityRadiusListener_v3_436.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_326_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_319();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|73771840", "73771840", "UNI42_010_B20_main", "box_OutputOrder_v2_326.Out", "box_Simple_Node_319.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_326_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_320;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1790972072", "1790972072", "UNI42_010_B20_main", "box_OutputOrder_v2_326.Out", "box_MultipleOR_320.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Floats_135_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_233();
    l0 = self.box_Gate_v3_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|96104460", "96104460", "UNI42_010_B20_main", "box_Compare_Floats_135.A_ge_B", "box_Gate_v3_233.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Compare_Floats_135_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1385938374", "1385938374", "UNI42_010_B20_main", "box_Compare_Floats_135.A_lt_B", "box_MultipleOR_131.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_284_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_273();
    l0 = self.box_OnceOnly_v3_284;
    l1 = self.box_PlayDialog_v6_273;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|949040823", "949040823", "UNI42_010_B20_main", "box_OnceOnly_v3_284.Out", "box_PlayDialog_v6_273.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ExitZoneWarningListener_v3_272_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_129();
    l0 = self.box_ExitZoneWarningListener_v3_272;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|624732412", "624732412", "UNI42_010_B20_main", "box_ExitZoneWarningListener_v3_272.FailingZoneEntered", "box_OutputOrder_v2_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_292_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1580915372", "1580915372", "UNI42_010_B20_main", "box_OutputOrder_v2_292.Out", "box_MultipleOR_111.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_292_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_311;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1497771562", "1497771562", "UNI42_010_B20_main", "box_OutputOrder_v2_292.Out", "box_OnceOnly_v3_311.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_130_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_130();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|622772984", "622772984", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_130.Enabled", "box_UseContextualActionModifier_v3_130.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_130_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_329();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|556635462", "556635462", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_130.UseCalled", "box_SetBoolean_v2_329.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_89_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_89;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1470891350", "1470891350", "UNI42_010_B20_main", "box_PlayDialog_v6_89.Finished", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_89_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_89;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1839910740", "1839910740", "UNI42_010_B20_main", "box_PlayDialog_v6_89.FinishedInterrupted", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MovementListener_v2_394();
    l0 = self.box_MovementListener_v2_394;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|715508322", "715508322", "UNI42_010_B20_main", "box_OutputOrder_v2_32.Out", "box_MovementListener_v2_394.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_396();
    l0 = self.box_Delay_v5_396;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|262553182", "262553182", "UNI42_010_B20_main", "box_OutputOrder_v2_32.Out", "box_Delay_v5_396.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Music_Quest_v2_24_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_102();
    l0 = self.box_Music_Quest_v2_24;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|967648060", "967648060", "UNI42_010_B20_main", "box_Music_Quest_v2_24.Stopped", "box_ActivityRetry_102.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_MultipleOR_42;
    l1 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1992112655", "1992112655", "UNI42_010_B20_main", "box_MultipleOR_42.Out", "box_Delay_v5_57.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_329_Out()
    self:OnExit_box_SetBoolean_v2_329_Out();
end;

function export:f_box_VehicleListener_v3_323_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_318();
    l0 = self.box_VehicleListener_v3_323;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|307809761", "307809761", "UNI42_010_B20_main", "box_VehicleListener_v3_323.OnSit", "box_SetBoolean_v2_318.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_366_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_200();
    l0 = self.box_Gate_v3_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|698343518", "698343518", "UNI42_010_B20_main", "box_OutputOrder_v2_366.Out", "box_Gate_v3_200.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_366_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1282914409", "1282914409", "UNI42_010_B20_main", "box_OutputOrder_v2_366.Out", "box_OnceOnly_v3_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_366_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_363();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|560964759", "560964759", "UNI42_010_B20_main", "box_OutputOrder_v2_366.Out", "box_Compare_Floats_363.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_280_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_282();
    l0 = self.box_Delay_v5_280;
    l1 = self.box_PlayDialog_v6_282;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|69045314", "69045314", "UNI42_010_B20_main", "box_Delay_v5_280.TimeElapsed", "box_PlayDialog_v6_282.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_3_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_73();
    l0 = self.box_HealthListener_v6_3;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|449337801", "449337801", "UNI42_010_B20_main", "box_HealthListener_v6_3.Killed", "box_ForceVehicleCrash_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_236();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1058980680", "1058980680", "UNI42_010_B20_main", "box_OutputOrder_v2_26.Out", "box_UseContextualActionModifier_v3_236.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2094256837", "2094256837", "UNI42_010_B20_main", "box_OutputOrder_v2_26.Out", "box_MultipleOR_28.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_UseContextualActionModifier_v3_348_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_348();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|233490497", "233490497", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_348.Enabled", "box_UseContextualActionModifier_v3_348.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_348_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|610583680", "610583680", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_348.UseCalled", "box_OutputOrder_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_270();
    l0 = self.box_Delay_v5_270;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|371954054", "371954054", "UNI42_010_B20_main", "box_OutputOrder_v2_183.Out", "box_Delay_v5_270.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_183_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_269();
    l0 = self.box_Delay_v5_269;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1825851783", "1825851783", "UNI42_010_B20_main", "box_OutputOrder_v2_183.Out", "box_Delay_v5_269.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_183_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_271();
    l0 = self.box_Delay_v5_271;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1483637756", "1483637756", "UNI42_010_B20_main", "box_OutputOrder_v2_183.Out", "box_Delay_v5_271.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_183_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_191();
    l0 = self.box_ProximityTrigger_v2_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|696276930", "696276930", "UNI42_010_B20_main", "box_OutputOrder_v2_183.Out", "box_ProximityTrigger_v2_191.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_339_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_337();
    l0 = self.box_OnceOnly_v3_339;
    l1 = self.box_PlayDialog_v6_337;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1983720402", "1983720402", "UNI42_010_B20_main", "box_OnceOnly_v3_339.Out", "box_PlayDialog_v6_337.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_181_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_171();
    l0 = self.box_EntityStatusListener_181;
    l1 = self.box_ProximityTrigger_v2_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1308888820", "1308888820", "UNI42_010_B20_main", "box_EntityStatusListener_181.Loaded", "box_ProximityTrigger_v2_171.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_227_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_235();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|351842809", "351842809", "UNI42_010_B20_main", "box_IsEntityLoaded_v3_227.True", "box_UseContextualActionModifier_v3_235.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_270_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_239();
    l0 = self.box_Delay_v5_270;
    l1 = self.box_EntityStatusListener_239;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|373471541", "373471541", "UNI42_010_B20_main", "box_Delay_v5_270.TimeElapsed", "box_EntityStatusListener_239.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_273_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_273;
    l1 = self.box_MultipleOR_278;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|185418537", "185418537", "UNI42_010_B20_main", "box_PlayDialog_v6_273.Finished", "box_MultipleOR_278.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_273_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_273;
    l1 = self.box_MultipleOR_278;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1309391228", "1309391228", "UNI42_010_B20_main", "box_PlayDialog_v6_273.FinishedInterrupted", "box_MultipleOR_278.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_44_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_23();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1743872922", "1743872922", "UNI42_010_B20_main", "box_Compare_Integers_44.A_le_B", "box_SetActivityFact_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Music_Quest_v2_87_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_61();
    l0 = self.box_Music_Quest_v2_87;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|478636176", "478636176", "UNI42_010_B20_main", "box_Music_Quest_v2_87.Stopped", "box_ActivityRetry_61.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_246_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_243();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1735038097", "1735038097", "UNI42_010_B20_main", "box_IsEntityLoaded_v3_246.True", "box_UseContextualActionModifier_v3_243.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_331_OnSit()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_331;
    l1 = self.box_MultipleOR_330;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|424631785", "424631785", "UNI42_010_B20_main", "box_VehicleListener_v3_331.OnSit", "box_MultipleOR_330.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_318_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_318_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_321;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|289846113", "289846113", "UNI42_010_B20_main", "box_SetBoolean_v2_318.Out", "box_OnceOnly_v3_321.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_221_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_217();
    l0 = self.box_OnceOnly_v3_221;
    l1 = self.box_PlayDialog_v6_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1260754018", "1260754018", "UNI42_010_B20_main", "box_OnceOnly_v3_221.Out", "box_PlayDialog_v6_217.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_226_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_244();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|468412122", "468412122", "UNI42_010_B20_main", "box_IsEntityLoaded_v3_226.True", "box_UseContextualActionModifier_v3_244.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_243();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|152873661", "152873661", "UNI42_010_B20_main", "box_OutputOrder_v2_54.Out", "box_UseContextualActionModifier_v3_243.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1285736575", "1285736575", "UNI42_010_B20_main", "box_OutputOrder_v2_54.Out", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_310_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_15();
    l0 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|165659916", "165659916", "UNI42_010_B20_main", "box_OutputOrder_v2_310.Out", "box_MultipleAND_v2_15.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_OutputOrder_v2_310_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_316();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1426450000", "1426450000", "UNI42_010_B20_main", "box_OutputOrder_v2_310.Out", "box_Simple_Node_316.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_6_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_5();
    l0 = self.box_Switch_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|897663104", "897663104", "UNI42_010_B20_main", "box_Compare_Integers_6.A_le_B", "box_Switch_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_182_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_173();
    l0 = self.box_OnceOnly_v3_182;
    l1 = self.box_PlayDialog_v6_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|702854592", "702854592", "UNI42_010_B20_main", "box_OnceOnly_v3_182.Out", "box_PlayDialog_v6_173.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_99_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_104();
    l0 = self.box_OnceOnly_v3_99;
    l1 = self.box_ProximityRadiusListener_v3_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|635227260", "635227260", "UNI42_010_B20_main", "box_OnceOnly_v3_99.Out", "box_ProximityRadiusListener_v3_104.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_262_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_262;
    l1 = self.box_MultipleOR_263;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|703805039", "703805039", "UNI42_010_B20_main", "box_PlayDialog_v6_262.Finished", "box_MultipleOR_263.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_278_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_277();
    l0 = self.box_MultipleOR_278;
    l1 = self.box_Delay_v5_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|789801388", "789801388", "UNI42_010_B20_main", "box_MultipleOR_278.Out", "box_Delay_v5_277.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_296_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_414();
    l0 = self.box_SpawnAI_296;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|927266642", "927266642", "UNI42_010_B20_main", "box_SpawnAI_296.Spawned", "box_Print_v2_414.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_345_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_174();
    l0 = self.box_Delay_v5_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1370782277", "1370782277", "UNI42_010_B20_main", "box_OutputOrder_v2_345.Out", "box_Delay_v5_174.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_345_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_204();
    l0 = self.box_Delay_v5_204;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|115185380", "115185380", "UNI42_010_B20_main", "box_OutputOrder_v2_345.Out", "box_Delay_v5_204.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_217_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_217;
    l1 = self.box_MultipleOR_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|264848639", "264848639", "UNI42_010_B20_main", "box_PlayDialog_v6_217.Finished", "box_MultipleOR_222.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_217_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_217;
    l1 = self.box_MultipleOR_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|123008462", "123008462", "UNI42_010_B20_main", "box_PlayDialog_v6_217.FinishedInterrupted", "box_MultipleOR_222.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_438_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_241();
    l0 = self.box_Delay_v5_438;
    l1 = self.box_EntityStatusListener_241;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1485697770", "1485697770", "UNI42_010_B20_main", "box_Delay_v5_438.TimeElapsed", "box_EntityStatusListener_241.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_384_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_385();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|732529976", "732529976", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_384.Unlocked", "box_VehicleSeatModifier_v2_385.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_381_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_289();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|646908423", "646908423", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_381.Locked", "box_VehicleSeatModifier_v2_289.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_269_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_237();
    l0 = self.box_Delay_v5_269;
    l1 = self.box_EntityStatusListener_237;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1326247221", "1326247221", "UNI42_010_B20_main", "box_Delay_v5_269.TimeElapsed", "box_EntityStatusListener_237.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_222_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_214();
    l0 = self.box_MultipleOR_222;
    l1 = self.box_ProximityTrigger_v2_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1662166886", "1662166886", "UNI42_010_B20_main", "box_MultipleOR_222.Out", "box_ProximityTrigger_v2_214.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_132_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_142();
    l0 = self.box_MultipleOR_132;
    l1 = self.box_SoundModifier_v2_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1575306090", "1575306090", "UNI42_010_B20_main", "box_MultipleOR_132.Out", "box_SoundModifier_v2_142.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_289_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_387();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1695831981", "1695831981", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_289.Unlocked", "box_Simple_Node_387.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_100_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_103();
    l0 = self.box_MultipleOR_100;
    l1 = self.box_ProximityRadiusListener_v3_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1525181070", "1525181070", "UNI42_010_B20_main", "box_MultipleOR_100.Out", "box_ProximityRadiusListener_v3_103.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_382_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_383();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1535654648", "1535654648", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_382.Unlocked", "box_VehicleSeatModifier_v2_383.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_298_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_417();
    l0 = self.box_SpawnAI_298;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|782005960", "782005960", "UNI42_010_B20_main", "box_SpawnAI_298.Spawned", "box_Print_v2_417.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_187_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_200();
    l0 = self.box_Gate_v3_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1458993765", "1458993765", "UNI42_010_B20_main", "box_Compare_Floats_187.A_eq_B", "box_Gate_v3_200.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Compare_Floats_187_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_366();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1605838135", "1605838135", "UNI42_010_B20_main", "box_Compare_Floats_187.A_gt_B", "box_OutputOrder_v2_366.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_265_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_184();
    l0 = self.box_MultipleOR_265;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1437845606", "1437845606", "UNI42_010_B20_main", "box_MultipleOR_265.Out", "box_VehicleModifier_v2_184.SetExplosion", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExplosion
    l1:Exec(17, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BindMarkerOverHead_v2_312_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_293();
    l0 = self.box_BindMarkerOverHead_v2_312;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1588010785", "1588010785", "UNI42_010_B20_main", "box_BindMarkerOverHead_v2_312.Out", "box_GetHealthState_293.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ForceExitVehicle_v2_350_ForceExitted()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_398;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1161090367", "1161090367", "UNI42_010_B20_main", "box_ForceExitVehicle_v2_350.ForceExitted", "box_MultipleOR_398.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_168_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_168;
    l1 = self.box_OnceOnly_v3_221;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1325225228", "1325225228", "UNI42_010_B20_main", "box_Delay_v5_168.TimeElapsed", "box_OnceOnly_v3_221.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_390_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_391();
    l0 = self.box_EntityStatusListener_391;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1976524486", "1976524486", "UNI42_010_B20_main", "box_OutputOrder_v2_390.Out", "box_EntityStatusListener_391.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_390_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_180();
    l0 = self.box_EntityStatusListener_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|592527409", "592527409", "UNI42_010_B20_main", "box_OutputOrder_v2_390.Out", "box_EntityStatusListener_180.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_393_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_393();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1255098563", "1255098563", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_393.Enabled", "box_UseContextualActionModifier_v3_393.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_379_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_380();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|626504417", "626504417", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_379.Locked", "box_VehicleSeatModifier_v2_380.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_181();
    l0 = self.box_EntityStatusListener_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1393095078", "1393095078", "UNI42_010_B20_main", "box_OutputOrder_v2_18.Out", "box_EntityStatusListener_181.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_295();
    l0 = self.box_EntityStatusListener_295;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|125331938", "125331938", "UNI42_010_B20_main", "box_OutputOrder_v2_18.Out", "box_EntityStatusListener_295.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_297();
    l0 = self.box_EntityStatusListener_297;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|441249164", "441249164", "UNI42_010_B20_main", "box_OutputOrder_v2_18.Out", "box_EntityStatusListener_297.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_300();
    l0 = self.box_EntityStatusListener_300;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|571793454", "571793454", "UNI42_010_B20_main", "box_OutputOrder_v2_18.Out", "box_EntityStatusListener_300.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_144_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_162();
    l0 = self.box_MultipleOR_144;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1598868355", "1598868355", "UNI42_010_B20_main", "box_MultipleOR_144.Out", "box_Simple_Node_162.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_211_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_202();
    l0 = self.box_EntityStatusListener_211;
    l1 = self.box_SpawnAI_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|736039625", "736039625", "UNI42_010_B20_main", "box_EntityStatusListener_211.Loaded", "box_SpawnAI_202.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_372_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_347();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1274152687", "1274152687", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_372.Locked", "box_VehicleSeatModifier_v2_347.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_230_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_440();
    l0 = self.box_ProximityTrigger_v2_230;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|363297636", "363297636", "UNI42_010_B20_main", "box_ProximityTrigger_v2_230.Enter", "box_OutputOrder_v2_440.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_71_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_166();
    l0 = self.box_OnceOnly_v3_71;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1165445447", "1165445447", "UNI42_010_B20_main", "box_OnceOnly_v3_71.Out", "box_OutputOrder_v2_166.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_342_Output_0()
    local l0, l1;
    l0 = self.box_Random_342;
    l1 = self.box_OnceOnly_v3_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|735210923", "735210923", "UNI42_010_B20_main", "box_Random_342.Output", "box_OnceOnly_v3_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_342_Output_1()
    local l0, l1;
    l0 = self.box_Random_342;
    l1 = self.box_OnceOnly_v3_339;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1056161175", "1056161175", "UNI42_010_B20_main", "box_Random_342.Output", "box_OnceOnly_v3_339.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_342_Output_2()
    local l0, l1;
    l0 = self.box_Random_342;
    l1 = self.box_OnceOnly_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|555068779", "555068779", "UNI42_010_B20_main", "box_Random_342.Output", "box_OnceOnly_v3_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_342_Output_3()
    local l0, l1;
    l0 = self.box_Random_342;
    l1 = self.box_OnceOnly_v3_341;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1665070800", "1665070800", "UNI42_010_B20_main", "box_Random_342.Output", "box_OnceOnly_v3_341.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_342_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_286();
    l0 = self.box_Random_342;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|560852819", "560852819", "UNI42_010_B20_main", "box_Random_342.Output", "box_Simple_Node_286.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_294_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_EntityStatusListener_294;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|980776089", "980776089", "UNI42_010_B20_main", "box_EntityStatusListener_294.Loaded", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_364_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_369();
    l0 = self.box_ProximityTrigger_v2_364;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|427442946", "427442946", "UNI42_010_B20_main", "box_ProximityTrigger_v2_364.Enter", "box_Compare_Entity_369.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_380_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_381();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|488918769", "488918769", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_380.Locked", "box_VehicleSeatModifier_v2_381.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_260_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_260;
    l1 = self.box_MultipleOR_263;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2046364346", "2046364346", "UNI42_010_B20_main", "box_PlayDialog_v6_260.Finished", "box_MultipleOR_263.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_429_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_74();
    l0 = self.box_HealthListener_v6_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|476354089", "476354089", "UNI42_010_B20_main", "box_OutputOrder_v2_429.Out", "box_HealthListener_v6_74.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_429_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_434();
    l0 = self.box_ProximityTrigger_v2_434;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|280245802", "280245802", "UNI42_010_B20_main", "box_OutputOrder_v2_429.Out", "box_ProximityTrigger_v2_434.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_243_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_3();
    l0 = self.box_HealthListener_v6_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|699924115", "699924115", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_243.Disabled", "box_HealthListener_v6_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_243_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_243();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1378642204", "1378642204", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_243.Enabled", "box_UseContextualActionModifier_v3_243.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_243_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|589943721", "589943721", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_243.ForceNormalEndCalled", "box_OutputOrder_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_165_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_ProximityTrigger_v2_165;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1288847589", "1288847589", "UNI42_010_B20_main", "box_ProximityTrigger_v2_165.Enter", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_279_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_279;
    l1 = self.box_MultipleOR_281;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|871111733", "871111733", "UNI42_010_B20_main", "box_PlayDialog_v6_279.Finished", "box_MultipleOR_281.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_279_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_279;
    l1 = self.box_MultipleOR_281;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1118497388", "1118497388", "UNI42_010_B20_main", "box_PlayDialog_v6_279.FinishedInterrupted", "box_MultipleOR_281.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_440_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_247();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1500414866", "1500414866", "UNI42_010_B20_main", "box_OutputOrder_v2_440.Out", "box_SetContextualStrategy_247.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_440_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_444();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1331201446", "1331201446", "UNI42_010_B20_main", "box_OutputOrder_v2_440.Out", "box_VehicleModifier_v2_444.SetEngineMajorDamage", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEngineMajorDamage
    l0:Exec(13, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_259_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_259;
    l1 = self.box_MultipleOR_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1362252782", "1362252782", "UNI42_010_B20_main", "box_ProximityTrigger_v2_259.Enter", "box_MultipleOR_258.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_218_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_94();
    l0 = self.box_MultipleOR_218;
    l1 = self.box_ProximityTrigger_v2_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2050426418", "2050426418", "UNI42_010_B20_main", "box_MultipleOR_218.Out", "box_ProximityTrigger_v2_94.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_103_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_101();
    l0 = self.box_ProximityRadiusListener_v3_103;
    l1 = self.box_DisplayCustomUIMsg_v5_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|710284254", "710284254", "UNI42_010_B20_main", "box_ProximityRadiusListener_v3_103.AllFar", "box_DisplayCustomUIMsg_v5_101.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_103_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_98();
    l0 = self.box_ProximityRadiusListener_v3_103;
    l1 = self.box_ProximityRadiusListener_v3_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1949893930", "1949893930", "UNI42_010_B20_main", "box_ProximityRadiusListener_v3_103.Disabled", "box_ProximityRadiusListener_v3_98.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_103_Enabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_103;
    l1 = self.box_OnceOnly_v3_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|314676050", "314676050", "UNI42_010_B20_main", "box_ProximityRadiusListener_v3_103.Enabled", "box_OnceOnly_v3_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_407_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_399();
    l0 = self.box_EntityStatusListener_399;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1849881371", "1849881371", "UNI42_010_B20_main", "box_OutputOrder_v2_407.Out", "box_EntityStatusListener_399.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_407_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_401();
    l0 = self.box_EntityStatusListener_401;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1463054815", "1463054815", "UNI42_010_B20_main", "box_OutputOrder_v2_407.Out", "box_EntityStatusListener_401.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_407_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_224();
    l0 = self.box_ProximityTrigger_v2_224;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|493724299", "493724299", "UNI42_010_B20_main", "box_OutputOrder_v2_407.Out", "box_ProximityTrigger_v2_224.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_268_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_267();
    l0 = self.box_VehicleDamageListener_v2_267;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|115574090", "115574090", "UNI42_010_B20_main", "box_OutputOrder_v2_268.Out", "box_VehicleDamageListener_v2_267.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_268_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_259();
    l0 = self.box_ProximityTrigger_v2_259;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|793416246", "793416246", "UNI42_010_B20_main", "box_OutputOrder_v2_268.Out", "box_ProximityTrigger_v2_259.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_268_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_284;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1635535808", "1635535808", "UNI42_010_B20_main", "box_OutputOrder_v2_268.Out", "box_OnceOnly_v3_284.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_127_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Random_40();
    l0 = self.box_Random_127;
    l1 = self.box_Random_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2119191606", "2119191606", "UNI42_010_B20_main", "box_Random_127.Output", "box_Random_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_127_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_128();
    l0 = self.box_Random_127;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1500431192", "1500431192", "UNI42_010_B20_main", "box_Random_127.Output", "box_Simple_Node_128.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_76_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_77();
    l0 = self.box_HealthListener_v6_76;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1980444803", "1980444803", "UNI42_010_B20_main", "box_HealthListener_v6_76.Killed", "box_ForceVehicleCrash_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_196_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_439();
    l0 = self.box_Delay_v5_439;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|256642966", "256642966", "UNI42_010_B20_main", "box_OutputOrder_v2_196.Out", "box_Delay_v5_439.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_196_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_240();
    l0 = self.box_EntityStatusListener_240;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1952029470", "1952029470", "UNI42_010_B20_main", "box_OutputOrder_v2_196.Out", "box_EntityStatusListener_240.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_196_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_438();
    l0 = self.box_Delay_v5_438;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1197086023", "1197086023", "UNI42_010_B20_main", "box_OutputOrder_v2_196.Out", "box_Delay_v5_438.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_196_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_406();
    l0 = self.box_ProximityTrigger_v2_406;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1757492353", "1757492353", "UNI42_010_B20_main", "box_OutputOrder_v2_196.Out", "box_ProximityTrigger_v2_406.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_277_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_279();
    l0 = self.box_Delay_v5_277;
    l1 = self.box_PlayDialog_v6_279;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1965231921", "1965231921", "UNI42_010_B20_main", "box_Delay_v5_277.TimeElapsed", "box_PlayDialog_v6_279.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_400_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_420();
    l0 = self.box_SpawnAI_400;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|844160405", "844160405", "UNI42_010_B20_main", "box_SpawnAI_400.Spawned", "box_Print_v2_420.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_398_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_398;
    l1 = self.box_OnceOnly_v3_397;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1487896292", "1487896292", "UNI42_010_B20_main", "box_MultipleOR_398.Out", "box_OnceOnly_v3_397.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_333_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_109();
    l0 = self.box_VehicleListener_v3_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|572474650", "572474650", "UNI42_010_B20_main", "box_OutputOrder_v2_333.Out", "box_VehicleListener_v3_109.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_333_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_358;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|52988027", "52988027", "UNI42_010_B20_main", "box_OutputOrder_v2_333.Out", "box_MultipleOR_358.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_425_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_255();
    l0 = self.box_ProximityRadiusListener_v3_255;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1774523061", "1774523061", "UNI42_010_B20_main", "box_OutputOrder_v2_425.Out", "box_ProximityRadiusListener_v3_255.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_425_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_422();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1788933880", "1788933880", "UNI42_010_B20_main", "box_OutputOrder_v2_425.Out", "box_Print_v2_422.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_431_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_432();
    l0 = self.box_ProximityTrigger_v2_431;
    l1 = self.box_RemoveEntity_v2_432;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|327549656", "327549656", "UNI42_010_B20_main", "box_ProximityTrigger_v2_431.Enter", "box_RemoveEntity_v2_432.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_406_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_407();
    l0 = self.box_ProximityTrigger_v2_406;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|705394036", "705394036", "UNI42_010_B20_main", "box_ProximityTrigger_v2_406.Enter", "box_OutputOrder_v2_407.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_138_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_199();
    l0 = self.box_Delay_v5_138;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2034532077", "2034532077", "UNI42_010_B20_main", "box_Delay_v5_138.TimeElapsed", "box_Simple_Node_199.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_244_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|138488533", "138488533", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_244.Disabled", "box_OutputOrder_v2_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_244_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_244();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|544295879", "544295879", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_244.Enabled", "box_UseContextualActionModifier_v3_244.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_244_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_244();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1377809029", "1377809029", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_244.ForceNormalEndCalled", "box_UseContextualActionModifier_v3_244.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_216_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_168();
    l0 = self.box_MultipleOR_216;
    l1 = self.box_Delay_v5_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|21562608", "21562608", "UNI42_010_B20_main", "box_MultipleOR_216.Out", "box_Delay_v5_168.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RadioModifier_v3_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_90();
    l0 = self.box_Music_Quest_v2_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1010414560", "1010414560", "UNI42_010_B20_main", "box_RadioModifier_v3_92.Out", "box_Music_Quest_v2_90.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_IsEntityLoaded_v3_225_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_236();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|625214437", "625214437", "UNI42_010_B20_main", "box_IsEntityLoaded_v3_225.True", "box_UseContextualActionModifier_v3_236.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_197_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_197;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1647388683", "1647388683", "UNI42_010_B20_main", "box_Delay_v5_197.TimeElapsed", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_271_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_238();
    l0 = self.box_Delay_v5_271;
    l1 = self.box_EntityStatusListener_238;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1150032149", "1150032149", "UNI42_010_B20_main", "box_Delay_v5_271.TimeElapsed", "box_EntityStatusListener_238.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_180_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_149();
    l0 = self.box_EntityStatusListener_180;
    l1 = self.box_ProximityTrigger_v2_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1581519033", "1581519033", "UNI42_010_B20_main", "box_EntityStatusListener_180.Loaded", "box_ProximityTrigger_v2_149.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Random_40_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_260();
    l0 = self.box_Random_40;
    l1 = self.box_PlayDialog_v6_260;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1546120156", "1546120156", "UNI42_010_B20_main", "box_Random_40.Output", "box_PlayDialog_v6_260.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_40_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_261();
    l0 = self.box_Random_40;
    l1 = self.box_PlayDialog_v6_261;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|40298", "40298", "UNI42_010_B20_main", "box_Random_40.Output", "box_PlayDialog_v6_261.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_40_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_262();
    l0 = self.box_Random_40;
    l1 = self.box_PlayDialog_v6_262;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1836581146", "1836581146", "UNI42_010_B20_main", "box_Random_40.Output", "box_PlayDialog_v6_262.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_434_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_435();
    l0 = self.box_ProximityTrigger_v2_434;
    l1 = self.box_RemoveEntity_v2_435;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2060210003", "2060210003", "UNI42_010_B20_main", "box_ProximityTrigger_v2_434.Enter", "box_RemoveEntity_v2_435.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_313_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_373();
    l0 = self.box_OnceOnly_v3_313;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|842538009", "842538009", "UNI42_010_B20_main", "box_OnceOnly_v3_313.Out", "box_OutputOrder_v2_373.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_385_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_389();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1761956344", "1761956344", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_385.Unlocked", "box_Print_v2_389.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_31_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AllowAutoDrive_v2_446();
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1129329101", "1129329101", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_31.Unlocked", "box_AllowAutoDrive_v2_446.Allow", clone:GetLuaBox(), l0:GetLuaBox());
    -- Allow
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_95_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_OnceOnly_v3_95;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1892732096", "1892732096", "UNI42_010_B20_main", "box_OnceOnly_v3_95.Out", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_245_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_242();
    l0 = self.box_EntityStatusListener_245;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|703913930", "703913930", "UNI42_010_B20_main", "box_EntityStatusListener_245.Loaded", "box_UseContextualActionModifier_v3_242.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_50_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_110();
    l0 = self.box_Delay_v5_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|537596098", "537596098", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_50.Enabled", "box_Delay_v5_110.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_50_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_292();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1965908423", "1965908423", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_50.UseCalled", "box_OutputOrder_v2_292.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_442_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_244();
    l0 = self.box_ProximityRadiusListener_v3_442;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1649912729", "1649912729", "UNI42_010_B20_main", "box_ProximityRadiusListener_v3_442.SomeoneNear", "box_UseContextualActionModifier_v3_244.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_375_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_376();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1589409369", "1589409369", "UNI42_010_B20_main", "box_Simple_Node_375.Out", "box_Simple_Node_376.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_302_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_411();
    l0 = self.box_SpawnAI_302;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|314278275", "314278275", "UNI42_010_B20_main", "box_SpawnAI_302.Spawned", "box_Print_v2_411.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_413_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_412();
    l0 = self.box_ProximityRadiusListener_v3_413;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2120098491", "2120098491", "UNI42_010_B20_main", "box_ProximityRadiusListener_v3_413.SomeoneNear", "box_SetContextualStrategy_412.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_229_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_230();
    l0 = self.box_ProximityTrigger_v2_230;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1067117765", "1067117765", "UNI42_010_B20_main", "box_OutputOrder_v2_229.Out", "box_ProximityTrigger_v2_230.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_229_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_252();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|981642745", "981642745", "UNI42_010_B20_main", "box_OutputOrder_v2_229.Out", "box_Simple_Node_252.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ForceVehicleCrash_370_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_371();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|963696192", "963696192", "UNI42_010_B20_main", "box_ForceVehicleCrash_370.Out", "box_VehicleModifier_v2_371.SetExplosion", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetExplosion
    l0:Exec(17, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_6();
    l0 = self.box_MultipleOR_7;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1869887814", "1869887814", "UNI42_010_B20_main", "box_MultipleOR_7.Out", "box_Compare_Integers_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_272();
    l0 = self.box_ExitZoneWarningListener_v3_272;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|667854264", "667854264", "UNI42_010_B20_main", "box_OutputOrder_v2_129.Out", "box_ExitZoneWarningListener_v3_272.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_129_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_276();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|30584333", "30584333", "UNI42_010_B20_main", "box_OutputOrder_v2_129.Out", "box_FastTravelModifier_v2_276.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_148_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_178();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|335758286", "335758286", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_148.Disabled", "box_SetBoolean_v2_178.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_148_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_148();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1131412400", "1131412400", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_148.ForceNormalEndCalled", "box_UseContextualActionModifier_v3_148.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_109_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_112();
    l0 = self.box_VehicleListener_v3_109;
    l1 = self.box_Gate_v3_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1173521216", "1173521216", "UNI42_010_B20_main", "box_VehicleListener_v3_109.Disabled", "box_Gate_v3_112.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_109_Enabled()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_109;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|388176744", "388176744", "UNI42_010_B20_main", "box_VehicleListener_v3_109.Enabled", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_109_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_109;
    l1 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|807337867", "807337867", "UNI42_010_B20_main", "box_VehicleListener_v3_109.OnStandUp", "box_MultipleOR_111.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_39_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_47();
    l0 = self.box_EntityStatusListener_39;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|735382986", "735382986", "UNI42_010_B20_main", "box_EntityStatusListener_39.Loaded", "box_SetEntity_v2_47.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_112_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_113();
    l0 = self.box_Gate_v3_112;
    l1 = self.box_Delay_v5_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1996920808", "1996920808", "UNI42_010_B20_main", "box_Gate_v3_112.Out", "box_Delay_v5_113.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_308_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_423();
    l0 = self.box_SpawnAI_308;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|226676243", "226676243", "UNI42_010_B20_main", "box_SpawnAI_308.Spawned", "box_OutputOrder_v2_423.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_275();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1332875069", "1332875069", "UNI42_010_B20_main", "box_OutputOrder_v2_59.Out", "box_FastTravelModifier_v2_275.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_62();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1387100947", "1387100947", "UNI42_010_B20_main", "box_OutputOrder_v2_59.Out", "box_Simple_Node_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_190();
    l0 = self.box_Music_Quest_v2_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1906618200", "1906618200", "UNI42_010_B20_main", "box_OutputOrder_v2_59.Out", "box_Music_Quest_v2_190.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_13_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_13;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1693037400", "1693037400", "UNI42_010_B20_main", "box_GroupSizeListener_v5_13.Enabled", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_13_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_13;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1486318521", "1486318521", "UNI42_010_B20_main", "box_GroupSizeListener_v5_13.MemberRemoved", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1137775560", "1137775560", "UNI42_010_B20_main", "box_OutputOrder_v2_52.Out", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_80();
    l0 = self.box_HealthListener_v6_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1985245498", "1985245498", "UNI42_010_B20_main", "box_OutputOrder_v2_52.Out", "box_HealthListener_v6_80.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_96_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_96_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_378();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|237091372", "237091372", "UNI42_010_B20_main", "box_SetEntity_v2_96.Out", "box_OutputOrder_v2_378.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_191_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_195();
    l0 = self.box_ProximityTrigger_v2_191;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1125863391", "1125863391", "UNI42_010_B20_main", "box_ProximityTrigger_v2_191.Enter", "box_OutputOrder_v2_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_215_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_94();
    l0 = self.box_ProximityTrigger_v2_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2027693409", "2027693409", "UNI42_010_B20_main", "box_OutputOrder_v2_215.Out", "box_ProximityTrigger_v2_94.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_215_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_214();
    l0 = self.box_ProximityTrigger_v2_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2106522854", "2106522854", "UNI42_010_B20_main", "box_OutputOrder_v2_215.Out", "box_ProximityTrigger_v2_214.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_166_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_390();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|733287816", "733287816", "UNI42_010_B20_main", "box_OutputOrder_v2_166.Out", "box_OutputOrder_v2_390.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_166_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_91();
    l0 = self.box_EntityStatusListener_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1443130830", "1443130830", "UNI42_010_B20_main", "box_OutputOrder_v2_166.Out", "box_EntityStatusListener_91.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_166_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_176();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|248422863", "248422863", "UNI42_010_B20_main", "box_OutputOrder_v2_166.Out", "box_Simple_Node_176.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_166_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_368();
    l0 = self.box_EntityStatusListener_368;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1415661321", "1415661321", "UNI42_010_B20_main", "box_OutputOrder_v2_166.Out", "box_EntityStatusListener_368.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_426_OnChangeSeat()
    self:OnExit_box_VehicleListener_v3_426_OnChangeSeat();
end;

function export:f_box_VehicleListener_v3_426_OnInteract()
    self:OnExit_box_VehicleListener_v3_426_OnInteract();
end;

function export:f_box_VehicleListener_v3_426_OnSit()
    local params, l0, l1;
    self:OnExit_box_VehicleListener_v3_426_OnSit();
    params = self:OnEnter_box_HealthListener_v6_60();
    l0 = self.box_VehicleListener_v3_426;
    l1 = self.box_HealthListener_v6_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1376953159", "1376953159", "UNI42_010_B20_main", "box_VehicleListener_v3_426.OnSit", "box_HealthListener_v6_60.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_426_OnStandUp()
    self:OnExit_box_VehicleListener_v3_426_OnStandUp();
end;

function export:f_box_MultipleAND_v2_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_294();
    l0 = self.box_MultipleAND_v2_15;
    l1 = self.box_EntityStatusListener_294;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|477587109", "477587109", "UNI42_010_B20_main", "box_MultipleAND_v2_15.Out", "box_EntityStatusListener_294.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_224_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_223();
    l0 = self.box_ProximityTrigger_v2_224;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|452265569", "452265569", "UNI42_010_B20_main", "box_ProximityTrigger_v2_224.Enter", "box_OutputOrder_v2_223.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleHealthListener_v2_186();
    l0 = self.box_VehicleHealthListener_v2_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|769664179", "769664179", "UNI42_010_B20_main", "box_OutputOrder_v2_188.Out", "box_VehicleHealthListener_v2_186.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_188_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_177();
    l0 = self.box_ProximityTrigger_v2_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1038380665", "1038380665", "UNI42_010_B20_main", "box_OutputOrder_v2_188.Out", "box_ProximityTrigger_v2_177.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_188_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_86();
    l0 = self.box_Bind_v4_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1896907285", "1896907285", "UNI42_010_B20_main", "box_OutputOrder_v2_188.Out", "box_Bind_v4_86.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_188_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_267();
    l0 = self.box_VehicleDamageListener_v2_267;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|303040139", "303040139", "UNI42_010_B20_main", "box_OutputOrder_v2_188.Out", "box_VehicleDamageListener_v2_267.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_188_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_283();
    l0 = self.box_HealthListener_v6_283;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|777865387", "777865387", "UNI42_010_B20_main", "box_OutputOrder_v2_188.Out", "box_HealthListener_v6_283.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_232_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_232;
    l1 = self.box_OnceOnly_v3_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1589378618", "1589378618", "UNI42_010_B20_main", "box_Delay_v5_232.TimeElapsed", "box_OnceOnly_v3_219.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_392_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_393();
    l0 = self.box_ProximityTrigger_v2_392;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|766091449", "766091449", "UNI42_010_B20_main", "box_ProximityTrigger_v2_392.Enter", "box_UseContextualActionModifier_v3_393.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_47_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_47_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_15();
    l0 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1891194266", "1891194266", "UNI42_010_B20_main", "box_SetEntity_v2_47.Out", "box_MultipleAND_v2_15.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Simple_Node_376_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1867804999", "1867804999", "UNI42_010_B20_main", "box_Simple_Node_376.Out", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_198_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_136();
    l0 = self.box_MultipleOR_198;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1804695239", "1804695239", "UNI42_010_B20_main", "box_MultipleOR_198.Out", "box_GetDistance_136.Distance2D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance2D
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_295_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_296();
    l0 = self.box_EntityStatusListener_295;
    l1 = self.box_SpawnAI_296;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1005206873", "1005206873", "UNI42_010_B20_main", "box_EntityStatusListener_295.Loaded", "box_SpawnAI_296.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_91_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_167();
    l0 = self.box_EntityStatusListener_91;
    l1 = self.box_ProximityTrigger_v2_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|293998733", "293998733", "UNI42_010_B20_main", "box_EntityStatusListener_91.Loaded", "box_ProximityTrigger_v2_167.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_391_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_392();
    l0 = self.box_EntityStatusListener_391;
    l1 = self.box_ProximityTrigger_v2_392;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1546094079", "1546094079", "UNI42_010_B20_main", "box_EntityStatusListener_391.Loaded", "box_ProximityTrigger_v2_392.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_39();
    l0 = self.box_EntityStatusListener_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1849450457", "1849450457", "UNI42_010_B20_main", "box_OutputOrder_v2_38.Out", "box_EntityStatusListener_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_33();
    l0 = self.box_EntityStatusListener_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1404097107", "1404097107", "UNI42_010_B20_main", "box_OutputOrder_v2_38.Out", "box_EntityStatusListener_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_38_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_46();
    l0 = self.box_EntityStatusListener_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|408676341", "408676341", "UNI42_010_B20_main", "box_OutputOrder_v2_38.Out", "box_EntityStatusListener_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_38_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_45();
    l0 = self.box_CharacterLoadedIdListener_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|576986", "576986", "UNI42_010_B20_main", "box_OutputOrder_v2_38.Out", "box_CharacterLoadedIdListener_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityInitialized_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_106();
    l0 = self.box_ActivityInitialized_12;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|259503635", "259503635", "UNI42_010_B20_main", "box_ActivityInitialized_12.Out", "box_GetPlayerGroup_v2_106.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_75_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_81();
    l0 = self.box_HealthListener_v6_75;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1167371277", "1167371277", "UNI42_010_B20_main", "box_HealthListener_v6_75.Killed", "box_ForceVehicleCrash_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_17();
    l0 = self.box_VehicleListener_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|228853889", "228853889", "UNI42_010_B20_main", "box_OutputOrder_v2_125.Out", "box_VehicleListener_v3_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_125_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_122();
    l0 = self.box_VehicleListener_v3_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|612555261", "612555261", "UNI42_010_B20_main", "box_OutputOrder_v2_125.Out", "box_VehicleListener_v3_122.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_351_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_145();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2135168550", "2135168550", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_351.Locked", "box_VehicleSeatModifier_v2_145.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_MultipleOR_28;
    l1 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1057655164", "1057655164", "UNI42_010_B20_main", "box_MultipleOR_28.Out", "box_Delay_v5_34.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_177_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_345();
    l0 = self.box_ProximityTrigger_v2_177;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|62668957", "62668957", "UNI42_010_B20_main", "box_ProximityTrigger_v2_177.Enter", "box_OutputOrder_v2_345.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_267_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_267;
    l1 = self.box_MultipleOR_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1945291268", "1945291268", "UNI42_010_B20_main", "box_VehicleDamageListener_v2_267.Broken", "box_MultipleOR_258.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_VehicleDamageListener_v2_267_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_267;
    l1 = self.box_MultipleOR_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1100946514", "1100946514", "UNI42_010_B20_main", "box_VehicleDamageListener_v2_267.Destroyed", "box_MultipleOR_258.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleDamageListener_v2_267_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_259();
    l0 = self.box_VehicleDamageListener_v2_267;
    l1 = self.box_ProximityTrigger_v2_259;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1617526370", "1617526370", "UNI42_010_B20_main", "box_VehicleDamageListener_v2_267.Enabled", "box_ProximityTrigger_v2_259.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleDamageListener_v2_267_OnFire()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_267;
    l1 = self.box_MultipleOR_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|512666338", "512666338", "UNI42_010_B20_main", "box_VehicleDamageListener_v2_267.OnFire", "box_MultipleOR_258.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_EntityStatusListener_238_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_236();
    l0 = self.box_EntityStatusListener_238;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2141837297", "2141837297", "UNI42_010_B20_main", "box_EntityStatusListener_238.Loaded", "box_UseContextualActionModifier_v3_236.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_405_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_403();
    l0 = self.box_VehicleDamageListener_v2_403;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1086718269", "1086718269", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_405.Locked", "box_VehicleDamageListener_v2_403.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MovementListener_v2_322_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_317();
    l0 = self.box_MovementListener_v2_322;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1879460940", "1879460940", "UNI42_010_B20_main", "box_MovementListener_v2_322.Enabled", "box_Compare_Boolean_317.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MovementListener_v2_322_Idle()
    local l0, l1;
    self:OnExit_box_MovementListener_v2_322_Idle();
    l0 = self.box_MovementListener_v2_322;
    l1 = self.box_MultipleOR_325;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1295933645", "1295933645", "UNI42_010_B20_main", "box_MovementListener_v2_322.Idle", "box_MultipleOR_325.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MovementListener_v2_322_Moving()
    local l0, l1;
    self:OnExit_box_MovementListener_v2_322_Moving();
    l0 = self.box_MovementListener_v2_322;
    l1 = self.box_MultipleOR_320;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|254117111", "254117111", "UNI42_010_B20_main", "box_MovementListener_v2_322.Moving", "box_MultipleOR_320.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_321_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_321;
    l1 = self.box_MultipleOR_356;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|74250027", "74250027", "UNI42_010_B20_main", "box_OnceOnly_v3_321.Out", "box_MultipleOR_356.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_303_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_408();
    l0 = self.box_SpawnAI_303;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|57679171", "57679171", "UNI42_010_B20_main", "box_SpawnAI_303.Spawned", "box_Print_v2_408.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_253_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_209();
    l0 = self.box_RemoveEntity_v2_253;
    l1 = self.box_EntityStatusListener_209;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|176694689", "176694689", "UNI42_010_B20_main", "box_RemoveEntity_v2_253.Out", "box_EntityStatusListener_209.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_283_Critical()
    self:OnExit_box_HealthListener_v6_283_Critical();
end;

function export:f_box_HealthListener_v6_283_Damaged()
    self:OnExit_box_HealthListener_v6_283_Damaged();
end;

function export:f_box_HealthListener_v6_283_Downed()
    self:OnExit_box_HealthListener_v6_283_Downed();
end;

function export:f_box_HealthListener_v6_283_Healed()
    self:OnExit_box_HealthListener_v6_283_Healed();
end;

function export:f_box_HealthListener_v6_283_Killed()
    local params, l0, l1;
    self:OnExit_box_HealthListener_v6_283_Killed();
    params = self:OnEnter_box_Random_342();
    l0 = self.box_HealthListener_v6_283;
    l1 = self.box_Random_342;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1855596171", "1855596171", "UNI42_010_B20_main", "box_HealthListener_v6_283.Killed", "box_Random_342.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_283_Revived()
    self:OnExit_box_HealthListener_v6_283_Revived();
end;

function export:f_box_EntityStatusListener_301_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_302();
    l0 = self.box_EntityStatusListener_301;
    l1 = self.box_SpawnAI_302;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2069566640", "2069566640", "UNI42_010_B20_main", "box_EntityStatusListener_301.Loaded", "box_SpawnAI_302.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_383_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_384();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2144940360", "2144940360", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_383.Unlocked", "box_VehicleSeatModifier_v2_384.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_299_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_418();
    l0 = self.box_SpawnAI_299;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|287757156", "287757156", "UNI42_010_B20_main", "box_SpawnAI_299.Spawned", "box_Print_v2_418.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_106_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_106_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_105();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|692148652", "692148652", "UNI42_010_B20_main", "box_GetPlayerGroup_v2_106.Out", "box_GetLocalPlayer_v2_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_236_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_429();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|442558838", "442558838", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_236.Disabled", "box_OutputOrder_v2_429.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_236_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_236();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1515023084", "1515023084", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_236.Enabled", "box_UseContextualActionModifier_v3_236.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_236_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1029417039", "1029417039", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_236.ForceNormalEndCalled", "box_OutputOrder_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_169_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_116();
    l0 = self.box_EntityStatusListener_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|886657200", "886657200", "UNI42_010_B20_main", "box_OutputOrder_v2_169.Out", "box_EntityStatusListener_116.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_169_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_388();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|394861147", "394861147", "UNI42_010_B20_main", "box_OutputOrder_v2_169.Out", "box_Simple_Node_388.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_195_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_301();
    l0 = self.box_EntityStatusListener_301;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|884179551", "884179551", "UNI42_010_B20_main", "box_OutputOrder_v2_195.Out", "box_EntityStatusListener_301.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_195_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_253();
    l0 = self.box_RemoveEntity_v2_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|527783658", "527783658", "UNI42_010_B20_main", "box_OutputOrder_v2_195.Out", "box_RemoveEntity_v2_253.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_195_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_304();
    l0 = self.box_EntityStatusListener_304;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2079896196", "2079896196", "UNI42_010_B20_main", "box_OutputOrder_v2_195.Out", "box_EntityStatusListener_304.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_195_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_192();
    l0 = self.box_ProximityTrigger_v2_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1042974134", "1042974134", "UNI42_010_B20_main", "box_OutputOrder_v2_195.Out", "box_ProximityTrigger_v2_192.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_359_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_336();
    l0 = self.box_MultipleOR_359;
    l1 = self.box_Delay_v5_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|698871161", "698871161", "UNI42_010_B20_main", "box_MultipleOR_359.Out", "box_Delay_v5_336.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Compare_Entity_369_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceVehicleCrash_370();
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2084861226", "2084861226", "UNI42_010_B20_main", "box_Compare_Entity_369.NotEqual", "box_ForceVehicleCrash_370.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_377_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_84();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1723275637", "1723275637", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_377.Locked", "box_VehicleSeatModifier_v2_84.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_167_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_346();
    l0 = self.box_ProximityTrigger_v2_167;
    l1 = self.box_Music_Quest_v2_346;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|304067342", "304067342", "UNI42_010_B20_main", "box_ProximityTrigger_v2_167.Enter", "box_Music_Quest_v2_346.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_374_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_309();
    l0 = self.box_MultipleOR_374;
    l1 = self.box_HealthListener_v6_309;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|918252820", "918252820", "UNI42_010_B20_main", "box_MultipleOR_374.Out", "box_HealthListener_v6_309.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_88_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_165();
    l0 = self.box_ProximityTrigger_v2_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|110705257", "110705257", "UNI42_010_B20_main", "box_OutputOrder_v2_88.Out", "box_ProximityTrigger_v2_165.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_88_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_212();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1762982438", "1762982438", "UNI42_010_B20_main", "box_OutputOrder_v2_88.Out", "box_Simple_Node_212.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_397_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleSeatModifier_v2_351();
    l0 = self.box_OnceOnly_v3_397;
    l1 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|569517024", "569517024", "UNI42_010_B20_main", "box_OnceOnly_v3_397.Out", "box_VehicleSeatModifier_v2_351.Lock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_293_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_313;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|59511844", "59511844", "UNI42_010_B20_main", "box_GetHealthState_293.Down", "box_OnceOnly_v3_313.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetHealthState_293_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_374;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|283412555", "283412555", "UNI42_010_B20_main", "box_GetHealthState_293.Healthy", "box_MultipleOR_374.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AddActivityObjective_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2022727344", "2022727344", "UNI42_010_B20_main", "box_AddActivityObjective_v2_11.Out", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_433_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_75();
    l0 = self.box_HealthListener_v6_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1106656136", "1106656136", "UNI42_010_B20_main", "box_OutputOrder_v2_433.Out", "box_HealthListener_v6_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_433_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_431();
    l0 = self.box_ProximityTrigger_v2_431;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|292995447", "292995447", "UNI42_010_B20_main", "box_OutputOrder_v2_433.Out", "box_ProximityTrigger_v2_431.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_200_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_200;
    l1 = self.box_OnceOnly_v3_365;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|714652689", "714652689", "UNI42_010_B20_main", "box_Gate_v3_200.Out", "box_OnceOnly_v3_365.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleSeatModifier_v2_84_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_379();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1805715801", "1805715801", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_84.Locked", "box_VehicleSeatModifier_v2_379.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_234();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2089015208", "2089015208", "UNI42_010_B20_main", "box_OutputOrder_v2_29.Out", "box_UseContextualActionModifier_v3_234.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1617325605", "1617325605", "UNI42_010_B20_main", "box_OutputOrder_v2_29.Out", "box_MultipleOR_28.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_111_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_112();
    l0 = self.box_MultipleOR_111;
    l1 = self.box_Gate_v3_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1927069731", "1927069731", "UNI42_010_B20_main", "box_MultipleOR_111.Out", "box_Gate_v3_112.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_170_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_203();
    l0 = self.box_SoundModifier_v2_170;
    l1 = self.box_Music_Quest_v2_203;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|84782945", "84782945", "UNI42_010_B20_main", "box_SoundModifier_v2_170.Finished", "box_Music_Quest_v2_203.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_320_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_324();
    l0 = self.box_MultipleOR_320;
    l1 = self.box_Delay_v5_324;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1130802199", "1130802199", "UNI42_010_B20_main", "box_MultipleOR_320.Out", "box_Delay_v5_324.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_EntityStatusListener_239_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_234();
    l0 = self.box_EntityStatusListener_239;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|801394496", "801394496", "UNI42_010_B20_main", "box_EntityStatusListener_239.Loaded", "box_UseContextualActionModifier_v3_234.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_113_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_113;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1499042782", "1499042782", "UNI42_010_B20_main", "box_Delay_v5_113.TimeElapsed", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleSeatModifier_v2_145_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_208();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1490138036", "1490138036", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_145.Locked", "box_VehicleSeatModifier_v2_208.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_341_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_340();
    l0 = self.box_OnceOnly_v3_341;
    l1 = self.box_PlayDialog_v6_340;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|118763642", "118763642", "UNI42_010_B20_main", "box_OnceOnly_v3_341.Out", "box_PlayDialog_v6_340.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_GetDistance_136_Out()
    local params, l0;
    self:OnExit_box_GetDistance_136_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_135();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|305102626", "305102626", "UNI42_010_B20_main", "box_GetDistance_136.Out", "box_Compare_Floats_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_94_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_94;
    l1 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1125177388", "1125177388", "UNI42_010_B20_main", "box_ProximityTrigger_v2_94.Enter", "box_MultipleOR_146.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_94_Leave()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_94;
    l1 = self.box_MultipleOR_254;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1605409727", "1605409727", "UNI42_010_B20_main", "box_ProximityTrigger_v2_94.Leave", "box_MultipleOR_254.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_94_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_94;
    l1 = self.box_MultipleOR_254;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|706209287", "706209287", "UNI42_010_B20_main", "box_ProximityTrigger_v2_94.OnEmpty", "box_MultipleOR_254.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_94_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_94;
    l1 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|946069760", "946069760", "UNI42_010_B20_main", "box_ProximityTrigger_v2_94.OnOccupied", "box_MultipleOR_146.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_233_Closed()
    local l0, l1;
    l0 = self.box_Gate_v3_233;
    l1 = self.box_MultipleOR_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1960741777", "1960741777", "UNI42_010_B20_main", "box_Gate_v3_233.Closed", "box_MultipleOR_132.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_233_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_142();
    l0 = self.box_Gate_v3_233;
    l1 = self.box_SoundModifier_v2_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|299625011", "299625011", "UNI42_010_B20_main", "box_Gate_v3_233.Out", "box_SoundModifier_v2_142.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_231_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_234();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|917000943", "917000943", "UNI42_010_B20_main", "box_IsEntityLoaded_v3_231.True", "box_UseContextualActionModifier_v3_234.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_349_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_349;
    l1 = self.box_MultipleOR_398;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|915914488", "915914488", "UNI42_010_B20_main", "box_Delay_v5_349.TimeElapsed", "box_MultipleOR_398.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Music_Quest_v2_90_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_22();
    l0 = self.box_Music_Quest_v2_90;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|543787607", "543787607", "UNI42_010_B20_main", "box_Music_Quest_v2_90.Stopped", "box_ActivityRetry_22.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_41_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_41_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_15();
    l0 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|471692949", "471692949", "UNI42_010_B20_main", "box_SetEntity_v2_41.Out", "box_MultipleAND_v2_15.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Compare_Floats_363_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_367;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1760638062", "1760638062", "UNI42_010_B20_main", "box_Compare_Floats_363.A_lt_B", "box_OnceOnly_v3_367.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_46_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_96();
    l0 = self.box_EntityStatusListener_46;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1298333239", "1298333239", "UNI42_010_B20_main", "box_EntityStatusListener_46.Loaded", "box_SetEntity_v2_96.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_125();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|665316976", "665316976", "UNI42_010_B20_main", "box_OutputOrder_v2_35.Out", "box_OutputOrder_v2_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1561263679", "1561263679", "UNI42_010_B20_main", "box_OutputOrder_v2_35.Out", "box_Simple_Node_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_151();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|223728374", "223728374", "UNI42_010_B20_main", "box_OutputOrder_v2_35.Out", "box_Simple_Node_151.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_154();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|372762884", "372762884", "UNI42_010_B20_main", "box_OutputOrder_v2_35.Out", "box_Simple_Node_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_97();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1530116010", "1530116010", "UNI42_010_B20_main", "box_OutputOrder_v2_35.Out", "box_Simple_Node_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_175();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1607058020", "1607058020", "UNI42_010_B20_main", "box_OutputOrder_v2_35.Out", "box_Simple_Node_175.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_2_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_285();
    l0 = self.box_OnceOnly_v3_2;
    l1 = self.box_PlayDialog_v6_285;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|582775375", "582775375", "UNI42_010_B20_main", "box_OnceOnly_v3_2.Out", "box_PlayDialog_v6_285.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_261_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_261;
    l1 = self.box_MultipleOR_263;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|709035233", "709035233", "UNI42_010_B20_main", "box_PlayDialog_v6_261.Finished", "box_MultipleOR_263.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_178_Out()
    self:OnExit_box_SetBoolean_v2_178_Out();
end;

function export:f_box_MultipleAND_v2_126_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_126;
    l1 = self.box_OnceOnly_v3_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|820062112", "820062112", "UNI42_010_B20_main", "box_MultipleAND_v2_126.Out", "box_OnceOnly_v3_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_98_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_104();
    l0 = self.box_ProximityRadiusListener_v3_98;
    l1 = self.box_ProximityRadiusListener_v3_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|530982625", "530982625", "UNI42_010_B20_main", "box_ProximityRadiusListener_v3_98.Disabled", "box_ProximityRadiusListener_v3_104.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_98_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_101();
    l0 = self.box_ProximityRadiusListener_v3_98;
    l1 = self.box_DisplayCustomUIMsg_v5_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1397602126", "1397602126", "UNI42_010_B20_main", "box_ProximityRadiusListener_v3_98.SomeoneNear", "box_DisplayCustomUIMsg_v5_101.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_36_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_338();
    l0 = self.box_OnceOnly_v3_36;
    l1 = self.box_PlayDialog_v6_338;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1474071020", "1474071020", "UNI42_010_B20_main", "box_OnceOnly_v3_36.Out", "box_PlayDialog_v6_338.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_57_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_37();
    l0 = self.box_Delay_v5_57;
    l1 = self.box_PlayDialog_v6_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1418014345", "1418014345", "UNI42_010_B20_main", "box_Delay_v5_57.TimeElapsed", "box_PlayDialog_v6_37.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_402_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_419();
    l0 = self.box_SpawnAI_402;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1825131715", "1825131715", "UNI42_010_B20_main", "box_SpawnAI_402.Spawned", "box_OutputOrder_v2_419.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_114_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_114_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_119();
    l0 = self.box_PositionModifier_v2_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|438418289", "438418289", "UNI42_010_B20_main", "box_CreateVector3_114.Out", "box_PositionModifier_v2_119.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_110_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_50();
    l0 = self.box_Delay_v5_110;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|548652780", "548652780", "UNI42_010_B20_main", "box_Delay_v5_110.TimeElapsed", "box_UseContextualActionModifier_v3_50.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_423_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_413();
    l0 = self.box_ProximityRadiusListener_v3_413;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|659931863", "659931863", "UNI42_010_B20_main", "box_OutputOrder_v2_423.Out", "box_ProximityRadiusListener_v3_413.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_423_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_424();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|651146410", "651146410", "UNI42_010_B20_main", "box_OutputOrder_v2_423.Out", "box_Print_v2_424.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_427_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_428();
    l0 = self.box_ProximityTrigger_v2_427;
    l1 = self.box_RemoveEntity_v2_428;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1937752360", "1937752360", "UNI42_010_B20_main", "box_ProximityTrigger_v2_427.Enter", "box_RemoveEntity_v2_428.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_19_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_19;
    l1 = self.box_ActivityInitialized_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2021540257", "2021540257", "UNI42_010_B20_main", "box_MultipleOR_19.Out", "box_ActivityInitialized_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_258_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_268();
    l0 = self.box_MultipleOR_258;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1975794196", "1975794196", "UNI42_010_B20_main", "box_MultipleOR_258.Out", "box_OutputOrder_v2_268.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_357_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_357;
    l1 = self.box_MultipleOR_358;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1213051656", "1213051656", "UNI42_010_B20_main", "box_HealthListener_v6_357.Revived", "box_MultipleOR_358.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_60_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_72();
    l0 = self.box_HealthListener_v6_60;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1466277367", "1466277367", "UNI42_010_B20_main", "box_HealthListener_v6_60.Killed", "box_ForceVehicleCrash_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_63_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_63;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|923875452", "923875452", "UNI42_010_B20_main", "box_ActivityAcknowledgeGate_63.Acknowledged", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_63_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_63;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1101377732", "1101377732", "UNI42_010_B20_main", "box_ActivityAcknowledgeGate_63.Reloaded", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RadioModifier_v3_133_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_24();
    l0 = self.box_Music_Quest_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1066131481", "1066131481", "UNI42_010_B20_main", "box_RadioModifier_v3_133.Out", "box_Music_Quest_v2_24.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_UseContextualActionModifier_v3_395_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_348();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1805063692", "1805063692", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_395.Disabled", "box_UseContextualActionModifier_v3_348.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_395_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_395();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1875973022", "1875973022", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_395.ForceNormalEndCalled", "box_UseContextualActionModifier_v3_395.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_53_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_OnceOnly_v3_53;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1403206241", "1403206241", "UNI42_010_B20_main", "box_OnceOnly_v3_53.Out", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_336_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_355();
    l0 = self.box_Delay_v5_336;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1607484334", "1607484334", "UNI42_010_B20_main", "box_Delay_v5_336.TimeElapsed", "box_GetHealthState_355.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_17_OnSit()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_17;
    l1 = self.box_OnceOnly_v3_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1634581902", "1634581902", "UNI42_010_B20_main", "box_VehicleListener_v3_17.OnSit", "box_OnceOnly_v3_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_234_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_430();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1743966037", "1743966037", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_234.Disabled", "box_OutputOrder_v2_430.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_234_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_234();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|318782712", "318782712", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_234.Enabled", "box_UseContextualActionModifier_v3_234.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_234_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1416515316", "1416515316", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_234.ForceNormalEndCalled", "box_OutputOrder_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_122_OnAllSitting()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_122;
    l1 = self.box_OnceOnly_v3_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1643925057", "1643925057", "UNI42_010_B20_main", "box_VehicleListener_v3_122.OnAllSitting", "box_OnceOnly_v3_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_122_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_122;
    l1 = self.box_OnceOnly_v3_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1028339402", "1028339402", "UNI42_010_B20_main", "box_VehicleListener_v3_122.OnStandUp", "box_OnceOnly_v3_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_58_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_58();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1675107672", "1675107672", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_58.InterruptCalled", "box_UseContextualActionModifier_v3_58.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_304_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_303();
    l0 = self.box_EntityStatusListener_304;
    l1 = self.box_SpawnAI_303;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1273454648", "1273454648", "UNI42_010_B20_main", "box_EntityStatusListener_304.Loaded", "box_SpawnAI_303.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_401_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_402();
    l0 = self.box_EntityStatusListener_401;
    l1 = self.box_SpawnAI_402;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|111326718", "111326718", "UNI42_010_B20_main", "box_EntityStatusListener_401.Loaded", "box_SpawnAI_402.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_430_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_76();
    l0 = self.box_HealthListener_v6_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1736690920", "1736690920", "UNI42_010_B20_main", "box_OutputOrder_v2_430.Out", "box_HealthListener_v6_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_430_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_427();
    l0 = self.box_ProximityTrigger_v2_427;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1713652816", "1713652816", "UNI42_010_B20_main", "box_OutputOrder_v2_430.Out", "box_ProximityTrigger_v2_427.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_396_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_58();
    l0 = self.box_Delay_v5_396;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1809835399", "1809835399", "UNI42_010_B20_main", "box_Delay_v5_396.TimeElapsed", "box_UseContextualActionModifier_v3_58.CallInterrupt", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallInterrupt
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_194_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_409();
    l0 = self.box_SpawnAI_194;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1320923498", "1320923498", "UNI42_010_B20_main", "box_SpawnAI_194.Spawned", "box_Print_v2_409.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_137_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_139();
    l0 = self.box_Gate_v3_137;
    l1 = self.box_Delay_v5_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|54586563", "54586563", "UNI42_010_B20_main", "box_Gate_v3_137.Closed", "box_Delay_v5_139.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_137_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_158();
    l0 = self.box_Gate_v3_137;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|505776068", "505776068", "UNI42_010_B20_main", "box_Gate_v3_137.Opened", "box_Simple_Node_158.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_137_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_134();
    l0 = self.box_Gate_v3_137;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|917848394", "917848394", "UNI42_010_B20_main", "box_Gate_v3_137.Out", "box_RandomFloat_v2_134.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FastTravelModifier_v2_275_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AllowAutoDrive_v2_445();
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|303933751", "303933751", "UNI42_010_B20_main", "box_FastTravelModifier_v2_275.Disabled", "box_AllowAutoDrive_v2_445.DoNotAllow", clone:GetLuaBox(), l0:GetLuaBox());
    -- DoNotAllow
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_105_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_105_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1613504221", "1613504221", "UNI42_010_B20_main", "box_GetLocalPlayer_v2_105.Out", "box_OutputOrder_v2_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_358_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NpcDestinationCheckListener_332();
    l0 = self.box_MultipleOR_358;
    l1 = self.box_NpcDestinationCheckListener_332;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|50546274", "50546274", "UNI42_010_B20_main", "box_MultipleOR_358.Out", "box_NpcDestinationCheckListener_332.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_334_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_335();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1089857522", "1089857522", "UNI42_010_B20_main", "box_OutputOrder_v2_334.Out", "box_VehicleModifier_v2_335.SetExplosion", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetExplosion
    l0:Exec(17, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_334_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_330;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1345920718", "1345920718", "UNI42_010_B20_main", "box_OutputOrder_v2_334.Out", "box_MultipleOR_330.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_334_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_331();
    l0 = self.box_VehicleListener_v3_331;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1425981801", "1425981801", "UNI42_010_B20_main", "box_OutputOrder_v2_334.Out", "box_VehicleListener_v3_331.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_VehicleHealthListener_v2_186_HealthChanged()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Floats_187();
    l0 = self.box_VehicleHealthListener_v2_186;
    l1 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1760905325", "1760905325", "UNI42_010_B20_main", "box_VehicleHealthListener_v2_186.HealthChanged", "box_Compare_Floats_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_291();
    l0 = self.box_MultipleOR_8;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2126830140", "2126830140", "UNI42_010_B20_main", "box_MultipleOR_8.Out", "box_AddActivityObjective_v2_291.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_30();
    l0 = self.box_Delay_v5_34;
    l1 = self.box_PlayDialog_v6_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1750182829", "1750182829", "UNI42_010_B20_main", "box_Delay_v5_34.TimeElapsed", "box_PlayDialog_v6_30.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_171_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_183();
    l0 = self.box_ProximityTrigger_v2_171;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2026853343", "2026853343", "UNI42_010_B20_main", "box_ProximityTrigger_v2_171.Enter", "box_OutputOrder_v2_183.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_201_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_168();
    l0 = self.box_MultipleOR_201;
    l1 = self.box_Delay_v5_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1730237700", "1730237700", "UNI42_010_B20_main", "box_MultipleOR_201.Out", "box_Delay_v5_168.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_EntityStatusListener_209_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_194();
    l0 = self.box_EntityStatusListener_209;
    l1 = self.box_SpawnAI_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|242592610", "242592610", "UNI42_010_B20_main", "box_EntityStatusListener_209.Loaded", "box_SpawnAI_194.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_399_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_400();
    l0 = self.box_EntityStatusListener_399;
    l1 = self.box_SpawnAI_400;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|972559245", "972559245", "UNI42_010_B20_main", "box_EntityStatusListener_399.Loaded", "box_SpawnAI_400.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_436_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_437();
    l0 = self.box_ProximityRadiusListener_v3_436;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1394273074", "1394273074", "UNI42_010_B20_main", "box_ProximityRadiusListener_v3_436.SomeoneNear", "box_SetContextualStrategy_437.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_309_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_309;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|399928124", "399928124", "UNI42_010_B20_main", "box_HealthListener_v6_309.Downed", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_309_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_314();
    l0 = self.box_HealthListener_v6_309;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1141622337", "1141622337", "UNI42_010_B20_main", "box_HealthListener_v6_309.Revived", "box_EndActivityObjective_v2_314.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_214_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_214;
    l1 = self.box_MultipleOR_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|434360789", "434360789", "UNI42_010_B20_main", "box_ProximityTrigger_v2_214.Enter", "box_MultipleOR_216.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_214_Leave()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_214;
    l1 = self.box_MultipleOR_201;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|271327243", "271327243", "UNI42_010_B20_main", "box_ProximityTrigger_v2_214.Leave", "box_MultipleOR_201.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_214_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_214;
    l1 = self.box_MultipleOR_201;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1738959223", "1738959223", "UNI42_010_B20_main", "box_ProximityTrigger_v2_214.OnEmpty", "box_MultipleOR_201.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_214_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_214;
    l1 = self.box_MultipleOR_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1281830727", "1281830727", "UNI42_010_B20_main", "box_ProximityTrigger_v2_214.OnOccupied", "box_MultipleOR_216.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleModifier_v2_179_OnSetAsDestructible()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_31();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1129906155", "1129906155", "UNI42_010_B20_main", "box_VehicleModifier_v2_179.OnSetAsDestructible", "box_VehicleSeatModifier_v2_31.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_179_OnSetExitEnabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_179();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|562448018", "562448018", "UNI42_010_B20_main", "box_VehicleModifier_v2_179.OnSetExitEnabled", "box_VehicleModifier_v2_179.SetAsDestructable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsDestructable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_208_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_372();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|694738216", "694738216", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_208.Locked", "box_VehicleSeatModifier_v2_372.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_131_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_141();
    l0 = self.box_MultipleOR_131;
    l1 = self.box_Gate_v3_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1001647699", "1001647699", "UNI42_010_B20_main", "box_MultipleOR_131.Out", "box_Gate_v3_141.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_146_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_232();
    l0 = self.box_MultipleOR_146;
    l1 = self.box_Delay_v5_232;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|358207308", "358207308", "UNI42_010_B20_main", "box_MultipleOR_146.Out", "box_Delay_v5_232.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Bind_v4_213_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_215();
    l0 = self.box_Bind_v4_213;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1224954287", "1224954287", "UNI42_010_B20_main", "box_Bind_v4_213.Bound", "box_OutputOrder_v2_215.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_307_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_308();
    l0 = self.box_EntityStatusListener_307;
    l1 = self.box_SpawnAI_308;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1587579286", "1587579286", "UNI42_010_B20_main", "box_EntityStatusListener_307.Loaded", "box_SpawnAI_308.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_RadioModifier_v3_85_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_93();
    l0 = self.box_Music_Quest_v2_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1489317424", "1489317424", "UNI42_010_B20_main", "box_RadioModifier_v3_85.Out", "box_Music_Quest_v2_93.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_439_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_245();
    l0 = self.box_Delay_v5_439;
    l1 = self.box_EntityStatusListener_245;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|453072584", "453072584", "UNI42_010_B20_main", "box_Delay_v5_439.TimeElapsed", "box_EntityStatusListener_245.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_5_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_257();
    l0 = self.box_Switch_5;
    l1 = self.box_SpawnAI_257;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1606620688", "1606620688", "UNI42_010_B20_main", "box_Switch_5.Output", "box_SpawnAI_257.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_5_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_256();
    l0 = self.box_Switch_5;
    l1 = self.box_SpawnAI_256;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|913034770", "913034770", "UNI42_010_B20_main", "box_Switch_5.Output", "box_SpawnAI_256.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_86_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_213();
    l0 = self.box_Bind_v4_86;
    l1 = self.box_Bind_v4_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|540261431", "540261431", "UNI42_010_B20_main", "box_Bind_v4_86.Bound", "box_Bind_v4_213.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_142_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_124();
    l0 = self.box_SoundModifier_v2_142;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1795384568", "1795384568", "UNI42_010_B20_main", "box_SoundModifier_v2_142.Finished", "box_OutputOrder_v2_124.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_142_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_137();
    l0 = self.box_SoundModifier_v2_142;
    l1 = self.box_Gate_v3_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2068498840", "2068498840", "UNI42_010_B20_main", "box_SoundModifier_v2_142.Started", "box_Gate_v3_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_367_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_206();
    l0 = self.box_OnceOnly_v3_367;
    l1 = self.box_PlayDialog_v6_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1877761791", "1877761791", "UNI42_010_B20_main", "box_OnceOnly_v3_367.Out", "box_PlayDialog_v6_206.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_AllowAutoDrive_v2_446_OnAllow()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1709460091", "1709460091", "UNI42_010_B20_main", "box_AllowAutoDrive_v2_446.OnAllow", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_317_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_325;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1912149320", "1912149320", "UNI42_010_B20_main", "box_Compare_Boolean_317.A_is_False", "box_MultipleOR_325.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_241_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_243();
    l0 = self.box_EntityStatusListener_241;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1872798564", "1872798564", "UNI42_010_B20_main", "box_EntityStatusListener_241.Loaded", "box_UseContextualActionModifier_v3_243.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1258898169", "1258898169", "UNI42_010_B20_main", "box_OutputOrder_v2_43.Out", "box_OnceOnly_v3_53.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_143();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2065749823", "2065749823", "UNI42_010_B20_main", "box_OutputOrder_v2_43.Out", "box_OutputOrder_v2_143.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FastTravelModifier_v2_276_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_92();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1088388090", "1088388090", "UNI42_010_B20_main", "box_FastTravelModifier_v2_276.Enabled", "box_RadioModifier_v3_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_378_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_362();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1249194265", "1249194265", "UNI42_010_B20_main", "box_OutputOrder_v2_378.Out", "box_VehicleModifier_v2_362.SetAsUsable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUsable
    l0:Exec(7, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_378_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_362();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|819822111", "819822111", "UNI42_010_B20_main", "box_OutputOrder_v2_378.Out", "box_VehicleModifier_v2_362.SetAsDestructable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsDestructable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_378_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_362();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1071920940", "1071920940", "UNI42_010_B20_main", "box_OutputOrder_v2_378.Out", "box_VehicleModifier_v2_362.SetCommandeerDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetCommandeerDisabled
    l0:Exec(9, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_355_Down()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_357();
    l0 = self.box_HealthListener_v6_357;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2078986538", "2078986538", "UNI42_010_B20_main", "box_GetHealthState_355.Down", "box_HealthListener_v6_357.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetHealthState_355_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_334();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1220657778", "1220657778", "UNI42_010_B20_main", "box_GetHealthState_355.Healthy", "box_OutputOrder_v2_334.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_140_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_140_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_138();
    l0 = self.box_Delay_v5_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|292287253", "292287253", "UNI42_010_B20_main", "box_RandomFloat_v2_140.Out", "box_Delay_v5_138.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|267860452", "267860452", "UNI42_010_B20_main", "box_OutputOrder_v2_49.Out", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_426();
    l0 = self.box_VehicleListener_v3_426;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1343882263", "1343882263", "UNI42_010_B20_main", "box_OutputOrder_v2_49.Out", "box_VehicleListener_v3_426.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_242_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1126387072", "1126387072", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_242.Disabled", "box_OutputOrder_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_242_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_242();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1810623205", "1810623205", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_242.Enabled", "box_UseContextualActionModifier_v3_242.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_242_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_242();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|69962972", "69962972", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_242.ForceNormalEndCalled", "box_UseContextualActionModifier_v3_242.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_300_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_299();
    l0 = self.box_EntityStatusListener_300;
    l1 = self.box_SpawnAI_299;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|976473157", "976473157", "UNI42_010_B20_main", "box_EntityStatusListener_300.Loaded", "box_SpawnAI_299.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_123_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_153();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1322946548", "1322946548", "UNI42_010_B20_main", "box_OutputOrder_v2_123.Out", "box_Simple_Node_153.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_315();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1114401995", "1114401995", "UNI42_010_B20_main", "box_OutputOrder_v2_123.Out", "box_Simple_Node_315.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1064765464", "1064765464", "UNI42_010_B20_main", "box_OutputOrder_v2_123.Out", "box_Simple_Node_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_126();
    l0 = self.box_MultipleAND_v2_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1874713806", "1874713806", "UNI42_010_B20_main", "box_OutputOrder_v2_123.Out", "box_MultipleAND_v2_126.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OnceOnly_v3_311_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_323();
    l0 = self.box_OnceOnly_v3_311;
    l1 = self.box_VehicleListener_v3_323;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|417735097", "417735097", "UNI42_010_B20_main", "box_OnceOnly_v3_311.Out", "box_VehicleListener_v3_323.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_116_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_115();
    l0 = self.box_EntityStatusListener_116;
    l1 = self.box_Bind_v4_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|574550379", "574550379", "UNI42_010_B20_main", "box_EntityStatusListener_116.Loaded", "box_Bind_v4_115.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_NpcDestinationCheckListener_332_Disabled()
    local l0, l1;
    l0 = self.box_NpcDestinationCheckListener_332;
    l1 = self.box_MultipleOR_359;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1075135866", "1075135866", "UNI42_010_B20_main", "box_NpcDestinationCheckListener_332.Disabled", "box_MultipleOR_359.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_NpcDestinationCheckListener_332_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_331();
    l0 = self.box_NpcDestinationCheckListener_332;
    l1 = self.box_VehicleListener_v3_331;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1063554763", "1063554763", "UNI42_010_B20_main", "box_NpcDestinationCheckListener_332.Enabled", "box_VehicleListener_v3_331.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_NpcDestinationCheckListener_332_Reachable()
    local l0, l1;
    l0 = self.box_NpcDestinationCheckListener_332;
    l1 = self.box_MultipleOR_359;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1013695205", "1013695205", "UNI42_010_B20_main", "box_NpcDestinationCheckListener_332.Reachable", "box_MultipleOR_359.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NpcDestinationCheckListener_332_Unreachable()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_336();
    l0 = self.box_NpcDestinationCheckListener_332;
    l1 = self.box_Delay_v5_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1368446229", "1368446229", "UNI42_010_B20_main", "box_NpcDestinationCheckListener_332.Unreachable", "box_Delay_v5_336.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_119_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_11();
    l0 = self.box_PositionModifier_v2_119;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1678084895", "1678084895", "UNI42_010_B20_main", "box_PositionModifier_v2_119.StartOut", "box_AddActivityObjective_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_343_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_395();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1679543404", "1679543404", "UNI42_010_B20_main", "box_OutputOrder_v2_343.Out", "box_UseContextualActionModifier_v3_395.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_343_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_344();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1041680463", "1041680463", "UNI42_010_B20_main", "box_OutputOrder_v2_343.Out", "box_Simple_Node_344.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_80_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_78();
    l0 = self.box_HealthListener_v6_80;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1023436111", "1023436111", "UNI42_010_B20_main", "box_HealthListener_v6_80.Killed", "box_ForceVehicleCrash_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_45_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_45_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_310();
    l0 = self.box_CharacterLoadedIdListener_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|285481590", "285481590", "UNI42_010_B20_main", "box_CharacterLoadedIdListener_45.LoadedIdReceived", "box_OutputOrder_v2_310.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_356_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MovementListener_v2_322();
    l0 = self.box_MultipleOR_356;
    l1 = self.box_MovementListener_v2_322;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|122053551", "122053551", "UNI42_010_B20_main", "box_MultipleOR_356.Out", "box_MovementListener_v2_322.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetHealthState_361_Down()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_360();
    l0 = self.box_HealthListener_v6_360;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|282616904", "282616904", "UNI42_010_B20_main", "box_GetHealthState_361.Down", "box_HealthListener_v6_360.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetHealthState_361_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_328();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1225571831", "1225571831", "UNI42_010_B20_main", "box_GetHealthState_361.Healthy", "box_VehicleModifier_v2_328.SetExplosion", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetExplosion
    l0:Exec(17, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_365_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_172();
    l0 = self.box_OnceOnly_v3_365;
    l1 = self.box_PlayDialog_v6_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1517510098", "1517510098", "UNI42_010_B20_main", "box_OnceOnly_v3_365.Out", "box_PlayDialog_v6_172.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_235();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1751775608", "1751775608", "UNI42_010_B20_main", "box_OutputOrder_v2_27.Out", "box_UseContextualActionModifier_v3_235.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|57981333", "57981333", "UNI42_010_B20_main", "box_OutputOrder_v2_27.Out", "box_MultipleOR_28.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_235_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_433();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|146042891", "146042891", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_235.Disabled", "box_OutputOrder_v2_433.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_235_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_235();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|657554717", "657554717", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_235.Enabled", "box_UseContextualActionModifier_v3_235.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_235_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1519954315", "1519954315", "UNI42_010_B20_main", "box_UseContextualActionModifier_v3_235.ForceNormalEndCalled", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_204_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_170();
    l0 = self.box_Delay_v5_204;
    l1 = self.box_SoundModifier_v2_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1522566920", "1522566920", "UNI42_010_B20_main", "box_Delay_v5_204.TimeElapsed", "box_SoundModifier_v2_170.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_50();
    l0 = self.box_MultipleOR_70;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1975505628", "1975505628", "UNI42_010_B20_main", "box_MultipleOR_70.Out", "box_UseContextualActionModifier_v3_50.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_44();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1276134027", "1276134027", "UNI42_010_B20_main", "box_OutputOrder_v2_9.Out", "box_Compare_Integers_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|84333556", "84333556", "UNI42_010_B20_main", "box_OutputOrder_v2_9.Out", "box_Delay_v5_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_330_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NpcDestinationCheckListener_332();
    l0 = self.box_MultipleOR_330;
    l1 = self.box_NpcDestinationCheckListener_332;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1881402158", "1881402158", "UNI42_010_B20_main", "box_MultipleOR_330.Out", "box_NpcDestinationCheckListener_332.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_219_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_89();
    l0 = self.box_OnceOnly_v3_219;
    l1 = self.box_PlayDialog_v6_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1526293298", "1526293298", "UNI42_010_B20_main", "box_OnceOnly_v3_219.Out", "box_PlayDialog_v6_89.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_149_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_343();
    l0 = self.box_ProximityTrigger_v2_149;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|286170604", "286170604", "UNI42_010_B20_main", "box_ProximityTrigger_v2_149.Enter", "box_OutputOrder_v2_343.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_74_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_79();
    l0 = self.box_HealthListener_v6_74;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1782956932", "1782956932", "UNI42_010_B20_main", "box_HealthListener_v6_74.Killed", "box_ForceVehicleCrash_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_419_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_405();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|149516234", "149516234", "UNI42_010_B20_main", "box_OutputOrder_v2_419.Out", "box_VehicleSeatModifier_v2_405.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_419_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_421();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1694951239", "1694951239", "UNI42_010_B20_main", "box_OutputOrder_v2_419.Out", "box_Print_v2_421.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RadioModifier_v3_25_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_87();
    l0 = self.box_Music_Quest_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|714759590", "714759590", "UNI42_010_B20_main", "box_RadioModifier_v3_25.Out", "box_Music_Quest_v2_87.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Bind_v4_115_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_CreateVector3_114();
    l0 = self.box_Bind_v4_115;
    l1 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|20861925", "20861925", "UNI42_010_B20_main", "box_Bind_v4_115.Bound", "box_CreateVector3_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_297_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_298();
    l0 = self.box_EntityStatusListener_297;
    l1 = self.box_SpawnAI_298;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1782426390", "1782426390", "UNI42_010_B20_main", "box_EntityStatusListener_297.Loaded", "box_SpawnAI_298.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_174_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_207();
    l0 = self.box_Delay_v5_174;
    l1 = self.box_PlayDialog_v6_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|911874388", "911874388", "UNI42_010_B20_main", "box_Delay_v5_174.TimeElapsed", "box_PlayDialog_v6_207.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_134_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_134_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_139();
    l0 = self.box_Delay_v5_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|247186236", "247186236", "UNI42_010_B20_main", "box_RandomFloat_v2_134.Out", "box_Delay_v5_139.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_HealthListener_v6_360_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_360;
    l1 = self.box_MultipleOR_356;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|510584091", "510584091", "UNI42_010_B20_main", "box_HealthListener_v6_360.Revived", "box_MultipleOR_356.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleModifier_v2_362_OnSetCommandeerDisabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_386();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|402502057", "402502057", "UNI42_010_B20_main", "box_VehicleModifier_v2_362.OnSetCommandeerDisabled", "box_Simple_Node_386.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_202_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_425();
    l0 = self.box_SpawnAI_202;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|744755796", "744755796", "UNI42_010_B20_main", "box_SpawnAI_202.Spawned", "box_OutputOrder_v2_425.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_237_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_235();
    l0 = self.box_EntityStatusListener_237;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1456400565", "1456400565", "UNI42_010_B20_main", "box_EntityStatusListener_237.Loaded", "box_UseContextualActionModifier_v3_235.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_141_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_137();
    l0 = self.box_Gate_v3_141;
    l1 = self.box_Gate_v3_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|308323931", "308323931", "UNI42_010_B20_main", "box_Gate_v3_141.Closed", "box_Gate_v3_137.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_141_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_137();
    l0 = self.box_Gate_v3_141;
    l1 = self.box_Gate_v3_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|207433155", "207433155", "UNI42_010_B20_main", "box_Gate_v3_141.Opened", "box_Gate_v3_137.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_141_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_140();
    l0 = self.box_Gate_v3_141;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1693916490", "1693916490", "UNI42_010_B20_main", "box_Gate_v3_141.Out", "box_RandomFloat_v2_140.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_368_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_364();
    l0 = self.box_EntityStatusListener_368;
    l1 = self.box_ProximityTrigger_v2_364;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|198671877", "198671877", "UNI42_010_B20_main", "box_EntityStatusListener_368.Loaded", "box_ProximityTrigger_v2_364.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_192_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_196();
    l0 = self.box_ProximityTrigger_v2_192;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1619202284", "1619202284", "UNI42_010_B20_main", "box_ProximityTrigger_v2_192.Enter", "box_OutputOrder_v2_196.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MovementListener_v2_394_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_349();
    l0 = self.box_MovementListener_v2_394;
    l1 = self.box_Delay_v5_349;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1979358348", "1979358348", "UNI42_010_B20_main", "box_MovementListener_v2_394.Enabled", "box_Delay_v5_349.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MovementListener_v2_394_Idle()
    local params, l0, l1;
    params = self:OnEnter_box_ForceExitVehicle_v2_350();
    l0 = self.box_MovementListener_v2_394;
    l1 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|915778772", "915778772", "UNI42_010_B20_main", "box_MovementListener_v2_394.Idle", "box_ForceExitVehicle_v2_350.ForceExit", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceExit
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_139_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_138();
    l0 = self.box_Delay_v5_139;
    l1 = self.box_Delay_v5_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2060779581", "2060779581", "UNI42_010_B20_main", "box_Delay_v5_139.Stopped", "box_Delay_v5_138.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_139_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_139;
    l1 = self.box_MultipleOR_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|854201172", "854201172", "UNI42_010_B20_main", "box_Delay_v5_139.TimeElapsed", "box_MultipleOR_132.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_104_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_118();
    l0 = self.box_ProximityRadiusListener_v3_104;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|213146909", "213146909", "UNI42_010_B20_main", "box_ProximityRadiusListener_v3_104.AllFar", "box_Simple_Node_118.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_255_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_205();
    l0 = self.box_ProximityRadiusListener_v3_255;
    l1 = self.box_PlayDialog_v6_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1496987139", "1496987139", "UNI42_010_B20_main", "box_ProximityRadiusListener_v3_255.SomeoneNear", "box_PlayDialog_v6_205.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_33_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_41();
    l0 = self.box_EntityStatusListener_33;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1545331328", "1545331328", "UNI42_010_B20_main", "box_EntityStatusListener_33.Loaded", "box_SetEntity_v2_41.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AllowAutoDrive_v2_445_OnDoNotAllow()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|568147515", "568147515", "UNI42_010_B20_main", "box_AllowAutoDrive_v2_445.OnDoNotAllow", "box_OutputOrder_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_1_Broken()
    local l0, l1;
    self:OnExit_box_VehicleDamageListener_v2_1_Broken();
    l0 = self.box_VehicleDamageListener_v2_1;
    l1 = self.box_MultipleOR_265;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2098221357", "2098221357", "UNI42_010_B20_main", "box_VehicleDamageListener_v2_1.Broken", "box_MultipleOR_265.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_1_Destroyed()
    local params, l0, l1;
    self:OnExit_box_VehicleDamageListener_v2_1_Destroyed();
    params = self:OnEnter_box_Simple_Node_163();
    l0 = self.box_VehicleDamageListener_v2_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1070904180", "1070904180", "UNI42_010_B20_main", "box_VehicleDamageListener_v2_1.Destroyed", "box_Simple_Node_163.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_1_Disabled()
    local l0, l1;
    self:OnExit_box_VehicleDamageListener_v2_1_Disabled();
    l0 = self.box_VehicleDamageListener_v2_1;
    l1 = self.box_MultipleOR_265;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1426475459", "1426475459", "UNI42_010_B20_main", "box_VehicleDamageListener_v2_1.Disabled", "box_MultipleOR_265.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleDamageListener_v2_1_MajorDamage()
    self:OnExit_box_VehicleDamageListener_v2_1_MajorDamage();
end;

function export:f_box_VehicleDamageListener_v2_1_MinorDamage()
    self:OnExit_box_VehicleDamageListener_v2_1_MinorDamage();
end;

function export:f_box_VehicleDamageListener_v2_1_Mint()
    self:OnExit_box_VehicleDamageListener_v2_1_Mint();
end;

function export:f_box_VehicleDamageListener_v2_1_OnFire()
    self:OnExit_box_VehicleDamageListener_v2_1_OnFire();
end;

function export:f_box_VehicleDamageListener_v2_1_Perfect()
    self:OnExit_box_VehicleDamageListener_v2_1_Perfect();
end;

function export:f_box_VehicleDamageListener_v2_1_StateChange()
    local params, l0, l1;
    self:OnExit_box_VehicleDamageListener_v2_1_StateChange();
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_VehicleDamageListener_v2_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|100112781", "100112781", "UNI42_010_B20_main", "box_VehicleDamageListener_v2_1.StateChange", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_325_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_327();
    l0 = self.box_MultipleOR_325;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|53013931", "53013931", "UNI42_010_B20_main", "box_MultipleOR_325.Out", "box_Compare_Boolean_327.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_147();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|828735025", "828735025", "UNI42_010_B20_main", "box_OutputOrder_v2_48.Out", "box_OutputOrder_v2_147.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|64477793", "64477793", "UNI42_010_B20_main", "box_OutputOrder_v2_48.Out", "box_OnceOnly_v3_95.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_VehicleSeatModifier_v2_347_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_179();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|569839919", "569839919", "UNI42_010_B20_main", "box_VehicleSeatModifier_v2_347.Locked", "box_VehicleModifier_v2_179.SetExitEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetExitEnabled
    l0:Exec(16, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_324_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_361();
    l0 = self.box_Delay_v5_324;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1694364399", "1694364399", "UNI42_010_B20_main", "box_Delay_v5_324.TimeElapsed", "box_GetHealthState_361.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_254_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_232();
    l0 = self.box_MultipleOR_254;
    l1 = self.box_Delay_v5_232;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|59040741", "59040741", "UNI42_010_B20_main", "box_MultipleOR_254.Out", "box_Delay_v5_232.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:OnEnter_box_Simple_Node_251()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_251");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@chase02_stop");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_251_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_252()
    local params, l0;
    DrawTextToScreen("Comment: Stop Chase 3 ", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'chase03_stop', Class: 'Simple Node')-- Comment: Stop Chase 3 ");
    DrawTextToScreen("Comment: Stop Chase 3 ", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'chase03_stop', Class: 'Simple Node')-- Comment: Stop Chase 3 ");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_252");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@chase03_stop");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_252_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@ChaseDialog");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_212_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@disable_vehcle_marker");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_161_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_344()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_344");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@DisableDialogListeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_344_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_315()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_315");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@DisableHurkWatch");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_315_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@enable_vehicle_marker");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_160_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@everyone_seated");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_176_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@ExitZone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_62_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@hurk_goto_vehicle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_151_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@hurk_was_killed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_162_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_316()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_316");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@HurkDownedListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_316_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@HurkVOGetIn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_64_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_387()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_387");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@LockedTruck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_387_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_386()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_386");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@LockTruck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_386_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@repeat_car_honk");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_199_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@start_car_honk");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_158_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@start_damage_listener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_97_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@start_encounter_listeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_175_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@start_hurk_health_listener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_154_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@start_hurk_objectives");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_153_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@start_proximity_listener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_107_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@stop_car_honk");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_159_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@stop_jerk_hurk");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@too_far_NPC");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_118_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_388()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_388");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@UnlockTruck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_388_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|@vehicle_destroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_163_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_120()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.HurkJr,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|4035716");
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
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_101()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj4",
            id = "875092",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_93()
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
        [6] = "503435706",
        -- StopEvent,
        [7] = "2128148481",
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

function export:OnEnter_box_ForceVehicleCrash_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|14263022");
    l0:SetConnections({
    });
    params = {
        -- vehicle,
        [2] = "2103736003775729325",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|19638256");
    l0:SetConnections({
    });
    params = {
        -- vehicle,
        [2] = "2103680067598080524",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_327()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_327");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|24724711");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_327_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_327_A_is_True,
    });
    params = {
        -- A,
        [0] = self.StoppedCar,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|27113116");
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
                [0] = self.f_box_OutputOrder_v2_147_Out_0,
                [1] = self.f_box_OutputOrder_v2_147_Out_1,
                [2] = self.f_box_OutputOrder_v2_147_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_240()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103736003779923631",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_223()
    local params, l0;
    DrawTextToScreen("Comment: Spawn Roadblock 2 and Helo", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: Spawn Roadblock 2 and Helo");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|28779847");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
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
                [0] = self.f_box_OutputOrder_v2_223_Out_0,
                [1] = self.f_box_OutputOrder_v2_223_Out_1,
                [2] = self.f_box_OutputOrder_v2_223_Out_2,
                [3] = self.f_box_OutputOrder_v2_223_Out_3,
                [4] = self.f_box_OutputOrder_v2_223_Out_4,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_193()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.HurkTruck,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103705846344084893",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|39161836");
    l0:SetConnections({
    });
    params = {
        -- vehicle,
        [2] = "2103680068552284706",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|39475292");
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

function export:OnEnter_box_OutputOrder_v2_373()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_373");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|39680600");
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
                [0] = self.f_box_OutputOrder_v2_373_Out_0,
                [1] = self.f_box_OutputOrder_v2_373_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|43411488");
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
                [0] = self.f_box_OutputOrder_v2_143_Out_0,
                [1] = self.f_box_OutputOrder_v2_143_Out_1,
                [2] = self.f_box_OutputOrder_v2_143_Out_2,
                [3] = self.f_box_OutputOrder_v2_143_Out_3,
                [4] = self.f_box_OutputOrder_v2_143_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_328()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_328");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|48775781");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_403()
    local params;
    params = {
        -- Vehicle,
        [0] = "2105821798380615377",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|64520426");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_220_True,
    });
    params = {
        -- entityId,
        [0] = "2103693167583831184",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|85098344");
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

function export:OnEnter_box_PlayDialog_v6_173()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "668173769",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_412()
    local params, l0;
    DrawTextToScreen("Comment: Helo Move", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetContextualStrategy')-- Comment: Helo Move");
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_412");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|94557394");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_412_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105876330370403857",
        -- Group,
        [1] = "2103705708691221758",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_326()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_326");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|95944737");
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
                [0] = self.f_box_OutputOrder_v2_326_Out_0,
                [1] = self.f_box_OutputOrder_v2_326_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|104607638");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Floats_135_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_135_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_136,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_272()
    local params;
    params = {
        -- bShowUI,
        [0] = false,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2104160978038986250",
        -- WarningZoneTrigger,
        [3] = "2104160965290399241",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_172()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "651995933",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_292()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_292");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|159347124");
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

function export:OnEnter_box_PlayDialog_v6_285()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3836366129",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|165098643");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_130_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_130_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = self.ModulateSpeed,
        -- Entity,
        [1] = self.HurkJr,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_89()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3067731274",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|183955610");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_24()
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
        [6] = "503435706",
        -- StopEvent,
        [7] = "2128148481",
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

function export:OnEnter_box_VehicleModifier_v2_335()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_335");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|189252688");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_329()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_329");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|199598614");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_329_Out,
    });
    params = {
        -- Bool,
        [0] = self.StoppedCar,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_323()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.HurkJr,
        -- vehicle,
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_366()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_366");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|206428908");
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
                [0] = self.f_box_OutputOrder_v2_366_Out_0,
                [1] = self.f_box_OutputOrder_v2_366_Out_1,
                [2] = self.f_box_OutputOrder_v2_366_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_280()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.4,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_3()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#E6997D74",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_422()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_422");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|220564015");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 8,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "SPAWNED - Roadblock 2",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|220668606");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_348()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_348");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|226920376");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_348_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_348_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101538497321135200",
        -- Entity,
        [1] = self.HurkJr,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_183()
    local params, l0;
    DrawTextToScreen("Comment: Release Chase 2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: Release Chase 2");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|241739850");
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
                [0] = self.f_box_OutputOrder_v2_183_Out_0,
                [1] = self.f_box_OutputOrder_v2_183_Out_1,
                [2] = self.f_box_OutputOrder_v2_183_Out_2,
                [3] = self.f_box_OutputOrder_v2_183_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_181()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103680225427643354",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|252486009");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Interact_NPC",
            item = "BRICK_NPC_Killed_Fail",
            id = "373232",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_256()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104064394852865053",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|256115894");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_227_True,
    });
    params = {
        -- entityId,
        [0] = "2103680081818868323",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_270()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.8,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_273()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3095308672",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|265844473");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_44_A_le_B,
    });
    params = {
        -- A,
        [0] = self.VehicleState,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_87()
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
        [6] = "503435706",
        -- StopEvent,
        [7] = "2128148481",
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

function export:OnEnter_box_ForceVehicleCrash_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|289056882");
    l0:SetConnections({
    });
    params = {
        -- vehicle,
        [2] = "2103693167579636878",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_338()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "186801429",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|315516813");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_246_True,
    });
    params = {
        -- entityId,
        [0] = "2103736040299728899",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_331()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.HurkJr,
        -- vehicle,
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_318()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_318");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|327055225");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_318_Out,
    });
    params = {
        -- Bool,
        [0] = self.StoppedCar,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_417()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_417");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|329762327");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 8,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "SPAWNED - Chase 2 Quad 2",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|336265733");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_226_True,
    });
    params = {
        -- entityId,
        [0] = "2103736003779923631",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|340145415");
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

function export:OnEnter_box_PlayDialog_v6_207()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2081227071",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_310()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_310");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|352931670");
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
                [0] = self.f_box_OutputOrder_v2_310_Out_0,
                [1] = self.f_box_OutputOrder_v2_310_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|358153127");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_6_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_13;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_262()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1610730874",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_296()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103680051913480604",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_340()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "399354770",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_345()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_345");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|386735369");
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
                [0] = self.f_box_OutputOrder_v2_345_Out_0,
                [1] = self.f_box_OutputOrder_v2_345_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_217()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1800364368",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_438()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.25,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_384()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_384");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|407805733");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_384_Unlocked,
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
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_381()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_381");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|413582124");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_381_Locked,
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
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_269()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.2,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_289()
    local params, l0;
    DrawTextToScreen("Comment: UnlockDriverSeat", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'VehicleSeatModifier_v2')-- Comment: UnlockDriverSeat");
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_289");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|475797567");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_289_Unlocked,
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
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_382()
    local params, l0;
    DrawTextToScreen("Comment: Unlock Gun for Player", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'VehicleSeatModifier_v2')-- Comment: Unlock Gun for Player");
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_382");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|480709209");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_382_Unlocked,
    });
    params = {
        -- IsAI,
        [0] = false,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 2,
        -- vehicleEntity,
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_298()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103680067587594758",
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|487881010");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Floats_187_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_187_A_gt_B,
    });
    l0 = self.box_VehicleHealthListener_v2_186;
    params = {
        -- A,
        [0] = 1000,
        -- B,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_346()
    local params;
    params = {
        -- EntityId,
        [0] = self.HurkTruck,
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 2,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 30,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "503435706",
        -- StopEvent,
        [7] = "2128148481",
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

function export:OnEnter_box_BindMarkerOverHead_v2_312()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- eMobileMarker,
        [1] = "2103666346400189372",
        -- eNPC,
        [2] = self.HurkJr,
        -- fHeight,
        [3] = 0.45,
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_350()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_350");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|496584606");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_350_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = self.HurkJr,
        -- vehicle,
        [2] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_168()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_418()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_418");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|529676291");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 8,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "SPAWNED - Chase 2 Quad 3",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_390()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_390");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|532892449");
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
                [0] = self.f_box_OutputOrder_v2_390_Out_0,
                [1] = self.f_box_OutputOrder_v2_390_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_393()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_393");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|537949265");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_393_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105781100361079753",
        -- Entity,
        [1] = self.HurkJr,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_379()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_379");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|546180759");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_379_Locked,
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
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    DrawTextToScreen("Comment: Spawn Chase 2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: Spawn Chase 2");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|551925083");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
                [3] = self.f_box_OutputOrder_v2_18_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_211()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103736395930571743",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_372()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_372");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|568044572");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_372_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = false,
        -- SeatIndex,
        [2] = 1,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_230()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.HurkTruck,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103968374754140105",
    };
    return params;
end;

function export:OnEnter_box_Random_342()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
                [0] = 0.16,
                [1] = 0.16,
                [2] = 0.16,
                [3] = 0.16,
                [4] = 0.36,
            },
            count = 5,
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_294()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099919886133236970",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_364()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103968374754140105",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_380()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_380");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|585346602");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_380_Locked,
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
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_260()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2223229897",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_429()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_429");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|595841697");
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
                [0] = self.f_box_OutputOrder_v2_429_Out_0,
                [1] = self.f_box_OutputOrder_v2_429_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_243()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|598482184");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_243_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_243_Enabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_243_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104053185237787413",
        -- Entity,
        [1] = "2103736040299728899",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_257()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104064477648426259",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_165()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.HurkTruck,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103679673144759984",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_279()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1185118050",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_440()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_440");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|617490263");
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
                [0] = self.f_box_OutputOrder_v2_440_Out_0,
                [1] = self.f_box_OutputOrder_v2_440_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_259()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.HurkTruck,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104468661453485755",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_203()
    local params;
    params = {
        -- EntityId,
        [0] = self.HurkTruck,
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 1,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 30,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "503435706",
        -- StopEvent,
        [7] = "2128148481",
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

function export:OnEnter_box_ProximityRadiusListener_v3_103()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gp_players,
        -- farZone,
        [2] = 60,
        -- id2,
        [3] = self.HurkJr,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_407()
    local params, l0;
    DrawTextToScreen("Comment: Spawn Sniper", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: Spawn Sniper");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_407");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|653462647");
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
                [0] = self.f_box_OutputOrder_v2_407_Out_0,
                [1] = self.f_box_OutputOrder_v2_407_Out_1,
                [2] = self.f_box_OutputOrder_v2_407_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_268()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_268");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|654217735");
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
                [0] = self.f_box_OutputOrder_v2_268_Out_0,
                [1] = self.f_box_OutputOrder_v2_268_Out_1,
                [2] = self.f_box_OutputOrder_v2_268_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_127()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_76()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#118C2D19",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_196()
    local params, l0;
    DrawTextToScreen("Comment: Release Chase 3", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: Release Chase 3");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|662552567");
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
                [0] = self.f_box_OutputOrder_v2_196_Out_0,
                [1] = self.f_box_OutputOrder_v2_196_Out_1,
                [2] = self.f_box_OutputOrder_v2_196_Out_2,
                [3] = self.f_box_OutputOrder_v2_196_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_277()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.6,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_400()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105820763377406398",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_333()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_333");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|691962258");
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
                [0] = self.f_box_OutputOrder_v2_333_Out_0,
                [1] = self.f_box_OutputOrder_v2_333_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_408()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_408");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|695078005");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 8,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "SPAWNED - Chase 3 Quad 1",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_425()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_425");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|704326704");
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
                [0] = self.f_box_OutputOrder_v2_425_Out_0,
                [1] = self.f_box_OutputOrder_v2_425_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_437()
    local params, l0;
    DrawTextToScreen("Comment: Helo Release", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetContextualStrategy')-- Comment: Helo Release");
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_437");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|706168044");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105823351036529007",
        -- Group,
        [1] = "2103705708691221758",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_314()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_314");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|709083084");
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

function export:OnEnter_box_ProximityTrigger_v2_431()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "2103680081818868323",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105877326802861628",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_406()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.HurkTruck,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105821995267543023",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_138()
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

function export:OnEnter_box_SetActivityFact_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|735973356");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "seriouslydamaged",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_244()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|737868937");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_244_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_244_Enabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_244_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104053160858395169",
        -- Entity,
        [1] = "2103736003779923631",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_247()
    local params, l0;
    DrawTextToScreen("Comment: Send Helo away - End", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetContextualStrategy')-- Comment: Send Helo away - End");
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|751355809");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105832894766275159",
        -- Group,
        [1] = "2103705708691221758",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|755507049");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_92_Out,
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
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|761000417");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_225_True,
    });
    params = {
        -- entityId,
        [0] = "2103680083960060540",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_197()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_271()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.2,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_180()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099919574811028950",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_444()
    local params, l0;
    DrawTextToScreen("Comment: Explode Helo", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'VehicleModifier_v2')-- Comment: Explode Helo");
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_444");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|781494464");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2103705697314172135",
    };
    return params;
end;

function export:OnEnter_box_Random_40()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
                [0] = 0.4,
                [1] = 0.3,
                [2] = 0.3,
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_434()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "2103680083960060540",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105877326802861628",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|801649670");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_385()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_385");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|802244756");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_385_Unlocked,
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
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|802987502");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_31_Unlocked,
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
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_245()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103693167583831184",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|821388786");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_50_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_50_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = self.VehiclePatrolPath,
        -- Entity,
        [1] = self.HurkJr,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_442()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2103736003779923631",
        -- id2,
        [3] = self.HurkTruck,
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_375()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_375");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|827030627");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_375_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_302()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103693167550276738",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_413()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2103705708691221758",
        -- id2,
        [3] = self.HurkTruck,
        -- nearZone,
        [4] = 235,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|839040105");
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
                [0] = self.f_box_OutputOrder_v2_229_Out_0,
                [1] = self.f_box_OutputOrder_v2_229_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_370()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_370");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|843053193");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceVehicleCrash_370_Out,
    });
    l0 = self.box_ProximityTrigger_v2_364;
    params = {
        -- vehicle,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|855126018");
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
                [0] = self.f_box_OutputOrder_v2_129_Out_0,
                [1] = self.f_box_OutputOrder_v2_129_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|863125178");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_148_Disabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_148_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = self.ModulateSpeed,
        -- Entity,
        [1] = self.HurkJr,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_109()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = self.HurkJr,
        -- vehicle,
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101538497321135200",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_112()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_206()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "467655077",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_308()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103705688610991299",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|913719032");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
                [1] = self.f_box_OutputOrder_v2_59_Out_1,
                [2] = self.f_box_OutputOrder_v2_59_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_13()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#3AA17EDA",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|921334658");
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
                [0] = self.f_box_OutputOrder_v2_52_Out_0,
                [1] = self.f_box_OutputOrder_v2_52_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|925652234");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_96_Out,
    });
    params = {
        -- Entity,
        [0] = "2099919886133236970",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_191()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.HurkTruck,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103705818777021851",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|957497052");
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
                [0] = self.f_box_OutputOrder_v2_215_Out_0,
                [1] = self.f_box_OutputOrder_v2_215_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|959777177");
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
                [0] = self.f_box_OutputOrder_v2_166_Out_0,
                [1] = self.f_box_OutputOrder_v2_166_Out_1,
                [2] = self.f_box_OutputOrder_v2_166_Out_2,
                [3] = self.f_box_OutputOrder_v2_166_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_426()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#08971C58",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = "2103693167579636878",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_15()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_224()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.HurkTruck,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103967924533367042",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|970271918");
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
                [0] = self.f_box_OutputOrder_v2_188_Out_0,
                [1] = self.f_box_OutputOrder_v2_188_Out_1,
                [2] = self.f_box_OutputOrder_v2_188_Out_2,
                [3] = self.f_box_OutputOrder_v2_188_Out_3,
                [4] = self.f_box_OutputOrder_v2_188_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_232()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_392()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.HurkTruck,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104462777088266835",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|981821196");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_47_Out,
    });
    params = {
        -- Entity,
        [0] = "2101538497321135200",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_282()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3160911581",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_376()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_376");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|988005580");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_376_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_295()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103680051913480604",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_91()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104462777088266835",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_391()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104462777088266835",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|998238757");
    l0:SetConnections({
    });
    params = {
        -- vehicle,
        [2] = "2103736040295534591",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_21()
    local params, l0;
    DrawTextToScreen("Comment: VehicleStateChanged", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: VehicleStateChanged");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1002243252");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1011138383");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
                [2] = self.f_box_OutputOrder_v2_38_Out_2,
                [3] = self.f_box_OutputOrder_v2_38_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_37()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "152175496",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_30()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2091915765",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_75()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#88857CA3",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1035703070");
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

function export:OnEnter_box_OutputOrder_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1050627181");
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

function export:OnEnter_box_VehicleSeatModifier_v2_351()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_351");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1051563618");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_351_Locked,
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
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_177()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.HurkTruck,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103679673144759984",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_267()
    local params;
    params = {
        -- Vehicle,
        [0] = "2103705697314172135",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_238()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103680083960060540",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_405()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_405");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1064921743");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_405_Locked,
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
        [4] = "2105821798380615377",
    };
    return params;
end;

function export:OnEnter_box_MovementListener_v2_322()
    local params;
    params = {
        -- angleThreshold,
        [0] = 0.1,
        -- autoDisable,
        [1] = false,
        -- entityGroup,
        [2] = self.HurkTruck,
        -- movingThreshold,
        [3] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_303()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103736003748466337",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_409()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_409");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1078299371");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 8,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "SPAWNED - Roadblock 1",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_253()
    local params;
    params = {
        -- Group,
        [0] = "#3AA17EDA",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_283()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#8C5FFF4A",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_301()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103693167550276738",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_383()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_383");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1094112110");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_383_Unlocked,
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
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_299()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103680068541798940",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1119206598");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_106_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1123620522");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_236_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_236_Enabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_236_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104051445090259942",
        -- Entity,
        [1] = "2103680083960060540",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1125632416");
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
                [0] = self.f_box_OutputOrder_v2_169_Out_0,
                [1] = self.f_box_OutputOrder_v2_169_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_195()
    local params, l0;
    DrawTextToScreen("Comment: Spawn Roadblock 1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: Spawn Roadblock 1");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1132670651");
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
                [0] = self.f_box_OutputOrder_v2_195_Out_0,
                [1] = self.f_box_OutputOrder_v2_195_Out_1,
                [2] = self.f_box_OutputOrder_v2_195_Out_2,
                [4] = self.f_box_OutputOrder_v2_195_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_369()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_369");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1135210730");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_369_NotEqual,
    });
    l0 = self.box_ProximityTrigger_v2_364;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(0),
        -- Entity2,
        [1] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_377()
    local params, l0;
    DrawTextToScreen("Comment: Driver", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'VehicleSeatModifier_v2')-- Comment: Driver");
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_377");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1144341077");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_377_Locked,
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
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_167()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.HurkTruck,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104462777088266835",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1176088519");
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

function export:OnEnter_box_GetHealthState_293()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_293");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1189456756");
    l0:SetConnections({
        -- Down,
        [2] = self.f_box_GetHealthState_293_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_293_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.HurkJr,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1202270005");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_11_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI42_010_B20_DriveHome",
            id = "550391",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_433()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_433");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1226143744");
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
                [0] = self.f_box_OutputOrder_v2_433_Out_0,
                [1] = self.f_box_OutputOrder_v2_433_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_404()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_404");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1227806313");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2105821798380615377",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_411()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_411");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1229974805");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 8,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "SPAWNED - Chase 3 Truck",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_286()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_286");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1234265446");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_200()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_84()
    local params, l0;
    DrawTextToScreen("Comment: Gun", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'VehicleSeatModifier_v2')-- Comment: Gun");
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1249379556");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_84_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 2,
        -- vehicleEntity,
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1250703134");
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

function export:OnEnter_box_SoundModifier_v2_170()
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

function export:OnEnter_box_AddActivityObjective_v2_291()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_291");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1260847577");
    l0:SetConnections({
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

function export:OnEnter_box_EntityStatusListener_239()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103680079956597322",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_113()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1286861488");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_145_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = false,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 2,
        -- vehicleEntity,
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_GetDistance_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1301538814");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_136_Out,
    });
    params = {
        -- Entity1,
        [0] = self.eHost,
        -- Entity2,
        [1] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_94()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#8C5FFF4A",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104467948442785966",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_233()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1308327774");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_231_True,
    });
    params = {
        -- entityId,
        [0] = "2103680079956597322",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_349()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_90()
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
        [6] = "503435706",
        -- StopEvent,
        [7] = "2128148481",
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

function export:OnEnter_box_Print_v2_424()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_424");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1310493318");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 8,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "SPAWNED - Helicopter",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1313386356");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_41_Out,
    });
    params = {
        -- Entity,
        [0] = "2104368551790955048",
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_363()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_363");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1332889376");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_363_A_lt_B,
    });
    l0 = self.box_VehicleHealthListener_v2_186;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(0),
        -- B,
        [1] = 500,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_46()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099919886133236970",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1335675170");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
                [2] = self.f_box_OutputOrder_v2_35_Out_2,
                [3] = self.f_box_OutputOrder_v2_35_Out_3,
                [4] = self.f_box_OutputOrder_v2_35_Out_4,
                [5] = self.f_box_OutputOrder_v2_35_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_261()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2529478452",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1359002998");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_178_Out,
    });
    params = {
        -- Bool,
        [0] = self.StoppedCar,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_126()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_98()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gp_players,
        -- id2,
        [3] = self.HurkJr,
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_57()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_432()
    local params;
    params = {
        -- Group,
        [0] = "#88857CA3",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_402()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105821798372226761",
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1378640819");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_114_Out,
    });
    params = {
        -- x,
        [0] = 0,
        -- y,
        [1] = -1.5,
        -- z,
        [2] = 1.36,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_110()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_423()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_423");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1385847262");
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
                [0] = self.f_box_OutputOrder_v2_423_Out_0,
                [1] = self.f_box_OutputOrder_v2_423_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_427()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "2103680079956597322",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105877326802861628",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_357()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.HurkJr,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_60()
    local params, l0;
    l0 = self.box_VehicleListener_v3_426;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_337()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "68139709",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1419128006");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_133_Out,
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
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_395()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_395");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1430351773");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_395_Disabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_395_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105781100361079753",
        -- Entity,
        [1] = self.HurkJr,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_336()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_17()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.HurkJr,
        -- vehicle,
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1491351898");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_234_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_234_Enabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_234_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104051372941939565",
        -- Entity,
        [1] = "2103680079956597322",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_122()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1497963603");
    l0:SetConnections({
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_58_InterruptCalled,
    });
    params = {
        -- ContextualAction,
        [0] = self.VehiclePatrolPath,
        -- Entity,
        [1] = self.HurkJr,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_304()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103736003748466337",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_371()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_371");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1498494458");
    l0:SetConnections({
    });
    l0 = self.box_ProximityTrigger_v2_364;
    params = {
        -- targets,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_401()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2105821798372226761",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_430()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_430");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1504806637");
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
                [0] = self.f_box_OutputOrder_v2_430_Out_0,
                [1] = self.f_box_OutputOrder_v2_430_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_396()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_194()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103705552417745854",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1516360010");
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

function export:OnEnter_box_Gate_v3_137()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_421()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_421");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1523242527");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 8,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "SPAWNED - Sniper Quad",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_275()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_275");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1530106887");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_275_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1532698056");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_105_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_334()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_334");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1552004108");
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
                [0] = self.f_box_OutputOrder_v2_334_Out_0,
                [1] = self.f_box_OutputOrder_v2_334_Out_1,
                [2] = self.f_box_OutputOrder_v2_334_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1553390339");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleHealthListener_v2_186()
    local params;
    params = {
        -- Vehicle,
        [0] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_171()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.HurkTruck,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103680225427643354",
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
        [2] = "2103705552417745854",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_399()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2105820763377406398",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_436()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2103705708691221758",
        -- id2,
        [3] = self.HurkTruck,
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_309()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.HurkJr,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_214()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#8C5FFF4A",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104468125786318097",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1617123585");
    l0:SetConnections({
        -- OnSetAsDestructible,
        [3] = self.f_box_VehicleModifier_v2_179_OnSetAsDestructible,
        -- OnSetExitEnabled,
        [16] = self.f_box_VehicleModifier_v2_179_OnSetExitEnabled,
    });
    params = {
        -- targets,
        [0] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1632992733");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_208_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = false,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_319()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_319");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1667917404");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_213()
    local params;
    params = {
        -- EntityA,
        [1] = "2099919886133236970",
        -- EntityB,
        [2] = "2104468125786318097",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_307()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103705688610991299",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1721126996");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_85_Out,
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
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_439()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_Switch_5()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_86()
    local params;
    params = {
        -- EntityA,
        [1] = "2099919886133236970",
        -- EntityB,
        [2] = "2104467948442785966",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_142()
    local params;
    params = {
        -- Pawns,
        [0] = self.HurkTruck,
        -- SoundId,
        [1] = "3760761181",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.1,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_AllowAutoDrive_v2_446()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AllowAutoDrive_v2_446");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1764882612");
    l0:SetConnections({
        -- OnAllow,
        [0] = self.f_box_AllowAutoDrive_v2_446_OnAllow,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_420()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_420");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1783756744");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 8,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "SPAWNED - Sniper",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_317()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_317");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1788662833");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_317_A_is_False,
    });
    params = {
        -- A,
        [0] = self.IsCarMoving,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_241()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103736040299728899",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1797541814");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_276()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_276");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1800293614");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_FastTravelModifier_v2_276_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_378()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_378");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1803078029");
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
                [0] = self.f_box_OutputOrder_v2_378_Out_0,
                [1] = self.f_box_OutputOrder_v2_378_Out_1,
                [2] = self.f_box_OutputOrder_v2_378_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_355()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_355");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1823681865");
    l0:SetConnections({
        -- Down,
        [2] = self.f_box_GetHealthState_355_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_355_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.HurkJr,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1837326464");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_140_Out,
    });
    params = {
        -- Max,
        [0] = 6,
        -- Min,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1840227492");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_242");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1857323337");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_242_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_242_Enabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_242_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104053117608829288",
        -- Entity,
        [1] = "2103693167583831184",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1857885338");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_300()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103680068541798940",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1864929157");
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
                [0] = self.f_box_OutputOrder_v2_123_Out_0,
                [1] = self.f_box_OutputOrder_v2_123_Out_1,
                [2] = self.f_box_OutputOrder_v2_123_Out_2,
                [3] = self.f_box_OutputOrder_v2_123_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1878666092");
    l0:SetConnections({
    });
    params = {
        -- vehicle,
        [2] = "2103680060918651367",
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
        [2] = "2099919550270156244",
    };
    return params;
end;

function export:OnEnter_box_NpcDestinationCheckListener_332()
    local params;
    params = {
        -- Agent,
        [0] = self.HurkJr,
        -- AutoDisable,
        [1] = false,
        -- Destination,
        [2] = self.HurkTruck,
        -- DestinationToleranceDistance,
        [3] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    params = {
        -- blendTime,
        [1] = 0,
        -- endPos,
        [2] = l0:GetDataOutValue(0),
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2099919550270156244",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_343()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_343");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1902960210");
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
                [0] = self.f_box_OutputOrder_v2_343_Out_0,
                [1] = self.f_box_OutputOrder_v2_343_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_80()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#919E4DE2",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_45()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015206727351417",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_435()
    local params;
    params = {
        -- Group,
        [0] = "#FF824C35",
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_361()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_361");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1928943876");
    l0:SetConnections({
        -- Down,
        [2] = self.f_box_GetHealthState_361_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_361_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.HurkJr,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1937607754");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1939047362");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1940317975");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_235_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_235_Enabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_235_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104052715624615988",
        -- Entity,
        [1] = "2103680081818868323",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_389()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_389");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1952353282");
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
        [8] = "Truck Unlocked",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_204()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1968574685");
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

function export:OnEnter_box_Print_v2_414()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_414");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1977130112");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 8,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "SPAWNED - Chase 2 Quad 1",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_149()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.HurkTruck,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099919574811028950",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_74()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#FF824C35",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_419()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_419");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|1997331452");
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
                [0] = self.f_box_OutputOrder_v2_419_Out_0,
                [1] = self.f_box_OutputOrder_v2_419_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2011218494");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_25_Out,
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
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_190()
    local params;
    params = {
        -- EntityId,
        [0] = self.HurkTruck,
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 0,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 30,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "503435706",
        -- StopEvent,
        [7] = "2128148481",
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

function export:OnEnter_box_Bind_v4_115()
    local params;
    params = {
        -- EntityA,
        [1] = self.HurkTruck,
        -- EntityB,
        [2] = "2099919550270156244",
        -- IsMultiBeatBind,
        [3] = true,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_297()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103680067587594758",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_174()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2038501849");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_134_Out,
    });
    params = {
        -- Max,
        [0] = 2.5,
        -- Min,
        [1] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_360()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.HurkJr,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_362()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_362");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2055406661");
    l0:SetConnections({
        -- OnSetCommandeerDisabled,
        [9] = self.f_box_VehicleModifier_v2_362_OnSetCommandeerDisabled,
    });
    params = {
        -- targets,
        [0] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_205()
    local params;
    params = {
        -- Group,
        [0] = self.HurkJr,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2017657925",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_202()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103736395930571743",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_237()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103680081818868323",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_428()
    local params;
    params = {
        -- Group,
        [0] = "#118C2D19",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_141()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_368()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103968374754140105",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_192()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.HurkTruck,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103705834312723868",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2083208798");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2099919550270156244",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI42_010_B20_DriveHome",
            id = "550391",
        },
    };
    return params;
end;

function export:OnEnter_box_MovementListener_v2_394()
    local params;
    params = {
        -- angleThreshold,
        [0] = 0.1,
        -- autoDisable,
        [1] = true,
        -- entityGroup,
        [2] = self.HurkTruck,
        -- movingThreshold,
        [3] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_139()
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

function export:OnEnter_box_ProximityRadiusListener_v3_104()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gp_players,
        -- farZone,
        [2] = 100,
        -- id2,
        [3] = self.HurkJr,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_255()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.HurkTruck,
        -- id2,
        [3] = "2104468974034002169",
        -- nearZone,
        [4] = 50,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_33()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104368551790955048",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_228()
    local params;
    params = {
        -- Group,
        [0] = "#69680611",
    };
    return params;
end;

function export:OnEnter_box_AllowAutoDrive_v2_445()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AllowAutoDrive_v2_445");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2104228944");
    l0:SetConnections({
        -- OnDoNotAllow,
        [1] = self.f_box_AllowAutoDrive_v2_445_OnDoNotAllow,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_1()
    local params;
    params = {
        -- Vehicle,
        [0] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2137906598");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_347()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_347");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B20.domino|@UNI42_010_B20_main|2140736001");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_347_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = false,
        -- SeatIndex,
        [2] = 2,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = self.HurkTruck,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_324()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_329_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.StoppedCar = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_318_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.StoppedCar = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_96_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.HurkTruck = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_426_OnChangeSeat()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_426;
    l1 = self.box_HealthListener_v6_60;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_426_OnInteract()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_426;
    l1 = self.box_HealthListener_v6_60;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_426_OnSit()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_426;
    l1 = self.box_HealthListener_v6_60;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_426_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_426;
    l1 = self.box_HealthListener_v6_60;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_47_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.ModulateSpeed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MovementListener_v2_322_Idle()
    local l0;
    l0 = self.box_MovementListener_v2_322;
    self.IsCarMoving = l0:GetDataOutValue(1);
end;

function export:OnExit_box_MovementListener_v2_322_Moving()
    local l0;
    l0 = self.box_MovementListener_v2_322;
    self.IsCarMoving = l0:GetDataOutValue(1);
end;

function export:OnExit_box_HealthListener_v6_283_Critical()
    local l0;
    l0 = self.box_HealthListener_v6_283;
    self.gp_players = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_283_Damaged()
    local l0;
    l0 = self.box_HealthListener_v6_283;
    self.gp_players = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_283_Downed()
    local l0;
    l0 = self.box_HealthListener_v6_283;
    self.gp_players = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_283_Healed()
    local l0;
    l0 = self.box_HealthListener_v6_283;
    self.gp_players = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_283_Killed()
    local l0;
    l0 = self.box_HealthListener_v6_283;
    self.gp_players = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_283_Revived()
    local l0;
    l0 = self.box_HealthListener_v6_283;
    self.gp_players = l0:GetDataOutValue(4);
end;

function export:OnExit_box_GetPlayerGroup_v2_106_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gp_players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_136_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_136 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_41_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.VehiclePatrolPath = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_178_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.StoppedCar = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_114_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_119;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_105_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eHost = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_140_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_138;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_45_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_45;
    self.HurkJr = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_134_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_139;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleDamageListener_v2_1_Broken()
    local l0;
    l0 = self.box_VehicleDamageListener_v2_1;
    self.VehicleState = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleDamageListener_v2_1_Destroyed()
    local l0;
    l0 = self.box_VehicleDamageListener_v2_1;
    self.VehicleState = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleDamageListener_v2_1_Disabled()
    local l0;
    l0 = self.box_VehicleDamageListener_v2_1;
    self.VehicleState = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleDamageListener_v2_1_MajorDamage()
    local l0;
    l0 = self.box_VehicleDamageListener_v2_1;
    self.VehicleState = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleDamageListener_v2_1_MinorDamage()
    local l0;
    l0 = self.box_VehicleDamageListener_v2_1;
    self.VehicleState = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleDamageListener_v2_1_Mint()
    local l0;
    l0 = self.box_VehicleDamageListener_v2_1;
    self.VehicleState = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleDamageListener_v2_1_OnFire()
    local l0;
    l0 = self.box_VehicleDamageListener_v2_1;
    self.VehicleState = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleDamageListener_v2_1_Perfect()
    local l0;
    l0 = self.box_VehicleDamageListener_v2_1;
    self.VehicleState = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleDamageListener_v2_1_StateChange()
    local l0;
    l0 = self.box_VehicleDamageListener_v2_1;
    self.VehicleState = l0:GetDataOutValue(0);
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
