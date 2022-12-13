LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni45/uni45_010_b05.domino
-- User graph: UNI45_010_B05
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ForceExitVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsVehicleAvailable_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_010_B05.UNI45_010_B05_Conversation.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1870363567.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1075028454.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2204388958.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1378423055.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3363197938.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2826171624.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1184313607.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2291045828.bnk]], "CSoundResource");
        cboxRes:LoadResource([[443040197.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2950919328.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_010_B05.UNI45_010_B05.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Interrupted",
                delayed = true,
            },
            [2] = {
                name = "Restarted",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "Mandatory",
                type = "bool",
            },
            [2] = {
                name = "SoundId",
                type = "Sound",
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
    metadataTable[GetPathID("Domino/System/IsVehicleAvailable_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "EngineFail",
                delayed = false,
            },
            [2] = {
                name = "Flipped",
                delayed = false,
            },
            [3] = {
                name = "OK",
                delayed = false,
            },
            [4] = {
                name = "Underwater",
                delayed = false,
            },
            [5] = {
                name = "Unusable",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "Vehicle",
                type = "entity",
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_010_B05.UNI45_010_B05_Conversation.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
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
                name = "e_DialogPlayedBy",
                type = "entity",
            },
            [1] = {
                name = "s_SoundID",
                type = "Sound",
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
    self._name = "UNI45_010_B05";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05";
    self.gPlayerGroup = nil;
    self.eDarnell = nil;
    self.box_ProximityRadiusListener_v3_68 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|10556312");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_68_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_68_SomeoneFar,
    });
    self.box_OnceOnly_v3_102 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|126667344");
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
                [0] = self.f_box_OnceOnly_v3_102_Out_0,
            },
            count = 2,
        },
    });
    self.box_UNI45_010_B05_Conversation_91 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_010_B05.UNI45_010_B05_Conversation.debug.lua");
    l0 = self.box_UNI45_010_B05_Conversation_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI45_010_B05_Conversation_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|284560823");
    l0:SetConnections({
    });
    self.box_VehicleListener_v3_19 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|286351183");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_19_OnSit,
    });
    self.box_PlayDialog_v6_38 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|286459249");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_38_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_38_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_38_QueueCancelled,
    });
    self.box_PlayDialog_v6_101 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|298677264");
    l0:SetConnections({
    });
    self.box_MultipleOR_84 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|327762987");
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
        [0] = self.f_box_MultipleOR_84_Out,
    });
    self.box_UNI45_010_B05_Conversation_88 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_010_B05.UNI45_010_B05_Conversation.debug.lua");
    l0 = self.box_UNI45_010_B05_Conversation_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI45_010_B05_Conversation_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|340447722");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI45_010_B05_Conversation_88_Out,
    });
    self.box_Delay_v5_55 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|345969268");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_55_TimeElapsed,
    });
    self.box_UNI45_010_B05_Conversation_89 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_010_B05.UNI45_010_B05_Conversation.debug.lua");
    l0 = self.box_UNI45_010_B05_Conversation_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI45_010_B05_Conversation_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|349941812");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI45_010_B05_Conversation_89_Out,
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|350269596");
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
        [0] = self.f_box_MultipleOR_30_Out,
    });
    self.box_RemoveEntity_v2_46 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|356895786");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_46_Out,
    });
    self.box_EntityStatusListener_99 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|381606879");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_99_Loaded,
    });
    self.box_RemoveEntity_v2_57 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|387352216");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_57_Out,
    });
    self.box_ProximityRadiusListener_v3_25 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|419339417");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_25_SomeoneNear,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|425179468");
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
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|441269418");
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_VehicleListener_v3_108 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|453382531");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_108_Enabled,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_108_OnSit,
    });
    self.box_OnceOnly_v3_58 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|471609525");
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
                [0] = self.f_box_OnceOnly_v3_58_Out_0,
            },
            count = 2,
        },
    });
    self.box_VehicleListener_v3_76 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|553347880");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_76_OnSit,
    });
    self.box_RemoveEntity_v2_47 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|558883759");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_47_Out,
    });
    self.box_UNI45_010_B05_Conversation_90 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_010_B05.UNI45_010_B05_Conversation.debug.lua");
    l0 = self.box_UNI45_010_B05_Conversation_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI45_010_B05_Conversation_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|598243005");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI45_010_B05_Conversation_90_Out,
    });
    self.box_RemoveEntity_v2_48 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|636544423");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_48_Out,
    });
    self.box_UNI45_010_B05_Conversation_39 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_010_B05.UNI45_010_B05_Conversation.debug.lua");
    l0 = self.box_UNI45_010_B05_Conversation_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI45_010_B05_Conversation_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|705033526");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_32 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|738034802");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_32_SomeoneFar,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|849462465");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_RemoveEntity_v2_49 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|860576096");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_49_Out,
    });
    self.box_PlayDialog_v6_105 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|861720142");
    l0:SetConnections({
    });
    self.box_Delay_v5_67 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|958728913");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_67_TimeElapsed,
    });
    self.box_MultipleOR_100 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1006943125");
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
    self.box_CoopActivePlayers_74 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1020351026");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_74_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_74_PlayerAdded,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_74_TwoPlayers,
    });
    self.box_HealthListener_v6_21 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1035451596");
    l0:SetConnections({
        -- Revived,
        [7] = self.f_box_HealthListener_v6_21_Revived,
    });
    self.box_PlayDialog_v6_42 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1293089014");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_5 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1320848049");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_5_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_5_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_5_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_5_LoadedIdReceived,
    });
    self.box_VehicleListener_v3_35 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1345371230");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_35_Enabled,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_35_OnSit,
    });
    self.box_ActivityInitialized_14 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1421856012");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_14_Out,
    });
    self.box_Random_60 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1424253549");
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
                [0] = self.f_box_Random_60_Output_0,
                [1] = self.f_box_Random_60_Output_1,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1425967431");
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
    self.box_Random_107 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1453730419");
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
                [0] = self.f_box_Random_107_Output_0,
                [1] = self.f_box_Random_107_Output_1,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_54 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1485290163");
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
        [0] = self.f_box_MultipleOR_54_Out,
    });
    self.box_Delay_v5_63 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1487396439");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_63_TimeElapsed,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1555175747");
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
        [0] = self.f_box_MultipleOR_18_Out,
    });
    self.box_Brick_PlayDialog_Relax_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1589986457");
    l0:SetConnections({
    });
    self.box_VehicleDamageListener_v2_9 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1622566772");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_VehicleDamageListener_v2_9_Enabled,
        -- StateChange,
        [10] = self.f_box_VehicleDamageListener_v2_9_StateChange,
    });
    self.box_PlayDialog_v6_78 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1650861177");
    l0:SetConnections({
    });
    self.box_Brick_Follow_NPC_Vehicle_v6_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Follow_NpcVehicle.Brick_Follow_NPC_Vehicle_v6.debug.lua");
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Follow_NPC_Vehicle_v6_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1705209332");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Brick_Follow_NPC_Vehicle_v6_2_Started,
        -- Success,
        [2] = self.f_box_Brick_Follow_NPC_Vehicle_v6_2_Success,
        -- Target_KilledDestroyed,
        [3] = self.f_box_Brick_Follow_NPC_Vehicle_v6_2_Target_KilledDestroyed,
        -- Target_TooFar,
        [4] = self.f_box_Brick_Follow_NPC_Vehicle_v6_2_Target_TooFar,
    });
    self.box_MultipleOR_103 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1712329937");
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
        [0] = self.f_box_MultipleOR_103_Out,
    });
    self.box_Delay_v5_59 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1725180850");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_59_TimeElapsed,
    });
    self.box_Delay_v5_77 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1739135059");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_77_TimeElapsed,
    });
    self.box_Delay_v5_72 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1745384457");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_72_TimeElapsed,
    });
    self.box_Gate_v3_11 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1745487551");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_11_Out,
    });
    self.box_RemoveEntity_v2_52 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1828026612");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_52_Out,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1849847057");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_UNI45_010_B05_Conversation_15 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_010_B05.UNI45_010_B05_Conversation.debug.lua");
    l0 = self.box_UNI45_010_B05_Conversation_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI45_010_B05_Conversation_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1871489484");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI45_010_B05_Conversation_15_Out,
    });
    self.box_Delay_v5_82 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1915795753");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_82_TimeElapsed,
    });
    self.box_Delay_v5_104 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1948307598");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_104_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_104_TimeElapsed,
    });
    self.box_VehicleListener_v3_75 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1994775060");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_75_OnSit,
    });
    self.box_BindMarkerOverHead_v2_44 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
    l0 = self.box_BindMarkerOverHead_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|2038156122");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BindMarkerOverHead_v2_44_Out,
    });
    self.box_Delay_v5_109 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|2095614237");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_109_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_109_TimeElapsed,
    });
    self.box_MultipleOR_64 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|2144678085");
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
        [0] = self.f_box_MultipleOR_64_Out,
    });
    self.box_OnceOnly_v3_17 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|2147363932");
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
                [0] = self.f_box_OnceOnly_v3_17_Out_0,
            },
            count = 2,
        },
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|464061968", "464061968", "UNI45_010_B05", "In", "box_OutputOrder_v2_8.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_110_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|548856896", "548856896", "UNI45_010_B05", "box_Simple_Node_110.Out", "box_MultipleOR_103.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_115_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_104();
    l0 = self.box_Delay_v5_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|981700995", "981700995", "UNI45_010_B05", "box_Simple_Node_115.Out", "box_Delay_v5_104.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_87_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|937649336", "937649336", "UNI45_010_B05", "box_Simple_Node_87.Out", "box_OutputOrder_v2_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_96_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1935973635", "1935973635", "UNI45_010_B05", "box_Simple_Node_96.Out", "box_MultipleOR_100.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_97_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|193509817", "193509817", "UNI45_010_B05", "box_Simple_Node_97.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_66_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|2072958589", "2072958589", "UNI45_010_B05", "box_Simple_Node_66.Out", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_68_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_67();
    l0 = self.box_ProximityRadiusListener_v3_68;
    l1 = self.box_Delay_v5_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|392751043", "392751043", "UNI45_010_B05", "box_ProximityRadiusListener_v3_68.Enabled", "box_Delay_v5_67.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_68_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_67();
    l0 = self.box_ProximityRadiusListener_v3_68;
    l1 = self.box_Delay_v5_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|872936519", "872936519", "UNI45_010_B05", "box_ProximityRadiusListener_v3_68.SomeoneFar", "box_Delay_v5_67.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_OnceOnly_v3_102_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UNI45_010_B05_Conversation_88();
    l0 = self.box_OnceOnly_v3_102;
    l1 = self.box_UNI45_010_B05_Conversation_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1894919707", "1894919707", "UNI45_010_B05", "box_OnceOnly_v3_102.Out", "box_UNI45_010_B05_Conversation_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_95_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_97();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|737942900", "737942900", "UNI45_010_B05", "box_IsEntityLoaded_v3_95.False", "box_Simple_Node_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_95_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|924305126", "924305126", "UNI45_010_B05", "box_IsEntityLoaded_v3_95.True", "box_OutputOrder_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_79_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1426099162", "1426099162", "UNI45_010_B05", "box_UseContextualActionModifier_v3_79.Disabled", "box_MultipleOR_100.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RadioModifier_v3_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1555766082", "1555766082", "UNI45_010_B05", "box_RadioModifier_v3_45.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_19_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_35();
    l0 = self.box_VehicleListener_v3_19;
    l1 = self.box_VehicleListener_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|333284536", "333284536", "UNI45_010_B05", "box_VehicleListener_v3_19.OnSit", "box_VehicleListener_v3_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_38_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_38;
    l1 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|767722366", "767722366", "UNI45_010_B05", "box_PlayDialog_v6_38.Finished", "box_MultipleOR_64.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_38_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_38;
    l1 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|208168397", "208168397", "UNI45_010_B05", "box_PlayDialog_v6_38.FinishedInterrupted", "box_MultipleOR_64.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_38_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_38;
    l1 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1533562518", "1533562518", "UNI45_010_B05", "box_PlayDialog_v6_38.QueueCancelled", "box_MultipleOR_64.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_UseContextualActionModifier_v3_24_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_63();
    l0 = self.box_Delay_v5_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|2126286697", "2126286697", "UNI45_010_B05", "box_UseContextualActionModifier_v3_24.Disabled", "box_Delay_v5_63.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_77();
    l0 = self.box_MultipleOR_84;
    l1 = self.box_Delay_v5_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1946355502", "1946355502", "UNI45_010_B05", "box_MultipleOR_84.Out", "box_Delay_v5_77.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UNI45_010_B05_Conversation_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI45_010_B05_Conversation_89();
    l0 = self.box_UNI45_010_B05_Conversation_88;
    l1 = self.box_UNI45_010_B05_Conversation_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1718428244", "1718428244", "UNI45_010_B05", "box_UNI45_010_B05_Conversation_88.Out", "box_UNI45_010_B05_Conversation_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_55_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_55;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|2131943383", "2131943383", "UNI45_010_B05", "box_Delay_v5_55.TimeElapsed", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UNI45_010_B05_Conversation_89_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI45_010_B05_Conversation_90();
    l0 = self.box_UNI45_010_B05_Conversation_89;
    l1 = self.box_UNI45_010_B05_Conversation_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|50259321", "50259321", "UNI45_010_B05", "box_UNI45_010_B05_Conversation_89.Out", "box_UNI45_010_B05_Conversation_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_30_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_30;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1203803856", "1203803856", "UNI45_010_B05", "box_MultipleOR_30.Out", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntity_v2_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_49();
    l0 = self.box_RemoveEntity_v2_46;
    l1 = self.box_RemoveEntity_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|953400490", "953400490", "UNI45_010_B05", "box_RemoveEntity_v2_46.Out", "box_RemoveEntity_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_41();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1889113187", "1889113187", "UNI45_010_B05", "box_OutputOrder_v2_12.Out", "box_GetHealthState_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_47();
    l0 = self.box_RemoveEntity_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1347736177", "1347736177", "UNI45_010_B05", "box_OutputOrder_v2_12.Out", "box_RemoveEntity_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_37_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_37_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1485587203", "1485587203", "UNI45_010_B05", "box_GetPlayerGroup_v2_37.Out", "box_OutputOrder_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_99_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_98();
    l0 = self.box_EntityStatusListener_99;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|342136890", "342136890", "UNI45_010_B05", "box_EntityStatusListener_99.Loaded", "box_VehicleModifier_v2_98.SetEngineBroken", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineBroken
    l1:Exec(11, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_57_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_51();
    l0 = self.box_RemoveEntity_v2_57;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|579766510", "579766510", "UNI45_010_B05", "box_RemoveEntity_v2_57.Out", "box_ActivityEnd_51.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_25_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_32();
    l0 = self.box_ProximityRadiusListener_v3_25;
    l1 = self.box_ProximityRadiusListener_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1019337928", "1019337928", "UNI45_010_B05", "box_ProximityRadiusListener_v3_25.SomeoneNear", "box_ProximityRadiusListener_v3_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_7_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_7;
    l1 = self.box_ActivityInitialized_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1139276945", "1139276945", "UNI45_010_B05", "box_MultipleOR_7.Out", "box_ActivityInitialized_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_10_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_10;
    l1 = self.box_OnceOnly_v3_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|2068838931", "2068838931", "UNI45_010_B05", "box_MultipleOR_10.Out", "box_OnceOnly_v3_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_108_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_109();
    l0 = self.box_VehicleListener_v3_108;
    l1 = self.box_Delay_v5_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1754593304", "1754593304", "UNI45_010_B05", "box_VehicleListener_v3_108.Enabled", "box_Delay_v5_109.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_VehicleListener_v3_108_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_109();
    l0 = self.box_VehicleListener_v3_108;
    l1 = self.box_Delay_v5_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1888094665", "1888094665", "UNI45_010_B05", "box_VehicleListener_v3_108.OnSit", "box_Delay_v5_109.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_OnceOnly_v3_58_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_58;
    l1 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1360958046", "1360958046", "UNI45_010_B05", "box_OnceOnly_v3_58.Out", "box_MultipleOR_103.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_22_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_29();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1659800107", "1659800107", "UNI45_010_B05", "box_UseContextualActionModifier_v3_22.Enabled", "box_UseContextualActionModifier_v3_29.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_110();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|928294805", "928294805", "UNI45_010_B05", "box_OutputOrder_v2_106.Out", "box_Simple_Node_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_28();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|888898665", "888898665", "UNI45_010_B05", "box_OutputOrder_v2_106.Out", "box_UseContextualActionModifier_v3_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_107();
    l0 = self.box_Random_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1839581898", "1839581898", "UNI45_010_B05", "box_OutputOrder_v2_106.Out", "box_Random_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_43_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|109136349", "109136349", "UNI45_010_B05", "box_ActivityObjectiveMarkerModifier_v3_43.Enabled", "box_PlayDialog_v6_38.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_76_OnSit()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_76;
    l1 = self.box_CoopActivePlayers_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1119356825", "1119356825", "UNI45_010_B05", "box_VehicleListener_v3_76.OnSit", "box_CoopActivePlayers_74.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_RemoveEntity_v2_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_52();
    l0 = self.box_RemoveEntity_v2_47;
    l1 = self.box_RemoveEntity_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|344856193", "344856193", "UNI45_010_B05", "box_RemoveEntity_v2_47.Out", "box_RemoveEntity_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UNI45_010_B05_Conversation_90_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI45_010_B05_Conversation_15();
    l0 = self.box_UNI45_010_B05_Conversation_90;
    l1 = self.box_UNI45_010_B05_Conversation_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|510417752", "510417752", "UNI45_010_B05", "box_UNI45_010_B05_Conversation_90.Out", "box_UNI45_010_B05_Conversation_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_57();
    l0 = self.box_RemoveEntity_v2_48;
    l1 = self.box_RemoveEntity_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|586689330", "586689330", "UNI45_010_B05", "box_RemoveEntity_v2_48.Out", "box_RemoveEntity_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_96();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1466321114", "1466321114", "UNI45_010_B05", "box_SetContextualStrategy_33.Out", "box_Simple_Node_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_24();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|328523404", "328523404", "UNI45_010_B05", "box_OutputOrder_v2_40.Out", "box_UseContextualActionModifier_v3_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|91172274", "91172274", "UNI45_010_B05", "box_OutputOrder_v2_40.Out", "box_OnceOnly_v3_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_32_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_46();
    l0 = self.box_ProximityRadiusListener_v3_32;
    l1 = self.box_RemoveEntity_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1154699006", "1154699006", "UNI45_010_B05", "box_ProximityRadiusListener_v3_32.SomeoneFar", "box_RemoveEntity_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_VehicleSeatModifier_v2_65_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_70();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1376652868", "1376652868", "UNI45_010_B05", "box_VehicleSeatModifier_v2_65.Unlocked", "box_ActivityEnd_70.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|411511238", "411511238", "UNI45_010_B05", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|443532716", "443532716", "UNI45_010_B05", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RemoveEntity_v2_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_31();
    l0 = self.box_RemoveEntity_v2_49;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|295437350", "295437350", "UNI45_010_B05", "box_RemoveEntity_v2_49.Out", "box_ActivityEnd_31.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_66();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1395230141", "1395230141", "UNI45_010_B05", "box_OutputOrder_v2_69.Out", "box_Simple_Node_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_68();
    l0 = self.box_ProximityRadiusListener_v3_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1516049460", "1516049460", "UNI45_010_B05", "box_OutputOrder_v2_69.Out", "box_ProximityRadiusListener_v3_68.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_IsVehicleAvailableBox_v2_34_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsVehicleAvailable_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|2055410131", "2055410131", "UNI45_010_B05", "box_IsVehicleAvailableBox_v2_34.Disabled", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_IsVehicleAvailableBox_v2_34_EngineFail()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsVehicleAvailable_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|71858508", "71858508", "UNI45_010_B05", "box_IsVehicleAvailableBox_v2_34.EngineFail", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_IsVehicleAvailableBox_v2_34_Flipped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsVehicleAvailable_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|900676492", "900676492", "UNI45_010_B05", "box_IsVehicleAvailableBox_v2_34.Flipped", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsVehicleAvailableBox_v2_34_OK()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsVehicleAvailable_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_22();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|62441364", "62441364", "UNI45_010_B05", "box_IsVehicleAvailableBox_v2_34.OK", "box_UseContextualActionModifier_v3_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsVehicleAvailableBox_v2_34_Underwater()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsVehicleAvailable_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1425474497", "1425474497", "UNI45_010_B05", "box_IsVehicleAvailableBox_v2_34.Underwater", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IsVehicleAvailableBox_v2_34_Unusable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsVehicleAvailable_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|167838273", "167838273", "UNI45_010_B05", "box_IsVehicleAvailableBox_v2_34.Unusable", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_67_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = self.box_Delay_v5_67;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1878196234", "1878196234", "UNI45_010_B05", "box_Delay_v5_67.TimeElapsed", "box_OutputOrder_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_100_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_100;
    l1 = self.box_OnceOnly_v3_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1901842527", "1901842527", "UNI45_010_B05", "box_MultipleOR_100.Out", "box_OnceOnly_v3_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_74_OnePlayer()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_74;
    l1 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1897301113", "1897301113", "UNI45_010_B05", "box_CoopActivePlayers_74.OnePlayer", "box_MultipleOR_84.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_74_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_83();
    l0 = self.box_CoopActivePlayers_74;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|749035530", "749035530", "UNI45_010_B05", "box_CoopActivePlayers_74.PlayerAdded", "box_Simple_Node_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_74_TwoPlayers()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_82();
    l0 = self.box_CoopActivePlayers_74;
    l1 = self.box_Delay_v5_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|2108496698", "2108496698", "UNI45_010_B05", "box_CoopActivePlayers_74.TwoPlayers", "box_Delay_v5_82.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_21_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_55();
    l0 = self.box_HealthListener_v6_21;
    l1 = self.box_Delay_v5_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1060750182", "1060750182", "UNI45_010_B05", "box_HealthListener_v6_21.Revived", "box_Delay_v5_55.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ForceExitVehicle_v2_23_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_72();
    l0 = self.box_Delay_v5_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1052446816", "1052446816", "UNI45_010_B05", "box_ForceExitVehicle_v2_23.ForceExitted", "box_Delay_v5_72.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_79();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1437443082", "1437443082", "UNI45_010_B05", "box_OutputOrder_v2_73.Out", "box_UseContextualActionModifier_v3_79.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_115();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1783127359", "1783127359", "UNI45_010_B05", "box_OutputOrder_v2_73.Out", "box_Simple_Node_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_87();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1730672118", "1730672118", "UNI45_010_B05", "box_OutputOrder_v2_13.Out", "box_Simple_Node_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BindMarkerOverHead_v2_44();
    l0 = self.box_BindMarkerOverHead_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|384318334", "384318334", "UNI45_010_B05", "box_OutputOrder_v2_13.Out", "box_BindMarkerOverHead_v2_44.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_95();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|518751831", "518751831", "UNI45_010_B05", "box_OutputOrder_v2_13.Out", "box_IsEntityLoaded_v3_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_41_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_60();
    l0 = self.box_Random_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1011163011", "1011163011", "UNI45_010_B05", "box_GetHealthState_41.Healthy", "box_Random_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_75();
    l0 = self.box_VehicleListener_v3_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|2010482109", "2010482109", "UNI45_010_B05", "box_OutputOrder_v2_62.Out", "box_VehicleListener_v3_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_108();
    l0 = self.box_VehicleListener_v3_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1486874934", "1486874934", "UNI45_010_B05", "box_OutputOrder_v2_62.Out", "box_VehicleListener_v3_108.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|2140440347", "2140440347", "UNI45_010_B05", "box_OutputOrder_v2_53.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_21();
    l0 = self.box_HealthListener_v6_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1775284546", "1775284546", "UNI45_010_B05", "box_OutputOrder_v2_53.Out", "box_HealthListener_v6_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_5_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_5_LoadedIdReceived();
    params = self:OnEnter_box_GetPlayerGroup_v2_37();
    l0 = self.box_CharacterLoadedIdListener_5;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1693963643", "1693963643", "UNI45_010_B05", "box_CharacterLoadedIdListener_5.LoadedIdReceived", "box_GetPlayerGroup_v2_37.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_35_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_11();
    l0 = self.box_VehicleListener_v3_35;
    l1 = self.box_Gate_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1555669022", "1555669022", "UNI45_010_B05", "box_VehicleListener_v3_35.Enabled", "box_Gate_v3_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_35_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_11();
    l0 = self.box_VehicleListener_v3_35;
    l1 = self.box_Gate_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1652794953", "1652794953", "UNI45_010_B05", "box_VehicleListener_v3_35.OnSit", "box_Gate_v3_11.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|26527301", "26527301", "UNI45_010_B05", "box_OutputOrder_v2_8.Out", "box_ActivityAcknowledgeGate_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_50();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|844070915", "844070915", "UNI45_010_B05", "box_OutputOrder_v2_8.Out", "box_VehicleSeatModifier_v2_50.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|319272910", "319272910", "UNI45_010_B05", "box_OutputOrder_v2_8.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_5();
    l0 = self.box_ActivityInitialized_14;
    l1 = self.box_CharacterLoadedIdListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|980784066", "980784066", "UNI45_010_B05", "box_ActivityInitialized_14.Out", "box_CharacterLoadedIdListener_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Random_60_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_42();
    l0 = self.box_Random_60;
    l1 = self.box_PlayDialog_v6_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|490182030", "490182030", "UNI45_010_B05", "box_Random_60.Output", "box_PlayDialog_v6_42.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_60_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_101();
    l0 = self.box_Random_60;
    l1 = self.box_PlayDialog_v6_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1547274162", "1547274162", "UNI45_010_B05", "box_Random_60.Output", "box_PlayDialog_v6_101.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_9();
    l0 = self.box_MultipleOR_6;
    l1 = self.box_VehicleDamageListener_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1502994829", "1502994829", "UNI45_010_B05", "box_MultipleOR_6.Out", "box_VehicleDamageListener_v2_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_56_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_48();
    l0 = self.box_RemoveEntity_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1059380894", "1059380894", "UNI45_010_B05", "box_UseContextualActionModifier_v3_56.Disabled", "box_RemoveEntity_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Random_107_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_78();
    l0 = self.box_Random_107;
    l1 = self.box_PlayDialog_v6_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1936175453", "1936175453", "UNI45_010_B05", "box_Random_107.Output", "box_PlayDialog_v6_78.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_107_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_105();
    l0 = self.box_Random_107;
    l1 = self.box_PlayDialog_v6_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|882555788", "882555788", "UNI45_010_B05", "box_Random_107.Output", "box_PlayDialog_v6_105.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_MultipleOR_54;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1908356837", "1908356837", "UNI45_010_B05", "box_MultipleOR_54.Out", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Follow_NPC_Vehicle_v6_2();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|110125113", "110125113", "UNI45_010_B05", "box_OutputOrder_v2_36.Out", "box_Brick_Follow_NPC_Vehicle_v6_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_25();
    l0 = self.box_ProximityRadiusListener_v3_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|813844374", "813844374", "UNI45_010_B05", "box_OutputOrder_v2_36.Out", "box_ProximityRadiusListener_v3_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_63_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceExitVehicle_v2_23();
    l0 = self.box_Delay_v5_63;
    l1 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|182731796", "182731796", "UNI45_010_B05", "box_Delay_v5_63.TimeElapsed", "box_ForceExitVehicle_v2_23.ForceExit", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceExit
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_MultipleOR_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1647556484", "1647556484", "UNI45_010_B05", "box_MultipleOR_18.Out", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_50_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_99();
    l0 = self.box_EntityStatusListener_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1658231283", "1658231283", "UNI45_010_B05", "box_VehicleSeatModifier_v2_50.Locked", "box_EntityStatusListener_99.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VehicleDamageListener_v2_9_Enabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_9;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1561762762", "1561762762", "UNI45_010_B05", "box_VehicleDamageListener_v2_9.Enabled", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_9_StateChange()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_9;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|550590157", "550590157", "UNI45_010_B05", "box_VehicleDamageListener_v2_9.StateChange", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_2_Started()
    local params, l0, l1;
    params = self:OnEnter_box_RadioModifier_v3_45();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_2;
    l1 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1988935872", "1988935872", "UNI45_010_B05", "box_Brick_Follow_NPC_Vehicle_v6_2.Started", "box_RadioModifier_v3_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_2_Success()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_56();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_2;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1110140013", "1110140013", "UNI45_010_B05", "box_Brick_Follow_NPC_Vehicle_v6_2.Success", "box_UseContextualActionModifier_v3_56.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_2_Target_KilledDestroyed()
    local l0, l1;
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_2;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|505472366", "505472366", "UNI45_010_B05", "box_Brick_Follow_NPC_Vehicle_v6_2.Target_KilledDestroyed", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_2_Target_TooFar()
    local l0, l1;
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_2;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1970638876", "1970638876", "UNI45_010_B05", "box_Brick_Follow_NPC_Vehicle_v6_2.Target_TooFar", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_103_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_59();
    l0 = self.box_MultipleOR_103;
    l1 = self.box_Delay_v5_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1258263921", "1258263921", "UNI45_010_B05", "box_MultipleOR_103.Out", "box_Delay_v5_59.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_59_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_33();
    l0 = self.box_Delay_v5_59;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1999393043", "1999393043", "UNI45_010_B05", "box_Delay_v5_59.TimeElapsed", "box_SetContextualStrategy_33.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_77_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = self.box_Delay_v5_77;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|21102512", "21102512", "UNI45_010_B05", "box_Delay_v5_77.TimeElapsed", "box_OutputOrder_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_72_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_72;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1211797346", "1211797346", "UNI45_010_B05", "box_Delay_v5_72.TimeElapsed", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_26();
    l0 = self.box_Gate_v3_11;
    l1 = self.box_Brick_PlayDialog_Relax_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|737876565", "737876565", "UNI45_010_B05", "box_Gate_v3_11.Out", "box_Brick_PlayDialog_Relax_26.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_61();
    l0 = self.box_RemoveEntity_v2_52;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|654178706", "654178706", "UNI45_010_B05", "box_RemoveEntity_v2_52.Out", "box_SetActivityFact_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsVehicleAvailableBox_v2_34();
    l0 = self.box_MultipleOR_16;
    l1 = Boxes[GetPathID("Domino/System/IsVehicleAvailable_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|814712838", "814712838", "UNI45_010_B05", "box_MultipleOR_16.Out", "box_IsVehicleAvailableBox_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI45_010_B05_Conversation_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI45_010_B05_Conversation_91();
    l0 = self.box_UNI45_010_B05_Conversation_15;
    l1 = self.box_UNI45_010_B05_Conversation_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1605031480", "1605031480", "UNI45_010_B05", "box_UNI45_010_B05_Conversation_15.Out", "box_UNI45_010_B05_Conversation_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_82_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_82;
    l1 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1651403077", "1651403077", "UNI45_010_B05", "box_Delay_v5_82.TimeElapsed", "box_MultipleOR_84.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetActivityFact_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_65();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|163629173", "163629173", "UNI45_010_B05", "box_SetActivityFact_61.Out", "box_VehicleSeatModifier_v2_65.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_104_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_68();
    l0 = self.box_Delay_v5_104;
    l1 = self.box_ProximityRadiusListener_v3_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|716918098", "716918098", "UNI45_010_B05", "box_Delay_v5_104.Stopped", "box_ProximityRadiusListener_v3_68.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_104_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_106();
    l0 = self.box_Delay_v5_104;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|134752488", "134752488", "UNI45_010_B05", "box_Delay_v5_104.TimeElapsed", "box_OutputOrder_v2_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_75_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_76();
    l0 = self.box_VehicleListener_v3_75;
    l1 = self.box_VehicleListener_v3_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1245896339", "1245896339", "UNI45_010_B05", "box_VehicleListener_v3_75.OnSit", "box_VehicleListener_v3_76.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_BindMarkerOverHead_v2_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_43();
    l0 = self.box_BindMarkerOverHead_v2_44;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|649844603", "649844603", "UNI45_010_B05", "box_BindMarkerOverHead_v2_44.Out", "box_ActivityObjectiveMarkerModifier_v3_43.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_109_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_104();
    l0 = self.box_Delay_v5_109;
    l1 = self.box_Delay_v5_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|239200573", "239200573", "UNI45_010_B05", "box_Delay_v5_109.Stopped", "box_Delay_v5_104.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_109_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_110();
    l0 = self.box_Delay_v5_109;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1848534115", "1848534115", "UNI45_010_B05", "box_Delay_v5_109.TimeElapsed", "box_Simple_Node_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_64_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_19();
    l0 = self.box_MultipleOR_64;
    l1 = self.box_VehicleListener_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|455226751", "455226751", "UNI45_010_B05", "box_MultipleOR_64.Out", "box_VehicleListener_v3_19.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_17_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UNI45_010_B05_Conversation_39();
    l0 = self.box_OnceOnly_v3_17;
    l1 = self.box_UNI45_010_B05_Conversation_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1266842486", "1266842486", "UNI45_010_B05", "box_OnceOnly_v3_17.Out", "box_UNI45_010_B05_Conversation_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|@nAssignCS");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_110_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|@nMainFlowStarted");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_115_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|@nPathManager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_87_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|@nStartConversationFallback");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_96_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|@nVehicleMissing");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_97_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|@nVehicleStuck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_66_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_68()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.eDarnell,
        -- farZone,
        [2] = 60,
        -- id2,
        [3] = "2104548653940104396",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|184337198");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_95_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_95_True,
    });
    params = {
        -- entityId,
        [0] = "2101190965592084434",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|199234396");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_79_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103898750316462623",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|217195916");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2101340248828032929",
        -- Entity,
        [1] = self.eDarnell,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|265127925");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_45_Out,
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
        -- TargetRadio,
        [5] = "2101190965592084434",
    };
    return params;
end;

function export:OnEnter_box_UNI45_010_B05_Conversation_91()
    local params;
    params = {
        -- e_DialogPlayedBy,
        [0] = self.eDarnell,
        -- s_SoundID,
        [1] = "1184313607",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_19()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = self.eDarnell,
        -- vehicle,
        [4] = "2101190965592084434",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_38()
    local params;
    params = {
        -- Group,
        [0] = self.eDarnell,
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3363197938",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_101()
    local params;
    params = {
        -- Group,
        [0] = self.eDarnell,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2950919328",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|301597806");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_24_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101340248828032929",
        -- Entity,
        [1] = self.eDarnell,
    };
    return params;
end;

function export:OnEnter_box_UNI45_010_B05_Conversation_88()
    local params;
    params = {
        -- e_DialogPlayedBy,
        [0] = self.eDarnell,
        -- s_SoundID,
        [1] = "2826171624",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_55()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_UNI45_010_B05_Conversation_89()
    local params;
    params = {
        -- e_DialogPlayedBy,
        [0] = self.eDarnell,
        -- s_SoundID,
        [1] = "1378423055",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_46()
    local params;
    params = {
        -- Group,
        [0] = "2101643994522998756",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|363167342");
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

function export:OnEnter_box_GetPlayerGroup_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|365972003");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_99()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103788739600871257",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_57()
    local params;
    params = {
        -- Group,
        [0] = "2101352795195062052",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_25()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- id2,
        [3] = "2104270687756639136",
        -- nearZone,
        [4] = 80,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_108()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.eDarnell,
        -- vehicle,
        [4] = "2101190965592084434",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|474575265");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_22_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101340248828032929",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|505732939");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2103788739600871257",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|509138768");
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
                [0] = self.f_box_OutputOrder_v2_106_Out_0,
                [1] = self.f_box_OutputOrder_v2_106_Out_1,
                [2] = self.f_box_OutputOrder_v2_106_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|535863876");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_43_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2102890606209553782",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI45_010_B05_OBJ",
            id = "657109",
        },
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_76()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2101190965592084434",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_47()
    local params;
    params = {
        -- Group,
        [0] = "2101643994522998756",
    };
    return params;
end;

function export:OnEnter_box_UNI45_010_B05_Conversation_90()
    local params;
    params = {
        -- e_DialogPlayedBy,
        [0] = self.eDarnell,
        -- s_SoundID,
        [1] = "1075028454",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_48()
    local params;
    params = {
        -- Group,
        [0] = "2101643994522998756",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|653696246");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_33_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103193893989307107",
        -- Group,
        [1] = self.eDarnell,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|679895295");
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

function export:OnEnter_box_UNI45_010_B05_Conversation_39()
    local params;
    params = {
        -- e_DialogPlayedBy,
        [0] = self.eDarnell,
        -- s_SoundID,
        [1] = "2204388958",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_32()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- farZone,
        [2] = 20,
        -- id2,
        [3] = self.eDarnell,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|741488561");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_65_Unlocked,
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
        [4] = "2101190965592084434",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_49()
    local params;
    params = {
        -- Group,
        [0] = "2101352795195062052",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_105()
    local params;
    params = {
        -- Group,
        [0] = self.eDarnell,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2950919328",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|871261183");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsVehicleAvailableBox_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsVehicleAvailable_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsVehicleAvailableBox_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|897329690");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IsVehicleAvailableBox_v2_34_Disabled,
        -- EngineFail,
        [1] = self.f_box_IsVehicleAvailableBox_v2_34_EngineFail,
        -- Flipped,
        [2] = self.f_box_IsVehicleAvailableBox_v2_34_Flipped,
        -- OK,
        [3] = self.f_box_IsVehicleAvailableBox_v2_34_OK,
        -- Underwater,
        [4] = self.f_box_IsVehicleAvailableBox_v2_34_Underwater,
        -- Unusable,
        [5] = self.f_box_IsVehicleAvailableBox_v2_34_Unusable,
    });
    params = {
        -- Vehicle,
        [0] = "2101190965592084434",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_67()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_21()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eDarnell,
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1041261581");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_23_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = self.eDarnell,
        -- vehicle,
        [2] = "2101190965592084434",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1084500688");
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

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1210234405");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
                [2] = self.f_box_OutputOrder_v2_13_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1228578777");
    l0:SetConnections({
        -- Healthy,
        [3] = self.f_box_GetHealthState_41_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.eDarnell,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1239954181");
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

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1242313560");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_42()
    local params;
    params = {
        -- Group,
        [0] = self.eDarnell,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1870363567",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015217089303917",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_35()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.gPlayerGroup,
        -- vehicle,
        [4] = "2101190965592084434",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1416974775");
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

function export:OnEnter_box_Random_60()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1428779047");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_56_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103899604962593046",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1435026176");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_107()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1487080832");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_63()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_26()
    local params;
    params = {
        -- Group,
        [0] = self.eDarnell,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "2291045828",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1617960643");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_50_Locked,
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
        [4] = "2101190965592084434",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_9()
    local params;
    params = {
        -- Vehicle,
        [0] = "2101190965592084434",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_78()
    local params;
    params = {
        -- Group,
        [0] = self.eDarnell,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1870363567",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1679378798");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Follow_NPC_Vehicle_v6_2()
    local params;
    params = {
        -- bRequiresObjective,
        [0] = true,
        -- Destination,
        [1] = "2103899646310041880",
        -- fDistanceFail,
        [2] = 200,
        -- fDistanceSuccess,
        [3] = 8,
        -- fDistanceWarning,
        [4] = 500,
        -- FollowTarget,
        [5] = self.eDarnell,
        -- IsPersistentCharacter,
        [6] = true,
        -- oObjective,
        [7] = {
            section = "Objective",
            item = "UNI45_010_B05_OBJ",
            id = "657109",
        },
        -- oWarningMsg,
        [10] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_FailWarning",
            id = "432251",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_59()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1734491118");
    l0:SetConnections({
    });
    params = {
        -- Success,
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
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_72()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_11()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1748294794");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_52()
    local params;
    params = {
        -- Group,
        [0] = "2101352795195062052",
    };
    return params;
end;

function export:OnEnter_box_UNI45_010_B05_Conversation_15()
    local params;
    params = {
        -- e_DialogPlayedBy,
        [0] = self.eDarnell,
        -- s_SoundID,
        [1] = "443040197",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_82()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1923407638");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2101340248828032929",
        -- Entity,
        [1] = self.eDarnell,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1944778087");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_61_Out,
    });
    params = {
        -- Fact,
        [0] = "UNI45_010_B05_PlayerDidNotFollow",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_104()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_75()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.eDarnell,
        -- vehicle,
        [4] = "2101190965592084434",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_010_B05.domino|@UNI45_010_B05|1996752806");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "--- UNI45_010_B05 - SCRIPT IS RUNNING ---",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_BindMarkerOverHead_v2_44()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- eMobileMarker,
        [1] = "2102890606209553782",
        -- eNPC,
        [2] = self.eDarnell,
        -- fHeight,
        [3] = 0.45,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_109()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_5_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_5;
    self.eDarnell = l0:GetDataOutValue(0);
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
