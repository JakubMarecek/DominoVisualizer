LUAC8� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_450/mis_450_b40.domino
-- User graph: MIS_450_B40_graph
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Impact VFX" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/mis_450/MIS_450_B40.CanonPipe.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2024226209.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4211003825.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2604139666.bnk]], "CSoundResource");
        cboxRes:LoadResource([[16358332.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3897454682.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2820544222.bnk]], "CSoundResource");
        cboxRes:LoadResource([[698672423.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1537278571.bnk]], "CSoundResource");
        cboxRes:LoadResource([[709375046.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1304835985.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1973206597.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2395235040.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4210602046.bnk]], "CSoundResource");
        cboxRes:LoadResource([[23006944.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3045932802.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/mis_450/MIS_450_B40.MIS_450_B40_graph.debug.lua")] = {
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
                name = "Impact_VFX",
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
    metadataTable[GetPathID("Domino/System/AI/RegenerateNavmesh.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Completed",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "RegionEntity",
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
    metadataTable[GetPathID("Domino/System/ShimmerModifier_v2.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "B",
                type = "float",
            },
            [1] = {
                name = "G",
                type = "float",
            },
            [2] = {
                name = "R",
                type = "float",
            },
            [3] = {
                name = "Speed",
                type = "float",
            },
            [4] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/SoundPointModifier.lua")] = {
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
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "soundPoint",
                type = "entity",
            },
        },
        dataInCount = 1,
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
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/mis_450/MIS_450_B40.CanonPipe.debug.lua")] = {
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
                name = "BlowupVFX",
                type = "entity",
            },
            [1] = {
                name = "Cap",
                type = "entity",
            },
            [2] = {
                name = "CapEndPos",
                type = "entity",
            },
            [3] = {
                name = "CapHitDoorPos",
                type = "entity",
            },
            [4] = {
                name = "DamageTrigger",
                type = "entity",
            },
            [5] = {
                name = "HitObj",
                type = "entity",
            },
            [6] = {
                name = "HitObjEndPos",
                type = "entity",
            },
            [7] = {
                name = "Impact_VFX",
                type = "entity",
            },
            [8] = {
                name = "PipePressureVFX_1",
                type = "entity",
            },
            [9] = {
                name = "PipePressureVFX_2",
                type = "entity",
            },
            [10] = {
                name = "SoundPoint_Pipe",
                type = "entity",
            },
            [11] = {
                name = "SoundPoint_Valve",
                type = "entity",
            },
        },
        dataInCount = 12,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_450_B40_graph";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph";
    self.Players = nil;
    self.Quebecois = nil;
    self.bWaterLevel3 = false;
    self.bWaterLevel_35 = false;
    self.box_GunsForHireSystemModifier_53 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|232895176");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_53_Disabled,
    });
    self.box_RequestPhoneCall_v2_20 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|259892204");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_49 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|288836664");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_49_SomeoneNear,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|324465503");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_SoundModifier_v2_60 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|365326157");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_60_Started,
    });
    self.box_VisibilityModifier_84 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|436786097");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_11 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|438149243");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_11_Done,
    });
    self.box_SoundModifier_v2_33 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|447162676");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_33_Started,
    });
    self.box_PositionModifier_v2_76 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|473175546");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_19 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|558153663");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_19_Disabled,
    });
    self.box_SoundModifier_v2_32 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|635840222");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_32_Started,
    });
    self.box_PositionModifier_v2_12 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|640099316");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_12_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_12_StartOut,
    });
    self.box_RequestPhoneCall_v2_18 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|681164747");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_86 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|711650812");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_86_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_86_OnBreak,
    });
    self.box_SoundModifier_v2_59 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|748952783");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_59_Started,
    });
    self.box_ProximityRadiusListener_v3_79 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|822860039");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_79_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_79_SomeoneNear,
    });
    self.box_EntityStatusListener_8 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|823433065");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_8_Loaded,
    });
    self.box_ProximityRadiusListener_v3_45 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|867948030");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_45_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_70 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|880183358");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_70_SomeoneNear,
    });
    self.box_OnceOnly_v3_21 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|889590219");
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
                [0] = self.f_box_OnceOnly_v3_21_Out_0,
            },
            count = 2,
        },
    });
    self.box_PositionModifier_v2_64 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|975661675");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_v2_72 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|979618576");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_72_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_72_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_72_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_72_LoadedIdReceived,
    });
    self.box_ProximityRadiusListener_v3_4 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|992313496");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_4_SomeoneNear,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1011420628");
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
    self.box_SoundModifier_v2_34 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1018799709");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_34_Started,
    });
    self.box_RegenerateNavmesh_44 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1026893112");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_RegenerateNavmesh_44_Completed,
    });
    self.box_RequestPhoneCall_v2_23 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1032062987");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_22 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1103673398");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_93 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1108431289");
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
                [0] = self.f_box_OnceOnly_v3_93_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_95 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1108913993");
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
    self.box_PositionModifier_v2_96 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1163229096");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_62 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1163324916");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_42 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1206296682");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_42_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_42_StartOut,
    });
    self.box_SoundModifier_v2_30 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1209610376");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_25 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1225669945");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_25_SomeoneNear,
    });
    self.box_UniversalInteractionListener_10 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1264844663");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_10_Interacted,
    });
    self.box_SoundModifier_v2_35 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1285396915");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_35_Started,
    });
    self.box_SpawnAI_74 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1297794458");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_24 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1398592411");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_24_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_24_SomeoneNear,
    });
    self.box_CoopActivePlayers_46 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1422722792");
    l0:SetConnections({
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_46_PlayerAdded,
    });
    self.box_Music_Quest_v2_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1436422243");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_58 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1499548545");
    l0:SetConnections({
    });
    self.box_Delay_v5_91 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1563395942");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_91_TimeElapsed,
    });
    self.box_TeleportPawns_16 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1625609790");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_16_Out,
    });
    self.box_PositionModifier_v2_105 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1652796002");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_77 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1658524339");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_77_Finished,
    });
    self.box_PositionModifier_v2_63 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1683760559");
    l0:SetConnections({
    });
    self.box_ShimmerModifier_v2_85 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1777856637");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_85_Disabled,
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_85_Enabled,
    });
    self.box_OnceOnly_v3_78 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1852828221");
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
                [0] = self.f_box_OnceOnly_v3_78_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_47 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1886494779");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_47_TimeElapsed,
    });
    self.box_PositionModifier_v2_102 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1928722925");
    l0:SetConnections({
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1991630572");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_EntityStatusListener_37 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2031976650");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_37_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_37_Loaded,
    });
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2045029223");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_RequestPhoneCall_v2_26 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2059019748");
    l0:SetConnections({
    });
    self.box_CanonPipe_48 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/mis_450/MIS_450_B40.CanonPipe.debug.lua");
    l0 = self.box_CanonPipe_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CanonPipe_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2076599047");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CanonPipe_48_Out,
    });
    self.box_GunsForHireSystemModifier_71 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2095178911");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_71_Disabled,
    });
    self.box_ProximityRadiusListener_v3_13 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2108662320");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_13_SomeoneNear,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|518627440", "518627440", "MIS_450_B40_graph", "In", "box_ActivityAcknowledgeGate_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_98_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_97();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1998108747", "1998108747", "MIS_450_B40_graph", "box_Simple_Node_98.Out", "box_StaticBreakableBreaker_97.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_66_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_60();
    l0 = self.box_SoundModifier_v2_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2061836185", "2061836185", "MIS_450_B40_graph", "box_Simple_Node_66.Out", "box_SoundModifier_v2_60.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|459136223", "459136223", "MIS_450_B40_graph", "box_OutputOrder_v2_9.Out", "box_OutputOrder_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_4();
    l0 = self.box_ProximityRadiusListener_v3_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|689060836", "689060836", "MIS_450_B40_graph", "box_OutputOrder_v2_9.Out", "box_ProximityRadiusListener_v3_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_37();
    l0 = self.box_EntityStatusListener_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|76860386", "76860386", "MIS_450_B40_graph", "box_OutputOrder_v2_9.Out", "box_EntityStatusListener_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_1();
    l0 = self.box_Music_Quest_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1215109584", "1215109584", "MIS_450_B40_graph", "box_OutputOrder_v2_9.Out", "box_Music_Quest_v2_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_55_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RegenerateNavmesh_44();
    l0 = self.box_RegenerateNavmesh_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|100112629", "100112629", "MIS_450_B40_graph", "box_SetBoolean_v2_55.Out", "box_RegenerateNavmesh_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_36();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|272171377", "272171377", "MIS_450_B40_graph", "box_OutputOrder_v2_52.Out", "box_ActivityObjectiveMarkerModifier_v3_36.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_69();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|152851882", "152851882", "MIS_450_B40_graph", "box_OutputOrder_v2_52.Out", "box_ActivityObjectiveMarkerModifier_v3_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_53_Disabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_53;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1312753736", "1312753736", "MIS_450_B40_graph", "box_GunsForHireSystemModifier_53.Disabled", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_12();
    l0 = self.box_PositionModifier_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2057098601", "2057098601", "MIS_450_B40_graph", "box_OutputOrder_v2_28.Out", "box_PositionModifier_v2_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_98();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1542301866", "1542301866", "MIS_450_B40_graph", "box_OutputOrder_v2_28.Out", "box_Simple_Node_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_84();
    l0 = self.box_VisibilityModifier_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|343239061", "343239061", "MIS_450_B40_graph", "box_OutputOrder_v2_28.Out", "box_VisibilityModifier_84.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_80_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_45();
    l0 = self.box_ProximityRadiusListener_v3_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|518660756", "518660756", "MIS_450_B40_graph", "box_OutputOrder_v2_80.Out", "box_ProximityRadiusListener_v3_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_49_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_ProximityRadiusListener_v3_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|670304639", "670304639", "MIS_450_B40_graph", "box_ProximityRadiusListener_v3_49.SomeoneNear", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_85();
    l0 = self.box_ShimmerModifier_v2_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|222403801", "222403801", "MIS_450_B40_graph", "box_OutputOrder_v2_83.Out", "box_ShimmerModifier_v2_85.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CanonPipe_48();
    l0 = self.box_CanonPipe_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1787254151", "1787254151", "MIS_450_B40_graph", "box_OutputOrder_v2_83.Out", "box_CanonPipe_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_83_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_30();
    l0 = self.box_SoundModifier_v2_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|483565640", "483565640", "MIS_450_B40_graph", "box_OutputOrder_v2_83.Out", "box_SoundModifier_v2_30.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_11();
    l0 = self.box_PositionModifier_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2113365694", "2113365694", "MIS_450_B40_graph", "box_OutputOrder_v2_73.Out", "box_PositionModifier_v2_11.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_64();
    l0 = self.box_PositionModifier_v2_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|697472470", "697472470", "MIS_450_B40_graph", "box_OutputOrder_v2_73.Out", "box_PositionModifier_v2_64.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2127059983", "2127059983", "MIS_450_B40_graph", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|656335875", "656335875", "MIS_450_B40_graph", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SoundModifier_v2_60_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_59();
    l0 = self.box_SoundModifier_v2_60;
    l1 = self.box_SoundModifier_v2_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|833615707", "833615707", "MIS_450_B40_graph", "box_SoundModifier_v2_60.Started", "box_SoundModifier_v2_59.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_90_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_88();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1552275752", "1552275752", "MIS_450_B40_graph", "box_OutputOrder_v2_90.Out", "box_ActivityObjectiveMarkerModifier_v3_88.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_90_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_50();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1079739041", "1079739041", "MIS_450_B40_graph", "box_OutputOrder_v2_90.Out", "box_ActivityObjectiveMarkerModifier_v3_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_11_Done()
    local l0, l1;
    l0 = self.box_PositionModifier_v2_11;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1589123850", "1589123850", "MIS_450_B40_graph", "box_PositionModifier_v2_11.Done", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_100_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_105();
    l0 = self.box_PositionModifier_v2_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1086862354", "1086862354", "MIS_450_B40_graph", "box_Compare_Boolean_100.A_is_False", "box_PositionModifier_v2_105.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_100_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_63();
    l0 = self.box_PositionModifier_v2_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1039314352", "1039314352", "MIS_450_B40_graph", "box_Compare_Boolean_100.A_is_True", "box_PositionModifier_v2_63.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|95741837", "95741837", "MIS_450_B40_graph", "box_OutputOrder_v2_67.Out", "box_Delay_v5_47.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SoundModifier_v2_33_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_34();
    l0 = self.box_SoundModifier_v2_33;
    l1 = self.box_SoundModifier_v2_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|238115990", "238115990", "MIS_450_B40_graph", "box_SoundModifier_v2_33.Started", "box_SoundModifier_v2_34.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_103_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_103_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_104();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|333958314", "333958314", "MIS_450_B40_graph", "box_SetBoolean_v2_103.Out", "box_SetBoolean_v2_104.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_19_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_24();
    l0 = self.box_VisibilityModifier_19;
    l1 = self.box_ProximityRadiusListener_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1006682998", "1006682998", "MIS_450_B40_graph", "box_VisibilityModifier_19.Disabled", "box_ProximityRadiusListener_v3_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_68();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|598957784", "598957784", "MIS_450_B40_graph", "box_OutputOrder_v2_51.Out", "box_AddActivityObjective_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_72();
    l0 = self.box_CharacterLoadedIdListener_v2_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1401384237", "1401384237", "MIS_450_B40_graph", "box_OutputOrder_v2_51.Out", "box_CharacterLoadedIdListener_v2_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_32_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_96();
    l0 = self.box_SoundModifier_v2_32;
    l1 = self.box_PositionModifier_v2_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|460237439", "460237439", "MIS_450_B40_graph", "box_SoundModifier_v2_32.Started", "box_PositionModifier_v2_96.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_12_Done()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_55();
    l0 = self.box_PositionModifier_v2_12;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|855978160", "855978160", "MIS_450_B40_graph", "box_PositionModifier_v2_12.Done", "box_SetBoolean_v2_55.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_12_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_14();
    l0 = self.box_PositionModifier_v2_12;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1819969268", "1819969268", "MIS_450_B40_graph", "box_PositionModifier_v2_12.StartOut", "box_SoundPointModifier_14.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_69();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2071763104", "2071763104", "MIS_450_B40_graph", "box_OutputOrder_v2_89.Out", "box_ActivityObjectiveMarkerModifier_v3_69.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_92();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1635109804", "1635109804", "MIS_450_B40_graph", "box_OutputOrder_v2_89.Out", "box_AddActivityObjective_v2_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_86_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_StaticBreakableListener_86;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1427880059", "1427880059", "MIS_450_B40_graph", "box_StaticBreakableListener_86.Enabled", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_86_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = self.box_StaticBreakableListener_86;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|559339731", "559339731", "MIS_450_B40_graph", "box_StaticBreakableListener_86.OnBreak", "box_OutputOrder_v2_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_59_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_58();
    l0 = self.box_SoundModifier_v2_59;
    l1 = self.box_SoundModifier_v2_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|375465471", "375465471", "MIS_450_B40_graph", "box_SoundModifier_v2_59.Started", "box_SoundModifier_v2_58.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_85();
    l0 = self.box_ShimmerModifier_v2_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1181582870", "1181582870", "MIS_450_B40_graph", "box_OutputOrder_v2_31.Out", "box_ShimmerModifier_v2_85.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_30();
    l0 = self.box_SoundModifier_v2_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1424863344", "1424863344", "MIS_450_B40_graph", "box_OutputOrder_v2_31.Out", "box_SoundModifier_v2_30.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_56();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1214640487", "1214640487", "MIS_450_B40_graph", "box_OutputOrder_v2_75.Out", "box_ParticleSystem_v3_56.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_76();
    l0 = self.box_PositionModifier_v2_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|715651710", "715651710", "MIS_450_B40_graph", "box_OutputOrder_v2_75.Out", "box_PositionModifier_v2_76.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_88();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|141069634", "141069634", "MIS_450_B40_graph", "box_AddActivityObjective_v2_92.Out", "box_ActivityObjectiveMarkerModifier_v3_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_79_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_25();
    l0 = self.box_ProximityRadiusListener_v3_79;
    l1 = self.box_ProximityRadiusListener_v3_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|345084721", "345084721", "MIS_450_B40_graph", "box_ProximityRadiusListener_v3_79.Enabled", "box_ProximityRadiusListener_v3_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_79_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_79;
    l1 = self.box_OnceOnly_v3_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1031200261", "1031200261", "MIS_450_B40_graph", "box_ProximityRadiusListener_v3_79.SomeoneNear", "box_OnceOnly_v3_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_8_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = self.box_EntityStatusListener_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1941256070", "1941256070", "MIS_450_B40_graph", "box_EntityStatusListener_8.Loaded", "box_OutputOrder_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_14_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_15();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1932619119", "1932619119", "MIS_450_B40_graph", "box_SoundPointModifier_14.Stopped", "box_SoundPointModifier_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_45_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_45;
    l1 = self.box_OnceOnly_v3_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|805745258", "805745258", "MIS_450_B40_graph", "box_ProximityRadiusListener_v3_45.SomeoneNear", "box_OnceOnly_v3_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|431415876", "431415876", "MIS_450_B40_graph", "box_OutputOrder_v2_43.Out", "box_OutputOrder_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_86();
    l0 = self.box_StaticBreakableListener_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1944444226", "1944444226", "MIS_450_B40_graph", "box_OutputOrder_v2_43.Out", "box_StaticBreakableListener_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_41();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|812522958", "812522958", "MIS_450_B40_graph", "box_OutputOrder_v2_43.Out", "box_ParticleSystem_v3_41.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_42();
    l0 = self.box_PositionModifier_v2_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1861093414", "1861093414", "MIS_450_B40_graph", "box_OutputOrder_v2_43.Out", "box_PositionModifier_v2_42.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_19();
    l0 = self.box_VisibilityModifier_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|308181872", "308181872", "MIS_450_B40_graph", "box_OutputOrder_v2_43.Out", "box_VisibilityModifier_19.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_43_Out_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|588675465", "588675465", "MIS_450_B40_graph", "box_OutputOrder_v2_43.Out", "box_CoopActivePlayers_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_ProximityRadiusListener_v3_70_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_90();
    l0 = self.box_ProximityRadiusListener_v3_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|160514511", "160514511", "MIS_450_B40_graph", "box_ProximityRadiusListener_v3_70.SomeoneNear", "box_OutputOrder_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_40_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_39();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|241229783", "241229783", "MIS_450_B40_graph", "box_SoundPointModifier_40.Stopped", "box_SoundPointModifier_39.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_101_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_100();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|511281214", "511281214", "MIS_450_B40_graph", "box_Compare_Boolean_101.A_is_False", "box_Compare_Boolean_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_101_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_102();
    l0 = self.box_PositionModifier_v2_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1180686837", "1180686837", "MIS_450_B40_graph", "box_Compare_Boolean_101.A_is_True", "box_PositionModifier_v2_102.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_21_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_18();
    l0 = self.box_OnceOnly_v3_21;
    l1 = self.box_RequestPhoneCall_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|566938155", "566938155", "MIS_450_B40_graph", "box_OnceOnly_v3_21.Out", "box_RequestPhoneCall_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_68_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_36();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|424544590", "424544590", "MIS_450_B40_graph", "box_AddActivityObjective_v2_68.Out", "box_ActivityObjectiveMarkerModifier_v3_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_72_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_72_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_80();
    l0 = self.box_CharacterLoadedIdListener_v2_72;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1377567229", "1377567229", "MIS_450_B40_graph", "box_CharacterLoadedIdListener_v2_72.LoadedIdReceived", "box_OutputOrder_v2_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_4_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_ProximityRadiusListener_v3_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|954805047", "954805047", "MIS_450_B40_graph", "box_ProximityRadiusListener_v3_4.SomeoneNear", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_53();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_GunsForHireSystemModifier_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1783277009", "1783277009", "MIS_450_B40_graph", "box_MultipleOR_7.Out", "box_GunsForHireSystemModifier_53.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_34_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_32();
    l0 = self.box_SoundModifier_v2_34;
    l1 = self.box_SoundModifier_v2_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1975844422", "1975844422", "MIS_450_B40_graph", "box_SoundModifier_v2_34.Started", "box_SoundModifier_v2_32.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_RegenerateNavmesh_44_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_91();
    l0 = self.box_RegenerateNavmesh_44;
    l1 = self.box_Delay_v5_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|692662221", "692662221", "MIS_450_B40_graph", "box_RegenerateNavmesh_44.Completed", "box_Delay_v5_91.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_93_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_26();
    l0 = self.box_OnceOnly_v3_93;
    l1 = self.box_RequestPhoneCall_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|603004898", "603004898", "MIS_450_B40_graph", "box_OnceOnly_v3_93.Out", "box_RequestPhoneCall_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_95_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_23();
    l0 = self.box_OnceOnly_v3_95;
    l1 = self.box_RequestPhoneCall_v2_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2135476192", "2135476192", "MIS_450_B40_graph", "box_OnceOnly_v3_95.Out", "box_RequestPhoneCall_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_42_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_66();
    l0 = self.box_PositionModifier_v2_42;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|450587639", "450587639", "MIS_450_B40_graph", "box_PositionModifier_v2_42.Done", "box_Simple_Node_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_42_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_99();
    l0 = self.box_PositionModifier_v2_42;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|717008832", "717008832", "MIS_450_B40_graph", "box_PositionModifier_v2_42.StartOut", "box_SetBoolean_v2_99.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_25_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_25;
    l1 = self.box_OnceOnly_v3_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|71284073", "71284073", "MIS_450_B40_graph", "box_ProximityRadiusListener_v3_25.SomeoneNear", "box_OnceOnly_v3_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UniversalInteractionListener_10_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = self.box_UniversalInteractionListener_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|637252468", "637252468", "MIS_450_B40_graph", "box_UniversalInteractionListener_10.Interacted", "box_OutputOrder_v2_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_35_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_33();
    l0 = self.box_SoundModifier_v2_35;
    l1 = self.box_SoundModifier_v2_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|352924879", "352924879", "MIS_450_B40_graph", "box_SoundModifier_v2_35.Started", "box_SoundModifier_v2_33.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_36_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_49();
    l0 = self.box_ProximityRadiusListener_v3_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1235536829", "1235536829", "MIS_450_B40_graph", "box_ActivityObjectiveMarkerModifier_v3_36.Enabled", "box_ProximityRadiusListener_v3_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_41_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_54();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1141841859", "1141841859", "MIS_450_B40_graph", "box_ParticleSystem_v3_41.Started", "box_ParticleSystem_v3_54.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_24_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_79();
    l0 = self.box_ProximityRadiusListener_v3_24;
    l1 = self.box_ProximityRadiusListener_v3_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|639323959", "639323959", "MIS_450_B40_graph", "box_ProximityRadiusListener_v3_24.Enabled", "box_ProximityRadiusListener_v3_79.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_24_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_24;
    l1 = self.box_OnceOnly_v3_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1678630446", "1678630446", "MIS_450_B40_graph", "box_ProximityRadiusListener_v3_24.SomeoneNear", "box_OnceOnly_v3_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_46_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_101();
    l0 = self.box_CoopActivePlayers_46;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2128537665", "2128537665", "MIS_450_B40_graph", "box_CoopActivePlayers_46.PlayerAdded", "box_Compare_Boolean_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_10();
    l0 = self.box_UniversalInteractionListener_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1207316300", "1207316300", "MIS_450_B40_graph", "box_OutputOrder_v2_61.Out", "box_UniversalInteractionListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_62();
    l0 = self.box_SoundModifier_v2_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|359821497", "359821497", "MIS_450_B40_graph", "box_OutputOrder_v2_61.Out", "box_SoundModifier_v2_62.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_91_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_74();
    l0 = self.box_Delay_v5_91;
    l1 = self.box_SpawnAI_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1997391496", "1997391496", "MIS_450_B40_graph", "box_Delay_v5_91.TimeElapsed", "box_SpawnAI_74.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_2_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_103();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1326708322", "1326708322", "MIS_450_B40_graph", "box_GetPlayerGroup_v2_2.Out", "box_SetBoolean_v2_103.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_8();
    l0 = self.box_TeleportPawns_16;
    l1 = self.box_EntityStatusListener_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1338412392", "1338412392", "MIS_450_B40_graph", "box_TeleportPawns_16.Out", "box_EntityStatusListener_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_88_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_70();
    l0 = self.box_ProximityRadiusListener_v3_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1832638643", "1832638643", "MIS_450_B40_graph", "box_ActivityObjectiveMarkerModifier_v3_88.Enabled", "box_ProximityRadiusListener_v3_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_56_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_77();
    l0 = self.box_SoundModifier_v2_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1403058307", "1403058307", "MIS_450_B40_graph", "box_ParticleSystem_v3_56.Started", "box_SoundModifier_v2_77.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_77_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_13();
    l0 = self.box_SoundModifier_v2_77;
    l1 = self.box_ProximityRadiusListener_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1715855474", "1715855474", "MIS_450_B40_graph", "box_SoundModifier_v2_77.Finished", "box_ProximityRadiusListener_v3_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ShimmerModifier_v2_85_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_87();
    l0 = self.box_ShimmerModifier_v2_85;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1243804192", "1243804192", "MIS_450_B40_graph", "box_ShimmerModifier_v2_85.Disabled", "box_ParticleSystem_v3_87.Pause", l0:GetLuaBox(), l1:GetLuaBox());
    -- Pause
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_85_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_87();
    l0 = self.box_ShimmerModifier_v2_85;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1292222854", "1292222854", "MIS_450_B40_graph", "box_ShimmerModifier_v2_85.Enabled", "box_ParticleSystem_v3_87.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_78_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_20();
    l0 = self.box_OnceOnly_v3_78;
    l1 = self.box_RequestPhoneCall_v2_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|127339085", "127339085", "MIS_450_B40_graph", "box_OnceOnly_v3_78.Out", "box_RequestPhoneCall_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_47_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_3();
    l0 = self.box_Delay_v5_47;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|69837900", "69837900", "MIS_450_B40_graph", "box_Delay_v5_47.TimeElapsed", "box_ActivityEnd_3.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_40();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|437157987", "437157987", "MIS_450_B40_graph", "box_OutputOrder_v2_57.Out", "box_SoundPointModifier_40.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_35();
    l0 = self.box_SoundModifier_v2_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|479223530", "479223530", "MIS_450_B40_graph", "box_OutputOrder_v2_57.Out", "box_SoundModifier_v2_35.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_99_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_99_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|178533300", "178533300", "MIS_450_B40_graph", "box_SetBoolean_v2_99.Out", "box_OutputOrder_v2_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_104_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_104_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1188855411", "1188855411", "MIS_450_B40_graph", "box_SetBoolean_v2_104.Out", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_71();
    l0 = self.box_MultipleOR_17;
    l1 = self.box_GunsForHireSystemModifier_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1729793267", "1729793267", "MIS_450_B40_graph", "box_MultipleOR_17.Out", "box_GunsForHireSystemModifier_71.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_38_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_38_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_16();
    l0 = self.box_TeleportPawns_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|998518822", "998518822", "MIS_450_B40_graph", "box_GetPlayerGroup_v2_38.Out", "box_TeleportPawns_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_37_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_22();
    l0 = self.box_EntityStatusListener_37;
    l1 = self.box_UniversalInteractionModifier_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|215967413", "215967413", "MIS_450_B40_graph", "box_EntityStatusListener_37.Enabled", "box_UniversalInteractionModifier_v2_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_37_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_EntityStatusListener_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1571174864", "1571174864", "MIS_450_B40_graph", "box_EntityStatusListener_37.Loaded", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_2();
    l0 = self.box_ActivityInitialized_6;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2090796408", "2090796408", "MIS_450_B40_graph", "box_ActivityInitialized_6.Out", "box_GetPlayerGroup_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CanonPipe_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = self.box_CanonPipe_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2087842040", "2087842040", "MIS_450_B40_graph", "box_CanonPipe_48.Out", "box_OutputOrder_v2_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_71_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_38();
    l0 = self.box_GunsForHireSystemModifier_71;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1109351723", "1109351723", "MIS_450_B40_graph", "box_GunsForHireSystemModifier_71.Disabled", "box_GetPlayerGroup_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_13_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = self.box_ProximityRadiusListener_v3_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1326127196", "1326127196", "MIS_450_B40_graph", "box_ProximityRadiusListener_v3_13.SomeoneNear", "box_OutputOrder_v2_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|@COOP PreventPlayerStuck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_98_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|@Puzzle_2_Audio_Finished");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_66_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|15305920");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
                [3] = self.f_box_OutputOrder_v2_9_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|135825012");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2107646577540606622",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|143908401");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_55_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|194725028");
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

function export:OnEnter_box_GunsForHireSystemModifier_53()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_20()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.Players,
        -- SoundId,
        [5] = "3045932802",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|260986845");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|265851091");
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
                [0] = self.f_box_OutputOrder_v2_80_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_49()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2108392559165311688",
        -- nearZone,
        [4] = 2,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|289446532");
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
                [0] = self.f_box_OutputOrder_v2_83_Out_0,
                [1] = self.f_box_OutputOrder_v2_83_Out_1,
                [2] = self.f_box_OutputOrder_v2_83_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|317253938");
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

function export:OnEnter_box_SoundModifier_v2_60()
    local params;
    params = {
        -- Pawns,
        [0] = "2108405069914311433",
        -- SoundId,
        [1] = "4210602046",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_84()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109025476870694094",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|437451385");
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
                [0] = self.f_box_OutputOrder_v2_90_Out_0,
                [1] = self.f_box_OutputOrder_v2_90_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_11()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2107646453986894101",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100194873448598553",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|441757774");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_100_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_100_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bWaterLevel3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|447113728");
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
                [0] = self.f_box_OutputOrder_v2_67_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_33()
    local params;
    params = {
        -- Pawns,
        [0] = "2108405069914311433",
        -- SoundId,
        [1] = "16358332",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_76()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2107646928863906821",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109067243626182656",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|502241888");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_103_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|516645754");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2108032373810539359",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_450_B40",
            id = "1025411",
        },
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_19()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2107730409570703797",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|568053932");
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

function export:OnEnter_box_SoundPointModifier_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|604627479");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2107922404184434405",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_32()
    local params;
    params = {
        -- Pawns,
        [0] = "2108405069914311433",
        -- SoundId,
        [1] = "2395235040",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_12()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2109014123124634446",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100194873448598553",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|661907909");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2107921857045866209",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_18()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.Players,
        -- SoundId,
        [5] = "3897454682",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|699408004");
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

function export:OnEnter_box_StaticBreakableListener_86()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2107646577540606622",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_59()
    local params;
    params = {
        -- Pawns,
        [0] = "2108405097284242187",
        -- SoundId,
        [1] = "709375046",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|762426833");
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

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|795484450");
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
                [0] = self.f_box_OutputOrder_v2_75_Out_0,
                [1] = self.f_box_OutputOrder_v2_75_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|814708269");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_92_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_450_B40",
            id = "1025411",
        },
        -- TargetGroup,
        [2] = self.Players,
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_79()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2108406208938391923",
        -- nearZone,
        [4] = 9,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100194873448598553",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|833027065");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|856993571");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_SoundPointModifier_14_Stopped,
    });
    params = {
        -- soundPoint,
        [0] = "2107921857045866209",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_45()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2107921857045866209",
        -- nearZone,
        [4] = 3,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|873772597");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
                [2] = self.f_box_OutputOrder_v2_43_Out_2,
                [3] = self.f_box_OutputOrder_v2_43_Out_3,
                [4] = self.f_box_OutputOrder_v2_43_Out_4,
                [5] = self.f_box_OutputOrder_v2_43_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_70()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2109099104802976656",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|883115891");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_SoundPointModifier_40_Stopped,
    });
    params = {
        -- soundPoint,
        [0] = "2107921851194812127",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|884915194");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_101_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_101_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bWaterLevel_35,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|939761879");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_68_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_450_B50-2",
            id = "1025426",
        },
        -- TargetGroup,
        [2] = self.Players,
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_64()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2108721746415716983",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2098191698852062196",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_72()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328869770419",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2107662519918146420",
        -- nearZone,
        [4] = 15,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_34()
    local params;
    params = {
        -- Pawns,
        [0] = "2108405097284242187",
        -- SoundId,
        [1] = "2024226209",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_44()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2109178091958962589",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_23()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.Players,
        -- SoundId,
        [5] = "698672423",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_22()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2108727238609376089",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_96()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2107646453986894101",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109595295049330583",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_62()
    local params;
    params = {
        -- Pawns,
        [0] = "2108433987945900845",
        -- SoundId,
        [1] = "1304835985",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_42()
    local params;
    params = {
        -- blendTime,
        [1] = 20,
        -- endTarget,
        [4] = "2107578392101531568",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100194873448598553",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_30()
    local params;
    params = {
        -- Pawns,
        [0] = "2108433987945900845",
        -- SoundId,
        [1] = "1304835985",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2109582858849880398",
        -- nearZone,
        [4] = 9,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2108727238609376089",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_35()
    local params;
    params = {
        -- Pawns,
        [0] = "2108405069914311433",
        -- SoundId,
        [1] = "1973206597",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_74()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108339876194690995",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1308915240");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_36_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2108392522421111492",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_450_B50-2",
            id = "1025426",
        },
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1369112029");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_41_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109125249590112017",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_24()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2108339572881495474",
        -- nearZone,
        [4] = 15,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_1()
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
        [6] = "2820544222",
        -- StopEvent,
        [7] = "2604139666",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_58()
    local params;
    params = {
        -- Pawns,
        [0] = "2108405069914311433",
        -- SoundId,
        [1] = "1537278571",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1558688191");
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

function export:OnEnter_box_Delay_v5_91()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1586733944");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1625088013");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2108780696184065052",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_450_B50-2",
            id = "1025426",
        },
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_16()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2107548489924746060",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.Players,
        -- UseBlackScreen,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1642620956");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_88_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2109099244326499220",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_450_B40",
            id = "1025411",
        },
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1652123302");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_56_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109191992738067677",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_105()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2107646453986894101",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100194873448598553",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_77()
    local params;
    params = {
        -- Pawns,
        [0] = "2109205784146489479",
        -- SoundId,
        [1] = "4211003825",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1671869317");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109264011678714257",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_63()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2107578392101531568",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100194873448598553",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_85()
    local params;
    params = {
        -- B,
        [0] = 1,
        -- G,
        [1] = 1,
        -- R,
        [2] = 1,
        -- Speed,
        [3] = 2,
        -- targets,
        [4] = "2107646577540606622",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1878744977");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109125249590112011",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_47()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1928626887");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_102()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2109014123124634446",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100194873448598553",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1941643123");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_99_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|1971132563");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_104_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B40.domino|@MIS_450_B40_graph|2016942904");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_38_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108727238609376089",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_26()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.Players,
        -- SoundId,
        [5] = "23006944",
    };
    return params;
end;

function export:OnEnter_box_CanonPipe_48()
    local params;
    params = {
        -- BlowupVFX,
        [0] = "2109126979822291246",
        -- Cap,
        [1] = "2107646894411893762",
        -- CapEndPos,
        [2] = "2109762766771324950",
        -- CapHitDoorPos,
        [3] = "2107646889076739071",
        -- DamageTrigger,
        [4] = "2107647019771252937",
        -- HitObj,
        [5] = "2109067243626182656",
        -- HitObjEndPos,
        [6] = "2107646928863906821",
        -- PipePressureVFX_1,
        [8] = "2109263993920031110",
        -- PipePressureVFX_2,
        [9] = "2109263985596434820",
        -- SoundPoint_Pipe,
        [10] = "2108434035658205999",
        -- SoundPoint_Valve,
        [11] = "2108433987945900845",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_71()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2108780770068827190",
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bWaterLevel_35 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_103_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bWaterLevel3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_72_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_72;
    self.Quebecois = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_99_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bWaterLevel3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_104_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bWaterLevel_35 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_38_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="Impact_VFX" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
