LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/treasurehunt/th_d4_poi_01_main.domino
-- User graph: TH_D4_POI_01_Main
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1345817550.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3339792980.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3377533989.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2790741716.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2017065996.bnk]], "CSoundResource");
        cboxRes:LoadResource([[910010370.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2432309493.bnk]], "CSoundResource");
        cboxRes:LoadResource([[595314339.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2924018254.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2091470292.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3541661118.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1297514584.bnk]], "CSoundResource");
        cboxRes:LoadResource([[756391096.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3844218654.bnk]], "CSoundResource");
        cboxRes:LoadResource([[163778454.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2306769320.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1842456389.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_D4_POI_01_Main.TH_D4_POI_01_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/BroadcastMessage.lua")] = {
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
                name = "Message",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/DynamicLightModifier.lua")] = {
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
            [0] = {
                name = "dynamicLightId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/SoundMusicTrigger.lua")] = {
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
                name = "Skipped",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 3,
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
                name = "Priority",
                type = "int",
            },
            [3] = {
                name = "SoundType",
                type = "SoundType",
            },
            [4] = {
                name = "Stackable",
                type = "bool",
            },
            [5] = {
                name = "StartEvent",
                type = "Sound",
            },
            [6] = {
                name = "StopEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopFadeOut",
                type = "float",
            },
            [8] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [9] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StartCelebration.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
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
                name = "Preset",
                type = "genericdb",
            },
            [1] = {
                name = "TextId",
                type = "oasis",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StaticBreakableBreaker.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Destroy",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceState",
            },
            [3] = {
                name = "NextState",
            },
            [4] = {
                name = "SetDamageable",
            },
            [5] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "DamageableChanged",
                delayed = false,
            },
            [1] = {
                name = "Destroyed",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "StateChanged",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "entity",
                type = "entity",
            },
            [1] = {
                name = "forcedStateId",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
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
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/UniversalInterationListener.lua")] = {
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
                name = "Interacted",
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
                name = "usableEntityId",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "entityInteracted",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/VisibilityModifier.lua")] = {
        stateless = false,
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
            [0] = {
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
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
    self._name = "TH_D4_POI_01_Main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main";
    self.MetaIDZombie0 = 0;
    self.MetaIDZombie3 = 0;
    self.MetaIDSliding_Window1 = 0;
    self.MetaIDExorcist = 0;
    self.MetaIDSlidingWindow2 = 0;
    self.MetaIDSlidingWindow3 = 0;
    self.MetaIDSlidingButcher = 0;
    self.MetaIDCarCrash = 0;
    self.MetaIDSlasher = 0;
    self.MetaIDHangingDummy = 0;
    self.gPlayerGroup = nil;
    self.BaseBall_Guy = 0;
    self.box_OnceOnly_v3_177 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|15408812");
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
                [0] = self.f_box_OnceOnly_v3_177_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleAND_v2_103 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|32946624");
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
        [0] = self.f_box_MultipleAND_v2_103_Out,
    });
    self.box_PlaySequence_v8_30 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|39965849");
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
        [0] = self.f_box_PlaySequence_v8_30_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_30_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_30_Started,
    });
    self.box_OnceOnly_v3_79 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|41381147");
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
                [0] = self.f_box_OnceOnly_v3_79_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_85 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|60293980");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_85_Enter,
    });
    self.box_EntityStatusListener_207 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|69810463");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_207_Loaded,
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|102423190");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_SoundModifier_v2_65 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|109063675");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_65_Finished,
        -- Started,
        [1] = self.f_box_SoundModifier_v2_65_Started,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|135429948");
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
        [0] = self.f_box_MultipleOR_18_Out,
    });
    self.box_OnceOnly_v3_111 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|137655317");
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
                [0] = self.f_box_OnceOnly_v3_111_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_239 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|138971188");
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
        [0] = self.f_box_MultipleOR_239_Out,
    });
    self.box_Delay_v5_165 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|164071534");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_165_TimeElapsed,
    });
    self.box_PlaySequence_v8_4 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|164268036");
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
        -- Started,
        [4] = self.f_box_PlaySequence_v8_4_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_4_Stopped,
    });
    self.box_MultipleOR_162 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|183150275");
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
        [0] = self.f_box_MultipleOR_162_Out,
    });
    self.box_MultipleOR_141 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|211916874");
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
        [0] = self.f_box_MultipleOR_141_Out,
    });
    self.box_PlaySequence_v8_139 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|215893422");
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
        [0] = self.f_box_PlaySequence_v8_139_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_139_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_139_Started,
    });
    self.box_StartMetaSequence_137 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|235715788");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_137_Out,
    });
    self.box_ActivityInitialized_51 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|245300103");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_51_Out,
    });
    self.box_SoundModifier_v2_72 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|291536076");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_72_Started,
    });
    self.box_RemoveEntity_v2_99 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|300321710");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_99_Out,
    });
    self.box_PlaySequence_v8_28 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|303290171");
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
        -- Started,
        [4] = self.f_box_PlaySequence_v8_28_Started,
    });
    self.box_Delay_v5_153 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|322436045");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_153_TimeElapsed,
    });
    self.box_MultipleOR_220 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|335632372");
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
        [0] = self.f_box_MultipleOR_220_Out,
    });
    self.box_StaticBreakableListener_238 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|338721004");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_238_OnBreak,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_238_OnStateChanged,
    });
    self.box_SoundModifier_v2_92 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|346533653");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_240 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|349904751");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_12 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|353484478");
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
                [0] = self.f_box_OnceOnly_v3_12_Out_0,
            },
            count = 1,
        },
    });
    self.box_PositionModifier_v2_48 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|354482253");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_48_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_48_StartOut,
    });
    self.box_StartMetaSequence_109 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|378354557");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_109_Out,
    });
    self.box_SoundModifier_v2_76 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|382762223");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_76_Started,
    });
    self.box_Delay_v5_114 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|385397953");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_114_TimeElapsed,
    });
    self.box_Switch_213 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|407719295");
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
                [0] = self.f_box_Switch_213_Output_0,
                [1] = self.f_box_Switch_213_Output_1,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_127 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|425341296");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_127_Loaded,
    });
    self.box_SoundModifier_v2_57 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|425645494");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_118 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|434523833");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_118_Done,
    });
    self.box_StartMetaSequence_43 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|440518997");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_43_Out,
    });
    self.box_ProximityTrigger_v2_33 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|448297749");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_33_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_33_Leave,
    });
    self.box_LookAtTrigger_v2_83 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|450713276");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_LookAtTrigger_v2_83_Enabled,
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_83_EnterFOV,
    });
    self.box_Delay_v5_223 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|451975128");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_223_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_223_TimeElapsed,
    });
    self.box_SoundModifier_v2_77 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|494450917");
    l0:SetConnections({
    });
    self.box_Delay_v5_218 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|556144537");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_218_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_218_TimeElapsed,
    });
    self.box_MultipleOR_230 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|556603246");
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
        [0] = self.f_box_MultipleOR_230_Out,
    });
    self.box_MultipleOR_133 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|568255546");
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
        [0] = self.f_box_MultipleOR_133_Out,
    });
    self.box_Delay_v5_152 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|588090297");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_152_TimeElapsed,
    });
    self.box_MultipleOR_233 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|609149862");
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
        [0] = self.f_box_MultipleOR_233_Out,
    });
    self.box_MultipleOR_231 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|631266940");
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
        [0] = self.f_box_MultipleOR_231_Out,
    });
    self.box_PlaySequence_v8_23 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|643949637");
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
        [0] = self.f_box_PlaySequence_v8_23_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_23_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_23_Started,
    });
    self.box_ProximityTrigger_v2_67 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|657155558");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_67_Enter,
    });
    self.box_ProximityTrigger_v2_54 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|667468595");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_54_Enter,
    });
    self.box_ProximityTrigger_v2_29 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|691824632");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_29_Enter,
    });
    self.box_ProximityTrigger_v2_20 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|710090746");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_20_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_20_Enter,
    });
    self.box_ProximityTrigger_v2_19 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|714222878");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_19_Enter,
    });
    self.box_StartMetaSequence_45 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|715308302");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_45_Out,
    });
    self.box_StartMetaSequence_41 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|721234861");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_41_Out,
    });
    self.box_SoundModifier_v2_96 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|722361440");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_27 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|732678945");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_27_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_27_Enter,
    });
    self.box_SoundModifier_v2_95 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|747233826");
    l0:SetConnections({
    });
    self.box_Switch_221 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|747761839");
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
                [0] = self.f_box_Switch_221_Output_0,
                [1] = self.f_box_Switch_221_Output_1,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_37 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|762144505");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_37_Enter,
    });
    self.box_VisibilityModifier_132 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|789132722");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_132_Disabled,
    });
    self.box_ProximityTrigger_v2_142 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|806746827");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_142_Enter,
    });
    self.box_PlaySequence_v8_161 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|864263447");
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
        [0] = self.f_box_PlaySequence_v8_161_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_161_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_161_Started,
    });
    self.box_Delay_v5_113 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|877926667");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_113_TimeElapsed,
    });
    self.box_RequestTutorial_v3_126 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|882400757");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_RequestTutorial_v3_126_Out,
    });
    self.box_UniversalInteractionModifier_v2_206 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|894975268");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_206_Disabled,
    });
    self.box_ProximityTrigger_v2_9 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|895141235");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_9_Enter,
    });
    self.box_StartMetaSequence_47 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|897711416");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_47_Out,
    });
    self.box_SoundMusicTriggerBox_143 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|924749777");
    l0:SetConnections({
    });
    self.box_MultipleOR_236 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|949192406");
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
        [0] = self.f_box_MultipleOR_236_Out,
    });
    self.box_SoundModifier_v2_75 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|958511843");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_75_Started,
    });
    self.box_LookAtTrigger_v2_116 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|986525988");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LookAtTrigger_v2_116_Disabled,
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_116_EnterFOV,
        -- LeaveFOV,
        [3] = self.f_box_LookAtTrigger_v2_116_LeaveFOV,
    });
    self.box_StartMetaSequence_44 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|996024166");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_44_Out,
    });
    self.box_Delay_v5_115 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1013956816");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_115_TimeElapsed,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1040287210");
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
        [0] = self.f_box_MultipleOR_31_Out,
    });
    self.box_SoundModifier_v2_66 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1046315361");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_66_Finished,
        -- Started,
        [1] = self.f_box_SoundModifier_v2_66_Started,
    });
    self.box_EntityStatusListener_100 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1073634855");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_100_Loaded,
    });
    self.box_RemoveEntity_v2_90 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1142412329");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_90_Out,
    });
    self.box_UniversalInteractionListener_135 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1179555510");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_135_Interacted,
    });
    self.box_ActivityAcknowledgeGate_50 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1206224969");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_50_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_50_Reloaded,
    });
    self.box_Delay_v5_119 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1219805636");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_119_TimeElapsed,
    });
    self.box_StartMetaSequence_49 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1248169844");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_49_Out,
    });
    self.box_ProximityTrigger_v2_3 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1256957894");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_3_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_3_Enter,
    });
    self.box_PlaySequence_v8_39 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1289353962");
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
        [0] = self.f_box_PlaySequence_v8_39_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_39_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_39_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_39_Stopped,
    });
    self.box_PlaySequence_v8_5 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1291590176");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_5_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_5_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Stop_Light",
                    value = self.f_box_PlaySequence_v8_5_SPOut__Stop_Light_,
                },
            },
            count = 1,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_5_Started,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1297572277");
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
    self.box_PlaySequence_v8_46 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1298021833");
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
        [0] = self.f_box_PlaySequence_v8_46_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_46_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_46_Started,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1309428287");
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
        [0] = self.f_box_MultipleOR_24_Out,
    });
    self.box_OnceOnly_v3_241 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1309634190");
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
                [0] = self.f_box_OnceOnly_v3_241_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_234 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1386742250");
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
        [0] = self.f_box_MultipleOR_234_Out,
    });
    self.box_SoundModifier_v2_74 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1405015143");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_168 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1410810349");
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
                [0] = self.f_box_OnceOnly_v3_168_Out_0,
            },
            count = 1,
        },
    });
    self.box_LookAtTrigger_v2_84 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1424363704");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_LookAtTrigger_v2_84_Enabled,
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_84_EnterFOV,
    });
    self.box_PositionModifier_v2_88 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1450320572");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_88_Done,
    });
    self.box_StartMetaSequence_40 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1451472682");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_40_Out,
    });
    self.box_RemoveEntity_v2_91 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1454504891");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_91_Out,
    });
    self.box_Delay_v5_7 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1480088375");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_7_TimeElapsed,
    });
    self.box_Switch_227 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1497824508");
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
                [0] = self.f_box_Switch_227_Output_0,
                [1] = self.f_box_Switch_227_Output_1,
            },
            count = 2,
        },
    });
    self.box_PlaySequence_v8_13 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1506388262");
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
        [0] = self.f_box_PlaySequence_v8_13_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_13_Skipped,
    });
    self.box_SoundModifier_v2_56 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1552548417");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_56_Started,
    });
    self.box_PositionModifier_v2_87 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1562230343");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_87_Done,
    });
    self.box_PlaySequence_v8_138 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1575653545");
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
        -- Started,
        [4] = self.f_box_PlaySequence_v8_138_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_138_Stopped,
    });
    self.box_SoundModifier_v2_237 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1584165351");
    l0:SetConnections({
    });
    self.box_MultipleOR_185 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1612012880");
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
        [0] = self.f_box_MultipleOR_185_Out,
    });
    self.box_ProximityTrigger_v2_166 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1617088277");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_166_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_166_Enter,
    });
    self.box_ProximityTrigger_v2_22 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1638503071");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_22_Enter,
    });
    self.box_PositionModifier_v2_120 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1659516652");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_150 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1667854470");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_150_Loaded,
    });
    self.box_EntityStatusListener_176 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1685252486");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_176_Loaded,
    });
    self.box_OnceOnly_v3_11 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1686945419");
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
                [0] = self.f_box_OnceOnly_v3_11_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1711644268");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_Switch_215 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1735200655");
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
                [0] = self.f_box_Switch_215_Output_0,
                [1] = self.f_box_Switch_215_Output_1,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_10 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1741293383");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_10_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_10_Enter,
    });
    self.box_MultipleOR_174 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1746194583");
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
        [0] = self.f_box_MultipleOR_174_Out,
    });
    self.box_PlaySequence_v8_136 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1772062863");
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
    });
    self.box_EntityStatusListener_209 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1786348350");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_209_Loaded,
    });
    self.box_StartMetaSequence_1 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1842180613");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_1_Out,
    });
    self.box_OnceOnly_v3_112 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1843936411");
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
                [0] = self.f_box_OnceOnly_v3_112_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlaySequence_v8_129 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1858074736");
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
        [0] = self.f_box_PlaySequence_v8_129_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_129_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_129_Started,
    });
    self.box_MultipleOR_163 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1860852064");
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
        [0] = self.f_box_MultipleOR_163_Out,
    });
    self.box_MultipleOR_178 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1866250064");
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
        [0] = self.f_box_MultipleOR_178_Out,
    });
    self.box_RemoveEntity_v2_247 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1927083405");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_16 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1929670502");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_16_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_16_Enter,
    });
    self.box_PlaySequence_v8_21 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1938451019");
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
        [0] = self.f_box_PlaySequence_v8_21_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_21_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_21_Started,
    });
    self.box_ProximityTrigger_v2_64 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1953776079");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_64_Enter,
    });
    self.box_PlaySequence_v8_6 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1966360387");
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
        -- Started,
        [4] = self.f_box_PlaySequence_v8_6_Started,
    });
    self.box_StartMetaSequence_38 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1981527712");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_38_Out,
    });
    self.box_ProximityTrigger_v2_140 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1987392527");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_140_Enter,
    });
    self.box_UniversalInteractionModifier_v2_244 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1994457899");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_244_Disabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_244_Interacted,
    });
    self.box_PlaySequence_v8_17 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2020398604");
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
        -- Started,
        [4] = self.f_box_PlaySequence_v8_17_Started,
    });
    self.box_StartCelebration_60 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2053322291");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_60_Ended,
        -- Started,
        [1] = self.f_box_StartCelebration_60_Started,
    });
    self.box_MultipleOR_246 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_246;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2054022647");
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
        [0] = self.f_box_MultipleOR_246_Out,
    });
    self.box_PlaySequence_v8_134 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2058980570");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Close_Window",
                    value = self.f_box_PlaySequence_v8_134_SPOut__Close_Window_,
                },
            },
            count = 1,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_134_Started,
    });
    self.box_ProximityTrigger_v2_82 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2071227537");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_82_Enter,
    });
    self.box_Delay_v5_117 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2084756450");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_117_TimeElapsed,
    });
    self.box_StartMetaSequence_81 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2120401753");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_81_Out,
    });
    self.box_SoundModifier_v2_70 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2122025710");
    l0:SetConnections({
    });
    self.box_Delay_v5_167 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2137361634");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_167_TimeElapsed,
    });
    self.box_OnceOnly_v3_110 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2142695312");
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
                [0] = self.f_box_OnceOnly_v3_110_Out_0,
            },
            count = 1,
        },
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1860172785", "1860172785", "TH_D4_POI_01_Main", "In", "box_ActivityAcknowledgeGate_50.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_123();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|522318923", "522318923", "TH_D4_POI_01_Main", "OnLeaveZone", "box_OutputOrder_v2_123.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_53_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_30();
    l0 = self.box_PlaySequence_v8_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1629749734", "1629749734", "TH_D4_POI_01_Main", "box_Simple_Node_53.Out", "box_PlaySequence_v8_30.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
    params = self:OnEnter_box_PlaySequence_v8_23();
    l0 = self.box_PlaySequence_v8_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|864196233", "864196233", "TH_D4_POI_01_Main", "box_Simple_Node_53.Out", "box_PlaySequence_v8_23.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
    params = self:OnEnter_box_ProximityTrigger_v2_22();
    l0 = self.box_ProximityTrigger_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1722722853", "1722722853", "TH_D4_POI_01_Main", "box_Simple_Node_53.Out", "box_ProximityTrigger_v2_22.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_146_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_143();
    l0 = self.box_SoundMusicTriggerBox_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|698149878", "698149878", "TH_D4_POI_01_Main", "box_Simple_Node_146.Out", "box_SoundMusicTriggerBox_143.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_177_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_175();
    l0 = self.box_OnceOnly_v3_177;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1177233384", "1177233384", "TH_D4_POI_01_Main", "box_OnceOnly_v3_177.Out", "box_OutputOrder_v2_175.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_203_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_205();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|549320665", "549320665", "TH_D4_POI_01_Main", "box_BroadcastMessage_203.Out", "box_Print_v2_205.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_103_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_98();
    l0 = self.box_MultipleAND_v2_103;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|198865817", "198865817", "TH_D4_POI_01_Main", "box_MultipleAND_v2_103.Out", "box_MissionBlockLayer_98.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_30_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_200();
    l0 = self.box_PlaySequence_v8_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|215608827", "215608827", "TH_D4_POI_01_Main", "box_PlaySequence_v8_30.Finished", "box_OutputOrder_v2_200.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_30_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_32();
    l0 = self.box_PlaySequence_v8_30;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|81162012", "81162012", "TH_D4_POI_01_Main", "box_PlaySequence_v8_30.Skipped", "box_Simple_Node_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_30_Started()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_199();
    l0 = self.box_PlaySequence_v8_30;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|521789478", "521789478", "TH_D4_POI_01_Main", "box_PlaySequence_v8_30.Started", "box_DynamicLightModifier_199.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_79_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_79;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2014716653", "2014716653", "TH_D4_POI_01_Main", "box_OnceOnly_v3_79.Out", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_85_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_56();
    l0 = self.box_ProximityTrigger_v2_85;
    l1 = self.box_SoundModifier_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|332291506", "332291506", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_85.Enter", "box_SoundModifier_v2_56.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_207_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_103();
    l0 = self.box_EntityStatusListener_207;
    l1 = self.box_MultipleAND_v2_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1137222555", "1137222555", "TH_D4_POI_01_Main", "box_EntityStatusListener_207.Loaded", "box_MultipleAND_v2_103.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 3);
end;

function export:f_box_OutputOrder_v2_228_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_197();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|917633144", "917633144", "TH_D4_POI_01_Main", "box_OutputOrder_v2_228.Out", "box_DynamicLightModifier_197.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_228_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_223();
    l0 = self.box_Delay_v5_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|835758723", "835758723", "TH_D4_POI_01_Main", "box_OutputOrder_v2_228.Out", "box_Delay_v5_223.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_235_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_234;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2042756997", "2042756997", "TH_D4_POI_01_Main", "box_OutputOrder_v2_235.Out", "box_MultipleOR_234.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_235_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2068167230", "2068167230", "TH_D4_POI_01_Main", "box_OutputOrder_v2_235.Out", "box_MultipleOR_236.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_52_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_52;
    l1 = self.box_ActivityInitialized_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2071402392", "2071402392", "TH_D4_POI_01_Main", "box_MultipleOR_52.Out", "box_ActivityInitialized_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SoundModifier_v2_65_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_229();
    l0 = self.box_SoundModifier_v2_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1849240980", "1849240980", "TH_D4_POI_01_Main", "box_SoundModifier_v2_65.Finished", "box_OutputOrder_v2_229.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_65_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_228();
    l0 = self.box_SoundModifier_v2_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2043705787", "2043705787", "TH_D4_POI_01_Main", "box_SoundModifier_v2_65.Started", "box_OutputOrder_v2_228.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UnlockDoor_156_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_157();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|487582390", "487582390", "TH_D4_POI_01_Main", "box_UnlockDoor_156.Unlocked", "box_EndActivityObjective_v2_157.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_4();
    l0 = self.box_MultipleOR_18;
    l1 = self.box_PlaySequence_v8_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2094279006", "2094279006", "TH_D4_POI_01_Main", "box_MultipleOR_18.Out", "box_PlaySequence_v8_4.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_111_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_106();
    l0 = self.box_OnceOnly_v3_111;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1449130239", "1449130239", "TH_D4_POI_01_Main", "box_OnceOnly_v3_111.Out", "box_StaticBreakableBreaker_106.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(5, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_239_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_239;
    l1 = self.box_OnceOnly_v3_241;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1600640411", "1600640411", "TH_D4_POI_01_Main", "box_MultipleOR_239.Out", "box_OnceOnly_v3_241.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|271598001", "271598001", "TH_D4_POI_01_Main", "box_OutputOrder_v2_2.Out", "box_StartMetaSequence_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_74();
    l0 = self.box_SoundModifier_v2_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1842157134", "1842157134", "TH_D4_POI_01_Main", "box_OutputOrder_v2_2.Out", "box_SoundModifier_v2_74.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_37();
    l0 = self.box_ProximityTrigger_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|848026691", "848026691", "TH_D4_POI_01_Main", "box_OutputOrder_v2_2.Out", "box_ProximityTrigger_v2_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_84();
    l0 = self.box_LookAtTrigger_v2_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1768205779", "1768205779", "TH_D4_POI_01_Main", "box_OutputOrder_v2_2.Out", "box_LookAtTrigger_v2_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_54();
    l0 = self.box_ProximityTrigger_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|82432141", "82432141", "TH_D4_POI_01_Main", "box_OutputOrder_v2_2.Out", "box_ProximityTrigger_v2_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_95();
    l0 = self.box_SoundModifier_v2_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2112747062", "2112747062", "TH_D4_POI_01_Main", "box_OutputOrder_v2_2.Out", "box_SoundModifier_v2_95.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_19();
    l0 = self.box_ProximityTrigger_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1478308517", "1478308517", "TH_D4_POI_01_Main", "box_OutputOrder_v2_2.Out", "box_ProximityTrigger_v2_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_116();
    l0 = self.box_LookAtTrigger_v2_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2014401034", "2014401034", "TH_D4_POI_01_Main", "box_OutputOrder_v2_2.Out", "box_LookAtTrigger_v2_116.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_147();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1189654515", "1189654515", "TH_D4_POI_01_Main", "box_OutputOrder_v2_2.Out", "box_GetPlayerGroup_v2_147.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_85();
    l0 = self.box_ProximityTrigger_v2_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|658245937", "658245937", "TH_D4_POI_01_Main", "box_OutputOrder_v2_2.Out", "box_ProximityTrigger_v2_85.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_237();
    l0 = self.box_SoundModifier_v2_237;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1754890858", "1754890858", "TH_D4_POI_01_Main", "box_OutputOrder_v2_2.Out", "box_SoundModifier_v2_237.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_165_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_164();
    l0 = self.box_Delay_v5_165;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1891983156", "1891983156", "TH_D4_POI_01_Main", "box_Delay_v5_165.TimeElapsed", "box_DynamicLightModifier_164.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_4_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_152();
    l0 = self.box_PlaySequence_v8_4;
    l1 = self.box_Delay_v5_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1112291659", "1112291659", "TH_D4_POI_01_Main", "box_PlaySequence_v8_4.Started", "box_Delay_v5_152.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_4_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_46();
    l0 = self.box_PlaySequence_v8_4;
    l1 = self.box_PlaySequence_v8_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1602097133", "1602097133", "TH_D4_POI_01_Main", "box_PlaySequence_v8_4.Stopped", "box_PlaySequence_v8_46.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_157_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_148();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1015238316", "1015238316", "TH_D4_POI_01_Main", "box_EndActivityObjective_v2_157.Out", "box_AddActivityObjective_v2_148.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_162_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_MultipleOR_162;
    l1 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2122137636", "2122137636", "TH_D4_POI_01_Main", "box_MultipleOR_162.Out", "box_Delay_v5_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_232_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_231;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1027369898", "1027369898", "TH_D4_POI_01_Main", "box_OutputOrder_v2_232.Out", "box_MultipleOR_231.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_232_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|686981971", "686981971", "TH_D4_POI_01_Main", "box_OutputOrder_v2_232.Out", "box_MultipleOR_233.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_189_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_115();
    l0 = self.box_Delay_v5_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|391311911", "391311911", "TH_D4_POI_01_Main", "box_OutputOrder_v2_189.Out", "box_Delay_v5_115.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_189_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_187();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|349573933", "349573933", "TH_D4_POI_01_Main", "box_OutputOrder_v2_189.Out", "box_DynamicLightModifier_187.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_147_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_147_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_154();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1742818169", "1742818169", "TH_D4_POI_01_Main", "box_GetPlayerGroup_v2_147.Out", "box_AddActivityObjective_v2_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_141_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_138();
    l0 = self.box_MultipleOR_141;
    l1 = self.box_PlaySequence_v8_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|3080602", "3080602", "TH_D4_POI_01_Main", "box_MultipleOR_141.Out", "box_PlaySequence_v8_138.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_184_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_114();
    l0 = self.box_Delay_v5_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|813623319", "813623319", "TH_D4_POI_01_Main", "box_OutputOrder_v2_184.Out", "box_Delay_v5_114.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_184_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_180();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1074791910", "1074791910", "TH_D4_POI_01_Main", "box_OutputOrder_v2_184.Out", "box_DynamicLightModifier_180.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_184_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_181();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|873370719", "873370719", "TH_D4_POI_01_Main", "box_OutputOrder_v2_184.Out", "box_DynamicLightModifier_181.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_184_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_182();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1189624171", "1189624171", "TH_D4_POI_01_Main", "box_OutputOrder_v2_184.Out", "box_DynamicLightModifier_182.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_139_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_202();
    l0 = self.box_PlaySequence_v8_139;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|755826005", "755826005", "TH_D4_POI_01_Main", "box_PlaySequence_v8_139.Finished", "box_OutputOrder_v2_202.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_139_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_139;
    l1 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1869335154", "1869335154", "TH_D4_POI_01_Main", "box_PlaySequence_v8_139.Skipped", "box_MultipleOR_141.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_139_Started()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_201();
    l0 = self.box_PlaySequence_v8_139;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|975025089", "975025089", "TH_D4_POI_01_Main", "box_PlaySequence_v8_139.Started", "box_DynamicLightModifier_201.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_173_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1055993724", "1055993724", "TH_D4_POI_01_Main", "box_OutputOrder_v2_173.Out", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_173_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1824026692", "1824026692", "TH_D4_POI_01_Main", "box_OutputOrder_v2_173.Out", "box_MultipleOR_174.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StartMetaSequence_137_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_137_Out();
    l0 = self.box_StartMetaSequence_137;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|309532614", "309532614", "TH_D4_POI_01_Main", "box_StartMetaSequence_137.Out", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestTutorial_v3_126();
    l0 = self.box_ActivityInitialized_51;
    l1 = self.box_RequestTutorial_v3_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1103440898", "1103440898", "TH_D4_POI_01_Main", "box_ActivityInitialized_51.Out", "box_RequestTutorial_v3_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_72_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_75();
    l0 = self.box_SoundModifier_v2_72;
    l1 = self.box_SoundModifier_v2_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1297239062", "1297239062", "TH_D4_POI_01_Main", "box_SoundModifier_v2_72.Started", "box_SoundModifier_v2_75.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_154_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_155();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1946506833", "1946506833", "TH_D4_POI_01_Main", "box_AddActivityObjective_v2_154.Out", "box_ActivityObjectiveMarkerModifier_v3_155.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_99_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_59();
    l0 = self.box_RemoveEntity_v2_99;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1628481463", "1628481463", "TH_D4_POI_01_Main", "box_RemoveEntity_v2_99.Out", "box_ActivityEnd_59.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_28_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = self.box_PlaySequence_v8_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|237669328", "237669328", "TH_D4_POI_01_Main", "box_PlaySequence_v8_28.Started", "box_OutputOrder_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_153_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_140();
    l0 = self.box_Delay_v5_153;
    l1 = self.box_ProximityTrigger_v2_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|800596646", "800596646", "TH_D4_POI_01_Main", "box_Delay_v5_153.TimeElapsed", "box_ProximityTrigger_v2_140.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_72();
    l0 = self.box_SoundModifier_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1872769954", "1872769954", "TH_D4_POI_01_Main", "box_OutputOrder_v2_36.Out", "box_SoundModifier_v2_72.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_48();
    l0 = self.box_PositionModifier_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1197014813", "1197014813", "TH_D4_POI_01_Main", "box_OutputOrder_v2_36.Out", "box_PositionModifier_v2_48.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_220_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_67();
    l0 = self.box_MultipleOR_220;
    l1 = self.box_ProximityTrigger_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|997209594", "997209594", "TH_D4_POI_01_Main", "box_MultipleOR_220.Out", "box_ProximityTrigger_v2_67.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_238_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_238;
    l1 = self.box_MultipleOR_239;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|661881791", "661881791", "TH_D4_POI_01_Main", "box_StaticBreakableListener_238.OnBreak", "box_MultipleOR_239.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StaticBreakableListener_238_OnStateChanged()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_238;
    l1 = self.box_MultipleOR_239;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2045117839", "2045117839", "TH_D4_POI_01_Main", "box_StaticBreakableListener_238.OnStateChanged", "box_MultipleOR_239.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_12_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_130();
    l0 = self.box_OnceOnly_v3_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|744160467", "744160467", "TH_D4_POI_01_Main", "box_OnceOnly_v3_12.Out", "box_OutputOrder_v2_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_48_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_145();
    l0 = self.box_PositionModifier_v2_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|770951145", "770951145", "TH_D4_POI_01_Main", "box_PositionModifier_v2_48.Done", "box_OutputOrder_v2_145.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_48_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_247();
    l0 = self.box_PositionModifier_v2_48;
    l1 = self.box_RemoveEntity_v2_247;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2007487830", "2007487830", "TH_D4_POI_01_Main", "box_PositionModifier_v2_48.StartOut", "box_RemoveEntity_v2_247.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_StartMetaSequence_109_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_109_Out();
    l0 = self.box_StartMetaSequence_109;
    l1 = self.box_StartMetaSequence_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1816373966", "1816373966", "TH_D4_POI_01_Main", "box_StartMetaSequence_109.Out", "box_StartMetaSequence_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SoundModifier_v2_76_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_54();
    l0 = self.box_SoundModifier_v2_76;
    l1 = self.box_ProximityTrigger_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1231191264", "1231191264", "TH_D4_POI_01_Main", "box_SoundModifier_v2_76.Started", "box_ProximityTrigger_v2_54.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_114_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_114;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1541941875", "1541941875", "TH_D4_POI_01_Main", "box_Delay_v5_114.TimeElapsed", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_224_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_215();
    l0 = self.box_Switch_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1222860101", "1222860101", "TH_D4_POI_01_Main", "box_OutputOrder_v2_224.Out", "box_Switch_215.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_224_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_221();
    l0 = self.box_Switch_221;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1851470219", "1851470219", "TH_D4_POI_01_Main", "box_OutputOrder_v2_224.Out", "box_Switch_221.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Switch_213_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_214();
    l0 = self.box_Switch_213;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1253004113", "1253004113", "TH_D4_POI_01_Main", "box_Switch_213.Output", "box_ParticleSystem_v3_214.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_213_Output_1()
    local l0, l1;
    l0 = self.box_Switch_213;
    l1 = self.box_MultipleOR_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1504113352", "1504113352", "TH_D4_POI_01_Main", "box_Switch_213.Output", "box_MultipleOR_236.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_127_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_103();
    l0 = self.box_EntityStatusListener_127;
    l1 = self.box_MultipleAND_v2_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1691205469", "1691205469", "TH_D4_POI_01_Main", "box_EntityStatusListener_127.Loaded", "box_MultipleAND_v2_103.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_PositionModifier_v2_118_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_119();
    l0 = self.box_PositionModifier_v2_118;
    l1 = self.box_Delay_v5_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|918228883", "918228883", "TH_D4_POI_01_Main", "box_PositionModifier_v2_118.Done", "box_Delay_v5_119.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StartMetaSequence_43_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_43_Out();
    l0 = self.box_StartMetaSequence_43;
    l1 = self.box_StartMetaSequence_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|204658589", "204658589", "TH_D4_POI_01_Main", "box_StartMetaSequence_43.Out", "box_StartMetaSequence_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ProximityTrigger_v2_33_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_210();
    l0 = self.box_ProximityTrigger_v2_33;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1146888948", "1146888948", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_33.Enter", "box_DynamicLightModifier_210.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_33_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_210();
    l0 = self.box_ProximityTrigger_v2_33;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|98083928", "98083928", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_33.Leave", "box_DynamicLightModifier_210.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_83_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_238();
    l0 = self.box_LookAtTrigger_v2_83;
    l1 = self.box_StaticBreakableListener_238;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1603211681", "1603211681", "TH_D4_POI_01_Main", "box_LookAtTrigger_v2_83.Enabled", "box_StaticBreakableListener_238.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_83_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_88();
    l0 = self.box_LookAtTrigger_v2_83;
    l1 = self.box_PositionModifier_v2_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1409335593", "1409335593", "TH_D4_POI_01_Main", "box_LookAtTrigger_v2_83.EnterFOV", "box_PositionModifier_v2_88.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_223_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_232();
    l0 = self.box_Delay_v5_223;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|892483554", "892483554", "TH_D4_POI_01_Main", "box_Delay_v5_223.Stopped", "box_OutputOrder_v2_232.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_223_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_224();
    l0 = self.box_Delay_v5_223;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1936007501", "1936007501", "TH_D4_POI_01_Main", "box_Delay_v5_223.TimeElapsed", "box_OutputOrder_v2_224.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_229_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_225();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2140357818", "2140357818", "TH_D4_POI_01_Main", "box_OutputOrder_v2_229.Out", "box_OutputOrder_v2_225.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_229_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_230;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1280853723", "1280853723", "TH_D4_POI_01_Main", "box_OutputOrder_v2_229.Out", "box_MultipleOR_230.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_218_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_235();
    l0 = self.box_Delay_v5_218;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1729968873", "1729968873", "TH_D4_POI_01_Main", "box_Delay_v5_218.Stopped", "box_OutputOrder_v2_235.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_218_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_216();
    l0 = self.box_Delay_v5_218;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1238062523", "1238062523", "TH_D4_POI_01_Main", "box_Delay_v5_218.TimeElapsed", "box_OutputOrder_v2_216.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_230_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_64();
    l0 = self.box_MultipleOR_230;
    l1 = self.box_ProximityTrigger_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|113976033", "113976033", "TH_D4_POI_01_Main", "box_MultipleOR_230.Out", "box_ProximityTrigger_v2_64.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_133_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_132();
    l0 = self.box_MultipleOR_133;
    l1 = self.box_VisibilityModifier_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1750991487", "1750991487", "TH_D4_POI_01_Main", "box_MultipleOR_133.Out", "box_VisibilityModifier_132.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_145_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_60();
    l0 = self.box_StartCelebration_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2128757452", "2128757452", "TH_D4_POI_01_Main", "box_OutputOrder_v2_145.Out", "box_StartCelebration_60.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_145_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1109716409", "1109716409", "TH_D4_POI_01_Main", "box_OutputOrder_v2_145.Out", "box_Simple_Node_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_152_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_9();
    l0 = self.box_Delay_v5_152;
    l1 = self.box_ProximityTrigger_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|566725194", "566725194", "TH_D4_POI_01_Main", "box_Delay_v5_152.TimeElapsed", "box_ProximityTrigger_v2_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_233_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_222();
    l0 = self.box_MultipleOR_233;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1934813937", "1934813937", "TH_D4_POI_01_Main", "box_MultipleOR_233.Out", "box_ParticleSystem_v3_222.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_231_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_226();
    l0 = self.box_MultipleOR_231;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|504727038", "504727038", "TH_D4_POI_01_Main", "box_MultipleOR_231.Out", "box_ParticleSystem_v3_226.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_217_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_196();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1472096840", "1472096840", "TH_D4_POI_01_Main", "box_OutputOrder_v2_217.Out", "box_DynamicLightModifier_196.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_217_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_218();
    l0 = self.box_Delay_v5_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1586218384", "1586218384", "TH_D4_POI_01_Main", "box_OutputOrder_v2_217.Out", "box_Delay_v5_218.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_183_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_180();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1472420926", "1472420926", "TH_D4_POI_01_Main", "box_OutputOrder_v2_183.Out", "box_DynamicLightModifier_180.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_181();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1468042910", "1468042910", "TH_D4_POI_01_Main", "box_OutputOrder_v2_183.Out", "box_DynamicLightModifier_181.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_182();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1570971961", "1570971961", "TH_D4_POI_01_Main", "box_OutputOrder_v2_183.Out", "box_DynamicLightModifier_182.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_57();
    l0 = self.box_SoundModifier_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1093171901", "1093171901", "TH_D4_POI_01_Main", "box_OutputOrder_v2_61.Out", "box_SoundModifier_v2_57.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_134();
    l0 = self.box_PlaySequence_v8_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|261810561", "261810561", "TH_D4_POI_01_Main", "box_OutputOrder_v2_61.Out", "box_PlaySequence_v8_134.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_23_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_190();
    l0 = self.box_PlaySequence_v8_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|24797230", "24797230", "TH_D4_POI_01_Main", "box_PlaySequence_v8_23.Finished", "box_OutputOrder_v2_190.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_23_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_25();
    l0 = self.box_PlaySequence_v8_23;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|105295193", "105295193", "TH_D4_POI_01_Main", "box_PlaySequence_v8_23.Skipped", "box_Simple_Node_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_23_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_188();
    l0 = self.box_PlaySequence_v8_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|884546593", "884546593", "TH_D4_POI_01_Main", "box_PlaySequence_v8_23.Started", "box_OutputOrder_v2_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_243_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_135();
    l0 = self.box_UniversalInteractionListener_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1143577087", "1143577087", "TH_D4_POI_01_Main", "box_GetActivityFact_243.FactNotSet", "box_UniversalInteractionListener_135.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetActivityFact_243_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_245();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|168231069", "168231069", "TH_D4_POI_01_Main", "box_GetActivityFact_243.FactSet", "box_GetLocalPlayer_v2_245.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_67_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_66();
    l0 = self.box_ProximityTrigger_v2_67;
    l1 = self.box_SoundModifier_v2_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1190506272", "1190506272", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_67.Enter", "box_SoundModifier_v2_66.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableBreaker_107_DamageableChanged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_107();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1932270073", "1932270073", "TH_D4_POI_01_Main", "box_StaticBreakableBreaker_107.DamageableChanged", "box_StaticBreakableBreaker_107.NextState", clone:GetLuaBox(), l0:GetLuaBox());
    -- NextState
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_107_StateChanged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|318072556", "318072556", "TH_D4_POI_01_Main", "box_StaticBreakableBreaker_107.StateChanged", "box_OnceOnly_v3_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_54_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = self.box_ProximityTrigger_v2_54;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|105900481", "105900481", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_54.Enter", "box_OutputOrder_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_29_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = self.box_ProximityTrigger_v2_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|250766551", "250766551", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_29.Enter", "box_OutputOrder_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_20_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_20;
    l1 = self.box_OnceOnly_v3_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1498006499", "1498006499", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_20.Enabled", "box_OnceOnly_v3_177.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_20_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = self.box_ProximityTrigger_v2_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|574360590", "574360590", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_20.Enter", "box_OutputOrder_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_19_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_108();
    l0 = self.box_ProximityTrigger_v2_19;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|409460982", "409460982", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_19.Enter", "box_StaticBreakableBreaker_108.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(5, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_45_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_45_Out();
    l0 = self.box_StartMetaSequence_45;
    l1 = self.box_StartMetaSequence_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|545814363", "545814363", "TH_D4_POI_01_Main", "box_StartMetaSequence_45.Out", "box_StartMetaSequence_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_StartMetaSequence_41_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_41_Out();
    l0 = self.box_StartMetaSequence_41;
    l1 = self.box_StartMetaSequence_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1690045234", "1690045234", "TH_D4_POI_01_Main", "box_StartMetaSequence_41.Out", "box_StartMetaSequence_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ProximityTrigger_v2_27_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_27;
    l1 = self.box_OnceOnly_v3_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1839559834", "1839559834", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_27.Enabled", "box_OnceOnly_v3_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_27_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_128();
    l0 = self.box_ProximityTrigger_v2_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1655929733", "1655929733", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_27.Enter", "box_OutputOrder_v2_128.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_221_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_222();
    l0 = self.box_Switch_221;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|104154429", "104154429", "TH_D4_POI_01_Main", "box_Switch_221.Output", "box_ParticleSystem_v3_222.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_221_Output_1()
    local l0, l1;
    l0 = self.box_Switch_221;
    l1 = self.box_MultipleOR_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|840098144", "840098144", "TH_D4_POI_01_Main", "box_Switch_221.Output", "box_MultipleOR_233.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_194_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1588518046", "1588518046", "TH_D4_POI_01_Main", "box_OutputOrder_v2_194.Out", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_194_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_191();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|435372605", "435372605", "TH_D4_POI_01_Main", "box_OutputOrder_v2_194.Out", "box_DynamicLightModifier_191.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_37_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_ProximityTrigger_v2_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|549557176", "549557176", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_37.Enter", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_149_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_82();
    l0 = self.box_ProximityTrigger_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1481216656", "1481216656", "TH_D4_POI_01_Main", "box_ActivityObjectiveMarkerModifier_v3_149.Enabled", "box_ProximityTrigger_v2_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VisibilityModifier_132_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_15();
    l0 = self.box_VisibilityModifier_132;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|183633518", "183633518", "TH_D4_POI_01_Main", "box_VisibilityModifier_132.Disabled", "box_DynamicLightModifier_15.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_142_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_203();
    l0 = self.box_ProximityTrigger_v2_142;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|194205182", "194205182", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_142.Enter", "box_BroadcastMessage_203.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_131_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_3();
    l0 = self.box_ProximityTrigger_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|878456930", "878456930", "TH_D4_POI_01_Main", "box_OutputOrder_v2_131.Out", "box_ProximityTrigger_v2_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StaticBreakableBreaker_108_DamageableChanged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_108();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1751466375", "1751466375", "TH_D4_POI_01_Main", "box_StaticBreakableBreaker_108.DamageableChanged", "box_StaticBreakableBreaker_108.NextState", clone:GetLuaBox(), l0:GetLuaBox());
    -- NextState
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_108_StateChanged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2104690222", "2104690222", "TH_D4_POI_01_Main", "box_StaticBreakableBreaker_108.StateChanged", "box_OnceOnly_v3_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_161_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_161;
    l1 = self.box_MultipleOR_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|250934421", "250934421", "TH_D4_POI_01_Main", "box_PlaySequence_v8_161.Finished", "box_MultipleOR_162.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_161_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_161;
    l1 = self.box_MultipleOR_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|297477317", "297477317", "TH_D4_POI_01_Main", "box_PlaySequence_v8_161.Skipped", "box_MultipleOR_162.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_161_Started()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_164();
    l0 = self.box_PlaySequence_v8_161;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2016277078", "2016277078", "TH_D4_POI_01_Main", "box_PlaySequence_v8_161.Started", "box_DynamicLightModifier_164.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_113_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_113;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1142812883", "1142812883", "TH_D4_POI_01_Main", "box_Delay_v5_113.TimeElapsed", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestTutorial_v3_126_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_RequestTutorial_v3_126;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1454207605", "1454207605", "TH_D4_POI_01_Main", "box_RequestTutorial_v3_126.Out", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_206_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_242();
    l0 = self.box_UniversalInteractionModifier_v2_206;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1888987215", "1888987215", "TH_D4_POI_01_Main", "box_UniversalInteractionModifier_v2_206.Disabled", "box_SetActivityFact_242.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_9_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_4();
    l0 = self.box_ProximityTrigger_v2_9;
    l1 = self.box_PlaySequence_v8_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|945024133", "945024133", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_9.Enter", "box_PlaySequence_v8_4.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_StartMetaSequence_47_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_47_Out();
    l0 = self.box_StartMetaSequence_47;
    l1 = self.box_StartMetaSequence_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|591900692", "591900692", "TH_D4_POI_01_Main", "box_StartMetaSequence_47.Out", "box_StartMetaSequence_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_236_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_214();
    l0 = self.box_MultipleOR_236;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1486556266", "1486556266", "TH_D4_POI_01_Main", "box_MultipleOR_236.Out", "box_ParticleSystem_v3_214.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_75_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_77();
    l0 = self.box_SoundModifier_v2_75;
    l1 = self.box_SoundModifier_v2_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|521488715", "521488715", "TH_D4_POI_01_Main", "box_SoundModifier_v2_75.Started", "box_SoundModifier_v2_77.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_160_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_159();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|167572678", "167572678", "TH_D4_POI_01_Main", "box_OutputOrder_v2_160.Out", "box_DynamicLightModifier_159.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_186();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1822273170", "1822273170", "TH_D4_POI_01_Main", "box_OutputOrder_v2_188.Out", "box_DynamicLightModifier_186.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_187();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|418392858", "418392858", "TH_D4_POI_01_Main", "box_OutputOrder_v2_188.Out", "box_DynamicLightModifier_187.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_116_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_118();
    l0 = self.box_LookAtTrigger_v2_116;
    l1 = self.box_PositionModifier_v2_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|350609428", "350609428", "TH_D4_POI_01_Main", "box_LookAtTrigger_v2_116.Disabled", "box_PositionModifier_v2_118.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_116_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_117();
    l0 = self.box_LookAtTrigger_v2_116;
    l1 = self.box_Delay_v5_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1309876972", "1309876972", "TH_D4_POI_01_Main", "box_LookAtTrigger_v2_116.EnterFOV", "box_Delay_v5_117.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_LookAtTrigger_v2_116_LeaveFOV()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_117();
    l0 = self.box_LookAtTrigger_v2_116;
    l1 = self.box_Delay_v5_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1237405050", "1237405050", "TH_D4_POI_01_Main", "box_LookAtTrigger_v2_116.LeaveFOV", "box_Delay_v5_117.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_AddActivityObjective_v2_86_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_89();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|691271551", "691271551", "TH_D4_POI_01_Main", "box_AddActivityObjective_v2_86.Out", "box_ActivityObjectiveMarkerModifier_v3_89.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_44_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_44_Out();
    l0 = self.box_StartMetaSequence_44;
    l1 = self.box_StartMetaSequence_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|401088207", "401088207", "TH_D4_POI_01_Main", "box_StartMetaSequence_44.Out", "box_StartMetaSequence_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_115_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_115;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1471002358", "1471002358", "TH_D4_POI_01_Main", "box_Delay_v5_115.TimeElapsed", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_216_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_227();
    l0 = self.box_Switch_227;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1055615392", "1055615392", "TH_D4_POI_01_Main", "box_OutputOrder_v2_216.Out", "box_Switch_227.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_216_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_213();
    l0 = self.box_Switch_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2074899277", "2074899277", "TH_D4_POI_01_Main", "box_OutputOrder_v2_216.Out", "box_Switch_213.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_171_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_10();
    l0 = self.box_ProximityTrigger_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1095463713", "1095463713", "TH_D4_POI_01_Main", "box_OutputOrder_v2_171.Out", "box_ProximityTrigger_v2_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_171_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_170();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|831036993", "831036993", "TH_D4_POI_01_Main", "box_OutputOrder_v2_171.Out", "box_DynamicLightModifier_170.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_30();
    l0 = self.box_MultipleOR_31;
    l1 = self.box_PlaySequence_v8_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|482065382", "482065382", "TH_D4_POI_01_Main", "box_MultipleOR_31.Out", "box_PlaySequence_v8_30.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_66_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_219();
    l0 = self.box_SoundModifier_v2_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|610510518", "610510518", "TH_D4_POI_01_Main", "box_SoundModifier_v2_66.Finished", "box_OutputOrder_v2_219.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_66_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_211();
    l0 = self.box_SoundModifier_v2_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1276721287", "1276721287", "TH_D4_POI_01_Main", "box_SoundModifier_v2_66.Started", "box_OutputOrder_v2_211.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_100_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_103();
    l0 = self.box_EntityStatusListener_100;
    l1 = self.box_MultipleAND_v2_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|403138582", "403138582", "TH_D4_POI_01_Main", "box_EntityStatusListener_100.Loaded", "box_MultipleAND_v2_103.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_RemoveEntity_v2_90_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_93();
    l0 = self.box_RemoveEntity_v2_90;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1393743778", "1393743778", "TH_D4_POI_01_Main", "box_RemoveEntity_v2_90.Out", "box_Print_v2_93.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_135_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_206();
    l0 = self.box_UniversalInteractionListener_135;
    l1 = self.box_UniversalInteractionModifier_v2_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1248750316", "1248750316", "TH_D4_POI_01_Main", "box_UniversalInteractionListener_135.Interacted", "box_UniversalInteractionModifier_v2_206.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_193_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_191();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1003026828", "1003026828", "TH_D4_POI_01_Main", "box_OutputOrder_v2_193.Out", "box_DynamicLightModifier_191.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_193_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_192();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|859583393", "859583393", "TH_D4_POI_01_Main", "box_OutputOrder_v2_193.Out", "box_DynamicLightModifier_192.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_58_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_204();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|237043749", "237043749", "TH_D4_POI_01_Main", "box_DynamicLightModifier_58.Enabled", "box_DynamicLightModifier_204.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_50_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_50;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2062635083", "2062635083", "TH_D4_POI_01_Main", "box_ActivityAcknowledgeGate_50.Acknowledged", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_50_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_50;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2013136389", "2013136389", "TH_D4_POI_01_Main", "box_ActivityAcknowledgeGate_50.Reloaded", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_119_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_120();
    l0 = self.box_Delay_v5_119;
    l1 = self.box_PositionModifier_v2_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|918722423", "918722423", "TH_D4_POI_01_Main", "box_Delay_v5_119.TimeElapsed", "box_PositionModifier_v2_120.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_DynamicLightModifier_15_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_58();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|430218974", "430218974", "TH_D4_POI_01_Main", "box_DynamicLightModifier_15.Enabled", "box_DynamicLightModifier_58.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_49_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_49_Out();
    l0 = self.box_StartMetaSequence_49;
    l1 = self.box_StartMetaSequence_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1291744074", "1291744074", "TH_D4_POI_01_Main", "box_StartMetaSequence_49.Out", "box_StartMetaSequence_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ProximityTrigger_v2_3_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_3;
    l1 = self.box_OnceOnly_v3_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1293219851", "1293219851", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_3.Enabled", "box_OnceOnly_v3_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_3_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_5();
    l0 = self.box_ProximityTrigger_v2_3;
    l1 = self.box_PlaySequence_v8_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1302545828", "1302545828", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_3.Enter", "box_PlaySequence_v8_5.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_39_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_172();
    l0 = self.box_PlaySequence_v8_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|57710800", "57710800", "TH_D4_POI_01_Main", "box_PlaySequence_v8_39.Finished", "box_OutputOrder_v2_172.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_39_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_169();
    l0 = self.box_PlaySequence_v8_39;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|213084435", "213084435", "TH_D4_POI_01_Main", "box_PlaySequence_v8_39.Skipped", "box_Simple_Node_169.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_39_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_171();
    l0 = self.box_PlaySequence_v8_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1227804780", "1227804780", "TH_D4_POI_01_Main", "box_PlaySequence_v8_39.Started", "box_OutputOrder_v2_171.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_39_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_13();
    l0 = self.box_PlaySequence_v8_39;
    l1 = self.box_PlaySequence_v8_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1871927381", "1871927381", "TH_D4_POI_01_Main", "box_PlaySequence_v8_39.Stopped", "box_PlaySequence_v8_13.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_5_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_113();
    l0 = self.box_PlaySequence_v8_5;
    l1 = self.box_Delay_v5_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1882742035", "1882742035", "TH_D4_POI_01_Main", "box_PlaySequence_v8_5.Finished", "box_Delay_v5_113.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_5_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_55();
    l0 = self.box_PlaySequence_v8_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|96840304", "96840304", "TH_D4_POI_01_Main", "box_PlaySequence_v8_5.Skipped", "box_Simple_Node_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_5_SPOut__Stop_Light_()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_159();
    l0 = self.box_PlaySequence_v8_5;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|127472726", "127472726", "TH_D4_POI_01_Main", "box_PlaySequence_v8_5.SPOut", "box_DynamicLightModifier_159.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_5_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_160();
    l0 = self.box_PlaySequence_v8_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1840516980", "1840516980", "TH_D4_POI_01_Main", "box_PlaySequence_v8_5.Started", "box_OutputOrder_v2_160.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_131();
    l0 = self.box_MultipleOR_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|272731487", "272731487", "TH_D4_POI_01_Main", "box_MultipleOR_8.Out", "box_OutputOrder_v2_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_46_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_195();
    l0 = self.box_PlaySequence_v8_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|814413509", "814413509", "TH_D4_POI_01_Main", "box_PlaySequence_v8_46.Finished", "box_OutputOrder_v2_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_46_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_46;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1785757295", "1785757295", "TH_D4_POI_01_Main", "box_PlaySequence_v8_46.Skipped", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_46_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_193();
    l0 = self.box_PlaySequence_v8_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1790941595", "1790941595", "TH_D4_POI_01_Main", "box_PlaySequence_v8_46.Started", "box_OutputOrder_v2_193.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_22();
    l0 = self.box_MultipleOR_24;
    l1 = self.box_ProximityTrigger_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1628871796", "1628871796", "TH_D4_POI_01_Main", "box_MultipleOR_24.Out", "box_ProximityTrigger_v2_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_241_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_240();
    l0 = self.box_OnceOnly_v3_241;
    l1 = self.box_SoundModifier_v2_240;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|100520803", "100520803", "TH_D4_POI_01_Main", "box_OnceOnly_v3_241.Out", "box_SoundModifier_v2_240.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_21();
    l0 = self.box_PlaySequence_v8_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|837272673", "837272673", "TH_D4_POI_01_Main", "box_OutputOrder_v2_63.Out", "box_PlaySequence_v8_21.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_245_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_245_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_244();
    l0 = self.box_UniversalInteractionModifier_v2_244;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2062893860", "2062893860", "TH_D4_POI_01_Main", "box_GetLocalPlayer_v2_245.Out", "box_UniversalInteractionModifier_v2_244.ForceInteraction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2141913412", "2141913412", "TH_D4_POI_01_Main", "box_OutputOrder_v2_69.Out", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_219_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_217();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|837550982", "837550982", "TH_D4_POI_01_Main", "box_OutputOrder_v2_219.Out", "box_OutputOrder_v2_217.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_219_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_220;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|808188828", "808188828", "TH_D4_POI_01_Main", "box_OutputOrder_v2_219.Out", "box_MultipleOR_220.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_190_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_189();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|424380878", "424380878", "TH_D4_POI_01_Main", "box_OutputOrder_v2_190.Out", "box_OutputOrder_v2_189.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_190_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_186();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|174771796", "174771796", "TH_D4_POI_01_Main", "box_OutputOrder_v2_190.Out", "box_DynamicLightModifier_186.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_234_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_212();
    l0 = self.box_MultipleOR_234;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|10288003", "10288003", "TH_D4_POI_01_Main", "box_MultipleOR_234.Out", "box_ParticleSystem_v3_212.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_121_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_108();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|16287621", "16287621", "TH_D4_POI_01_Main", "box_OutputOrder_v2_121.Out", "box_StaticBreakableBreaker_108.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_121_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_107();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1769645178", "1769645178", "TH_D4_POI_01_Main", "box_OutputOrder_v2_121.Out", "box_StaticBreakableBreaker_107.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_121_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_106();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1028025809", "1028025809", "TH_D4_POI_01_Main", "box_OutputOrder_v2_121.Out", "box_StaticBreakableBreaker_106.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_121_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_122();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|37678958", "37678958", "TH_D4_POI_01_Main", "box_OutputOrder_v2_121.Out", "box_StaticBreakableBreaker_122.NextState", clone:GetLuaBox(), l0:GetLuaBox());
    -- NextState
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_168_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_176();
    l0 = self.box_OnceOnly_v3_168;
    l1 = self.box_EntityStatusListener_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1304072809", "1304072809", "TH_D4_POI_01_Main", "box_OnceOnly_v3_168.Out", "box_EntityStatusListener_176.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_84_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_83();
    l0 = self.box_LookAtTrigger_v2_84;
    l1 = self.box_LookAtTrigger_v2_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1979261265", "1979261265", "TH_D4_POI_01_Main", "box_LookAtTrigger_v2_84.Enabled", "box_LookAtTrigger_v2_83.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_84_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_87();
    l0 = self.box_LookAtTrigger_v2_84;
    l1 = self.box_PositionModifier_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|493546983", "493546983", "TH_D4_POI_01_Main", "box_LookAtTrigger_v2_84.EnterFOV", "box_PositionModifier_v2_87.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_88_Done()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_91();
    l0 = self.box_PositionModifier_v2_88;
    l1 = self.box_RemoveEntity_v2_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|808584617", "808584617", "TH_D4_POI_01_Main", "box_PositionModifier_v2_88.Done", "box_RemoveEntity_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_StartMetaSequence_40_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_40_Out();
    l0 = self.box_StartMetaSequence_40;
    l1 = self.box_StartMetaSequence_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|311022584", "311022584", "TH_D4_POI_01_Main", "box_StartMetaSequence_40.Out", "box_StartMetaSequence_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_RemoveEntity_v2_91_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_94();
    l0 = self.box_RemoveEntity_v2_91;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|65366337", "65366337", "TH_D4_POI_01_Main", "box_RemoveEntity_v2_91.Out", "box_Print_v2_94.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_7_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_7;
    l1 = self.box_MultipleOR_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|803763404", "803763404", "TH_D4_POI_01_Main", "box_Delay_v5_7.TimeElapsed", "box_MultipleOR_163.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_225_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_197();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|175132722", "175132722", "TH_D4_POI_01_Main", "box_OutputOrder_v2_225.Out", "box_DynamicLightModifier_197.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_225_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_223();
    l0 = self.box_Delay_v5_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2053030213", "2053030213", "TH_D4_POI_01_Main", "box_OutputOrder_v2_225.Out", "box_Delay_v5_223.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Switch_227_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_212();
    l0 = self.box_Switch_227;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|556896500", "556896500", "TH_D4_POI_01_Main", "box_Switch_227.Output", "box_ParticleSystem_v3_212.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_227_Output_1()
    local l0, l1;
    l0 = self.box_Switch_227;
    l1 = self.box_MultipleOR_234;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|77570677", "77570677", "TH_D4_POI_01_Main", "box_Switch_227.Output", "box_MultipleOR_234.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_13_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_173();
    l0 = self.box_PlaySequence_v8_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1436886560", "1436886560", "TH_D4_POI_01_Main", "box_PlaySequence_v8_13.Finished", "box_OutputOrder_v2_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_13_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_26();
    l0 = self.box_PlaySequence_v8_13;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1369804662", "1369804662", "TH_D4_POI_01_Main", "box_PlaySequence_v8_13.Skipped", "box_Simple_Node_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_56_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_85();
    l0 = self.box_SoundModifier_v2_56;
    l1 = self.box_ProximityTrigger_v2_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|529909959", "529909959", "TH_D4_POI_01_Main", "box_SoundModifier_v2_56.Started", "box_ProximityTrigger_v2_85.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_87_Done()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_90();
    l0 = self.box_PositionModifier_v2_87;
    l1 = self.box_RemoveEntity_v2_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1760302044", "1760302044", "TH_D4_POI_01_Main", "box_PositionModifier_v2_87.Done", "box_RemoveEntity_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_138_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_153();
    l0 = self.box_PlaySequence_v8_138;
    l1 = self.box_Delay_v5_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1039403749", "1039403749", "TH_D4_POI_01_Main", "box_PlaySequence_v8_138.Started", "box_Delay_v5_153.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_138_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_139();
    l0 = self.box_PlaySequence_v8_138;
    l1 = self.box_PlaySequence_v8_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1488808541", "1488808541", "TH_D4_POI_01_Main", "box_PlaySequence_v8_138.Stopped", "box_PlaySequence_v8_139.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_185_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_29();
    l0 = self.box_MultipleOR_185;
    l1 = self.box_ProximityTrigger_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|277299601", "277299601", "TH_D4_POI_01_Main", "box_MultipleOR_185.Out", "box_ProximityTrigger_v2_29.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_166_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_166;
    l1 = self.box_OnceOnly_v3_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|12918057", "12918057", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_166.Enabled", "box_OnceOnly_v3_168.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_166_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_39();
    l0 = self.box_ProximityTrigger_v2_166;
    l1 = self.box_PlaySequence_v8_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|403056796", "403056796", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_166.Enter", "box_PlaySequence_v8_39.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_22_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_23();
    l0 = self.box_ProximityTrigger_v2_22;
    l1 = self.box_PlaySequence_v8_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1699395325", "1699395325", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_22.Enter", "box_PlaySequence_v8_23.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_128_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_28();
    l0 = self.box_PlaySequence_v8_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|685497562", "685497562", "TH_D4_POI_01_Main", "box_OutputOrder_v2_128.Out", "box_PlaySequence_v8_28.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_128_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_136();
    l0 = self.box_PlaySequence_v8_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|757397449", "757397449", "TH_D4_POI_01_Main", "box_OutputOrder_v2_128.Out", "box_PlaySequence_v8_136.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_150_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_103();
    l0 = self.box_EntityStatusListener_150;
    l1 = self.box_MultipleAND_v2_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|155915030", "155915030", "TH_D4_POI_01_Main", "box_EntityStatusListener_150.Loaded", "box_MultipleAND_v2_103.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_EntityStatusListener_176_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_6();
    l0 = self.box_EntityStatusListener_176;
    l1 = self.box_PlaySequence_v8_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1964607219", "1964607219", "TH_D4_POI_01_Main", "box_EntityStatusListener_176.Loaded", "box_PlaySequence_v8_6.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_11_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_11;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|557078491", "557078491", "TH_D4_POI_01_Main", "box_OnceOnly_v3_11.Out", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_166();
    l0 = self.box_MultipleOR_14;
    l1 = self.box_ProximityTrigger_v2_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1978939737", "1978939737", "TH_D4_POI_01_Main", "box_MultipleOR_14.Out", "box_ProximityTrigger_v2_166.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_215_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_226();
    l0 = self.box_Switch_215;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|780819098", "780819098", "TH_D4_POI_01_Main", "box_Switch_215.Output", "box_ParticleSystem_v3_226.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_215_Output_1()
    local l0, l1;
    l0 = self.box_Switch_215;
    l1 = self.box_MultipleOR_231;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|92623295", "92623295", "TH_D4_POI_01_Main", "box_Switch_215.Output", "box_MultipleOR_231.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_10_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_10;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2051276226", "2051276226", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_10.Disabled", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_10_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_39();
    l0 = self.box_ProximityTrigger_v2_10;
    l1 = self.box_PlaySequence_v8_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1511229513", "1511229513", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_10.Enter", "box_PlaySequence_v8_39.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_OutputOrder_v2_200_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|432900646", "432900646", "TH_D4_POI_01_Main", "box_OutputOrder_v2_200.Out", "box_MultipleOR_185.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_200_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_199();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1549945307", "1549945307", "TH_D4_POI_01_Main", "box_OutputOrder_v2_200.Out", "box_DynamicLightModifier_199.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_174_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_170();
    l0 = self.box_MultipleOR_174;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|331733296", "331733296", "TH_D4_POI_01_Main", "box_MultipleOR_174.Out", "box_DynamicLightModifier_170.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_76();
    l0 = self.box_SoundModifier_v2_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|18077008", "18077008", "TH_D4_POI_01_Main", "box_OutputOrder_v2_62.Out", "box_SoundModifier_v2_76.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_70();
    l0 = self.box_SoundModifier_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|947247936", "947247936", "TH_D4_POI_01_Main", "box_OutputOrder_v2_62.Out", "box_SoundModifier_v2_70.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_StaticBreakableBreaker_106_DamageableChanged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_106();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1920827590", "1920827590", "TH_D4_POI_01_Main", "box_StaticBreakableBreaker_106.DamageableChanged", "box_StaticBreakableBreaker_106.NextState", clone:GetLuaBox(), l0:GetLuaBox());
    -- NextState
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_106_StateChanged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1250948318", "1250948318", "TH_D4_POI_01_Main", "box_StaticBreakableBreaker_106.StateChanged", "box_OnceOnly_v3_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_144();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|813891179", "813891179", "TH_D4_POI_01_Main", "box_OutputOrder_v2_102.Out", "box_OutputOrder_v2_144.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_101();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1771561524", "1771561524", "TH_D4_POI_01_Main", "box_OutputOrder_v2_102.Out", "box_ParticleSystem_v3_101.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_97();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1516337511", "1516337511", "TH_D4_POI_01_Main", "box_OutputOrder_v2_102.Out", "box_MissionBlockLayer_97.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_209_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_103();
    l0 = self.box_EntityStatusListener_209;
    l1 = self.box_MultipleAND_v2_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|791889723", "791889723", "TH_D4_POI_01_Main", "box_EntityStatusListener_209.Loaded", "box_MultipleAND_v2_103.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 4);
end;

function export:f_box_StartMetaSequence_1_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_1_Out();
    l0 = self.box_StartMetaSequence_1;
    l1 = self.box_StartMetaSequence_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|982692997", "982692997", "TH_D4_POI_01_Main", "box_StartMetaSequence_1.Out", "box_StartMetaSequence_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OnceOnly_v3_112_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_121();
    l0 = self.box_OnceOnly_v3_112;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|892653607", "892653607", "TH_D4_POI_01_Main", "box_OnceOnly_v3_112.Out", "box_OutputOrder_v2_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_148_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_149();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|149497095", "149497095", "TH_D4_POI_01_Main", "box_AddActivityObjective_v2_148.Out", "box_ActivityObjectiveMarkerModifier_v3_149.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_129_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_129;
    l1 = self.box_MultipleOR_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1757939511", "1757939511", "TH_D4_POI_01_Main", "box_PlaySequence_v8_129.Finished", "box_MultipleOR_133.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_129_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_129;
    l1 = self.box_MultipleOR_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2018047356", "2018047356", "TH_D4_POI_01_Main", "box_PlaySequence_v8_129.Skipped", "box_MultipleOR_133.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_129_Started()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_15();
    l0 = self.box_PlaySequence_v8_129;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|846284434", "846284434", "TH_D4_POI_01_Main", "box_PlaySequence_v8_129.Started", "box_DynamicLightModifier_15.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_163_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_16();
    l0 = self.box_MultipleOR_163;
    l1 = self.box_ProximityTrigger_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|171788445", "171788445", "TH_D4_POI_01_Main", "box_MultipleOR_163.Out", "box_ProximityTrigger_v2_16.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_178_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_20();
    l0 = self.box_MultipleOR_178;
    l1 = self.box_ProximityTrigger_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1304601812", "1304601812", "TH_D4_POI_01_Main", "box_MultipleOR_178.Out", "box_ProximityTrigger_v2_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_172_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_10();
    l0 = self.box_ProximityTrigger_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1718644640", "1718644640", "TH_D4_POI_01_Main", "box_OutputOrder_v2_172.Out", "box_ProximityTrigger_v2_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_172_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|868721970", "868721970", "TH_D4_POI_01_Main", "box_OutputOrder_v2_172.Out", "box_MultipleOR_174.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_175_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_27();
    l0 = self.box_ProximityTrigger_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1738761995", "1738761995", "TH_D4_POI_01_Main", "box_OutputOrder_v2_175.Out", "box_ProximityTrigger_v2_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_175_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1209269045", "1209269045", "TH_D4_POI_01_Main", "box_OutputOrder_v2_175.Out", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_16_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_16;
    l1 = self.box_OnceOnly_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1345235731", "1345235731", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_16.Enabled", "box_OnceOnly_v3_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_16_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_ProximityTrigger_v2_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|98449544", "98449544", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_16.Enter", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_184();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1285303976", "1285303976", "TH_D4_POI_01_Main", "box_PlaySequence_v8_21.Finished", "box_OutputOrder_v2_184.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_179();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|786846268", "786846268", "TH_D4_POI_01_Main", "box_PlaySequence_v8_21.Skipped", "box_Simple_Node_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_183();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|178101463", "178101463", "TH_D4_POI_01_Main", "box_PlaySequence_v8_21.Started", "box_OutputOrder_v2_183.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_211_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_196();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1759074822", "1759074822", "TH_D4_POI_01_Main", "box_OutputOrder_v2_211.Out", "box_DynamicLightModifier_196.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_211_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_218();
    l0 = self.box_Delay_v5_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|43020039", "43020039", "TH_D4_POI_01_Main", "box_OutputOrder_v2_211.Out", "box_Delay_v5_218.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_64_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_65();
    l0 = self.box_ProximityTrigger_v2_64;
    l1 = self.box_SoundModifier_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|12213930", "12213930", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_64.Enter", "box_SoundModifier_v2_65.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_6_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_167();
    l0 = self.box_PlaySequence_v8_6;
    l1 = self.box_Delay_v5_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1683087158", "1683087158", "TH_D4_POI_01_Main", "box_PlaySequence_v8_6.Started", "box_Delay_v5_167.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StartMetaSequence_38_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_38_Out();
    l0 = self.box_StartMetaSequence_38;
    l1 = self.box_StartMetaSequence_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1285997077", "1285997077", "TH_D4_POI_01_Main", "box_StartMetaSequence_38.Out", "box_StartMetaSequence_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ProximityTrigger_v2_140_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_138();
    l0 = self.box_ProximityTrigger_v2_140;
    l1 = self.box_PlaySequence_v8_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1267140375", "1267140375", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_140.Enter", "box_PlaySequence_v8_138.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_MissionBlockLayer_97_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_208();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1135959718", "1135959718", "TH_D4_POI_01_Main", "box_MissionBlockLayer_97.Activated", "box_OutputOrder_v2_208.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_244_Disabled()
    local l0, l1;
    l0 = self.box_UniversalInteractionModifier_v2_244;
    l1 = self.box_MultipleOR_246;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2086856467", "2086856467", "TH_D4_POI_01_Main", "box_UniversalInteractionModifier_v2_244.Disabled", "box_MultipleOR_246.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UniversalInteractionModifier_v2_244_Interacted()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_244();
    l0 = self.box_UniversalInteractionModifier_v2_244;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1189137920", "1189137920", "TH_D4_POI_01_Main", "box_UniversalInteractionModifier_v2_244.Interacted", "box_UniversalInteractionModifier_v2_244.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_17_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_165();
    l0 = self.box_PlaySequence_v8_17;
    l1 = self.box_Delay_v5_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|845710630", "845710630", "TH_D4_POI_01_Main", "box_PlaySequence_v8_17.Started", "box_Delay_v5_165.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_202_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1843935939", "1843935939", "TH_D4_POI_01_Main", "box_OutputOrder_v2_202.Out", "box_MultipleOR_141.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_202_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_201();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|483498556", "483498556", "TH_D4_POI_01_Main", "box_OutputOrder_v2_202.Out", "box_DynamicLightModifier_201.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_195_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_194();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|729101286", "729101286", "TH_D4_POI_01_Main", "box_OutputOrder_v2_195.Out", "box_OutputOrder_v2_194.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_195_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_192();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1989908856", "1989908856", "TH_D4_POI_01_Main", "box_OutputOrder_v2_195.Out", "box_DynamicLightModifier_192.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_60_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_StartCelebration_60;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1227301997", "1227301997", "TH_D4_POI_01_Main", "box_StartCelebration_60.Ended", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_60_Started()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_73();
    l0 = self.box_StartCelebration_60;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1722841697", "1722841697", "TH_D4_POI_01_Main", "box_StartCelebration_60.Started", "box_EndActivityObjective_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_246_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = self.box_MultipleOR_246;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|575636126", "575636126", "TH_D4_POI_01_Main", "box_MultipleOR_246.Out", "box_OutputOrder_v2_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_134_SPOut__Close_Window_()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_161();
    l0 = self.box_PlaySequence_v8_134;
    l1 = self.box_PlaySequence_v8_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1020085048", "1020085048", "TH_D4_POI_01_Main", "box_PlaySequence_v8_134.SPOut", "box_PlaySequence_v8_161.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_134_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_17();
    l0 = self.box_PlaySequence_v8_134;
    l1 = self.box_PlaySequence_v8_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1805506650", "1805506650", "TH_D4_POI_01_Main", "box_PlaySequence_v8_134.Started", "box_PlaySequence_v8_17.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_82_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_151();
    l0 = self.box_ProximityTrigger_v2_82;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|180655412", "180655412", "TH_D4_POI_01_Main", "box_ProximityTrigger_v2_82.Enter", "box_EndActivityObjective_v2_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_117_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_116();
    l0 = self.box_Delay_v5_117;
    l1 = self.box_LookAtTrigger_v2_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2082392069", "2082392069", "TH_D4_POI_01_Main", "box_Delay_v5_117.TimeElapsed", "box_LookAtTrigger_v2_116.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_151_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_86();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|166641659", "166641659", "TH_D4_POI_01_Main", "box_EndActivityObjective_v2_151.Out", "box_AddActivityObjective_v2_86.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_208_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_100();
    l0 = self.box_EntityStatusListener_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1556833356", "1556833356", "TH_D4_POI_01_Main", "box_OutputOrder_v2_208.Out", "box_EntityStatusListener_100.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_208_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_127();
    l0 = self.box_EntityStatusListener_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|138822582", "138822582", "TH_D4_POI_01_Main", "box_OutputOrder_v2_208.Out", "box_EntityStatusListener_127.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_208_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_150();
    l0 = self.box_EntityStatusListener_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1346508523", "1346508523", "TH_D4_POI_01_Main", "box_OutputOrder_v2_208.Out", "box_EntityStatusListener_150.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_208_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_207();
    l0 = self.box_EntityStatusListener_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|950860329", "950860329", "TH_D4_POI_01_Main", "box_OutputOrder_v2_208.Out", "box_EntityStatusListener_207.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_208_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_209();
    l0 = self.box_EntityStatusListener_209;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1638292819", "1638292819", "TH_D4_POI_01_Main", "box_OutputOrder_v2_208.Out", "box_EntityStatusListener_209.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetActivityFact_242_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_246;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1644192587", "1644192587", "TH_D4_POI_01_Main", "box_SetActivityFact_242.Out", "box_MultipleOR_246.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1401600839", "1401600839", "TH_D4_POI_01_Main", "box_OutputOrder_v2_68.Out", "box_MultipleOR_141.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_230;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|831186245", "831186245", "TH_D4_POI_01_Main", "box_OutputOrder_v2_68.Out", "box_MultipleOR_230.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_68_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_220;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1420807156", "1420807156", "TH_D4_POI_01_Main", "box_OutputOrder_v2_68.Out", "box_MultipleOR_220.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_68_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1424741126", "1424741126", "TH_D4_POI_01_Main", "box_OutputOrder_v2_68.Out", "box_MultipleOR_185.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_68_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_142();
    l0 = self.box_ProximityTrigger_v2_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|140466388", "140466388", "TH_D4_POI_01_Main", "box_OutputOrder_v2_68.Out", "box_ProximityTrigger_v2_142.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_68_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_33();
    l0 = self.box_ProximityTrigger_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1477181920", "1477181920", "TH_D4_POI_01_Main", "box_OutputOrder_v2_68.Out", "box_ProximityTrigger_v2_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StartMetaSequence_81_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_81_Out();
    l0 = self.box_StartMetaSequence_81;
    l1 = self.box_StartMetaSequence_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1489517628", "1489517628", "TH_D4_POI_01_Main", "box_StartMetaSequence_81.Out", "box_StartMetaSequence_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_155_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_243();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1367886943", "1367886943", "TH_D4_POI_01_Main", "box_ActivityObjectiveMarkerModifier_v3_155.Enabled", "box_GetActivityFact_243.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_53();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|406272339", "406272339", "TH_D4_POI_01_Main", "box_OutputOrder_v2_35.Out", "box_Simple_Node_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_99();
    l0 = self.box_RemoveEntity_v2_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|92113383", "92113383", "TH_D4_POI_01_Main", "box_OutputOrder_v2_35.Out", "box_RemoveEntity_v2_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_123_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_124();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1079202915", "1079202915", "TH_D4_POI_01_Main", "box_OutputOrder_v2_123.Out", "box_Print_v2_124.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1108889466", "1108889466", "TH_D4_POI_01_Main", "box_OutputOrder_v2_123.Out", "box_Simple_Node_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_125();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|362037494", "362037494", "TH_D4_POI_01_Main", "box_OutputOrder_v2_123.Out", "box_ActivityRetry_125.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_167_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_6();
    l0 = self.box_Delay_v5_167;
    l1 = self.box_PlaySequence_v8_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1439760392", "1439760392", "TH_D4_POI_01_Main", "box_Delay_v5_167.TimeElapsed", "box_PlaySequence_v8_6.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_OutputOrder_v2_144_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_129();
    l0 = self.box_PlaySequence_v8_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|410665598", "410665598", "TH_D4_POI_01_Main", "box_OutputOrder_v2_144.Out", "box_PlaySequence_v8_129.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_144_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_143();
    l0 = self.box_SoundMusicTriggerBox_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1276776936", "1276776936", "TH_D4_POI_01_Main", "box_OutputOrder_v2_144.Out", "box_SoundMusicTriggerBox_143.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_144_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_156();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1540232662", "1540232662", "TH_D4_POI_01_Main", "box_OutputOrder_v2_144.Out", "box_UnlockDoor_156.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_144_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_92();
    l0 = self.box_SoundModifier_v2_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|988028098", "988028098", "TH_D4_POI_01_Main", "box_OutputOrder_v2_144.Out", "box_SoundModifier_v2_92.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_144_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_96();
    l0 = self.box_SoundModifier_v2_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1955619069", "1955619069", "TH_D4_POI_01_Main", "box_OutputOrder_v2_144.Out", "box_SoundModifier_v2_96.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_110_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_107();
    l0 = self.box_OnceOnly_v3_110;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2128198065", "2128198065", "TH_D4_POI_01_Main", "box_OnceOnly_v3_110.Out", "box_StaticBreakableBreaker_107.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(5, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_130_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1673580310", "1673580310", "TH_D4_POI_01_Main", "box_OutputOrder_v2_130.Out", "box_MultipleOR_163.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_130_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|402472695", "402472695", "TH_D4_POI_01_Main", "box_OutputOrder_v2_130.Out", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|@Stop");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_53_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|@stopMusic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_146_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|20779068");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_203_Out,
    });
    params = {
        -- Message,
        [0] = "Cinema/CinematicSceneEntity_Barn_HangingLamp_GOGOGO",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_103()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_30()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDSlidingButcher,
        -- SceneEntity,
        [3] = "2100899419787370500",
        -- SequenceFile,
        [4] = "sequences/zeta_main/envst/barn_butcher/barn_butcher.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_85()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103937464017113785",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_207()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104812935168665064",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|74142339");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|79321070");
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
                [0] = self.f_box_OutputOrder_v2_228_Out_0,
                [1] = self.f_box_OutputOrder_v2_228_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|82545104");
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
                [0] = self.f_box_OutputOrder_v2_235_Out_0,
                [1] = self.f_box_OutputOrder_v2_235_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_65()
    local params;
    params = {
        -- Pawns,
        [0] = "2100260799999125474",
        -- SoundId,
        [1] = "910010370",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|132223403");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_156_Unlocked,
    });
    params = {
        -- door,
        [0] = "2104935133321663144",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|140506482");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2101381971071472372",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|142693629");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 12,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
                [3] = self.f_box_OutputOrder_v2_2_Out_3,
                [4] = self.f_box_OutputOrder_v2_2_Out_4,
                [5] = self.f_box_OutputOrder_v2_2_Out_5,
                [6] = self.f_box_OutputOrder_v2_2_Out_6,
                [7] = self.f_box_OutputOrder_v2_2_Out_7,
                [8] = self.f_box_OutputOrder_v2_2_Out_8,
                [10] = self.f_box_OutputOrder_v2_2_Out_10,
                [11] = self.f_box_OutputOrder_v2_2_Out_11,
            },
            count = 12,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_165()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
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
        [2] = self.MetaIDSlasher,
        -- SceneEntity,
        [3] = "2101563646338416452",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/ENVST/Barn_SlasherDummy/barn_slasherdummy_loop.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|172615945");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_157_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "THD401 - Hounted House (scary barn)",
            item = "THD401_B1_Objective_01",
            id = "728799",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|178105630");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2101383940261558442",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_232()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|189057824");
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
                [0] = self.f_box_OutputOrder_v2_232_Out_0,
                [1] = self.f_box_OutputOrder_v2_232_Out_1,
            },
            count = 2,
        },
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|199419415");
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

function export:OnEnter_box_GetPlayerGroup_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|210149892");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_147_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|212836309");
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
                [0] = self.f_box_OutputOrder_v2_184_Out_0,
                [1] = self.f_box_OutputOrder_v2_184_Out_1,
                [2] = self.f_box_OutputOrder_v2_184_Out_2,
                [3] = self.f_box_OutputOrder_v2_184_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_139()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDHangingDummy,
        -- SceneEntity,
        [3] = "2102628498358152296",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/envst/Barn_HangingDummy/barn_hangingdummy.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|217681650");
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

function export:OnEnter_box_SoundModifier_v2_72()
    local params;
    params = {
        -- Pawns,
        [0] = "2100260784696207324",
        -- SoundId,
        [1] = "3377533989",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|292125072");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_154_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "THD401 - Hounted House (scary barn)",
            item = "THD401_B1_Objective_01",
            id = "728799",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_99()
    local params;
    params = {
        -- Group,
        [0] = "2104853195216931215",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_28()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDSlidingWindow2,
        -- SceneEntity,
        [3] = "2100899845062532524",
        -- SequenceFile,
        [4] = "sequences/zeta_main/TH_D401/sliding_window_2.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_153()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|330642595");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 22,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Treasure hunt activity \"Haunted Barn\" ended",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|331714098");
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

function export:OnEnter_box_StaticBreakableListener_238()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101712650976112561",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_92()
    local params;
    params = {
        -- Pawns,
        [0] = "2104811156574071800",
        -- SoundId,
        [1] = "3339792980",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_240()
    local params;
    params = {
        -- Pawns,
        [0] = "2103937446610752183",
        -- SoundId,
        [1] = "2790741716",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_48()
    local params;
    params = {
        -- blendTime,
        [1] = 0.4,
        -- endTarget,
        [4] = "2100070584038722969",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101367841625220182",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|374207134");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104421306117132072",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_76()
    local params;
    params = {
        -- Pawns,
        [0] = "2103937419194684085",
        -- SoundId,
        [1] = "2924018254",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_114()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|386770875");
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
                [0] = self.f_box_OutputOrder_v2_224_Out_0,
                [1] = self.f_box_OutputOrder_v2_224_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|400860026");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2102820394690947828",
    };
    return params;
end;

function export:OnEnter_box_Switch_213()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|418386019");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2103481646173924825",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_127()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104812929858676196",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_57()
    local params;
    params = {
        -- Pawns,
        [0] = "2101286330882341234",
        -- SoundId,
        [1] = "2306769320",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_118()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2102295133438371707",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102294912195127154",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_33()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2100900217107783117",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_83()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2101634474453247674",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_223()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|487678350");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104812159853681180",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_77()
    local params;
    params = {
        -- Pawns,
        [0] = "2100263523125844966",
        -- SoundId,
        [1] = "1345817550",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|516545322");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103786085944414435",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|531517816");
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|536803712");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104174074660939295",
        -- ObjectiveId,
        [2] = {
            section = "THD401 - Hounted House (scary barn)",
            item = "THD401_B2_GOAL",
            id = "728800",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_218()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|587701596");
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
                [0] = self.f_box_OutputOrder_v2_145_Out_0,
                [1] = self.f_box_OutputOrder_v2_145_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_152()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|633784766");
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
                [0] = self.f_box_OutputOrder_v2_217_Out_0,
                [1] = self.f_box_OutputOrder_v2_217_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|634108852");
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
                [0] = self.f_box_OutputOrder_v2_183_Out_0,
                [1] = self.f_box_OutputOrder_v2_183_Out_1,
                [2] = self.f_box_OutputOrder_v2_183_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|634783263");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2102601132881757382",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|636617054");
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

function export:OnEnter_box_PlaySequence_v8_23()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDExorcist,
        -- SceneEntity,
        [3] = "2100899424216555528",
        -- SequenceFile,
        [4] = "sequences/zeta_main/envst/barn_exorcist/barn_exorcist.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_243()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|653442757");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_243_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_243_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015219473192236",
        -- Fact,
        [1] = "unlocked",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_67()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101286515551254908",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|662705294");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "36167453281119575",
        -- missionLayerId,
        [1] = "45174652535860568",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|667152946");
    l0:SetConnections({
        -- DamageableChanged,
        [0] = self.f_box_StaticBreakableBreaker_107_DamageableChanged,
        -- StateChanged,
        [3] = self.f_box_StaticBreakableBreaker_107_StateChanged,
    });
    params = {
        -- entity,
        [0] = "2102213021186247285",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103937399001207475",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|684227873");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2103481523427618274",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_29()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2100900223181135313",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2100900174973902273",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_19()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102213147365591674",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_96()
    local params;
    params = {
        -- Pawns,
        [0] = "2104811156574071800",
        -- SoundId,
        [1] = "3844218654",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2100900191189081545",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|737150594");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103785517897240801",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_95()
    local params;
    params = {
        -- Pawns,
        [0] = "2104811156574071800",
        -- SoundId,
        [1] = "756391096",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Switch_221()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|750205972");
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
                [0] = self.f_box_OutputOrder_v2_194_Out_0,
                [1] = self.f_box_OutputOrder_v2_194_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104812599943107296",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|785389559");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_149_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2102776242678809173",
        -- ObjectiveId,
        [2] = {
            section = "THD401 - Hounted House (scary barn)",
            item = "THD401_B2_Objective_01",
            id = "728801",
        },
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_132()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2102615660124182094",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_142()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102628771596086386",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|810672784");
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
                [0] = self.f_box_OutputOrder_v2_131_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|833033363");
    l0:SetConnections({
        -- DamageableChanged,
        [0] = self.f_box_StaticBreakableBreaker_108_DamageableChanged,
        -- StateChanged,
        [3] = self.f_box_StaticBreakableBreaker_108_StateChanged,
    });
    params = {
        -- entity,
        [0] = "2102213014315977331",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_161()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDSliding_Window1,
        -- SceneEntity,
        [3] = "2100899688526913600",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/th_d401/sliding_window_1_backward.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|873512814");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2103457667480566748",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|874463371");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2103457543459191634",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_113()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_126()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015255988987428",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|887144605");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|890994356");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2102820379614522096",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_206()
    local params;
    params = {
        -- usableEntity,
        [4] = "2101840007770679361",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101563959493541720",
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_143()
    local params;
    params = {
        -- EntityId,
        [0] = "2102724480456470500",
        -- FadeOutType,
        [1] = 4,
        -- Priority,
        [2] = 0,
        -- SoundType,
        [3] = 30,
        -- Stackable,
        [4] = false,
        -- StartEvent,
        [5] = "3541661118",
        -- StopEvent,
        [6] = "1297514584",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|943143326");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2103457576545958784",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_75()
    local params;
    params = {
        -- Pawns,
        [0] = "2100260784696207324",
        -- SoundId,
        [1] = "595314339",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|974746574");
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
                [1] = self.f_box_OutputOrder_v2_160_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|983961096");
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
                [0] = self.f_box_OutputOrder_v2_188_Out_0,
                [1] = self.f_box_OutputOrder_v2_188_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_116()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2102295003242981241",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|986942573");
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

function export:OnEnter_box_AddActivityObjective_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|992321713");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_86_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "THD401 - Hounted House (scary barn)",
            item = "THD401_B2_GOAL",
            id = "728800",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_115()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1019029342");
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
                [0] = self.f_box_OutputOrder_v2_216_Out_0,
                [1] = self.f_box_OutputOrder_v2_216_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1027679567");
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
                [0] = self.f_box_OutputOrder_v2_171_Out_0,
                [1] = self.f_box_OutputOrder_v2_171_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1043641713");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2101381879721628283",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_66()
    local params;
    params = {
        -- Pawns,
        [0] = "2100263537547959272",
        -- SoundId,
        [1] = "163778454",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_100()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104812932087948774",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_90()
    local params;
    params = {
        -- Group,
        [0] = "2101634441733482165",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1153913048");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_135()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2101840007770679361",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1185349341");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104271982611672999",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1190298582");
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
                [0] = self.f_box_OutputOrder_v2_193_Out_0,
                [1] = self.f_box_OutputOrder_v2_193_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1190903176");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_58_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2101453761208652857",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_119()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1227009347");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_15_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2103471416230817248",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2100900145431322037",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1285771719");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_39()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDZombie3,
        -- SceneEntity,
        [3] = "2100899588429848620",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/ENVST/Barn_ZombyCreek/barn_zombycreek_loop.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_5()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDZombie0,
        -- SceneEntity,
        [3] = "2100899424766009356",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/ENVST/Barn_Riserdummy/barn_riserdummy.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_46()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDSlasher,
        -- SceneEntity,
        [3] = "2101563646338416452",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/ENVST/Barn_SlasherDummy/barn_slasherdummy.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1336660229");
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
                [1] = self.f_box_OutputOrder_v2_63_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1347420693");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_245_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1371385484");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1376194627");
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
                [0] = self.f_box_OutputOrder_v2_219_Out_0,
                [1] = self.f_box_OutputOrder_v2_219_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1378803081");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2101383950288042158",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1382180560");
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
                [0] = self.f_box_OutputOrder_v2_190_Out_0,
                [1] = self.f_box_OutputOrder_v2_190_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1393243340");
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
                [0] = self.f_box_OutputOrder_v2_121_Out_0,
                [1] = self.f_box_OutputOrder_v2_121_Out_1,
                [2] = self.f_box_OutputOrder_v2_121_Out_2,
                [3] = self.f_box_OutputOrder_v2_121_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_74()
    local params;
    params = {
        -- Pawns,
        [0] = "2100260784696207324",
        -- SoundId,
        [1] = "1842456389",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_84()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2101634489053619904",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_88()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2101634496603367110",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101634480014894781",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_91()
    local params;
    params = {
        -- Group,
        [0] = "2101634480014894781",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_7()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1484304295");
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

function export:OnEnter_box_Switch_227()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1498717980");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2103456042290516236",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_13()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDZombie3,
        -- SceneEntity,
        [3] = "2100899588429848620",
        -- SequenceFile,
        [4] = "sequences/zeta_main/envst/barn_zombycreek/barn_zombycreek.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_56()
    local params;
    params = {
        -- Pawns,
        [0] = "2103937484294476475",
        -- SoundId,
        [1] = "2432309493",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_87()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2101634457237726902",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101634441733482165",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_138()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDHangingDummy,
        -- SceneEntity,
        [3] = "2102628498358152296",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/envst/Barn_HangingDummy/barn_hangingdummy_loop.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_237()
    local params;
    params = {
        -- Pawns,
        [0] = "2105046404515765024",
        -- SoundId,
        [1] = "2017065996",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_166()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103775388294453013",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_22()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2100900177259797957",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1643297244");
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
                [0] = self.f_box_OutputOrder_v2_128_Out_0,
                [2] = self.f_box_OutputOrder_v2_128_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_120()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2102295154617509761",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102294912195127154",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_150()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104812953665545708",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1677975191");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 11,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "broadcasting a message",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_176()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100899588429848620",
    };
    return params;
end;

function export:OnEnter_box_Switch_215()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2100900162116263353",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1742072219");
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
                [0] = self.f_box_OutputOrder_v2_200_Out_0,
                [1] = self.f_box_OutputOrder_v2_200_Out_1,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1746404618");
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

function export:OnEnter_box_StaticBreakableBreaker_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1767779966");
    l0:SetConnections({
        -- DamageableChanged,
        [0] = self.f_box_StaticBreakableBreaker_106_DamageableChanged,
        -- StateChanged,
        [3] = self.f_box_StaticBreakableBreaker_106_StateChanged,
    });
    params = {
        -- entity,
        [0] = "2102213021645523575",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1771690861");
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
                [0] = self.f_box_OutputOrder_v2_102_Out_0,
                [1] = self.f_box_OutputOrder_v2_102_Out_1,
                [2] = self.f_box_OutputOrder_v2_102_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_136()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2102628310191189090",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/envst/Barn_SlasherCorpse/barn_slashercorpse.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
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
        [2] = "2104812935961388522",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1815115076");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103786096920908005",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1816929355");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103785173167395039",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1843330478");
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
        [8] = "Corpse 3 removed",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1854275728");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_148_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "THD401 - Hounted House (scary barn)",
            item = "THD401_B2_Objective_01",
            id = "728801",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_129()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2102615646486402635",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/envst/barn_windowguy/barn_windowguy.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1880382606");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1905916394");
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
                [0] = self.f_box_OutputOrder_v2_172_Out_0,
                [1] = self.f_box_OutputOrder_v2_172_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1926033749");
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
                [0] = self.f_box_OutputOrder_v2_175_Out_0,
                [1] = self.f_box_OutputOrder_v2_175_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_247()
    local params;
    params = {
        -- Group,
        [0] = "2105252521810342326",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1928421674");
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
        [8] = "Corpse 2 removed",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_16()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2100900170089635261",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_21()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDCarCrash,
        -- SceneEntity,
        [3] = "2100899946034109870",
        -- SequenceFile,
        [4] = "sequences/zeta_main/TH_D401/carcrash.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1946346576");
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
                [0] = self.f_box_OutputOrder_v2_211_Out_0,
                [1] = self.f_box_OutputOrder_v2_211_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101286417853331832",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_6()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDZombie3,
        -- SceneEntity,
        [3] = "2100899588429848620",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/ENVST/Barn_ZombyCreek/barn_zombycreek_loop.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1969405918");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2103456309616578898",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_140()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102628676882410606",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1992645327");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_97_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "36167453281119575",
        -- missionLayerId,
        [1] = "54181851790752378",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_244()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    params = {
        -- interactor,
        [2] = l0:GetDataOutValue(0),
        -- usableEntity,
        [4] = "2101840007770679361",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|1995656009");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2016381898");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_17()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDSliding_Window1,
        -- SceneEntity,
        [3] = "2100899688526913600",
        -- SequenceFile,
        [4] = "sequences/zeta_main/TH_D401/sliding_window_1.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2031207693");
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
                [0] = self.f_box_OutputOrder_v2_202_Out_0,
                [1] = self.f_box_OutputOrder_v2_202_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2032094970");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2102295416138635111",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2038272859");
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
                [0] = self.f_box_OutputOrder_v2_195_Out_0,
                [1] = self.f_box_OutputOrder_v2_195_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_60()
    local params;
    params = {
        -- Preset,
        [0] = "9015219471541668",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_134()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.BaseBall_Guy,
        -- SceneEntity,
        [3] = "2102615775138289235",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/envst/Barn_BaseballBat/barn_baseballbat.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2059364819");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "THD401 - Hounted House (scary barn)",
            item = "THD401_B2_GOAL",
            id = "728800",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_82()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104174037256136219",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_117()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 36,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2092880488");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_151_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "THD401 - Hounted House (scary barn)",
            item = "THD401_B2_Objective_01",
            id = "728801",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2095477001");
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
                [0] = self.f_box_OutputOrder_v2_208_Out_0,
                [1] = self.f_box_OutputOrder_v2_208_Out_1,
                [2] = self.f_box_OutputOrder_v2_208_Out_2,
                [3] = self.f_box_OutputOrder_v2_208_Out_3,
                [4] = self.f_box_OutputOrder_v2_208_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_242");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2097208518");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_242_Out,
    });
    params = {
        -- Fact,
        [0] = "unlocked",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2116888885");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
                [2] = self.f_box_OutputOrder_v2_68_Out_2,
                [3] = self.f_box_OutputOrder_v2_68_Out_3,
                [4] = self.f_box_OutputOrder_v2_68_Out_4,
                [5] = self.f_box_OutputOrder_v2_68_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2121242173");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_155_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2102776213805220433",
        -- ObjectiveId,
        [2] = {
            section = "THD401 - Hounted House (scary barn)",
            item = "THD401_B1_Objective_01",
            id = "728799",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_70()
    local params;
    params = {
        -- Pawns,
        [0] = "2103937446610752183",
        -- SoundId,
        [1] = "2091470292",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2134599949");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2134936065");
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
                [0] = self.f_box_OutputOrder_v2_123_Out_0,
                [1] = self.f_box_OutputOrder_v2_123_Out_1,
                [2] = self.f_box_OutputOrder_v2_123_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_167()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2138993208");
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
                [0] = self.f_box_OutputOrder_v2_144_Out_0,
                [1] = self.f_box_OutputOrder_v2_144_Out_1,
                [2] = self.f_box_OutputOrder_v2_144_Out_2,
                [3] = self.f_box_OutputOrder_v2_144_Out_3,
                [4] = self.f_box_OutputOrder_v2_144_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D4_POI_01_Main.domino|@TH_D4_POI_01_Main|2142786342");
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
                [0] = self.f_box_OutputOrder_v2_130_Out_0,
                [1] = self.f_box_OutputOrder_v2_130_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_147_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_137_Out()
    local l0;
    l0 = self.box_StartMetaSequence_137;
    self.MetaIDHangingDummy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_109_Out()
    local l0;
    l0 = self.box_StartMetaSequence_109;
    self.BaseBall_Guy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_43_Out()
    local l0;
    l0 = self.box_StartMetaSequence_43;
    self.MetaIDSlidingWindow2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_45_Out()
    local l0;
    l0 = self.box_StartMetaSequence_45;
    self.MetaIDSlidingButcher = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_41_Out()
    local l0;
    l0 = self.box_StartMetaSequence_41;
    self.MetaIDExorcist = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_47_Out()
    local l0;
    l0 = self.box_StartMetaSequence_47;
    self.MetaIDZombie3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_44_Out()
    local l0;
    l0 = self.box_StartMetaSequence_44;
    self.MetaIDSlidingWindow3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_49_Out()
    local l0;
    l0 = self.box_StartMetaSequence_49;
    self.MetaIDCarCrash = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_245_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_UniversalInteractionModifier_v2_244;
    l1:GetLuaBox().interactor = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_40_Out()
    local l0;
    l0 = self.box_StartMetaSequence_40;
    self.MetaIDSliding_Window1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_1_Out()
    local l0;
    l0 = self.box_StartMetaSequence_1;
    self.MetaIDSlasher = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_38_Out()
    local l0;
    l0 = self.box_StartMetaSequence_38;
    self.MetaIDZombie0 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_81_Out()
    local l0;
    l0 = self.box_StartMetaSequence_81;
    self.MetaIDSlasher = l0:GetDataOutValue(0);
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
