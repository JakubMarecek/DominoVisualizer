LUAC�3 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni42/uni42_010_b10.domino
-- User graph: UNI42_010_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Follow_NpcVehicle.Brick_Follow_NPC_Vehicle_v6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3426588367.bnk]], "CSoundResource");
        cboxRes:LoadResource([[503435706.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1208034139.bnk]], "CSoundResource");
        cboxRes:LoadResource([[427679812.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2420079603.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2420246944.bnk]], "CSoundResource");
        cboxRes:LoadResource([[100313855.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3301375815.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3604938866.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3909714425.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2128148481.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI42/UNI42_010_B10.UNI42_010_B10.debug.lua")] = {
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
    self._name = "UNI42_010_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10";
    self.GFH_Junior = nil;
    self.eHurkTruck = nil;
    self.Player_Group = nil;
    self.PlayerPlat = 0;
    self.Player1 = nil;
    self.Player2 = nil;
    self.e_PlayerGroup = nil;
    self.bHurkDown = false;
    self.box_OnceOnly_v3_134 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|148152694");
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
    self.box_ProximityTrigger_v2_30 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|192615305");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_30_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_30_Enter,
    });
    self.box_ActivityAcknowledgeGate_12 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|305019059");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_12_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_12_Reloaded,
    });
    self.box_PlayDialog_v6_125 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|321510762");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_112 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|325661845");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_88 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|335945169");
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
                [0] = self.f_box_OnceOnly_v3_88_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_199 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|341497912");
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
    self.box_Delay_v5_58 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|377562793");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_58_TimeElapsed,
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|430087355");
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
        [0] = self.f_box_MultipleOR_63_Out,
    });
    self.box_PlayDialog_v6_39 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|437085272");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_91 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|458573489");
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
                [0] = self.f_box_OnceOnly_v3_91_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_195 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|486071320");
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
        [0] = self.f_box_MultipleOR_195_Out,
    });
    self.box_GroupSizeListener_v5_76 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|535257276");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_76_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_76_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_76_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_76_MemberRemoved,
    });
    self.box_OnceOnly_v3_140 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|537372327");
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
    self.box_Gate_v3_220 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|569664913");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_220_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_220_Out,
    });
    self.box_VehicleDamageListener_v2_14 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|609665524");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_14_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_14_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_14_Disabled,
    });
    self.box_OnceOnly_v3_219 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|618014553");
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
    self.box_OnceOnly_v3_132 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|661643130");
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
                [0] = self.f_box_OnceOnly_v3_132_Out_0,
            },
            count = 2,
        },
    });
    self.box_HealthListener_v6_90 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|673370805");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_90_Downed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_90_Revived,
    });
    self.box_PlayDialog_v6_29 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|711058801");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_29_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_29_FinishedInterrupted,
    });
    self.box_DisplayCustomUIMsg_v5_98 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|723368928");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_98_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v5_98_OnHide,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|739084364");
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
        [0] = self.f_box_MultipleOR_53_Out,
    });
    self.box_ProximityRadiusListener_v3_202 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|779501187");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_202_SomeoneNear,
    });
    self.box_Music_Quest_v2_111 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|796247823");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_35 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|814609227");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_35_Enter,
    });
    self.box_ProximityTrigger_v2_175 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|835599738");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_175_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_175_Enter,
    });
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|862081191");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|927121517");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_Gate_v3_137 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|964595521");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_137_Out,
    });
    self.box_PlayDialog_v6_38 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|988668615");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_95 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|990884825");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_95_SomeoneFar,
    });
    self.box_OnceOnly_v3_74 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|994879124");
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
                [0] = self.f_box_OnceOnly_v3_74_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Follow_NPC_Vehicle_v6_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Follow_NpcVehicle.Brick_Follow_NPC_Vehicle_v6.debug.lua");
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Follow_NPC_Vehicle_v6_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1020954338");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Brick_Follow_NPC_Vehicle_v6_2_Started,
        -- Success,
        [2] = self.f_box_Brick_Follow_NPC_Vehicle_v6_2_Success,
        -- Target_TooFar,
        [4] = self.f_box_Brick_Follow_NPC_Vehicle_v6_2_Target_TooFar,
    });
    self.box_EntityStatusListener_26 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1030532428");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_26_Loaded,
    });
    self.box_ActivityInitialized_11 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1031878254");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_11_Out,
    });
    self.box_ProximityTrigger_v2_174 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1072699407");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_174_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_174_Enter,
    });
    self.box_ProximityTrigger_v2_188 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1075213918");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_188_Enter,
    });
    self.box_OnceOnly_v3_136 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1117168424");
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
                [0] = self.f_box_OnceOnly_v3_136_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityRadiusListener_v3_44 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1129223635");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_44_SomeoneFar,
    });
    self.box_ProximityRadiusListener_v3_212 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1131047883");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_212_SomeoneNear,
    });
    self.box_MultipleOR_207 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1141632412");
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
        [0] = self.f_box_MultipleOR_207_Out,
    });
    self.box_Brick_Follow_NPC_Vehicle_v6_48 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Follow_NpcVehicle.Brick_Follow_NPC_Vehicle_v6.debug.lua");
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Follow_NPC_Vehicle_v6_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1149094265");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Brick_Follow_NPC_Vehicle_v6_48_Started,
        -- Success,
        [2] = self.f_box_Brick_Follow_NPC_Vehicle_v6_48_Success,
        -- Target_TooFar,
        [4] = self.f_box_Brick_Follow_NPC_Vehicle_v6_48_Target_TooFar,
    });
    self.box_Delay_v5_124 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1153266429");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_124_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_184 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1166493106");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_184_Enter,
    });
    self.box_MultipleOR_213 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1193609080");
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
        [0] = self.f_box_MultipleOR_213_Out,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1215949493");
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
    self.box_ProximityRadiusListener_v3_97 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1249373480");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_97_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_97_SomeoneNear,
    });
    self.box_Delay_v5_60 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1249432551");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_60_TimeElapsed,
    });
    self.box_OnceOnly_v3_84 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1265209955");
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
                [0] = self.f_box_OnceOnly_v3_84_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_36 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1275258841");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_34 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1288520195");
    l0:SetConnections({
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1312344021");
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
        [0] = self.f_box_MultipleOR_82_Out,
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1321670296");
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
    self.box_OnceOnly_v3_218 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1334495795");
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
    self.box_SpawnAI_4 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1336523338");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_186 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1336905231");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_186_Enter,
    });
    self.box_OnceOnly_v3_72 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1343927620");
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
                [0] = self.f_box_OnceOnly_v3_72_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_190 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1366712257");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_190_Enter,
    });
    self.box_EntityStatusListener_107 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1373831415");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_107_Loaded,
    });
    self.box_ProximityRadiusListener_v3_204 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1387307376");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_204_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_52 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1394500922");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_52_SomeoneFar,
    });
    self.box_ProximityTrigger_v2_178 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1418561268");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_178_Enter,
    });
    self.box_ProximityTrigger_v2_177 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1443160307");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_177_Enter,
    });
    self.box_Gate_v3_141 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1459880966");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_141_Out,
    });
    self.box_ProximityRadiusListener_v3_96 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1463089628");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_96_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_96_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_96_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_96_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_96_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_96_SomeoneNear,
    });
    self.box_BindMarkerOverHead_v2_89 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
    l0 = self.box_BindMarkerOverHead_v2_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1469077458");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BindMarkerOverHead_v2_89_Out,
    });
    self.box_EntityStatusListener_9 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1471505068");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_9_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_9_Loaded,
    });
    self.box_MultipleOR_203 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1521695672");
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
        [0] = self.f_box_MultipleOR_203_Out,
    });
    self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1522215891");
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
        [0] = self.f_box_MultipleOR_41_Out,
    });
    self.box_Gate_v3_135 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1536282580");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_135_Out,
    });
    self.box_MultipleOR_99 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1555003215");
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
        [0] = self.f_box_MultipleOR_99_Out,
    });
    self.box_ProximityTrigger_v2_37 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1570607338");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_37_Enter,
    });
    self.box_ProximityRadiusListener_v3_196 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1578648142");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_196_SomeoneNear,
    });
    self.box_PlayDialog_v6_32 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1607653407");
    l0:SetConnections({
    });
    self.box_Gate_v3_222 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1680028531");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_222_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_222_Out,
    });
    self.box_Gate_v3_131 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1731032110");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_131_Out,
    });
    self.box_Gate_v3_133 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1749146625");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_133_Out,
    });
    self.box_ProximityTrigger_v2_176 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1816338887");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_176_Enter,
    });
    self.box_ProximityTrigger_v2_33 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1831959470");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_33_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_33_Enter,
    });
    self.box_Delay_v5_116 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1860923505");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_116_TimeElapsed,
    });
    self.box_Delay_v5_70 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1901563748");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_70_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_46 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1908322792");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_46_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_46_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_46_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_46_LoadedIdReceived,
    });
    self.box_Gate_v3_224 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1910160520");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_224_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_224_Out,
    });
    self.box_SpawnAI_108 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1929564422");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_108_Spawned,
    });
    self.box_Delay_v5_73 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1930882280");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_73_TimeElapsed,
    });
    self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1960181174");
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
    self.box_OnceOnly_v3_200 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1964519780");
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
                [0] = self.f_box_OnceOnly_v3_200_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_126 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2020558235");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_126_TimeElapsed,
    });
    self.box_Music_Quest_v2_114 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2044209724");
    l0:SetConnections({
    });
    self.box_MultipleOR_66 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2051928832");
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
        [0] = self.f_box_MultipleOR_66_Out,
    });
    self.box_PlayDialog_v6_1 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2055717552");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_86 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2057129309");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_86_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_86_FinishedInterrupted,
    });
    self.box_OnceOnly_v3_142 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2061817170");
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
                [0] = self.f_box_OnceOnly_v3_142_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_191 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2075644683");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_191_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_191_Out,
    });
    self.box_OnceOnly_v3_138 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2075738452");
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
    self.box_MultipleOR_130 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2078170050");
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
        [0] = self.f_box_MultipleOR_130_Out,
    });
    self.box_Gate_v3_139 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2146619504");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_139_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1326922628", "1326922628", "UNI42_010_B10", "In", "box_OutputOrder_v2_24.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_3();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1775859341", "1775859341", "UNI42_010_B10", "OnLeaveZone", "box_Simple_Node_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_237_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_90();
    l0 = self.box_HealthListener_v6_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1121852396", "1121852396", "UNI42_010_B10", "box_Simple_Node_237.Out", "box_HealthListener_v6_90.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_234_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_176();
    l0 = self.box_ProximityTrigger_v2_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1378146760", "1378146760", "UNI42_010_B10", "box_Simple_Node_234.Out", "box_ProximityTrigger_v2_176.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_235_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_37();
    l0 = self.box_ProximityTrigger_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|858659408", "858659408", "UNI42_010_B10", "box_Simple_Node_235.Out", "box_ProximityTrigger_v2_37.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_236_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_177();
    l0 = self.box_ProximityTrigger_v2_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1601881857", "1601881857", "UNI42_010_B10", "box_Simple_Node_236.Out", "box_ProximityTrigger_v2_177.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_51_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_44();
    l0 = self.box_ProximityRadiusListener_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1628102021", "1628102021", "UNI42_010_B10", "box_Simple_Node_51.Out", "box_ProximityRadiusListener_v3_44.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_55_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_52();
    l0 = self.box_ProximityRadiusListener_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|576199794", "576199794", "UNI42_010_B10", "box_Simple_Node_55.Out", "box_ProximityRadiusListener_v3_52.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_232_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_199;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1035874820", "1035874820", "UNI42_010_B10", "box_Simple_Node_232.Out", "box_OnceOnly_v3_199.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_229_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2023898276", "2023898276", "UNI42_010_B10", "box_Simple_Node_229.Out", "box_OnceOnly_v3_218.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_230_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|640108088", "640108088", "UNI42_010_B10", "box_Simple_Node_230.Out", "box_OnceOnly_v3_219.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_231_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1575576718", "1575576718", "UNI42_010_B10", "box_Simple_Node_231.Out", "box_OnceOnly_v3_200.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_143_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_131();
    l0 = self.box_Gate_v3_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|61651456", "61651456", "UNI42_010_B10", "box_Simple_Node_143.Out", "box_Gate_v3_131.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_1();
    l0 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|360548773", "360548773", "UNI42_010_B10", "box_Simple_Node_143.Out", "box_PlayDialog_v6_1.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_39();
    l0 = self.box_PlayDialog_v6_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|799313657", "799313657", "UNI42_010_B10", "box_Simple_Node_143.Out", "box_PlayDialog_v6_39.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_36();
    l0 = self.box_PlayDialog_v6_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|778575384", "778575384", "UNI42_010_B10", "box_Simple_Node_143.Out", "box_PlayDialog_v6_36.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1169100426", "1169100426", "UNI42_010_B10", "box_Simple_Node_143.Out", "box_PlayDialog_v6_38.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_135();
    l0 = self.box_Gate_v3_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1012434636", "1012434636", "UNI42_010_B10", "box_Simple_Node_143.Out", "box_Gate_v3_135.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_133();
    l0 = self.box_Gate_v3_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|822831620", "822831620", "UNI42_010_B10", "box_Simple_Node_143.Out", "box_Gate_v3_133.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_141();
    l0 = self.box_Gate_v3_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1078038999", "1078038999", "UNI42_010_B10", "box_Simple_Node_143.Out", "box_Gate_v3_141.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_34();
    l0 = self.box_PlayDialog_v6_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1614247225", "1614247225", "UNI42_010_B10", "box_Simple_Node_143.Out", "box_PlayDialog_v6_34.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_137();
    l0 = self.box_Gate_v3_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2061203421", "2061203421", "UNI42_010_B10", "box_Simple_Node_143.Out", "box_Gate_v3_137.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_139();
    l0 = self.box_Gate_v3_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1627226865", "1627226865", "UNI42_010_B10", "box_Simple_Node_143.Out", "box_Gate_v3_139.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_32();
    l0 = self.box_PlayDialog_v6_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1731935165", "1731935165", "UNI42_010_B10", "box_Simple_Node_143.Out", "box_PlayDialog_v6_32.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_233_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_222();
    l0 = self.box_Gate_v3_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1601099405", "1601099405", "UNI42_010_B10", "box_Simple_Node_233.Out", "box_Gate_v3_222.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_220();
    l0 = self.box_Gate_v3_220;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1327178345", "1327178345", "UNI42_010_B10", "box_Simple_Node_233.Out", "box_Gate_v3_220.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_224();
    l0 = self.box_Gate_v3_224;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1361651441", "1361651441", "UNI42_010_B10", "box_Simple_Node_233.Out", "box_Gate_v3_224.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_191();
    l0 = self.box_Gate_v3_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|548721118", "548721118", "UNI42_010_B10", "box_Simple_Node_233.Out", "box_Gate_v3_191.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_119_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_182();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1487349727", "1487349727", "UNI42_010_B10", "box_Simple_Node_119.Out", "box_OutputOrder_v2_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_81_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|896276173", "896276173", "UNI42_010_B10", "box_Simple_Node_81.Out", "box_ActivityObjectiveMarkerModifier_v3_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_117_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2031373239", "2031373239", "UNI42_010_B10", "box_Simple_Node_117.Out", "box_EntityStatusListener_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_123_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_121();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1329310211", "1329310211", "UNI42_010_B10", "box_VehicleSeatModifier_v2_123.Locked", "box_VehicleSeatModifier_v2_121.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_180_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_180_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_226();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|378089006", "378089006", "UNI42_010_B10", "box_SetInteger_v2_180.Out", "box_OutputOrder_v2_226.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_189_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_202();
    l0 = self.box_ProximityRadiusListener_v3_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1310298071", "1310298071", "UNI42_010_B10", "box_OutputOrder_v2_189.Out", "box_ProximityRadiusListener_v3_202.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_189_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_191();
    l0 = self.box_Gate_v3_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|44463086", "44463086", "UNI42_010_B10", "box_OutputOrder_v2_189.Out", "box_Gate_v3_191.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_134_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_32();
    l0 = self.box_OnceOnly_v3_134;
    l1 = self.box_PlayDialog_v6_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|88698751", "88698751", "UNI42_010_B10", "box_OnceOnly_v3_134.Out", "box_PlayDialog_v6_32.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_93_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_56();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1568631029", "1568631029", "UNI42_010_B10", "box_AddActivityObjective_v2_93.Out", "box_SetBoolean_v2_56.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_30_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_33();
    l0 = self.box_ProximityTrigger_v2_30;
    l1 = self.box_ProximityTrigger_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1902961500", "1902961500", "UNI42_010_B10", "box_ProximityTrigger_v2_30.Enabled", "box_ProximityTrigger_v2_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_30_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_133();
    l0 = self.box_ProximityTrigger_v2_30;
    l1 = self.box_Gate_v3_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1799522430", "1799522430", "UNI42_010_B10", "box_ProximityTrigger_v2_30.Enter", "box_Gate_v3_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_106_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1421537529", "1421537529", "UNI42_010_B10", "box_EndActivityObjective_v2_106.Out", "box_MultipleOR_59.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_12_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_12;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1920538934", "1920538934", "UNI42_010_B10", "box_ActivityAcknowledgeGate_12.Acknowledged", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_12_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_12;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|405942571", "405942571", "UNI42_010_B10", "box_ActivityAcknowledgeGate_12.Reloaded", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_221_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_204();
    l0 = self.box_ProximityRadiusListener_v3_204;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1497242188", "1497242188", "UNI42_010_B10", "box_OutputOrder_v2_221.Out", "box_ProximityRadiusListener_v3_204.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_221_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_220();
    l0 = self.box_Gate_v3_220;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1627539533", "1627539533", "UNI42_010_B10", "box_OutputOrder_v2_221.Out", "box_Gate_v3_220.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_215_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1197769849", "1197769849", "UNI42_010_B10", "box_Simple_Node_215.Out", "box_MultipleOR_195.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OnceOnly_v3_88_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_95();
    l0 = self.box_OnceOnly_v3_88;
    l1 = self.box_ProximityRadiusListener_v3_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1090651784", "1090651784", "UNI42_010_B10", "box_OnceOnly_v3_88.Out", "box_ProximityRadiusListener_v3_95.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_199_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_217();
    l0 = self.box_OnceOnly_v3_199;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1426667125", "1426667125", "UNI42_010_B10", "box_OnceOnly_v3_199.Out", "box_SetContextualStrategy_217.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_58_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_58;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|221867326", "221867326", "UNI42_010_B10", "box_Delay_v5_58.TimeElapsed", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_90();
    l0 = self.box_MultipleOR_63;
    l1 = self.box_HealthListener_v6_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|413476601", "413476601", "UNI42_010_B10", "box_MultipleOR_63.Out", "box_HealthListener_v6_90.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetHealthState_92_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1044081504", "1044081504", "UNI42_010_B10", "box_GetHealthState_92.Down", "box_OnceOnly_v3_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetHealthState_92_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1954085995", "1954085995", "UNI42_010_B10", "box_GetHealthState_92.Healthy", "box_MultipleOR_63.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_210_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|919958320", "919958320", "UNI42_010_B10", "box_Simple_Node_210.Out", "box_MultipleOR_213.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OnceOnly_v3_91_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = self.box_OnceOnly_v3_91;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1493110241", "1493110241", "UNI42_010_B10", "box_OnceOnly_v3_91.Out", "box_OutputOrder_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_122_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_123();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|573193329", "573193329", "UNI42_010_B10", "box_VehicleSeatModifier_v2_122.Locked", "box_VehicleSeatModifier_v2_123.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_195_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_232();
    l0 = self.box_MultipleOR_195;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1933772279", "1933772279", "UNI42_010_B10", "box_MultipleOR_195.Out", "box_Simple_Node_232.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2102458769", "2102458769", "UNI42_010_B10", "box_OutputOrder_v2_40.Out", "box_Delay_v5_73.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1408872851", "1408872851", "UNI42_010_B10", "box_OutputOrder_v2_40.Out", "box_PlayDialog_v6_29.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_94_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_28();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|937901371", "937901371", "UNI42_010_B10", "box_OutputOrder_v2_94.Out", "box_GetPlayerGroup_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_94_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BindMarkerOverHead_v2_89();
    l0 = self.box_BindMarkerOverHead_v2_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1283783819", "1283783819", "UNI42_010_B10", "box_OutputOrder_v2_94.Out", "box_BindMarkerOverHead_v2_89.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_76_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_76;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|354544339", "354544339", "UNI42_010_B10", "box_GroupSizeListener_v5_76.Enabled", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_76_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_76;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|790318613", "790318613", "UNI42_010_B10", "box_GroupSizeListener_v5_76.MemberAdded", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_76_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_76;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|319089674", "319089674", "UNI42_010_B10", "box_GroupSizeListener_v5_76.MemberRemoved", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OnceOnly_v3_140_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_OnceOnly_v3_140;
    l1 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1450621240", "1450621240", "UNI42_010_B10", "box_OnceOnly_v3_140.Out", "box_PlayDialog_v6_38.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetInteger_v2_192_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_192_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_228();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|234352854", "234352854", "UNI42_010_B10", "box_SetInteger_v2_192.Out", "box_OutputOrder_v2_228.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_220_Closed()
    local l0, l1;
    l0 = self.box_Gate_v3_220;
    l1 = self.box_MultipleOR_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1468611193", "1468611193", "UNI42_010_B10", "box_Gate_v3_220.Closed", "box_MultipleOR_207.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_220_Out()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_220();
    l0 = self.box_Gate_v3_220;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|967982599", "967982599", "UNI42_010_B10", "box_Gate_v3_220.Out", "box_Gate_v3_220.Close", l0:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_179_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_201();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|146065469", "146065469", "UNI42_010_B10", "box_Compare_Integers_179.A_ge_B", "box_Simple_Node_201.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_179_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_189();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1163710859", "1163710859", "UNI42_010_B10", "box_Compare_Integers_179.A_lt_B", "box_OutputOrder_v2_189.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_117();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1771196397", "1771196397", "UNI42_010_B10", "box_OutputOrder_v2_17.Out", "box_Simple_Node_117.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_47();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1855229340", "1855229340", "UNI42_010_B10", "box_OutputOrder_v2_17.Out", "box_UseContextualActionModifier_v3_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|543563195", "543563195", "UNI42_010_B10", "box_OutputOrder_v2_17.Out", "box_EntityStatusListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VehicleDamageListener_v2_14_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_14;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|145260172", "145260172", "UNI42_010_B10", "box_VehicleDamageListener_v2_14.Broken", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_14_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_113();
    l0 = self.box_VehicleDamageListener_v2_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|775462426", "775462426", "UNI42_010_B10", "box_VehicleDamageListener_v2_14.Destroyed", "box_OutputOrder_v2_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_14_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_14;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1590083775", "1590083775", "UNI42_010_B10", "box_VehicleDamageListener_v2_14.Disabled", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_219_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_209();
    l0 = self.box_OnceOnly_v3_219;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|543960210", "543960210", "UNI42_010_B10", "box_OnceOnly_v3_219.Out", "box_SetContextualStrategy_209.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_85_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1864353135", "1864353135", "UNI42_010_B10", "box_OutputOrder_v2_85.Out", "box_MultipleOR_130.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_85_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1962328668", "1962328668", "UNI42_010_B10", "box_OutputOrder_v2_85.Out", "box_OnceOnly_v3_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_193_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_194();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1616102164", "1616102164", "UNI42_010_B10", "box_SetContextualStrategy_193.Out", "box_UseContextualActionModifier_v3_194.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_105_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_76();
    l0 = self.box_GroupSizeListener_v5_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|621274198", "621274198", "UNI42_010_B10", "box_AddActivityObjective_v2_105.Out", "box_GroupSizeListener_v5_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_132_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_1();
    l0 = self.box_OnceOnly_v3_132;
    l1 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|192482887", "192482887", "UNI42_010_B10", "box_OnceOnly_v3_132.Out", "box_PlayDialog_v6_1.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_90_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_85();
    l0 = self.box_HealthListener_v6_90;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1702950655", "1702950655", "UNI42_010_B10", "box_HealthListener_v6_90.Downed", "box_OutputOrder_v2_85.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_90_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_87();
    l0 = self.box_HealthListener_v6_90;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1977696812", "1977696812", "UNI42_010_B10", "box_HealthListener_v6_90.Revived", "box_Simple_Node_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_208_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_208();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|415504795", "415504795", "UNI42_010_B10", "box_UseContextualActionModifier_v3_208.Enabled", "box_UseContextualActionModifier_v3_208.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_208_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_190();
    l0 = self.box_ProximityTrigger_v2_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|354603392", "354603392", "UNI42_010_B10", "box_UseContextualActionModifier_v3_208.UseCalled", "box_ProximityTrigger_v2_190.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1884976333", "1884976333", "UNI42_010_B10", "box_OutputOrder_v2_62.Out", "box_MultipleOR_63.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1575882777", "1575882777", "UNI42_010_B10", "box_OutputOrder_v2_62.Out", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_29_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_29;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|303409712", "303409712", "UNI42_010_B10", "box_PlayDialog_v6_29.Finished", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_29_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_29;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1703705161", "1703705161", "UNI42_010_B10", "box_PlayDialog_v6_29.FinishedInterrupted", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_DisplayCustomUIMsg_v5_98_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_97();
    l0 = self.box_DisplayCustomUIMsg_v5_98;
    l1 = self.box_ProximityRadiusListener_v3_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1525856556", "1525856556", "UNI42_010_B10", "box_DisplayCustomUIMsg_v5_98.OnDisplay", "box_ProximityRadiusListener_v3_97.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_98_OnHide()
    local l0, l1;
    l0 = self.box_DisplayCustomUIMsg_v5_98;
    l1 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|347084153", "347084153", "UNI42_010_B10", "box_DisplayCustomUIMsg_v5_98.OnHide", "box_MultipleOR_99.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_223_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_212();
    l0 = self.box_ProximityRadiusListener_v3_212;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1926336280", "1926336280", "UNI42_010_B10", "box_OutputOrder_v2_223.Out", "box_ProximityRadiusListener_v3_212.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_223_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_222();
    l0 = self.box_Gate_v3_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|670507871", "670507871", "UNI42_010_B10", "box_OutputOrder_v2_223.Out", "box_Gate_v3_222.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_19();
    l0 = self.box_MultipleOR_53;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1653988173", "1653988173", "UNI42_010_B10", "box_MultipleOR_53.Out", "box_ActivityRetry_19.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_209_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_208();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1101567578", "1101567578", "UNI42_010_B10", "box_SetContextualStrategy_209.Out", "box_UseContextualActionModifier_v3_208.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_226_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_233();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|829493887", "829493887", "UNI42_010_B10", "box_OutputOrder_v2_226.Out", "box_Simple_Node_233.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_226_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_234();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1355700783", "1355700783", "UNI42_010_B10", "box_OutputOrder_v2_226.Out", "box_Simple_Node_234.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_226_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_235();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1445079542", "1445079542", "UNI42_010_B10", "box_OutputOrder_v2_226.Out", "box_Simple_Node_235.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_202_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_202;
    l1 = self.box_MultipleOR_203;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1520637419", "1520637419", "UNI42_010_B10", "box_ProximityRadiusListener_v3_202.SomeoneNear", "box_MultipleOR_203.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_35_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_141();
    l0 = self.box_ProximityTrigger_v2_35;
    l1 = self.box_Gate_v3_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|421163392", "421163392", "UNI42_010_B10", "box_ProximityTrigger_v2_35.Enter", "box_Gate_v3_141.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_175_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_35();
    l0 = self.box_ProximityTrigger_v2_175;
    l1 = self.box_ProximityTrigger_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|28521844", "28521844", "UNI42_010_B10", "box_ProximityTrigger_v2_175.Enabled", "box_ProximityTrigger_v2_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_175_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_139();
    l0 = self.box_ProximityTrigger_v2_175;
    l1 = self.box_Gate_v3_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1560687099", "1560687099", "UNI42_010_B10", "box_ProximityTrigger_v2_175.Enter", "box_Gate_v3_139.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_15();
    l0 = self.box_EntityStatusListener_13;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|368306539", "368306539", "UNI42_010_B10", "box_EntityStatusListener_13.Loaded", "box_SetEntity_v2_15.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_225_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_196();
    l0 = self.box_ProximityRadiusListener_v3_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1298101164", "1298101164", "UNI42_010_B10", "box_OutputOrder_v2_225.Out", "box_ProximityRadiusListener_v3_196.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_225_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_224();
    l0 = self.box_Gate_v3_224;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1401593068", "1401593068", "UNI42_010_B10", "box_OutputOrder_v2_225.Out", "box_Gate_v3_224.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_OnceOnly_v3_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1371233099", "1371233099", "UNI42_010_B10", "box_MultipleOR_5.Out", "box_OnceOnly_v3_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_137_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_137;
    l1 = self.box_OnceOnly_v3_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|246550613", "246550613", "UNI42_010_B10", "box_Gate_v3_137.Out", "box_OnceOnly_v3_138.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_95_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_109();
    l0 = self.box_ProximityRadiusListener_v3_95;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1519112380", "1519112380", "UNI42_010_B10", "box_ProximityRadiusListener_v3_95.SomeoneFar", "box_OutputOrder_v2_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_74_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_OnceOnly_v3_74;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|136639640", "136639640", "UNI42_010_B10", "box_OnceOnly_v3_74.Out", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_2_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_111();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_2;
    l1 = self.box_Music_Quest_v2_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|664257882", "664257882", "UNI42_010_B10", "box_Brick_Follow_NPC_Vehicle_v6_2.Started", "box_Music_Quest_v2_111.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_2_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|416917610", "416917610", "UNI42_010_B10", "box_Brick_Follow_NPC_Vehicle_v6_2.Success", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_2_Target_TooFar()
    local l0, l1;
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_2;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|432325002", "432325002", "UNI42_010_B10", "box_Brick_Follow_NPC_Vehicle_v6_2.Target_TooFar", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_26_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_23();
    l0 = self.box_EntityStatusListener_26;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|349011870", "349011870", "UNI42_010_B10", "box_EntityStatusListener_26.Loaded", "box_ParticleSystem_v3_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_46();
    l0 = self.box_ActivityInitialized_11;
    l1 = self.box_CharacterLoadedIdListener_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|915315057", "915315057", "UNI42_010_B10", "box_ActivityInitialized_11.Out", "box_CharacterLoadedIdListener_46.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_227_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_233();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|105694994", "105694994", "UNI42_010_B10", "box_OutputOrder_v2_227.Out", "box_Simple_Node_233.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_227_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_234();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|824388245", "824388245", "UNI42_010_B10", "box_OutputOrder_v2_227.Out", "box_Simple_Node_234.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_174_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_175();
    l0 = self.box_ProximityTrigger_v2_174;
    l1 = self.box_ProximityTrigger_v2_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|742639146", "742639146", "UNI42_010_B10", "box_ProximityTrigger_v2_174.Enabled", "box_ProximityTrigger_v2_175.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_174_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_137();
    l0 = self.box_ProximityTrigger_v2_174;
    l1 = self.box_Gate_v3_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|220561136", "220561136", "UNI42_010_B10", "box_ProximityTrigger_v2_174.Enter", "box_Gate_v3_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_216_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_216();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|509097400", "509097400", "UNI42_010_B10", "box_UseContextualActionModifier_v3_216.Enabled", "box_UseContextualActionModifier_v3_216.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_188_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_214();
    l0 = self.box_ProximityTrigger_v2_188;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|78057005", "78057005", "UNI42_010_B10", "box_ProximityTrigger_v2_188.Enter", "box_Compare_Integers_214.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_205_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_206();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2032706201", "2032706201", "UNI42_010_B10", "box_Compare_Integers_205.A_ge_B", "box_Simple_Node_206.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_205_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_221();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|871297773", "871297773", "UNI42_010_B10", "box_Compare_Integers_205.A_lt_B", "box_OutputOrder_v2_221.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_15_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_15_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|612566319", "612566319", "UNI42_010_B10", "box_SetEntity_v2_15.Out", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_136_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_34();
    l0 = self.box_OnceOnly_v3_136;
    l1 = self.box_PlayDialog_v6_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|780959153", "780959153", "UNI42_010_B10", "box_OnceOnly_v3_136.Out", "box_PlayDialog_v6_34.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_44_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_44;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1859604873", "1859604873", "UNI42_010_B10", "box_ProximityRadiusListener_v3_44.SomeoneFar", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_212_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_212;
    l1 = self.box_MultipleOR_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|671424774", "671424774", "UNI42_010_B10", "box_ProximityRadiusListener_v3_212.SomeoneNear", "box_MultipleOR_213.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_207_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_230();
    l0 = self.box_MultipleOR_207;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|522420148", "522420148", "UNI42_010_B10", "box_MultipleOR_207.Out", "box_Simple_Node_230.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_48_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|358468321", "358468321", "UNI42_010_B10", "box_Brick_Follow_NPC_Vehicle_v6_48.Started", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_48_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1336839635", "1336839635", "UNI42_010_B10", "box_Brick_Follow_NPC_Vehicle_v6_48.Success", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_48_Target_TooFar()
    local l0, l1;
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_48;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1434066971", "1434066971", "UNI42_010_B10", "box_Brick_Follow_NPC_Vehicle_v6_48.Target_TooFar", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_124_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_127();
    l0 = self.box_Delay_v5_124;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|729968629", "729968629", "UNI42_010_B10", "box_Delay_v5_124.TimeElapsed", "box_OutputOrder_v2_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_184_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_205();
    l0 = self.box_ProximityTrigger_v2_184;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2004200123", "2004200123", "UNI42_010_B10", "box_ProximityTrigger_v2_184.Enter", "box_Compare_Integers_205.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_228_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_233();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|210733473", "210733473", "UNI42_010_B10", "box_OutputOrder_v2_228.Out", "box_Simple_Node_233.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_228_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_234();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|322298370", "322298370", "UNI42_010_B10", "box_OutputOrder_v2_228.Out", "box_Simple_Node_234.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_228_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_235();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1622085604", "1622085604", "UNI42_010_B10", "box_OutputOrder_v2_228.Out", "box_Simple_Node_235.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_228_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_236();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1938002830", "1938002830", "UNI42_010_B10", "box_OutputOrder_v2_228.Out", "box_Simple_Node_236.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_213_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_231();
    l0 = self.box_MultipleOR_213;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|247990267", "247990267", "UNI42_010_B10", "box_MultipleOR_213.Out", "box_Simple_Node_231.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_75_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_106();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1154027509", "1154027509", "UNI42_010_B10", "box_Compare_Integers_75.A_le_B", "box_EndActivityObjective_v2_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_198_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_198();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1375671223", "1375671223", "UNI42_010_B10", "box_UseContextualActionModifier_v3_198.Enabled", "box_UseContextualActionModifier_v3_198.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_198_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_188();
    l0 = self.box_ProximityTrigger_v2_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1542170851", "1542170851", "UNI42_010_B10", "box_UseContextualActionModifier_v3_198.UseCalled", "box_ProximityTrigger_v2_188.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_43_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_43;
    l1 = self.box_ActivityInitialized_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|647268618", "647268618", "UNI42_010_B10", "box_MultipleOR_43.Out", "box_ActivityInitialized_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Simple_Node_87_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_129();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2036938015", "2036938015", "UNI42_010_B10", "box_Simple_Node_87.Out", "box_EndActivityObjective_v2_129.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_187_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_187_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_233();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|839182108", "839182108", "UNI42_010_B10", "box_SetInteger_v2_187.Out", "box_Simple_Node_233.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_105();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|483050705", "483050705", "UNI42_010_B10", "box_OutputOrder_v2_83.Out", "box_AddActivityObjective_v2_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|766895163", "766895163", "UNI42_010_B10", "box_OutputOrder_v2_83.Out", "box_MultipleOR_99.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_97_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_95();
    l0 = self.box_ProximityRadiusListener_v3_97;
    l1 = self.box_ProximityRadiusListener_v3_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|907662588", "907662588", "UNI42_010_B10", "box_ProximityRadiusListener_v3_97.Disabled", "box_ProximityRadiusListener_v3_95.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_97_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_98();
    l0 = self.box_ProximityRadiusListener_v3_97;
    l1 = self.box_DisplayCustomUIMsg_v5_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1682192589", "1682192589", "UNI42_010_B10", "box_ProximityRadiusListener_v3_97.SomeoneNear", "box_DisplayCustomUIMsg_v5_98.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_60_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_92();
    l0 = self.box_Delay_v5_60;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1364758365", "1364758365", "UNI42_010_B10", "box_Delay_v5_60.TimeElapsed", "box_GetHealthState_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_84_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_143();
    l0 = self.box_OnceOnly_v3_84;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1140629109", "1140629109", "UNI42_010_B10", "box_OnceOnly_v3_84.Out", "box_Simple_Node_143.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_120_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_122();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|175080911", "175080911", "UNI42_010_B10", "box_VehicleSeatModifier_v2_120.Locked", "box_VehicleSeatModifier_v2_122.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_214_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_215();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|182446840", "182446840", "UNI42_010_B10", "box_Compare_Integers_214.A_ge_B", "box_Simple_Node_215.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_214_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_225();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1174801004", "1174801004", "UNI42_010_B10", "box_Compare_Integers_214.A_lt_B", "box_OutputOrder_v2_225.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_75();
    l0 = self.box_MultipleOR_82;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2033244902", "2033244902", "UNI42_010_B10", "box_MultipleOR_82.Out", "box_Compare_Integers_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_21();
    l0 = self.box_MultipleOR_45;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2112047598", "2112047598", "UNI42_010_B10", "box_MultipleOR_45.Out", "box_ActivityRetry_21.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_218_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_193();
    l0 = self.box_OnceOnly_v3_218;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1864990254", "1864990254", "UNI42_010_B10", "box_OnceOnly_v3_218.Out", "box_SetContextualStrategy_193.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_186_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_179();
    l0 = self.box_ProximityTrigger_v2_186;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2135296368", "2135296368", "UNI42_010_B10", "box_ProximityTrigger_v2_186.Enter", "box_Compare_Integers_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_72_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_OnceOnly_v3_72;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|516484464", "516484464", "UNI42_010_B10", "box_OnceOnly_v3_72.Out", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_190_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_211();
    l0 = self.box_ProximityTrigger_v2_190;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1209164263", "1209164263", "UNI42_010_B10", "box_ProximityTrigger_v2_190.Enter", "box_Compare_Integers_211.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_107_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_108();
    l0 = self.box_EntityStatusListener_107;
    l1 = self.box_SpawnAI_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1685565204", "1685565204", "UNI42_010_B10", "box_EntityStatusListener_107.Loaded", "box_SpawnAI_108.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_197_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_198();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|270358169", "270358169", "UNI42_010_B10", "box_SetContextualStrategy_197.Out", "box_UseContextualActionModifier_v3_198.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_206_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1763255620", "1763255620", "UNI42_010_B10", "box_Simple_Node_206.Out", "box_MultipleOR_207.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ProximityRadiusListener_v3_204_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_204;
    l1 = self.box_MultipleOR_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1573912062", "1573912062", "UNI42_010_B10", "box_ProximityRadiusListener_v3_204.SomeoneNear", "box_MultipleOR_207.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_52_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_52;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1058365275", "1058365275", "UNI42_010_B10", "box_ProximityRadiusListener_v3_52.SomeoneFar", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_178_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_192();
    l0 = self.box_ProximityTrigger_v2_178;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1644161949", "1644161949", "UNI42_010_B10", "box_ProximityTrigger_v2_178.Enter", "box_SetInteger_v2_192.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FastTravelModifier_v2_68_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1462648166", "1462648166", "UNI42_010_B10", "box_FastTravelModifier_v2_68.Disabled", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_47_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_47();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1832520222", "1832520222", "UNI42_010_B10", "box_UseContextualActionModifier_v3_47.Enabled", "box_UseContextualActionModifier_v3_47.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_18_OnSetAsUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_20();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|324706570", "324706570", "UNI42_010_B10", "box_VehicleModifier_v2_18.OnSetAsUnusable", "box_VehicleSeatModifier_v2_20.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_177_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_180();
    l0 = self.box_ProximityTrigger_v2_177;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1240246031", "1240246031", "UNI42_010_B10", "box_ProximityTrigger_v2_177.Enter", "box_SetInteger_v2_180.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_51();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1258849778", "1258849778", "UNI42_010_B10", "box_OutputOrder_v2_27.Out", "box_Simple_Node_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_81();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|408563930", "408563930", "UNI42_010_B10", "box_OutputOrder_v2_27.Out", "box_Simple_Node_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_141_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_141;
    l1 = self.box_OnceOnly_v3_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1480325551", "1480325551", "UNI42_010_B10", "box_Gate_v3_141.Out", "box_OnceOnly_v3_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_96_AllFar()
    self:OnExit_box_ProximityRadiusListener_v3_96_AllFar();
end;

function export:f_box_ProximityRadiusListener_v3_96_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_96_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_96_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_97();
    l0 = self.box_ProximityRadiusListener_v3_96;
    l1 = self.box_ProximityRadiusListener_v3_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1086107223", "1086107223", "UNI42_010_B10", "box_ProximityRadiusListener_v3_96.Disabled", "box_ProximityRadiusListener_v3_97.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_96_Enabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_96;
    l1 = self.box_OnceOnly_v3_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1900646801", "1900646801", "UNI42_010_B10", "box_ProximityRadiusListener_v3_96.Enabled", "box_OnceOnly_v3_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_96_SomeoneFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_96_SomeoneFar();
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_98();
    l0 = self.box_ProximityRadiusListener_v3_96;
    l1 = self.box_DisplayCustomUIMsg_v5_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1483728888", "1483728888", "UNI42_010_B10", "box_ProximityRadiusListener_v3_96.SomeoneFar", "box_DisplayCustomUIMsg_v5_98.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_96_SomeoneNear()
    self:OnExit_box_ProximityRadiusListener_v3_96_SomeoneNear();
end;

function export:f_box_BindMarkerOverHead_v2_89_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_60();
    l0 = self.box_BindMarkerOverHead_v2_89;
    l1 = self.box_Delay_v5_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1481758298", "1481758298", "UNI42_010_B10", "box_BindMarkerOverHead_v2_89.Out", "box_Delay_v5_60.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_107();
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_EntityStatusListener_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1483102906", "1483102906", "UNI42_010_B10", "box_EntityStatusListener_9.Enabled", "box_EntityStatusListener_107.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_9_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_4();
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_SpawnAI_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1364082820", "1364082820", "UNI42_010_B10", "box_EntityStatusListener_9.Loaded", "box_SpawnAI_4.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_67_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1467402276", "1467402276", "UNI42_010_B10", "box_Simple_Node_67.Out", "box_MultipleOR_130.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_203_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_229();
    l0 = self.box_MultipleOR_203;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|202597547", "202597547", "UNI42_010_B10", "box_MultipleOR_203.Out", "box_Simple_Node_229.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_42();
    l0 = self.box_MultipleOR_41;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1304403075", "1304403075", "UNI42_010_B10", "box_MultipleOR_41.Out", "box_VehicleModifier_v2_42.SetExplosion", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExplosion
    l1:Exec(17, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_109_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_112();
    l0 = self.box_Music_Quest_v2_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|703245632", "703245632", "UNI42_010_B10", "box_OutputOrder_v2_109.Out", "box_Music_Quest_v2_112.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_109_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_100();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1213525545", "1213525545", "UNI42_010_B10", "box_OutputOrder_v2_109.Out", "box_ActivityRetry_100.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_135_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_135;
    l1 = self.box_OnceOnly_v3_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|265009977", "265009977", "UNI42_010_B10", "box_Gate_v3_135.Out", "box_OnceOnly_v3_136.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_10_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|112619123", "112619123", "UNI42_010_B10", "box_ActivityObjectiveMarkerModifier_v3_10.Disabled", "box_OutputOrder_v2_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_181_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_181_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_227();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|532891643", "532891643", "UNI42_010_B10", "box_SetInteger_v2_181.Out", "box_OutputOrder_v2_227.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_99_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_96();
    l0 = self.box_MultipleOR_99;
    l1 = self.box_ProximityRadiusListener_v3_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1636101890", "1636101890", "UNI42_010_B10", "box_MultipleOR_99.Out", "box_ProximityRadiusListener_v3_96.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_37_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_181();
    l0 = self.box_ProximityTrigger_v2_37;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|262231803", "262231803", "UNI42_010_B10", "box_ProximityTrigger_v2_37.Enter", "box_SetInteger_v2_181.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1387286379", "1387286379", "UNI42_010_B10", "box_OutputOrder_v2_24.Out", "box_ActivityAcknowledgeGate_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_25();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|364451523", "364451523", "UNI42_010_B10", "box_OutputOrder_v2_24.Out", "box_Print_v2_25.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_196_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_196;
    l1 = self.box_MultipleOR_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|566567082", "566567082", "UNI42_010_B10", "box_ProximityRadiusListener_v3_196.SomeoneNear", "box_MultipleOR_195.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_183_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_185();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1702179432", "1702179432", "UNI42_010_B10", "box_SetContextualStrategy_183.Out", "box_UseContextualActionModifier_v3_185.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_185_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_185();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1446653597", "1446653597", "UNI42_010_B10", "box_UseContextualActionModifier_v3_185.Enabled", "box_UseContextualActionModifier_v3_185.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_185_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_186();
    l0 = self.box_ProximityTrigger_v2_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1122094738", "1122094738", "UNI42_010_B10", "box_UseContextualActionModifier_v3_185.UseCalled", "box_ProximityTrigger_v2_186.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_222_Closed()
    local l0, l1;
    l0 = self.box_Gate_v3_222;
    l1 = self.box_MultipleOR_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2145096950", "2145096950", "UNI42_010_B10", "box_Gate_v3_222.Closed", "box_MultipleOR_213.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_222_Out()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_222();
    l0 = self.box_Gate_v3_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1628284913", "1628284913", "UNI42_010_B10", "box_Gate_v3_222.Out", "box_Gate_v3_222.Close", l0:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_194_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_194();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1779332400", "1779332400", "UNI42_010_B10", "box_UseContextualActionModifier_v3_194.Enabled", "box_UseContextualActionModifier_v3_194.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_194_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_184();
    l0 = self.box_ProximityTrigger_v2_184;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1986052508", "1986052508", "UNI42_010_B10", "box_UseContextualActionModifier_v3_194.UseCalled", "box_ProximityTrigger_v2_184.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_129_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_56();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1478030880", "1478030880", "UNI42_010_B10", "box_EndActivityObjective_v2_129.Out", "box_SetBoolean_v2_56.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_131_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_131;
    l1 = self.box_OnceOnly_v3_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|110272248", "110272248", "UNI42_010_B10", "box_Gate_v3_131.Out", "box_OnceOnly_v3_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_133_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_133;
    l1 = self.box_OnceOnly_v3_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|623904788", "623904788", "UNI42_010_B10", "box_Gate_v3_133.Out", "box_OnceOnly_v3_134.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_67();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1657799214", "1657799214", "UNI42_010_B10", "box_Simple_Node_64.Out", "box_Simple_Node_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_55();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1672960215", "1672960215", "UNI42_010_B10", "box_OutputOrder_v2_54.Out", "box_Simple_Node_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1727954584", "1727954584", "UNI42_010_B10", "box_OutputOrder_v2_54.Out", "box_OutputOrder_v2_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_20_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_120();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|122793635", "122793635", "UNI42_010_B10", "box_VehicleSeatModifier_v2_20.Locked", "box_VehicleSeatModifier_v2_120.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_176_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_187();
    l0 = self.box_ProximityTrigger_v2_176;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|76018302", "76018302", "UNI42_010_B10", "box_ProximityTrigger_v2_176.Enter", "box_SetInteger_v2_187.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_182_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_176();
    l0 = self.box_ProximityTrigger_v2_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1404466916", "1404466916", "UNI42_010_B10", "box_OutputOrder_v2_182.Out", "box_ProximityTrigger_v2_176.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_37();
    l0 = self.box_ProximityTrigger_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1181740497", "1181740497", "UNI42_010_B10", "box_OutputOrder_v2_182.Out", "box_ProximityTrigger_v2_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_177();
    l0 = self.box_ProximityTrigger_v2_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1125013033", "1125013033", "UNI42_010_B10", "box_OutputOrder_v2_182.Out", "box_ProximityTrigger_v2_177.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_178();
    l0 = self.box_ProximityTrigger_v2_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2040267117", "2040267117", "UNI42_010_B10", "box_OutputOrder_v2_182.Out", "box_ProximityTrigger_v2_178.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_183();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1155410708", "1155410708", "UNI42_010_B10", "box_OutputOrder_v2_182.Out", "box_SetContextualStrategy_183.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_33_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_174();
    l0 = self.box_ProximityTrigger_v2_33;
    l1 = self.box_ProximityTrigger_v2_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1055965714", "1055965714", "UNI42_010_B10", "box_ProximityTrigger_v2_33.Enabled", "box_ProximityTrigger_v2_174.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_33_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_135();
    l0 = self.box_ProximityTrigger_v2_33;
    l1 = self.box_Gate_v3_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|739524761", "739524761", "UNI42_010_B10", "box_ProximityTrigger_v2_33.Enter", "box_Gate_v3_135.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_211_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_210();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|760773240", "760773240", "UNI42_010_B10", "box_Compare_Integers_211.A_ge_B", "box_Simple_Node_210.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_211_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_223();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|348645412", "348645412", "UNI42_010_B10", "box_Compare_Integers_211.A_lt_B", "box_OutputOrder_v2_223.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_116_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_131();
    l0 = self.box_Delay_v5_116;
    l1 = self.box_Gate_v3_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|488185567", "488185567", "UNI42_010_B10", "box_Delay_v5_116.TimeElapsed", "box_Gate_v3_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_57_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_124();
    l0 = self.box_Delay_v5_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1967539370", "1967539370", "UNI42_010_B10", "box_Compare_Boolean_57.A_is_False", "box_Delay_v5_124.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_57_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_58();
    l0 = self.box_Delay_v5_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2123272633", "2123272633", "UNI42_010_B10", "box_Compare_Boolean_57.A_is_True", "box_Delay_v5_58.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_119();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|941673062", "941673062", "UNI42_010_B10", "box_OutputOrder_v2_7.Out", "box_Simple_Node_119.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_30();
    l0 = self.box_ProximityTrigger_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|444871201", "444871201", "UNI42_010_B10", "box_OutputOrder_v2_7.Out", "box_ProximityTrigger_v2_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_70_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_70;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1114159843", "1114159843", "UNI42_010_B10", "box_Delay_v5_70.TimeElapsed", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CharacterLoadedIdListener_46_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_46_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_94();
    l0 = self.box_CharacterLoadedIdListener_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|130938652", "130938652", "UNI42_010_B10", "box_CharacterLoadedIdListener_46.LoadedIdReceived", "box_OutputOrder_v2_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_224_Closed()
    local l0, l1;
    l0 = self.box_Gate_v3_224;
    l1 = self.box_MultipleOR_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|277541338", "277541338", "UNI42_010_B10", "box_Gate_v3_224.Closed", "box_MultipleOR_195.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_224_Out()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_224();
    l0 = self.box_Gate_v3_224;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|783820898", "783820898", "UNI42_010_B10", "box_Gate_v3_224.Out", "box_Gate_v3_224.Close", l0:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_108_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_110();
    l0 = self.box_SpawnAI_108;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|293470224", "293470224", "UNI42_010_B10", "box_SpawnAI_108.Spawned", "box_Simple_Node_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_113_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_114();
    l0 = self.box_Music_Quest_v2_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1158105545", "1158105545", "UNI42_010_B10", "box_OutputOrder_v2_113.Out", "box_Music_Quest_v2_114.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_113_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_16();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2109872547", "2109872547", "UNI42_010_B10", "box_OutputOrder_v2_113.Out", "box_ActivityRetry_16.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_73_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_73;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1122515918", "1122515918", "UNI42_010_B10", "box_Delay_v5_73.TimeElapsed", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_57();
    l0 = self.box_MultipleOR_59;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1046124712", "1046124712", "UNI42_010_B10", "box_MultipleOR_59.Out", "box_Compare_Boolean_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_200_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_197();
    l0 = self.box_OnceOnly_v3_200;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1891493944", "1891493944", "UNI42_010_B10", "box_OnceOnly_v3_200.Out", "box_SetContextualStrategy_197.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Follow_NPC_Vehicle_v6_2();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1037029950", "1037029950", "UNI42_010_B10", "box_OutputOrder_v2_31.Out", "box_Brick_Follow_NPC_Vehicle_v6_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_52();
    l0 = self.box_ProximityRadiusListener_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|903501339", "903501339", "UNI42_010_B10", "box_OutputOrder_v2_31.Out", "box_ProximityRadiusListener_v3_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|554196379", "554196379", "UNI42_010_B10", "box_OutputOrder_v2_31.Out", "box_OutputOrder_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_28_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_68();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2039240656", "2039240656", "UNI42_010_B10", "box_GetPlayerGroup_v2_28.Out", "box_FastTravelModifier_v2_68.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_125();
    l0 = self.box_PlayDialog_v6_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|101293029", "101293029", "UNI42_010_B10", "box_OutputOrder_v2_127.Out", "box_PlayDialog_v6_125.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_127_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_126();
    l0 = self.box_Delay_v5_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|852543325", "852543325", "UNI42_010_B10", "box_OutputOrder_v2_127.Out", "box_Delay_v5_126.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_126_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_Delay_v5_126;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1684014036", "1684014036", "UNI42_010_B10", "box_Delay_v5_126.TimeElapsed", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_14();
    l0 = self.box_VehicleDamageListener_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|298459344", "298459344", "UNI42_010_B10", "box_OutputOrder_v2_22.Out", "box_VehicleDamageListener_v2_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_18();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2087378447", "2087378447", "UNI42_010_B10", "box_OutputOrder_v2_22.Out", "box_VehicleModifier_v2_18.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(6, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_26();
    l0 = self.box_EntityStatusListener_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1604787833", "1604787833", "UNI42_010_B10", "box_OutputOrder_v2_22.Out", "box_EntityStatusListener_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_201_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_203;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1586042669", "1586042669", "UNI42_010_B10", "box_Simple_Node_201.Out", "box_MultipleOR_203.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_116();
    l0 = self.box_Delay_v5_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|527793740", "527793740", "UNI42_010_B10", "box_OutputOrder_v2_8.Out", "box_Delay_v5_116.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Follow_NPC_Vehicle_v6_48();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1990220311", "1990220311", "UNI42_010_B10", "box_OutputOrder_v2_8.Out", "box_Brick_Follow_NPC_Vehicle_v6_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_44();
    l0 = self.box_ProximityRadiusListener_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|229677413", "229677413", "UNI42_010_B10", "box_OutputOrder_v2_8.Out", "box_ProximityRadiusListener_v3_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_66_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_66;
    l1 = self.box_OnceOnly_v3_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1525373583", "1525373583", "UNI42_010_B10", "box_MultipleOR_66.Out", "box_OnceOnly_v3_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_86_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_86;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|594148764", "594148764", "UNI42_010_B10", "box_PlayDialog_v6_86.Finished", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_86_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_86;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|558694099", "558694099", "UNI42_010_B10", "box_PlayDialog_v6_86.FinishedInterrupted", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OnceOnly_v3_142_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_39();
    l0 = self.box_OnceOnly_v3_142;
    l1 = self.box_PlayDialog_v6_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1528354240", "1528354240", "UNI42_010_B10", "box_OnceOnly_v3_142.Out", "box_PlayDialog_v6_39.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_191_Closed()
    local l0, l1;
    l0 = self.box_Gate_v3_191;
    l1 = self.box_MultipleOR_203;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2065051354", "2065051354", "UNI42_010_B10", "box_Gate_v3_191.Closed", "box_MultipleOR_203.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_191_Out()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_191();
    l0 = self.box_Gate_v3_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|890607508", "890607508", "UNI42_010_B10", "box_Gate_v3_191.Out", "box_Gate_v3_191.Close", l0:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_138_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_36();
    l0 = self.box_OnceOnly_v3_138;
    l1 = self.box_PlayDialog_v6_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|596327632", "596327632", "UNI42_010_B10", "box_OnceOnly_v3_138.Out", "box_PlayDialog_v6_36.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_130_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_93();
    l0 = self.box_MultipleOR_130;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|801466866", "801466866", "UNI42_010_B10", "box_MultipleOR_130.Out", "box_AddActivityObjective_v2_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_70();
    l0 = self.box_Delay_v5_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|353848032", "353848032", "UNI42_010_B10", "box_OutputOrder_v2_71.Out", "box_Delay_v5_70.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_86();
    l0 = self.box_PlayDialog_v6_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1124375960", "1124375960", "UNI42_010_B10", "box_OutputOrder_v2_71.Out", "box_PlayDialog_v6_86.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_56_Out()
    self:OnExit_box_SetBoolean_v2_56_Out();
end;

function export:f_box_SetContextualStrategy_217_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_216();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1274952455", "1274952455", "UNI42_010_B10", "box_SetContextualStrategy_217.Out", "box_UseContextualActionModifier_v3_216.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_237();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1607396873", "1607396873", "UNI42_010_B10", "box_OutputOrder_v2_61.Out", "box_Simple_Node_237.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|962817604", "962817604", "UNI42_010_B10", "box_OutputOrder_v2_61.Out", "box_ActivityEnd_6.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_139_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_139;
    l1 = self.box_OnceOnly_v3_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|274680957", "274680957", "UNI42_010_B10", "box_Gate_v3_139.Out", "box_OnceOnly_v3_140.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_237()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|@DisableHurkWatch");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_237_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|@DisablePlat1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_234_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|@DisablePlat2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_235_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|@DisablePlat3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_236_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|@DisableProxListen1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_51_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|@DisableProxListen2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_55_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_232()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|@GoEnd");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_232_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|@GoPlat2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_229_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|@GoPlat3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_230_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|@GoPlat4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_231_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|@KillAllDialog");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_143_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_233()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|@PlatUpdate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_233_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|@StartPlatformSetup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_119_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|@Success1stPhase");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_81_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|@TruckSetup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_117_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1812426");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_123_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 2,
        -- SeatType,
        [3] = 2,
        -- vehicleEntity,
        [4] = self.eHurkTruck,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|64563898");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_180_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|102981837");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = self.eHurkTruck,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|120614106");
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

function export:OnEnter_box_AddActivityObjective_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|173151701");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_93_Out,
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

function export:OnEnter_box_ProximityTrigger_v2_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.GFH_Junior,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105326014048561214",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|200052855");
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

function export:OnEnter_box_ParticleSystem_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|219899880");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103707302012932751",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|252280906");
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

function export:OnEnter_box_EndActivityObjective_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|281319023");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_106_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI55_010_B60_OBJ_Secure",
            id = "552048",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|307558223");
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
                [0] = self.f_box_OutputOrder_v2_221_Out_0,
                [1] = self.f_box_OutputOrder_v2_221_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|311721014");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_215_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_125()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3301375815",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_112()
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

function export:OnEnter_box_Delay_v5_58()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|407132250");
    l0:SetConnections({
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
        [4] = self.eHurkTruck,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_39()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1208034139",
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|444326190");
    l0:SetConnections({
        -- Down,
        [2] = self.f_box_GetHealthState_92_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_92_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|444337209");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_210_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|484047160");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_122_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 1,
        -- SeatType,
        [3] = 2,
        -- vehicleEntity,
        [4] = self.eHurkTruck,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|508858886");
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

function export:OnEnter_box_OutputOrder_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|518745334");
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

function export:OnEnter_box_GroupSizeListener_v5_76()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#C29DF9B1",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|561836400");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_192_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_220()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|599553375");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_179_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_179_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.PlayerPlat,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|600180023");
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

function export:OnEnter_box_ActivityEnd_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|600728339");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_14()
    local params;
    params = {
        -- Vehicle,
        [0] = self.eHurkTruck,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|642523276");
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
                [0] = self.f_box_OutputOrder_v2_85_Out_0,
                [1] = self.f_box_OutputOrder_v2_85_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|651062996");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_193_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104443658123115192",
        -- Group,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|657466109");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_105_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI55_010_B60_OBJ_Secure",
            id = "552048",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_90()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|692331289");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_208_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_208_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104443819228406624",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|696617884");
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

function export:OnEnter_box_PlayDialog_v6_29()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3426588367",
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_98()
    local params, l0;
    l0 = self.box_ProximityRadiusListener_v3_96;
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
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|736652315");
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
                [0] = self.f_box_OutputOrder_v2_223_Out_0,
                [1] = self.f_box_OutputOrder_v2_223_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|745411060");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_209_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104443787286683599",
        -- Group,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|761709741");
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
                [0] = self.f_box_OutputOrder_v2_226_Out_0,
                [1] = self.f_box_OutputOrder_v2_226_Out_1,
                [2] = self.f_box_OutputOrder_v2_226_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_202()
    local params;
    DrawTextToScreen("Comment: Wait For Player To Be Near", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityRadiusListener_v3')-- Comment: Wait For Player To Be Near");
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Player_Group,
        -- id2,
        [3] = self.GFH_Junior,
        -- nearZone,
        [4] = 15,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_111()
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
        [3] = "2104355775309739260",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_175()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.GFH_Junior,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105326135544976916",
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
        [2] = "2099919886133236970",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|878945127");
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
                [0] = self.f_box_OutputOrder_v2_225_Out_0,
                [1] = self.f_box_OutputOrder_v2_225_Out_1,
            },
            count = 2,
        },
    });
    params = {
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

function export:OnEnter_box_PlayDialog_v6_38()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "427679812",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_95()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Player_Group,
        -- farZone,
        [2] = 120,
        -- id2,
        [3] = self.GFH_Junior,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Follow_NPC_Vehicle_v6_2()
    local params;
    params = {
        -- bRequiresObjective,
        [0] = true,
        -- Destination,
        [1] = "2103113857223384667",
        -- fDistanceFail,
        [2] = 180,
        -- fDistanceSuccess,
        [3] = 10,
        -- fDistanceWarning,
        [4] = 120,
        -- FollowTarget,
        [5] = self.GFH_Junior,
        -- IsPersistentCharacter,
        [6] = false,
        -- oObjective,
        [7] = {
            section = "Objectives",
            item = "UNI42_010_B20_GetIntoGurkha",
            id = "550390",
        },
        -- opt_Target_MobileMarker,
        [9] = "2103114750381529725",
        -- oWarningMsg,
        [10] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj4",
            id = "875092",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1024593355");
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

function export:OnEnter_box_EntityStatusListener_26()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103707302012932751",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1063494676");
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
                [0] = self.f_box_OutputOrder_v2_227_Out_0,
                [1] = self.f_box_OutputOrder_v2_227_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_174()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.GFH_Junior,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105326127215088673",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1074181337");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_216_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104443996135760754",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_188()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.GFH_Junior,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104355775309739260",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1096926649");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_205_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_205_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.PlayerPlat,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1108671067");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_15_Out,
    });
    params = {
        -- Entity,
        [0] = "2099919886133236970",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_44()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Player_Group,
        -- farZone,
        [2] = 192,
        -- id2,
        [3] = self.GFH_Junior,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_212()
    local params;
    DrawTextToScreen("Comment: Wait For Player To Be Near", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityRadiusListener_v3')-- Comment: Wait For Player To Be Near");
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Player_Group,
        -- id2,
        [3] = self.GFH_Junior,
        -- nearZone,
        [4] = 15,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Follow_NPC_Vehicle_v6_48()
    local params;
    params = {
        -- bRequiresObjective,
        [0] = true,
        -- Destination,
        [1] = "2103113804291268152",
        -- fDistanceFail,
        [2] = 192,
        -- fDistanceSuccess,
        [3] = 5,
        -- fDistanceWarning,
        [4] = 40,
        -- FollowTarget,
        [5] = self.GFH_Junior,
        -- IsPersistentCharacter,
        [6] = false,
        -- oObjective,
        [7] = {
            section = "Objectives",
            item = "UNI42_010_B10_FindView",
            id = "841062",
        },
        -- opt_Target_MobileMarker,
        [9] = "2101920404521124558",
        -- oWarningMsg,
        [10] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj4",
            id = "875092",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_124()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_184()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.GFH_Junior,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104355707362014434",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1168533155");
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
                [0] = self.f_box_OutputOrder_v2_228_Out_0,
                [1] = self.f_box_OutputOrder_v2_228_Out_1,
                [2] = self.f_box_OutputOrder_v2_228_Out_2,
                [3] = self.f_box_OutputOrder_v2_228_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1207957143");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_75_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_76;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1214879850");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_198_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_198_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104443894824444777",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1237434758");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_87_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1245754984");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_187_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1247053868");
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
                [0] = self.f_box_OutputOrder_v2_83_Out_0,
                [1] = self.f_box_OutputOrder_v2_83_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_97()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Player_Group,
        -- id2,
        [3] = self.GFH_Junior,
        -- nearZone,
        [4] = 50,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_60()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1266621240");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_120_Locked,
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
        [4] = self.eHurkTruck,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_36()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2420246944",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_34()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "100313855",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1309915689");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_214_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_214_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.PlayerPlat,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_4()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103705036937783522",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_186()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.GFH_Junior,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104355672412976341",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_190()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.GFH_Junior,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104355738796225775",
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
        [2] = "2105032969184893909",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1375875244");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_197_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104443881553666916",
        -- Group,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1376880362");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_206_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_204()
    local params;
    DrawTextToScreen("Comment: Wait For Player To Be Near", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityRadiusListener_v3')-- Comment: Wait For Player To Be Near");
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Player_Group,
        -- id2,
        [3] = self.GFH_Junior,
        -- nearZone,
        [4] = 15,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_52()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Player_Group,
        -- farZone,
        [2] = 180,
        -- id2,
        [3] = self.GFH_Junior,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_178()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104355775309739260",
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1419689252");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_68_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1430387882");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_47_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104356373346202771",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1441948800");
    l0:SetConnections({
        -- OnSetAsUnusable,
        [6] = self.f_box_VehicleModifier_v2_18_OnSetAsUnusable,
    });
    params = {
        -- targets,
        [0] = self.eHurkTruck,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_177()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104355738796225775",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1446121532");
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

function export:OnEnter_box_Gate_v3_141()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_96()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Player_Group,
        -- farZone,
        [2] = 90,
        -- id2,
        [3] = self.GFH_Junior,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_BindMarkerOverHead_v2_89()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- eMobileMarker,
        [1] = "2101920404521124558",
        -- eNPC,
        [2] = self.GFH_Junior,
        -- fHeight,
        [3] = 0.45,
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
        [2] = "2103705036937783522",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1502845020");
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

function export:OnEnter_box_Simple_Node_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1508881631");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_67_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1529485093");
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

function export:OnEnter_box_Gate_v3_135()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1540085545");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_10_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2101920404521124558",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI42_010_B10_FindView",
            id = "841062",
        },
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1547391548");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1548114634");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_181_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104355707362014434",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1574558133");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_196()
    local params;
    DrawTextToScreen("Comment: Wait For Player To Be Near", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityRadiusListener_v3')-- Comment: Wait For Player To Be Near");
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Player_Group,
        -- id2,
        [3] = self.GFH_Junior,
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_32()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3909714425",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1618237327");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_183_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104356297574003851",
        -- Group,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1648076407");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_185_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_185_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104356384851178647",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_222()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1691788952");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_194_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_194_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104443680633944765",
        -- Entity,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1729691462");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_129_Out,
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

function export:OnEnter_box_Gate_v3_131()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_133()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1759188782");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_64_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1792447823");
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

function export:OnEnter_box_VehicleSeatModifier_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1808293547");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_20_Locked,
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
        [4] = self.eHurkTruck,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_176()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104355672412976341",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1819657204");
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
                [0] = self.f_box_OutputOrder_v2_182_Out_0,
                [1] = self.f_box_OutputOrder_v2_182_Out_1,
                [2] = self.f_box_OutputOrder_v2_182_Out_2,
                [3] = self.f_box_OutputOrder_v2_182_Out_3,
                [4] = self.f_box_OutputOrder_v2_182_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_33()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.GFH_Junior,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105326119461917332",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1858841626");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_211_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_211_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.PlayerPlat,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_116()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1867475318");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_57_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_57_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bHurkDown,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1873089280");
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
        [8] = "UNI42_010_B10 Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1899472744");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_70()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_46()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015206727351417",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_224()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_108()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105032969184893909",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1930749979");
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
                [0] = self.f_box_OutputOrder_v2_113_Out_0,
                [1] = self.f_box_OutputOrder_v2_113_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_73()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|1994829632");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
                [2] = self.f_box_OutputOrder_v2_31_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2013122273");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2016892393");
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
                [0] = self.f_box_OutputOrder_v2_127_Out_0,
                [1] = self.f_box_OutputOrder_v2_127_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_126()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2026786954");
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

function export:OnEnter_box_Simple_Node_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2027268421");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_201_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2036883893");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_114()
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

function export:OnEnter_box_PlayDialog_v6_1()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2420079603",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_86()
    local params;
    params = {
        -- Group,
        [0] = self.GFH_Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3604938866",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_191()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2082175642");
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

function export:OnEnter_box_SetBoolean_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2085210885");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_56_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2098281877");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_217_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104755095005592384",
        -- Group,
        [1] = self.GFH_Junior,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_110()
    local params, l0;
    DrawTextToScreen("Comment: heavy spawned", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: heavy spawned");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2144192938");
    l0:SetConnections({
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_B10.domino|@UNI42_010_B10|2146040518");
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

function export:OnEnter_box_Gate_v3_139()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_180_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.PlayerPlat = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_192_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.PlayerPlat = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eHurkTruck = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_187_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.PlayerPlat = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_96_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_96;
    l1 = self.box_DisplayCustomUIMsg_v5_98;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_96_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_96;
    l1 = self.box_DisplayCustomUIMsg_v5_98;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_96_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_96;
    l1 = self.box_DisplayCustomUIMsg_v5_98;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_96_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_96;
    l1 = self.box_DisplayCustomUIMsg_v5_98;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_181_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.PlayerPlat = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_46_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_46;
    self.GFH_Junior = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Player_Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_56_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bHurkDown = l0:GetDataOutValue(0);
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
