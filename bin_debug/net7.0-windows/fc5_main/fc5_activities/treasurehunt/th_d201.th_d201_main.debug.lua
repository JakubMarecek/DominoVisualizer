LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/treasurehunt/th_d201.domino
-- User graph: TH_D201_main
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
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_D201.Sound_Manager.debug.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.TH_D201 = nil;
    Globals.TH_D201 = {
        ePlayer = nil,
        derp = "",
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_D201.TH_D201_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ShimmerModifier_v2.lua")] = {
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_D201.Sound_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start_Bunker_Trap_Door_Open",
            },
            [1] = {
                name = "Start_Garage_Door",
            },
            [2] = {
                name = "Start_Metal_Gate_Sliding",
            },
            [3] = {
                name = "Stop_Garage_Door",
            },
            [4] = {
                name = "Stop_Metal_Gate_Sliding",
            },
        },
        controlInCount = 5,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "TH_D201_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main";
    self.gPlayerGroup = nil;
    self.box_SpawnAI_9 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|9783501");
    l0:SetConnections({
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|137397944");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|213412693");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_StaticBreakableListener_14 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|243928233");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_14_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_14_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_14_OnBreak,
    });
    self.box_Sound_Manager_59 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_D201.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|268748186");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_32 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|391214523");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_32_Enter,
    });
    self.box_UniversalInteractionModifier_v2_17 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|407226685");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_17_Interacted,
    });
    self.box_RegenerateNavmesh_25 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|430316255");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_RegenerateNavmesh_25_Out,
    });
    self.box_RequestTutorial_v3_35 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|533715480");
    l0:SetConnections({
        -- RequestFailure,
        [3] = self.f_box_RequestTutorial_v3_35_RequestFailure,
        -- RequestSuccess,
        [4] = self.f_box_RequestTutorial_v3_35_RequestSuccess,
    });
    self.box_Delay_v5_52 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|545474704");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_52_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_7 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|580282652");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_7_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_7_Leave,
    });
    self.box_RegenerateNavmesh_45 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|665765035");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_RegenerateNavmesh_45_Out,
    });
    self.box_StartMetaSequence_22 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|777256665");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_22_Out,
    });
    self.box_PositionModifier_v2_57 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|806143821");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_57_Done,
    });
    self.box_NavLinkModifier_26 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|820574034");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_26_Activated,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|945973769");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_NavLinkModifier_24 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|955551616");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_24_Activated,
    });
    self.box_RegenerateNavmesh_47 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1027036816");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_RegenerateNavmesh_47_Completed,
    });
    self.box_NavLinkModifier_16 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1032483057");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_16_Activated,
    });
    self.box_Bind_v4_48 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1055577130");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_48_Bound,
    });
    self.box_UniversalInteractionListener_51 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1122168412");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_51_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_51_Interacted,
    });
    self.box_NavLinkModifier_49 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1204957005");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_49_Activated,
    });
    self.box_NavLinkModifier_53 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1264704165");
    l0:SetConnections({
    });
    self.box_Sound_Manager_56 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_D201.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1444386689");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_15 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1451068002");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_15_Out,
    });
    self.box_RemoveEntity_v2_13 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1503666662");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_13_Out,
    });
    self.box_RegenerateNavmesh_27 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1528107401");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_RegenerateNavmesh_27_Out,
    });
    self.box_PositionModifier_v2_60 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1616416747");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_60_StartOut,
    });
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1782102503");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_Bind_v4_54 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1856535721");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_54_Bound,
    });
    self.box_LookAtTrigger_v2_10 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1888395972");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_10_EnterFOV,
    });
    self.box_PlaySequence_v8_21 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1941473016");
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
        [4] = self.f_box_PlaySequence_v8_21_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_21_Stopped,
    });
    self.box_MultipleAND_v2_61 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1981336795");
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
        [0] = self.f_box_MultipleAND_v2_61_Out,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|2017881832");
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
    self.box_SpawnAI_46 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|2019416949");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_46_Out,
    });
    self.box_StartCelebration_2 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|2135017889");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_2_Ended,
        -- Started,
        [1] = self.f_box_StartCelebration_2_Started,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1080437474", "1080437474", "TH_D201_main", "In", "box_ActivityAcknowledgeGate_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|978126841", "978126841", "TH_D201_main", "OnLeaveZone", "box_ActivityRetry_3.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_43_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_43_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_51();
    l0 = self.box_UniversalInteractionListener_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|816909139", "816909139", "TH_D201_main", "box_GetLocalPlayer_v2_43.Out", "box_UniversalInteractionListener_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_23();
    l0 = self.box_Delay_v5_40;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|36898516", "36898516", "TH_D201_main", "box_Delay_v5_40.TimeElapsed", "box_ParticleSystem_v3_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|922531862", "922531862", "TH_D201_main", "box_OutputOrder_v2_42.Out", "box_EndActivityObjective_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_32();
    l0 = self.box_ProximityTrigger_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1554467875", "1554467875", "TH_D201_main", "box_OutputOrder_v2_42.Out", "box_ProximityTrigger_v2_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_36_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_36_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_37();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|6323210", "6323210", "TH_D201_main", "box_GetPlayerGroup_v2_36.Out", "box_AddActivityObjective_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|679385551", "679385551", "TH_D201_main", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|217324298", "217324298", "TH_D201_main", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EndActivityObjective_v2_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_60();
    l0 = self.box_PositionModifier_v2_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1873550344", "1873550344", "TH_D201_main", "box_EndActivityObjective_v2_44.Out", "box_PositionModifier_v2_60.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_14_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_StaticBreakableListener_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1290983309", "1290983309", "TH_D201_main", "box_StaticBreakableListener_14.Disabled", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_14_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_43();
    l0 = self.box_StaticBreakableListener_14;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1006838306", "1006838306", "TH_D201_main", "box_StaticBreakableListener_14.Enabled", "box_GetLocalPlayer_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_14_OnBreak()
    local params, l0;
    params = self:OnEnter_box_StaticBreakableListener_14();
    l0 = self.box_StaticBreakableListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|951765794", "951765794", "TH_D201_main", "box_StaticBreakableListener_14.OnBreak", "box_StaticBreakableListener_14.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_20();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1523763336", "1523763336", "TH_D201_main", "box_EndActivityObjective_v2_11.Out", "box_AddActivityObjective_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_37_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_38();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1937063694", "1937063694", "TH_D201_main", "box_AddActivityObjective_v2_37.Out", "box_ActivityObjectiveMarkerModifier_v3_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_32_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_46();
    l0 = self.box_ProximityTrigger_v2_32;
    l1 = self.box_SpawnAI_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1570884785", "1570884785", "TH_D201_main", "box_ProximityTrigger_v2_32.Enter", "box_SpawnAI_46.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_48();
    l0 = self.box_Bind_v4_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1399467867", "1399467867", "TH_D201_main", "box_OutputOrder_v2_34.Out", "box_Bind_v4_48.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_33();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|856345114", "856345114", "TH_D201_main", "box_OutputOrder_v2_34.Out", "box_ShimmerModifier_v2_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_17_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_UniversalInteractionModifier_v2_17;
    l1 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|220563098", "220563098", "TH_D201_main", "box_UniversalInteractionModifier_v2_17.Interacted", "box_SpawnAI_9.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_RegenerateNavmesh_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_RegenerateNavmesh_25;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|6640555", "6640555", "TH_D201_main", "box_RegenerateNavmesh_25.Out", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestTutorial_v3_35_RequestFailure()
    local l0, l1;
    l0 = self.box_RequestTutorial_v3_35;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|994242885", "994242885", "TH_D201_main", "box_RequestTutorial_v3_35.RequestFailure", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestTutorial_v3_35_RequestSuccess()
    local l0, l1;
    l0 = self.box_RequestTutorial_v3_35;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1014713535", "1014713535", "TH_D201_main", "box_RequestTutorial_v3_35.RequestSuccess", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_52_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_57();
    l0 = self.box_Delay_v5_52;
    l1 = self.box_PositionModifier_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|2102344831", "2102344831", "TH_D201_main", "box_Delay_v5_52.TimeElapsed", "box_PositionModifier_v2_57.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_7_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_10();
    l0 = self.box_ProximityTrigger_v2_7;
    l1 = self.box_LookAtTrigger_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|2081700406", "2081700406", "TH_D201_main", "box_ProximityTrigger_v2_7.Enter", "box_LookAtTrigger_v2_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_7_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_10();
    l0 = self.box_ProximityTrigger_v2_7;
    l1 = self.box_LookAtTrigger_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1912576267", "1912576267", "TH_D201_main", "box_ProximityTrigger_v2_7.Leave", "box_LookAtTrigger_v2_10.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Sound_Manager_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|410421330", "410421330", "TH_D201_main", "box_OutputOrder_v2_58.Out", "box_Sound_Manager_59.Start_Garage_Door", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Garage_Door
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_52();
    l0 = self.box_Delay_v5_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|986409332", "986409332", "TH_D201_main", "box_OutputOrder_v2_58.Out", "box_Delay_v5_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RegenerateNavmesh_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_33();
    l0 = self.box_RegenerateNavmesh_45;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1485557710", "1485557710", "TH_D201_main", "box_RegenerateNavmesh_45.Out", "box_ShimmerModifier_v2_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_39();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1886722136", "1886722136", "TH_D201_main", "box_AddActivityObjective_v2_20.Out", "box_ActivityObjectiveMarkerModifier_v3_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_22_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_22_Out();
    params = self:OnEnter_box_PlaySequence_v8_21();
    l0 = self.box_StartMetaSequence_22;
    l1 = self.box_PlaySequence_v8_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|2016359473", "2016359473", "TH_D201_main", "box_StartMetaSequence_22.Out", "box_PlaySequence_v8_21.PlayFromStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayFromStart
    l1:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_57_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = self.box_PositionModifier_v2_57;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|140456017", "140456017", "TH_D201_main", "box_PositionModifier_v2_57.Done", "box_OutputOrder_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_26_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_1();
    l0 = self.box_NavLinkModifier_26;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|342649332", "342649332", "TH_D201_main", "box_NavLinkModifier_26.Activated", "box_ActivityEnd_1.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_61();
    l0 = self.box_MultipleAND_v2_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|521908515", "521908515", "TH_D201_main", "box_OutputOrder_v2_62.Out", "box_MultipleAND_v2_61.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Sound_Manager_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|390425070", "390425070", "TH_D201_main", "box_OutputOrder_v2_62.Out", "box_Sound_Manager_56.Stop_Garage_Door", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop_Garage_Door
    l0:Exec(3, {
    });
end;

function export:f_box_ShimmerModifier_v2_33_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_14();
    l0 = self.box_StaticBreakableListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|117479893", "117479893", "TH_D201_main", "box_ShimmerModifier_v2_33.Enabled", "box_StaticBreakableListener_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1995459452", "1995459452", "TH_D201_main", "box_MultipleOR_4.Out", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_NavLinkModifier_24_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_26();
    l0 = self.box_NavLinkModifier_24;
    l1 = self.box_NavLinkModifier_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|111075545", "111075545", "TH_D201_main", "box_NavLinkModifier_24.Activated", "box_NavLinkModifier_26.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_RegenerateNavmesh_47_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_49();
    l0 = self.box_RegenerateNavmesh_47;
    l1 = self.box_NavLinkModifier_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|226220750", "226220750", "TH_D201_main", "box_RegenerateNavmesh_47.Completed", "box_NavLinkModifier_49.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_NavLinkModifier_16_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_24();
    l0 = self.box_NavLinkModifier_16;
    l1 = self.box_NavLinkModifier_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1801349243", "1801349243", "TH_D201_main", "box_NavLinkModifier_16.Activated", "box_NavLinkModifier_24.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_48_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_54();
    l0 = self.box_Bind_v4_48;
    l1 = self.box_Bind_v4_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|2022480681", "2022480681", "TH_D201_main", "box_Bind_v4_48.Bound", "box_Bind_v4_54.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionListener_51_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_36();
    l0 = self.box_UniversalInteractionListener_51;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|23496245", "23496245", "TH_D201_main", "box_UniversalInteractionListener_51.Enabled", "box_GetPlayerGroup_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_51_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_50();
    l0 = self.box_UniversalInteractionListener_51;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1275112717", "1275112717", "TH_D201_main", "box_UniversalInteractionListener_51.Interacted", "box_Simple_Node_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RegenerateNavmesh_45();
    l0 = self.box_RegenerateNavmesh_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1513571199", "1513571199", "TH_D201_main", "box_OutputOrder_v2_12.Out", "box_RegenerateNavmesh_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_7();
    l0 = self.box_ProximityTrigger_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1747805495", "1747805495", "TH_D201_main", "box_OutputOrder_v2_12.Out", "box_ProximityTrigger_v2_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_63();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1343455133", "1343455133", "TH_D201_main", "box_OutputOrder_v2_12.Out", "box_VehicleModifier_v2_63.SetEngineMajorDamage", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEngineMajorDamage
    l0:Exec(13, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_18();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1934404149", "1934404149", "TH_D201_main", "box_OutputOrder_v2_19.Out", "box_Print_v2_18.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_2();
    l0 = self.box_StartCelebration_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|2120292507", "2120292507", "TH_D201_main", "box_OutputOrder_v2_19.Out", "box_StartCelebration_2.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_NavLinkModifier_49_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_53();
    l0 = self.box_NavLinkModifier_49;
    l1 = self.box_NavLinkModifier_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1394968142", "1394968142", "TH_D201_main", "box_NavLinkModifier_49.Activated", "box_NavLinkModifier_53.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RegenerateNavmesh_27();
    l0 = self.box_RemoveEntity_v2_15;
    l1 = self.box_RegenerateNavmesh_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1450990162", "1450990162", "TH_D201_main", "box_RemoveEntity_v2_15.Out", "box_RegenerateNavmesh_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_44();
    l0 = self.box_RemoveEntity_v2_13;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|967426174", "967426174", "TH_D201_main", "box_RemoveEntity_v2_13.Out", "box_EndActivityObjective_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RegenerateNavmesh_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_16();
    l0 = self.box_RegenerateNavmesh_27;
    l1 = self.box_NavLinkModifier_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1198001193", "1198001193", "TH_D201_main", "box_RegenerateNavmesh_27.Out", "box_NavLinkModifier_16.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_60_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = self.box_PositionModifier_v2_60;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|2067290154", "2067290154", "TH_D201_main", "box_PositionModifier_v2_60.StartOut", "box_OutputOrder_v2_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1935271706", "1935271706", "TH_D201_main", "box_Simple_Node_50.Out", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestTutorial_v3_35();
    l0 = self.box_ActivityInitialized_6;
    l1 = self.box_RequestTutorial_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|414432245", "414432245", "TH_D201_main", "box_ActivityInitialized_6.Out", "box_RequestTutorial_v3_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_54_Bound()
    local l0, l1;
    l0 = self.box_Bind_v4_54;
    l1 = self.box_StartMetaSequence_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|981113442", "981113442", "TH_D201_main", "box_Bind_v4_54.Bound", "box_StartMetaSequence_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_LookAtTrigger_v2_10_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_LookAtTrigger_v2_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|903685302", "903685302", "TH_D201_main", "box_LookAtTrigger_v2_10.EnterFOV", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|999217861", "999217861", "TH_D201_main", "box_PlaySequence_v8_21.Started", "box_Delay_v5_40.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_21_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_RegenerateNavmesh_47();
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_RegenerateNavmesh_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1580046089", "1580046089", "TH_D201_main", "box_PlaySequence_v8_21.Stopped", "box_RegenerateNavmesh_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_61_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_15();
    l0 = self.box_MultipleAND_v2_61;
    l1 = self.box_RemoveEntity_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|2015622647", "2015622647", "TH_D201_main", "box_MultipleAND_v2_61.Out", "box_RemoveEntity_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RegenerateNavmesh_25();
    l0 = self.box_MultipleOR_8;
    l1 = self.box_RegenerateNavmesh_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|566388886", "566388886", "TH_D201_main", "box_MultipleOR_8.Out", "box_RegenerateNavmesh_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_17();
    l0 = self.box_SpawnAI_46;
    l1 = self.box_UniversalInteractionModifier_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1977103791", "1977103791", "TH_D201_main", "box_SpawnAI_46.Out", "box_UniversalInteractionModifier_v2_17.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_StartCelebration_2_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_61();
    l0 = self.box_StartCelebration_2;
    l1 = self.box_MultipleAND_v2_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|619304357", "619304357", "TH_D201_main", "box_StartCelebration_2.Ended", "box_MultipleAND_v2_61.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_StartCelebration_2_Started()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_13();
    l0 = self.box_StartCelebration_2;
    l1 = self.box_RemoveEntity_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1520083572", "1520083572", "TH_D201_main", "box_StartCelebration_2.Started", "box_RemoveEntity_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_SpawnAI_9()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104270137099044953",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|72056533");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|135434472");
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
        [8] = "WIIIIIIIIIIIINNNNNNNNNNNNNN!!!!!!!!!!!!!!",
        -- useTimeTag,
        [9] = true,
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

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|152003934");
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

function export:OnEnter_box_VehicleModifier_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|174046339");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2100707195537608305",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|175847099");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|226774200");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_44_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "THD201 - Sunrise Farm / Grain Silo",
            item = "THD201_Objective_02",
            id = "730954",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2099822976995170452",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|321128957");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_11_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "THD201 - Sunrise Farm / Grain Silo",
            item = "THD201_Objective_01",
            id = "728797",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|386124996");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_37_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "THD201 - Sunrise Farm / Grain Silo",
            item = "THD201_Objective_01",
            id = "728797",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_32()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102985121205335885",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|405033387");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    params = {
        -- interactor,
        [2] = l0:GetDataOutValue(0),
        -- usableEntity,
        [4] = "2103082732448919538",
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_25()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2104853281405684123",
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_35()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015255988987428",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_52()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_7()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101550381910737722",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|590985703");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2102722423737570979",
        -- ObjectiveId,
        [2] = {
            section = "THD201 - Sunrise Farm / Grain Silo",
            item = "THD201_Objective_01",
            id = "728797",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|633563246");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|643039656");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104270534735841619",
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_45()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2103086213215827014",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|678573168");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_20_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "THD201 - Sunrise Farm / Grain Silo",
            item = "THD201_Objective_02",
            id = "730954",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_57()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2098813477658302643",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2099824265791543763",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_26()
    local params;
    params = {
        -- Entity,
        [0] = "2101077074012808012",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|873280406");
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

function export:OnEnter_box_ShimmerModifier_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|889066074");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_33_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2099822976995170452",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|910084953");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_24()
    local params;
    params = {
        -- Entity,
        [0] = "2101077080193114960",
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_47()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2103086213215827014",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_16()
    local params;
    params = {
        -- Entity,
        [0] = "2101077080849523540",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_48()
    local params;
    params = {
        -- EntityA,
        [1] = "2104245448597349009",
        -- EntityB,
        [2] = "2104245504310289062",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2102984528539732617",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1130849311");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1163876221");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_49()
    local params;
    params = {
        -- Entity,
        [0] = "2101094560613553882",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_53()
    local params;
    params = {
        -- Entity,
        [0] = "2104355096480530803",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_15()
    local params;
    params = {
        -- Group,
        [0] = "2104853227630512529",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_13()
    local params;
    params = {
        -- Group,
        [0] = "2102792885633032212",
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_27()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2104853281405684123",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_60()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2101742443312473622",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2099824265791543763",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1638650423");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_50_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1839996040");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2102723419624724135",
        -- ObjectiveId,
        [2] = {
            section = "THD201 - Sunrise Farm / Grain Silo",
            item = "THD201_Objective_02",
            id = "730954",
        },
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_54()
    local params;
    params = {
        -- EntityA,
        [1] = "2104245448597349009",
        -- EntityB,
        [2] = "2104245504310289060",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2101550227864426360",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_21()
    local params, l0;
    l0 = self.box_StartMetaSequence_22;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = l0:GetDataOutValue(0),
        -- SceneEntity,
        [3] = "2104270108990916695",
        -- SequenceFile,
        [4] = "sequences/zeta_main/cin_th_d201.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@TH_D201_main|1973392703");
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

function export:OnEnter_box_MultipleAND_v2_61()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_46()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2097967029597288976",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_2()
    local params;
    params = {
        -- Preset,
        [0] = "9015219471541668",
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_43_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_UniversalInteractionModifier_v2_17;
    l1:GetLuaBox().interactor = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_22_Out()
    local l0, l1;
    l0 = self.box_StartMetaSequence_22;
    l1 = self.box_PlaySequence_v8_21;
    l1:GetLuaBox().MetaSequenceID = l0:GetDataOutValue(0);
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
