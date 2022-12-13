LUACA� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni38/uni38_010_b10.domino
-- User graph: UNI38_010_B10
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
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupIter.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProtectedLootItemModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI38/UNI38_010_B10.CIN_UNI38_010_B10.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1435692036.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3627983407.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1482654135.bnk]], "CSoundResource");
        cboxRes:LoadResource([[397778594.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI38/UNI38_010_B10.UNI38_010_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/StateListener_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Alert",
            },
            [1] = {
                name = "Combat",
            },
            [2] = {
                name = "Dead",
            },
            [3] = {
                name = "Disable",
            },
            [4] = {
                name = "Idle_RelaxCautious",
            },
            [5] = {
                name = "Investigate",
            },
        },
        controlInCount = 6,
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
                name = "MemberInState",
                delayed = true,
            },
            [3] = {
                name = "StateStart",
                delayed = true,
            },
            [4] = {
                name = "StateStop",
                delayed = true,
            },
        },
        controlOutCount = 5,
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
                name = "memberCountInState",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/CompareStrings.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_contains_B",
                delayed = false,
            },
            [1] = {
                name = "A_eq_B",
                delayed = false,
            },
            [2] = {
                name = "A_ncontains_B",
                delayed = false,
            },
            [3] = {
                name = "A_neq_B",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "A",
                type = "string",
            },
            [1] = {
                name = "B",
                type = "string",
            },
            [2] = {
                name = "IgnoreCase",
                type = "bool",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/GroupIter.lua")] = {
        stateless = false,
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
                name = "EndIter",
                delayed = true,
            },
            [1] = {
                name = "PawnIter",
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
                name = "entities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "entity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v2.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Player/RequestPhoneCall_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Canceled",
                delayed = true,
            },
            [1] = {
                name = "Completed",
                delayed = true,
            },
            [2] = {
                name = "Failed",
                delayed = true,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
            [4] = {
                name = "Pending",
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
                name = "CustomRingInSound",
                type = "Sound",
            },
            [1] = {
                name = "CustomRingOutSound",
                type = "Sound",
            },
            [2] = {
                name = "Delay",
                type = "float",
            },
            [3] = {
                name = "NoDeadair",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/ProtectedLootItemModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "AddProtectedLootItem",
            },
            [1] = {
                name = "RemoveProtectedLootItem",
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
                name = "LootItemID",
                type = "genericdb",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "RequiredQuantity",
                type = "int",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI38/UNI38_010_B10.CIN_UNI38_010_B10.debug.lua")] = {
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
    self._name = "UNI38_010_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10";
    self.eBear = nil;
    self.playerVehicle = nil;
    self.gp_players = nil;
    self.eHost = nil;
    self.box_Music_Quest_v2_61 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|40882053");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_77 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|72026195");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_77_Out,
    });
    self.box_ProximityRadiusListener_v3_20 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|127920890");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_20_SomeoneNear,
    });
    self.box_ActivityAcknowledgeGate_75 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|172604001");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_75_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_75_Reloaded,
    });
    self.box_RemoveEntity_v2_4 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|180163250");
    l0:SetConnections({
    });
    self.box_VehicleListener_v3_38 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|181869064");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_38_OnSit,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_38_OnStandUp,
    });
    self.box_TeleportPawns_45 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|213349435");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_90 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|280994869");
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
                [0] = self.f_box_OnceOnly_v3_90_Out_0,
            },
            count = 2,
        },
    });
    self.box_RequestPhoneCall_v2_24 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|572784086");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_24_Completed,
    });
    self.box_HealthListener_v6_11 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|591118114");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_11_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_11_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_11_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_11_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_11_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_11_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_11_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_11_Revived,
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|600017401");
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
    self.box_Music_Quest_v2_59 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|603334213");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_80 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|613523841");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_80_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_80_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_80_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_80_LoadedIdReceived,
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|631241222");
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
    self.box_OnceOnly_v3_9 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|640212782");
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
                [0] = self.f_box_OnceOnly_v3_9_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_83 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|651507730");
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
        [0] = self.f_box_MultipleOR_83_Out,
    });
    self.box_OnceOnly_v3_26 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|695993160");
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
                [0] = self.f_box_OnceOnly_v3_26_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_105 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|721388317");
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
                [0] = self.f_box_OnceOnly_v3_105_Out_0,
            },
            count = 1,
        },
    });
    self.box_Gate_v3_35 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|791752822");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_35_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_35_Out,
    });
    self.box_ProtectedLootItemModifier_v3_5 = cbox:CreateBox("Domino/System/ProtectedLootItemModifier_v3.lua");
    l0 = self.box_ProtectedLootItemModifier_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProtectedLootItemModifier_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|812693494");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ProtectedLootItemModifier_v3_5_Removed,
    });
    self.box_ProximityRadiusListener_v3_66 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|906297568");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_66_SomeoneNear,
    });
    self.box_MultipleOR_89 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|919969829");
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
        [0] = self.f_box_MultipleOR_89_Out,
    });
    self.box_Delay_v5_52 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|975620546");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_52_TimeElapsed,
    });
    self.box_Music_Quest_v2_34 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|975949999");
    l0:SetConnections({
    });
    self.box_Delay_v5_54 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|999722359");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_54_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_23 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1146882396");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_23_Enabled,
    });
    self.box_MultipleAND_v2_46 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1158293659");
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
        [0] = self.f_box_MultipleAND_v2_46_Out,
    });
    self.box_OnceOnly_v3_49 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1161514381");
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
                [0] = self.f_box_OnceOnly_v3_49_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_81 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1181879054");
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
                [0] = self.f_box_OnceOnly_v3_81_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_47 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1192287092");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_47_Out,
    });
    self.box_Delay_v5_3 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1197074165");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
    self.box_OnceOnly_v3_25 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1229413978");
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
                [0] = self.f_box_OnceOnly_v3_25_Out_0,
            },
            count = 2,
        },
    });
    self.box_GroupIter_50 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1244331521");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_50_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_50_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_50_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_50_Stopped,
    });
    self.box_Delay_v5_51 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1295654167");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_51_TimeElapsed,
    });
    self.box_Bind_v4_41 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1323619039");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_41_Bound,
    });
    self.box_StateListener_v2_27 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1371560275");
    l0:SetConnections({
        -- StateStop,
        [4] = self.f_box_StateListener_v2_27_StateStop,
    });
    self.box_PlayDialog_v6_18 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1396216442");
    l0:SetConnections({
    });
    self.box_CIN_UNI38_010_B10_6 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI38/UNI38_010_B10.CIN_UNI38_010_B10.debug.lua");
    l0 = self.box_CIN_UNI38_010_B10_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CIN_UNI38_010_B10_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1477554840");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CIN_UNI38_010_B10_6_Out,
    });
    self.box_Music_Quest_v2_62 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1655251445");
    l0:SetConnections({
    });
    self.box_Delay_v5_73 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1658029818");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_73_TimeElapsed,
    });
    self.box_MultipleOR_79 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1805445620");
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
    self.box_MultipleOR_78 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1899912530");
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
    self.box_InventoryItemModifier_8 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1969826287");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_8_Out,
    });
    self.box_EntityStatusListener_19 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|2071062044");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_19_Loaded,
    });
    self.box_ProximityTrigger_v2_16 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|2086127016");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_16_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_16_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_16_Leave,
    });
    self.box_ProtectedLootItemModifier_v3_12 = cbox:CreateBox("Domino/System/ProtectedLootItemModifier_v3.lua");
    l0 = self.box_ProtectedLootItemModifier_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProtectedLootItemModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|2127384211");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ProtectedLootItemModifier_v3_12_Added,
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|2136254124");
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
    self.box_ProximityTrigger_v2_21 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|2137301597");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_21_Enter,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|246020612", "246020612", "UNI38_010_B10", "In", "box_ActivityAcknowledgeGate_75.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|2006392476", "2006392476", "UNI38_010_B10", "OnLeaveZone", "box_OutputOrder_v2_60.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_58_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_35();
    l0 = self.box_Gate_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|940395152", "940395152", "UNI38_010_B10", "box_Simple_Node_58.Out", "box_Gate_v3_35.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_1_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_11();
    l0 = self.box_HealthListener_v6_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1167629461", "1167629461", "UNI38_010_B10", "box_Simple_Node_1.Out", "box_HealthListener_v6_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1824888768", "1824888768", "UNI38_010_B10", "box_Simple_Node_32.Out", "box_MultipleOR_63.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_ProximityTrigger_v2_16();
    l0 = self.box_ProximityTrigger_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|455713802", "455713802", "UNI38_010_B10", "box_Simple_Node_32.Out", "box_ProximityTrigger_v2_16.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_69_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1420340996", "1420340996", "UNI38_010_B10", "box_Simple_Node_69.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1783401423", "1783401423", "UNI38_010_B10", "box_Simple_Node_29.Out", "box_MultipleOR_63.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_70();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1104868613", "1104868613", "UNI38_010_B10", "box_Simple_Node_74.Out", "box_HealthModifier_v2_70.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_59();
    l0 = self.box_Music_Quest_v2_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|33207290", "33207290", "UNI38_010_B10", "box_Simple_Node_67.Out", "box_Music_Quest_v2_59.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_53_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_66();
    l0 = self.box_ProximityRadiusListener_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|820360051", "820360051", "UNI38_010_B10", "box_Simple_Node_53.Out", "box_ProximityRadiusListener_v3_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_68_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_82();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|996317637", "996317637", "UNI38_010_B10", "box_Simple_Node_68.Out", "box_GetHealthState_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_65_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_19();
    l0 = self.box_EntityStatusListener_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|690451550", "690451550", "UNI38_010_B10", "box_Simple_Node_65.Out", "box_EntityStatusListener_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_86_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_46();
    l0 = self.box_MultipleAND_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1767579371", "1767579371", "UNI38_010_B10", "box_Simple_Node_86.Out", "box_MultipleAND_v2_46.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_85_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_47();
    l0 = self.box_Gate_v3_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1615555393", "1615555393", "UNI38_010_B10", "box_Simple_Node_85.Out", "box_Gate_v3_47.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_4();
    l0 = self.box_RemoveEntity_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|775875605", "775875605", "UNI38_010_B10", "box_OutputOrder_v2_31.Out", "box_RemoveEntity_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_99();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|2143487597", "2143487597", "UNI38_010_B10", "box_OutputOrder_v2_31.Out", "box_EndActivityObjective_v2_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_88_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|407306147", "407306147", "UNI38_010_B10", "box_Compare_Strings_88.A_eq_B", "box_MultipleOR_89.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ActivityInitialized_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_22();
    l0 = self.box_ActivityInitialized_77;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1758472317", "1758472317", "UNI38_010_B10", "box_ActivityInitialized_77.Out", "box_GetLocalPlayer_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_20_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_20;
    l1 = self.box_OnceOnly_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1692173727", "1692173727", "UNI38_010_B10", "box_ProximityRadiusListener_v3_20.SomeoneNear", "box_OnceOnly_v3_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_28_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1023105390", "1023105390", "UNI38_010_B10", "box_ActivityObjectiveMarkerModifier_v3_28.Disabled", "box_OutputOrder_v2_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_75_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_75;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|923589352", "923589352", "UNI38_010_B10", "box_ActivityAcknowledgeGate_75.Acknowledged", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_75_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_75;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|11191684", "11191684", "UNI38_010_B10", "box_ActivityAcknowledgeGate_75.Reloaded", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleListener_v3_38_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_29();
    l0 = self.box_VehicleListener_v3_38;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|389591900", "389591900", "UNI38_010_B10", "box_VehicleListener_v3_38.OnSit", "box_Simple_Node_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_38_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_53();
    l0 = self.box_VehicleListener_v3_38;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1499693622", "1499693622", "UNI38_010_B10", "box_VehicleListener_v3_38.OnStandUp", "box_Simple_Node_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_27();
    l0 = self.box_StateListener_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1093636435", "1093636435", "UNI38_010_B10", "box_OutputOrder_v2_42.Out", "box_StateListener_v2_27.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_16();
    l0 = self.box_ProximityTrigger_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|660717936", "660717936", "UNI38_010_B10", "box_OutputOrder_v2_42.Out", "box_ProximityTrigger_v2_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_90_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = self.box_OnceOnly_v3_90;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1134497487", "1134497487", "UNI38_010_B10", "box_OnceOnly_v3_90.Out", "box_Simple_Node_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_22_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_22_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_55();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|543764251", "543764251", "UNI38_010_B10", "box_GetLocalPlayer_v2_22.Out", "box_GetPlayerGroup_v2_55.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_2_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1597239096", "1597239096", "UNI38_010_B10", "box_UseContextualActionModifier_v3_2.Disabled", "box_OutputOrder_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_2_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1100659024", "1100659024", "UNI38_010_B10", "box_UseContextualActionModifier_v3_2.ForceNormalEndCalled", "box_Delay_v5_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_72();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1268989761", "1268989761", "UNI38_010_B10", "box_OutputOrder_v2_10.Out", "box_AddActivityObjective_v2_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_65();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|616182506", "616182506", "UNI38_010_B10", "box_OutputOrder_v2_10.Out", "box_Simple_Node_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_67();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1677171424", "1677171424", "UNI38_010_B10", "box_OutputOrder_v2_10.Out", "box_Simple_Node_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_68();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|803404685", "803404685", "UNI38_010_B10", "box_OutputOrder_v2_10.Out", "box_Simple_Node_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_38();
    l0 = self.box_VehicleListener_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1955487494", "1955487494", "UNI38_010_B10", "box_Simple_Node_15.Out", "box_VehicleListener_v3_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_72_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_14();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1907691757", "1907691757", "UNI38_010_B10", "box_AddActivityObjective_v2_72.Out", "box_ActivityObjectiveMarkerModifier_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_24_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_24;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|655568032", "655568032", "UNI38_010_B10", "box_RequestPhoneCall_v2_24.Completed", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_11_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Strings_71();
    l0 = self.box_HealthListener_v6_11;
    l1 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1464970626", "1464970626", "UNI38_010_B10", "box_HealthListener_v6_11.Damaged", "box_Compare_Strings_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_11_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = self.box_HealthListener_v6_11;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|606345322", "606345322", "UNI38_010_B10", "box_HealthListener_v6_11.Downed", "box_Simple_Node_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_11_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_69();
    l0 = self.box_HealthListener_v6_11;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|2138243314", "2138243314", "UNI38_010_B10", "box_HealthListener_v6_11.Killed", "box_Simple_Node_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_66();
    l0 = self.box_MultipleOR_63;
    l1 = self.box_ProximityRadiusListener_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|463964158", "463964158", "UNI38_010_B10", "box_MultipleOR_63.Out", "box_ProximityRadiusListener_v3_66.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_85();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1052660280", "1052660280", "UNI38_010_B10", "box_OutputOrder_v2_36.Out", "box_Simple_Node_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1343121270", "1343121270", "UNI38_010_B10", "box_OutputOrder_v2_36.Out", "box_Delay_v5_73.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_36_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_24();
    l0 = self.box_RequestPhoneCall_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|114066466", "114066466", "UNI38_010_B10", "box_OutputOrder_v2_36.Out", "box_RequestPhoneCall_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_80_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_80_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_CharacterLoadedIdListener_80;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|352044635", "352044635", "UNI38_010_B10", "box_CharacterLoadedIdListener_80.LoadedIdReceived", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_34();
    l0 = self.box_Music_Quest_v2_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1512262532", "1512262532", "UNI38_010_B10", "box_OutputOrder_v2_33.Out", "box_Music_Quest_v2_34.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_64();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|378247778", "378247778", "UNI38_010_B10", "box_OutputOrder_v2_33.Out", "box_ActivityRetry_64.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_48_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_48;
    l1 = self.box_OnceOnly_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|255628662", "255628662", "UNI38_010_B10", "box_MultipleOR_48.Out", "box_OnceOnly_v3_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsPawnAlive_v2_39_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_91();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1387966497", "1387966497", "UNI38_010_B10", "box_IsPawnAlive_v2_39.False", "box_Print_v2_91.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v2_39_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|121340522", "121340522", "UNI38_010_B10", "box_IsPawnAlive_v2_39.True", "box_OnceOnly_v3_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_9_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_18();
    l0 = self.box_OnceOnly_v3_9;
    l1 = self.box_PlayDialog_v6_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|152620125", "152620125", "UNI38_010_B10", "box_OnceOnly_v3_9.Out", "box_PlayDialog_v6_18.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_69();
    l0 = self.box_MultipleOR_83;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|240052781", "240052781", "UNI38_010_B10", "box_MultipleOR_83.Out", "box_Simple_Node_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_55_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProtectedLootItemModifier_v3_12();
    l0 = self.box_ProtectedLootItemModifier_v3_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1543051278", "1543051278", "UNI38_010_B10", "box_GetPlayerGroup_v2_55.Out", "box_ProtectedLootItemModifier_v3_12.AddProtectedLootItem", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddProtectedLootItem
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1971638660", "1971638660", "UNI38_010_B10", "box_OutputOrder_v2_57.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CIN_UNI38_010_B10_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|2062762536", "2062762536", "UNI38_010_B10", "box_OutputOrder_v2_57.Out", "box_CIN_UNI38_010_B10_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_57_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_62();
    l0 = self.box_Music_Quest_v2_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1354994752", "1354994752", "UNI38_010_B10", "box_OutputOrder_v2_57.Out", "box_Music_Quest_v2_62.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_26_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_OnceOnly_v3_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|796627480", "796627480", "UNI38_010_B10", "box_OnceOnly_v3_26.Out", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_105_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_OnceOnly_v3_105;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|772148356", "772148356", "UNI38_010_B10", "box_OnceOnly_v3_105.Out", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_35_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_24();
    l0 = self.box_Gate_v3_35;
    l1 = self.box_RequestPhoneCall_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1767650544", "1767650544", "UNI38_010_B10", "box_Gate_v3_35.Closed", "box_RequestPhoneCall_v2_24.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_35_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_35;
    l1 = self.box_PhoneCallExclusivityModifier_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1741403318", "1741403318", "UNI38_010_B10", "box_Gate_v3_35.Out", "box_PhoneCallExclusivityModifier_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_ProtectedLootItemModifier_v3_5_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_8();
    l0 = self.box_ProtectedLootItemModifier_v3_5;
    l1 = self.box_InventoryItemModifier_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|176652161", "176652161", "UNI38_010_B10", "box_ProtectedLootItemModifier_v3_5.Removed", "box_InventoryItemModifier_8.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_ProximityRadiusListener_v3_66_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_52();
    l0 = self.box_ProximityRadiusListener_v3_66;
    l1 = self.box_Delay_v5_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|181117828", "181117828", "UNI38_010_B10", "box_ProximityRadiusListener_v3_66.SomeoneNear", "box_Delay_v5_52.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_40_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_41();
    l0 = self.box_Bind_v4_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|125785888", "125785888", "UNI38_010_B10", "box_ActivityObjectiveMarkerModifier_v3_40.Enabled", "box_Bind_v4_41.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_89_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_89;
    l1 = self.box_OnceOnly_v3_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1610380988", "1610380988", "UNI38_010_B10", "box_MultipleOR_89.Out", "box_OnceOnly_v3_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_47();
    l0 = self.box_Gate_v3_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|2129216954", "2129216954", "UNI38_010_B10", "box_OutputOrder_v2_43.Out", "box_Gate_v3_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_46();
    l0 = self.box_MultipleAND_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1489983364", "1489983364", "UNI38_010_B10", "box_OutputOrder_v2_43.Out", "box_MultipleAND_v2_46.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_52_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v2_39();
    l0 = self.box_Delay_v5_52;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1574322344", "1574322344", "UNI38_010_B10", "box_Delay_v5_52.TimeElapsed", "box_IsPawnAlive_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_54_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_7();
    l0 = self.box_Delay_v5_54;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|477109823", "477109823", "UNI38_010_B10", "box_Delay_v5_54.TimeElapsed", "box_ActivityRetry_7.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_28();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|706012963", "706012963", "UNI38_010_B10", "box_OutputOrder_v2_13.Out", "box_ActivityObjectiveMarkerModifier_v3_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1817589138", "1817589138", "UNI38_010_B10", "box_OutputOrder_v2_13.Out", "box_Simple_Node_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_23_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_PhoneCallExclusivityModifier_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|51381634", "51381634", "UNI38_010_B10", "box_PhoneCallExclusivityModifier_23.Enabled", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_46_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_46;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|542440741", "542440741", "UNI38_010_B10", "box_MultipleAND_v2_46.Out", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_49_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_OnceOnly_v3_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1372336366", "1372336366", "UNI38_010_B10", "box_OnceOnly_v3_49.Out", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_81_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_86();
    l0 = self.box_OnceOnly_v3_81;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|47864300", "47864300", "UNI38_010_B10", "box_OnceOnly_v3_81.Out", "box_Simple_Node_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_47_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_47;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1401769150", "1401769150", "UNI38_010_B10", "box_Gate_v3_47.Out", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_2();
    l0 = self.box_Delay_v5_3;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1980458443", "1980458443", "UNI38_010_B10", "box_Delay_v5_3.TimeElapsed", "box_UseContextualActionModifier_v3_2.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_25_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_51();
    l0 = self.box_OnceOnly_v3_25;
    l1 = self.box_Delay_v5_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|986560611", "986560611", "UNI38_010_B10", "box_OnceOnly_v3_25.Out", "box_Delay_v5_51.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupIter_50_EndIter()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_44();
    l0 = self.box_GroupIter_50;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|22348800", "22348800", "UNI38_010_B10", "box_GroupIter_50.EndIter", "box_Simple_Node_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupIter_50_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_50_PawnIter();
    params = self:OnEnter_box_TeleportPawns_45();
    l0 = self.box_GroupIter_50;
    l1 = self.box_TeleportPawns_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|227445831", "227445831", "UNI38_010_B10", "box_GroupIter_50.PawnIter", "box_TeleportPawns_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_51_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_35();
    l0 = self.box_Delay_v5_51;
    l1 = self.box_Gate_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|945636842", "945636842", "UNI38_010_B10", "box_Delay_v5_51.TimeElapsed", "box_Gate_v3_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_41_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_Bind_v4_41;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|394034721", "394034721", "UNI38_010_B10", "box_Bind_v4_41.Bound", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_71_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|313542038", "313542038", "UNI38_010_B10", "box_Compare_Strings_71.A_eq_B", "box_MultipleOR_89.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_71_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_76();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|976697293", "976697293", "UNI38_010_B10", "box_Compare_Strings_71.A_neq_B", "box_Compare_Strings_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_99_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_100();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1115622477", "1115622477", "UNI38_010_B10", "box_EndActivityObjective_v2_99.Out", "box_ActivityEnd_100.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_14_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_147();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|861675695", "861675695", "UNI38_010_B10", "box_ActivityObjectiveMarkerModifier_v3_14.Enabled", "box_UseContextualActionModifier_v3_147.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_27_StateStop()
    local l0, l1;
    l0 = self.box_StateListener_v2_27;
    l1 = self.box_OnceOnly_v3_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|263244961", "263244961", "UNI38_010_B10", "box_StateListener_v2_27.StateStop", "box_OnceOnly_v3_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_87_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_17();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|539170277", "539170277", "UNI38_010_B10", "box_EndActivityObjective_v2_87.Out", "box_AddActivityObjective_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CIN_UNI38_010_B10_6_Out()
    local l0, l1;
    l0 = self.box_CIN_UNI38_010_B10_6;
    l1 = self.box_OnceOnly_v3_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1350571065", "1350571065", "UNI38_010_B10", "box_CIN_UNI38_010_B10_6.Out", "box_OnceOnly_v3_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AddActivityObjective_v2_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_40();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1568185746", "1568185746", "UNI38_010_B10", "box_AddActivityObjective_v2_17.Out", "box_ActivityObjectiveMarkerModifier_v3_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_73_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_73;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|381138151", "381138151", "UNI38_010_B10", "box_Delay_v5_73.TimeElapsed", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetHealthState_82_Critical()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|45079939", "45079939", "UNI38_010_B10", "box_GetHealthState_82.Critical", "box_MultipleOR_83.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetHealthState_82_Dead()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|548268919", "548268919", "UNI38_010_B10", "box_GetHealthState_82.Dead", "box_MultipleOR_83.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetHealthState_82_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|2142268102", "2142268102", "UNI38_010_B10", "box_GetHealthState_82.Down", "box_MultipleOR_83.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetHealthState_82_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_11();
    l0 = self.box_HealthListener_v6_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1266302395", "1266302395", "UNI38_010_B10", "box_GetHealthState_82.Healthy", "box_HealthListener_v6_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProtectedLootItemModifier_v3_5();
    l0 = self.box_ProtectedLootItemModifier_v3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1087703579", "1087703579", "UNI38_010_B10", "box_OutputOrder_v2_56.Out", "box_ProtectedLootItemModifier_v3_5.RemoveProtectedLootItem", clone:GetLuaBox(), l0:GetLuaBox());
    -- RemoveProtectedLootItem
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_1();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|272857186", "272857186", "UNI38_010_B10", "box_OutputOrder_v2_56.Out", "box_Simple_Node_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_50();
    l0 = self.box_GroupIter_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|963317920", "963317920", "UNI38_010_B10", "box_OutputOrder_v2_56.Out", "box_GroupIter_50.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_79_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_79;
    l1 = self.box_ActivityInitialized_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|446822533", "446822533", "UNI38_010_B10", "box_MultipleOR_79.Out", "box_ActivityInitialized_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_UseContextualActionModifier_v3_147_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_147();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1176657136", "1176657136", "UNI38_010_B10", "box_UseContextualActionModifier_v3_147.Enabled", "box_UseContextualActionModifier_v3_147.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_147_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_21();
    l0 = self.box_ProximityTrigger_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1497268384", "1497268384", "UNI38_010_B10", "box_UseContextualActionModifier_v3_147.UseCalled", "box_ProximityTrigger_v2_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_37_InVehicle()
    self:OnExit_box_GetPawnVehicleInfo_37_InVehicle();
end;

function export:f_box_GetPawnVehicleInfo_37_NotInVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_37_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_53();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1033168231", "1033168231", "UNI38_010_B10", "box_GetPawnVehicleInfo_37.NotInVehicle", "box_Simple_Node_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_37_Out()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_37_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_38();
    l0 = self.box_VehicleListener_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|805749378", "805749378", "UNI38_010_B10", "box_GetPawnVehicleInfo_37.Out", "box_VehicleListener_v3_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_61();
    l0 = self.box_Music_Quest_v2_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|826054918", "826054918", "UNI38_010_B10", "box_OutputOrder_v2_60.Out", "box_Music_Quest_v2_61.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_54();
    l0 = self.box_Delay_v5_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|2045224495", "2045224495", "UNI38_010_B10", "box_OutputOrder_v2_60.Out", "box_Delay_v5_54.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_78_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_78;
    l1 = self.box_OnceOnly_v3_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1497796280", "1497796280", "UNI38_010_B10", "box_MultipleOR_78.Out", "box_OnceOnly_v3_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_76_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|2119537226", "2119537226", "UNI38_010_B10", "box_Compare_Strings_76.A_eq_B", "box_MultipleOR_89.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Strings_76_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_88();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|604794018", "604794018", "UNI38_010_B10", "box_Compare_Strings_76.A_neq_B", "box_Compare_Strings_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_2();
    l0 = self.box_InventoryItemModifier_8;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|2076082594", "2076082594", "UNI38_010_B10", "box_InventoryItemModifier_8.Out", "box_UseContextualActionModifier_v3_2.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_19_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_20();
    l0 = self.box_EntityStatusListener_19;
    l1 = self.box_ProximityRadiusListener_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|781837754", "781837754", "UNI38_010_B10", "box_EntityStatusListener_19.Loaded", "box_ProximityRadiusListener_v3_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_16_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_16;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|797660566", "797660566", "UNI38_010_B10", "box_ProximityTrigger_v2_16.Disabled", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_16_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_37();
    l0 = self.box_ProximityTrigger_v2_16;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|425716807", "425716807", "UNI38_010_B10", "box_ProximityTrigger_v2_16.Enter", "box_GetPawnVehicleInfo_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_16_Leave()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_16;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1846584124", "1846584124", "UNI38_010_B10", "box_ProximityTrigger_v2_16.Leave", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProtectedLootItemModifier_v3_12_Added()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_80();
    l0 = self.box_ProtectedLootItemModifier_v3_12;
    l1 = self.box_CharacterLoadedIdListener_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|928291059", "928291059", "UNI38_010_B10", "box_ProtectedLootItemModifier_v3_12.Added", "box_CharacterLoadedIdListener_80.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = self.box_MultipleOR_30;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1126701405", "1126701405", "UNI38_010_B10", "box_MultipleOR_30.Out", "box_Simple_Node_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_21_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_87();
    l0 = self.box_ProximityTrigger_v2_21;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1754391215", "1754391215", "UNI38_010_B10", "box_ProximityTrigger_v2_21.Enter", "box_EndActivityObjective_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|@DISABLE_Cheeseburger_Hint");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_58_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|@DISABLE_Cheeseburger_Watch");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|@DISABLE_Vehicle_Watch");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_32_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|@FAIL_Cheeseburger_Died");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_69_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|@In_Vehicle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|@KILL_Cheesebuger");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_74_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|@MUSIC_Stop");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_67_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|@Not_In_Vehicle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_53_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|@SETUP_Cheeseburger");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_68_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|@VO_CultBodyRadio");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_65_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|@VO_Radio_Finished");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_86_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|@VO_Radio_Started");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_85_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|5347677");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_61()
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
        [6] = "397778594",
        -- StopEvent,
        [7] = "3627983407",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|52549443");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_88_A_eq_B,
    });
    l0 = self.box_HealthListener_v6_11;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(5),
        -- B,
        [1] = "explosion",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gp_players,
        -- id2,
        [3] = "2104259669036906881",
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|131238222");
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|146939762");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_28_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2102447551648133605",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI38_010_B20_TameBear",
            id = "546568",
        },
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_4()
    local params;
    params = {
        -- Group,
        [0] = "2103374824930816542",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_38()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = self.eHost,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|187314090");
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

function export:OnEnter_box_TeleportPawns_45()
    local params, l0;
    l0 = self.box_GroupIter_50;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2104642177291270461",
        -- LoadingScreen,
        [2] = true,
        -- Pawns,
        [4] = l0:GetDataOutValue(0),
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|417288101");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|441529892");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_2_Disabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_2_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103374824930816542",
        -- Entity,
        [1] = self.eBear,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|542553308");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
                [3] = self.f_box_OutputOrder_v2_10_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|560202848");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_15_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|564309695");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_72_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI38_010_B10_FindBear",
            id = "546567",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_24()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1482654135",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_11()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eBear,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_59()
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
        [6] = "397778594",
        -- StopEvent,
        [7] = "3627983407",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|606401484");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
                [2] = self.f_box_OutputOrder_v2_36_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_80()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015245129433502",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|619339500");
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

function export:OnEnter_box_IsPawnAlive_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|631304166");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsPawnAlive_v2_39_False,
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_39_True,
    });
    params = {
        -- Pawn,
        [0] = self.eHost,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|662460869");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_55_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|672896972");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
                [2] = self.f_box_OutputOrder_v2_57_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_35()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProtectedLootItemModifier_v3_5()
    local params;
    params = {
        -- LootItemID,
        [0] = "9015276270331023",
        -- pawns,
        [1] = "#ED455357",
        -- RequiredQuantity,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_66()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.eBear,
        -- id2,
        [3] = self.eHost,
        -- nearZone,
        [4] = 5.2,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|909497803");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_40_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2102447551648133605",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI38_010_B20_TameBear",
            id = "546568",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|939532989");
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

function export:OnEnter_box_HealthModifier_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|942002942");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = self.eBear,
        -- pawns,
        [2] = self.eBear,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_52()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_34()
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
        [6] = "397778594",
        -- StopEvent,
        [7] = "3627983407",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_54()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1057384854");
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

function export:OnEnter_box_ActivityEnd_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1120246996");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_46()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1173853028");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_47()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_3()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_GroupIter_50()
    local params;
    params = {
        -- entities,
        [0] = "#C439C73D",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_51()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_41()
    local params;
    params = {
        -- BoneName,
        [0] = "LeftShoulder",
        -- EntityA,
        [1] = self.eBear,
        -- EntityB,
        [2] = "2102447551648133605",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1335010437");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_71_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_71_A_neq_B,
    });
    l0 = self.box_HealthListener_v6_11;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(5),
        -- B,
        [1] = "vehicle",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1341861418");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_99_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI38_010_B20_TameBear",
            id = "546568",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1356982752");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_14_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2103111898923843234",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI38_010_B10_FindBear",
            id = "546567",
        },
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#237E4B9C",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_18()
    local params;
    params = {
        -- Group,
        [0] = "2104259669036906881",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1435692036",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1435288401");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_87_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI38_010_B10_FindBear",
            id = "546567",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1610424887");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_17_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI38_010_B20_TameBear",
            id = "546568",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_62()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 2,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "397778594",
        -- StopEvent,
        [7] = "3627983407",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_73()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1688103887");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_GetHealthState_82_Critical,
        -- Dead,
        [1] = self.f_box_GetHealthState_82_Dead,
        -- Down,
        [2] = self.f_box_GetHealthState_82_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_82_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.eBear,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1694131370");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
                [2] = self.f_box_OutputOrder_v2_56_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1780232617");
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

function export:OnEnter_box_UseContextualActionModifier_v3_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1865884156");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_147_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_147_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103374824930816542",
        -- Entity,
        [1] = self.eBear,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1884140968");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_37_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_37_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_37_Out,
    });
    params = {
        -- pawn,
        [0] = self.eHost,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1897640418");
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

function export:OnEnter_box_Compare_Strings_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1945608040");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_76_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_76_A_neq_B,
    });
    l0 = self.box_HealthListener_v6_11;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(5),
        -- B,
        [1] = "FirePropagation",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_8()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015276270331023",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI38\\UNI38_010_B10.domino|@UNI38_010_B10|1992152865");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "HOST DEAD",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_19()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104259669036906881",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_16()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.eHost,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105309948440250373",
    };
    return params;
end;

function export:OnEnter_box_ProtectedLootItemModifier_v3_12()
    local params;
    params = {
        -- LootItemID,
        [0] = "9015276270331023",
        -- pawns,
        [1] = "#ED455357",
        -- RequiredQuantity,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.gp_players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105695711692604647",
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eHost = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_80_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_80;
    self.eBear = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gp_players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_50_PawnIter()
    local l0, l1;
    l0 = self.box_GroupIter_50;
    l1 = self.box_TeleportPawns_45;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_37_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.playerVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_37_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.playerVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.playerVehicle = l0:GetDataOutValue(2);
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
