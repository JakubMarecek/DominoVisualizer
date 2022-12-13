LUACd -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/treasurehunt/th_c3_poi_03_main.domino
-- User graph: TH_C3_POI_03_Main
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
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FlashlightModifier.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_C3_POI_03_Main.RainbowPrint.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[entityarchetypeslibrary/9015274923154954.ark.fcb]], "CEntityArchetypeRes");
        cboxRes:LoadResource([[284953424.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1026582016.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2457631631.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3899357366.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.TH_C3_POI_03_Main = nil;
    Globals.TH_C3_POI_03_Main = {
        iNumItemBroke = 0,
        iNbBulletImpact = 0,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_C3_POI_03_Main.TH_C3_POI_03_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/FlashlightModifier.lua")] = {
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
            [0] = {
                name = "archetypeId",
                type = "archetype",
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
    metadataTable[GetPathID("Domino/System/SoundShapeModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Paused",
                delayed = false,
            },
            [1] = {
                name = "Resumed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "FadeTime",
                type = "float",
            },
            [1] = {
                name = "SoundShapeId",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_C3_POI_03_Main.RainbowPrint.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "fTimer",
                type = "float",
            },
            [1] = {
                name = "sString",
                type = "string",
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
    self._name = "TH_C3_POI_03_Main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main";
    self.gPlayerGroup = nil;
    self.box_StaticBreakableListener_73 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|29362485");
    l0:SetConnections({
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_73_OnStateChanged,
    });
    self.box_RemoveEntity_v2_58 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|44069082");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_58_Out,
    });
    self.box_ActivityAcknowledgeGate_13 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|58248172");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_13_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_13_Reloaded,
    });
    self.box_SpawnAI_46 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|132820642");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_17 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|167752108");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_17_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_17_OnBreak,
    });
    self.box_EntityStatusListener_19 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|233325899");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_19_Loaded,
    });
    self.box_ProximityTrigger_v2_51 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|239767582");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_51_Enter,
    });
    self.box_FlashlightModifier_29 = cbox:CreateBox("Domino/System/FlashlightModifier.lua");
    l0 = self.box_FlashlightModifier_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FlashlightModifier_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|262999931");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FlashlightModifier_29_Disabled,
    });
    self.box_SpawnAI_52 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|263807741");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_84 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|295520482");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_84_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_84_Leave,
    });
    self.box_SoundModifier_v2_78 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|301784637");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_78_Started,
    });
    self.box_PositionModifier_v2_30 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|382843297");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_30_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_30_StartOut,
    });
    self.box_SpawnAI_28 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|481993364");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_28_Out,
    });
    self.box_PositionModifier_v2_18 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|490300330");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_18_StartOut,
    });
    self.box_PositionModifier_v2_55 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|526706560");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_55_Done,
    });
    self.box_StaticBreakableListener_81 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|529517171");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_81_Disabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_81_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_81_OnBreakAll,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_81_OnStateChanged,
    });
    self.box_SpawnAI_37 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|556762412");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_37_Out,
    });
    self.box_SpawnAI_2 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|569293121");
    l0:SetConnections({
    });
    self.box_SpawnAI_72 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|571956388");
    l0:SetConnections({
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|653492318");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_ProximityTrigger_v2_50 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|681788381");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_50_Enter,
    });
    self.box_Bind_v4_10 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|696810110");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_10_Bound,
    });
    self.box_RemoveEntity_v2_56 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|740266801");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_56_Out,
    });
    self.box_RemoveEntity_v2_86 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|771699298");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_86_Out,
    });
    self.box_SoundModifier_v2_79 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|787763962");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_79_Started,
    });
    self.box_PositionModifier_v2_57 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|789649525");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_57_Done,
    });
    self.box_FlashlightModifier_85 = cbox:CreateBox("Domino/System/FlashlightModifier.lua");
    l0 = self.box_FlashlightModifier_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FlashlightModifier_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|916584903");
    l0:SetConnections({
    });
    self.box_LookAtTrigger_v2_27 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|933384189");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LookAtTrigger_v2_27_Disabled,
        -- Enabled,
        [1] = self.f_box_LookAtTrigger_v2_27_Enabled,
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_27_EnterFOV,
    });
    self.box_PositionModifier_v2_53 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|975457404");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_53_Done,
    });
    self.box_SpawnAI_26 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|980712256");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_26_Out,
    });
    self.box_OnceOnly_v3_83 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1062832257");
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
                [0] = self.f_box_OnceOnly_v3_83_Out_0,
            },
            count = 1,
        },
    });
    self.box_ProximityTrigger_v2_47 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1102060095");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_47_Enter,
    });
    self.box_SpawnAI_80 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1104418818");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_8 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1256334374");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_8_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_8_StartOut,
    });
    self.box_FlashlightModifier_31 = cbox:CreateBox("Domino/System/FlashlightModifier.lua");
    l0 = self.box_FlashlightModifier_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FlashlightModifier_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1320307267");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FlashlightModifier_31_Disabled,
    });
    self.box_SoundModifier_v2_75 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1334785531");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_75_Started,
    });
    self.box_SpawnAI_63 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1347472777");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1424496408");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_RequestTutorial_v3_25 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1441815768");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_RequestTutorial_v3_25_Out,
    });
    self.box_MultipleOR_65 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1571382366");
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
        [0] = self.f_box_MultipleOR_65_Out,
    });
    self.box_ProximityTrigger_v2_42 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1602308901");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_42_Enter,
    });
    self.box_Bind_v4_23 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1615575188");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_23_Bound,
    });
    self.box_StartCelebration_14 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1778177492");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_14_Ended,
        -- Started,
        [1] = self.f_box_StartCelebration_14_Started,
    });
    self.box_RainbowPrint_70 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_C3_POI_03_Main.RainbowPrint.debug.lua");
    l0 = self.box_RainbowPrint_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RainbowPrint_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1797678533");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_60 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1864187125");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_60_Enter,
    });
    self.box_StaticBreakableListener_62 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1877947848");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_62_Enabled,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_62_OnStateChanged,
    });
    self.box_Delay_v5_64 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1883725815");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_64_TimeElapsed,
    });
    self.box_SoundModifier_v2_76 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1886807043");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_76_Started,
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|2078689521");
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
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1415812814", "1415812814", "TH_C3_POI_03_Main", "In", "box_ActivityAcknowledgeGate_13.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_FlashlightModifier_31();
    l0 = self.box_FlashlightModifier_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|412521483", "412521483", "TH_C3_POI_03_Main", "OnLeaveZone", "box_FlashlightModifier_31.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_73_OnStateChanged()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_72();
    l0 = self.box_StaticBreakableListener_73;
    l1 = self.box_SpawnAI_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1121573056", "1121573056", "TH_C3_POI_03_Main", "box_StaticBreakableListener_73.OnStateChanged", "box_SpawnAI_72.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_63();
    l0 = self.box_RemoveEntity_v2_58;
    l1 = self.box_SpawnAI_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|211727318", "211727318", "TH_C3_POI_03_Main", "box_RemoveEntity_v2_58.Out", "box_SpawnAI_63.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_13_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_13;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|71761892", "71761892", "TH_C3_POI_03_Main", "box_ActivityAcknowledgeGate_13.Acknowledged", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_13_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_13;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|949136752", "949136752", "TH_C3_POI_03_Main", "box_ActivityAcknowledgeGate_13.Reloaded", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_6_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_24();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1733750923", "1733750923", "TH_C3_POI_03_Main", "box_ParticleSystem_v3_6.Started", "box_ParticleSystem_v3_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_6_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_24();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|192863180", "192863180", "TH_C3_POI_03_Main", "box_ParticleSystem_v3_6.Stopped", "box_ParticleSystem_v3_24.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_17_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_62();
    l0 = self.box_StaticBreakableListener_17;
    l1 = self.box_StaticBreakableListener_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|667327310", "667327310", "TH_C3_POI_03_Main", "box_StaticBreakableListener_17.Enabled", "box_StaticBreakableListener_62.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_17_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_5();
    l0 = self.box_StaticBreakableListener_17;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1345484329", "1345484329", "TH_C3_POI_03_Main", "box_StaticBreakableListener_17.OnBreak", "box_MissionBlockLayer_5.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_19_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_3();
    l0 = self.box_EntityStatusListener_19;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|547630958", "547630958", "TH_C3_POI_03_Main", "box_EntityStatusListener_19.Loaded", "box_ShimmerModifier_v2_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_51_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_52();
    l0 = self.box_ProximityTrigger_v2_51;
    l1 = self.box_SpawnAI_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|556721463", "556721463", "TH_C3_POI_03_Main", "box_ProximityTrigger_v2_51.Enter", "box_SpawnAI_52.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_FlashlightModifier_29_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_86();
    l0 = self.box_FlashlightModifier_29;
    l1 = self.box_RemoveEntity_v2_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|100044724", "100044724", "TH_C3_POI_03_Main", "box_FlashlightModifier_29.Disabled", "box_RemoveEntity_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_84_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_FlashlightModifier_85();
    l0 = self.box_ProximityTrigger_v2_84;
    l1 = self.box_FlashlightModifier_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|469401360", "469401360", "TH_C3_POI_03_Main", "box_ProximityTrigger_v2_84.Enter", "box_FlashlightModifier_85.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_84_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_FlashlightModifier_85();
    l0 = self.box_ProximityTrigger_v2_84;
    l1 = self.box_FlashlightModifier_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1947980035", "1947980035", "TH_C3_POI_03_Main", "box_ProximityTrigger_v2_84.Leave", "box_FlashlightModifier_85.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_78_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundShapeModifier_77();
    l0 = self.box_SoundModifier_v2_78;
    l1 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|812168575", "812168575", "TH_C3_POI_03_Main", "box_SoundModifier_v2_78.Started", "box_SoundShapeModifier_77.Pause", l0:GetLuaBox(), l1:GetLuaBox());
    -- Pause
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_41();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1002353150", "1002353150", "TH_C3_POI_03_Main", "box_AddActivityObjective_v2_40.Out", "box_ActivityObjectiveMarkerModifier_v3_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_30_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_53();
    l0 = self.box_PositionModifier_v2_30;
    l1 = self.box_PositionModifier_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1505288190", "1505288190", "TH_C3_POI_03_Main", "box_PositionModifier_v2_30.Done", "box_PositionModifier_v2_53.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_30_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_55();
    l0 = self.box_PositionModifier_v2_30;
    l1 = self.box_PositionModifier_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|96340422", "96340422", "TH_C3_POI_03_Main", "box_PositionModifier_v2_30.StartOut", "box_PositionModifier_v2_55.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_37();
    l0 = self.box_SpawnAI_28;
    l1 = self.box_SpawnAI_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|196519308", "196519308", "TH_C3_POI_03_Main", "box_SpawnAI_28.Out", "box_SpawnAI_37.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_18_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_9();
    l0 = self.box_PositionModifier_v2_18;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|548158677", "548158677", "TH_C3_POI_03_Main", "box_PositionModifier_v2_18.StartOut", "box_ParticleSystem_v3_9.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_41_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_42();
    l0 = self.box_ProximityTrigger_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1536927912", "1536927912", "TH_C3_POI_03_Main", "box_ActivityObjectiveMarkerModifier_v3_41.Enabled", "box_ProximityTrigger_v2_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_55_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_57();
    l0 = self.box_PositionModifier_v2_55;
    l1 = self.box_PositionModifier_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|750502761", "750502761", "TH_C3_POI_03_Main", "box_PositionModifier_v2_55.Done", "box_PositionModifier_v2_57.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_81_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_80();
    l0 = self.box_StaticBreakableListener_81;
    l1 = self.box_SpawnAI_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1663962491", "1663962491", "TH_C3_POI_03_Main", "box_StaticBreakableListener_81.Disabled", "box_SpawnAI_80.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_81_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_81;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1031455587", "1031455587", "TH_C3_POI_03_Main", "box_StaticBreakableListener_81.OnBreak", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StaticBreakableListener_81_OnBreakAll()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_81;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1354799972", "1354799972", "TH_C3_POI_03_Main", "box_StaticBreakableListener_81.OnBreakAll", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_StaticBreakableListener_81_OnStateChanged()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_81;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1361722792", "1361722792", "TH_C3_POI_03_Main", "box_StaticBreakableListener_81.OnStateChanged", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_46();
    l0 = self.box_SpawnAI_37;
    l1 = self.box_SpawnAI_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|149405665", "149405665", "TH_C3_POI_03_Main", "box_SpawnAI_37.Out", "box_SpawnAI_46.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_12_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_12;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|178608824", "178608824", "TH_C3_POI_03_Main", "box_MultipleOR_12.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|916888613", "916888613", "TH_C3_POI_03_Main", "box_OutputOrder_v2_61.Out", "box_OutputOrder_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_39();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1915665656", "1915665656", "TH_C3_POI_03_Main", "box_OutputOrder_v2_61.Out", "box_GetPlayerGroup_v2_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_47();
    l0 = self.box_ProximityTrigger_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|798236946", "798236946", "TH_C3_POI_03_Main", "box_OutputOrder_v2_61.Out", "box_ProximityTrigger_v2_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_61_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_66();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1260491364", "1260491364", "TH_C3_POI_03_Main", "box_OutputOrder_v2_61.Out", "box_MissionBlockLayer_66.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_19();
    l0 = self.box_EntityStatusListener_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|398632671", "398632671", "TH_C3_POI_03_Main", "box_OutputOrder_v2_61.Out", "box_EntityStatusListener_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_61_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_60();
    l0 = self.box_ProximityTrigger_v2_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|738393966", "738393966", "TH_C3_POI_03_Main", "box_OutputOrder_v2_61.Out", "box_ProximityTrigger_v2_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_50_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_2();
    l0 = self.box_ProximityTrigger_v2_50;
    l1 = self.box_SpawnAI_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|234506253", "234506253", "TH_C3_POI_03_Main", "box_ProximityTrigger_v2_50.Enter", "box_SpawnAI_2.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableBreaker_48_StateChanged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_49();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1408858233", "1408858233", "TH_C3_POI_03_Main", "box_StaticBreakableBreaker_48.StateChanged", "box_StaticBreakableBreaker_49.NextState", clone:GetLuaBox(), l0:GetLuaBox());
    -- NextState
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_10_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_8();
    l0 = self.box_Bind_v4_10;
    l1 = self.box_PositionModifier_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|569038753", "569038753", "TH_C3_POI_03_Main", "box_Bind_v4_10.Bound", "box_PositionModifier_v2_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_15();
    l0 = self.box_RemoveEntity_v2_56;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1955861766", "1955861766", "TH_C3_POI_03_Main", "box_RemoveEntity_v2_56.Out", "box_ActivityEnd_15.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_86_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_56();
    l0 = self.box_RemoveEntity_v2_86;
    l1 = self.box_RemoveEntity_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1896324593", "1896324593", "TH_C3_POI_03_Main", "box_RemoveEntity_v2_86.Out", "box_RemoveEntity_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_79_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundShapeModifier_77();
    l0 = self.box_SoundModifier_v2_79;
    l1 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|710772377", "710772377", "TH_C3_POI_03_Main", "box_SoundModifier_v2_79.Started", "box_SoundShapeModifier_77.Resume", l0:GetLuaBox(), l1:GetLuaBox());
    -- Resume
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_57_Done()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_58();
    l0 = self.box_PositionModifier_v2_57;
    l1 = self.box_RemoveEntity_v2_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|292370275", "292370275", "TH_C3_POI_03_Main", "box_PositionModifier_v2_57.Done", "box_RemoveEntity_v2_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_24_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_74();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1296809171", "1296809171", "TH_C3_POI_03_Main", "box_ParticleSystem_v3_24.Started", "box_SoundPointModifier_74.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_24_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_74();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1078938641", "1078938641", "TH_C3_POI_03_Main", "box_ParticleSystem_v3_24.Stopped", "box_SoundPointModifier_74.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_59_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_30();
    l0 = self.box_PositionModifier_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1629088572", "1629088572", "TH_C3_POI_03_Main", "box_MissionBlockLayer_59.Activated", "box_PositionModifier_v2_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_9_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1093144004", "1093144004", "TH_C3_POI_03_Main", "box_ParticleSystem_v3_9.Started", "box_ParticleSystem_v3_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_9_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|46455490", "46455490", "TH_C3_POI_03_Main", "box_ParticleSystem_v3_9.Stopped", "box_ParticleSystem_v3_7.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_27_Disabled()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_27;
    l1 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1768148210", "1768148210", "TH_C3_POI_03_Main", "box_LookAtTrigger_v2_27.Disabled", "box_MultipleOR_65.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_LookAtTrigger_v2_27_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_64();
    l0 = self.box_LookAtTrigger_v2_27;
    l1 = self.box_Delay_v5_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1777187536", "1777187536", "TH_C3_POI_03_Main", "box_LookAtTrigger_v2_27.Enabled", "box_Delay_v5_64.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_LookAtTrigger_v2_27_EnterFOV()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_27;
    l1 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1836100469", "1836100469", "TH_C3_POI_03_Main", "box_LookAtTrigger_v2_27.EnterFOV", "box_MultipleOR_65.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_7_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_6();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1903284016", "1903284016", "TH_C3_POI_03_Main", "box_ParticleSystem_v3_7.Started", "box_ParticleSystem_v3_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_7_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_6();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1746442925", "1746442925", "TH_C3_POI_03_Main", "box_ParticleSystem_v3_7.Stopped", "box_ParticleSystem_v3_6.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|50229041", "50229041", "TH_C3_POI_03_Main", "box_OutputOrder_v2_71.Out", "box_OutputOrder_v2_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RainbowPrint_70();
    l0 = self.box_RainbowPrint_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1566129566", "1566129566", "TH_C3_POI_03_Main", "box_OutputOrder_v2_71.Out", "box_RainbowPrint_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_71_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_84();
    l0 = self.box_ProximityTrigger_v2_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|2035745339", "2035745339", "TH_C3_POI_03_Main", "box_OutputOrder_v2_71.Out", "box_ProximityTrigger_v2_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_17();
    l0 = self.box_StaticBreakableListener_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1192178533", "1192178533", "TH_C3_POI_03_Main", "box_OutputOrder_v2_4.Out", "box_StaticBreakableListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_73();
    l0 = self.box_StaticBreakableListener_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|121997107", "121997107", "TH_C3_POI_03_Main", "box_OutputOrder_v2_4.Out", "box_StaticBreakableListener_73.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_50();
    l0 = self.box_ProximityTrigger_v2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|796545270", "796545270", "TH_C3_POI_03_Main", "box_OutputOrder_v2_4.Out", "box_ProximityTrigger_v2_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_81();
    l0 = self.box_StaticBreakableListener_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1246300083", "1246300083", "TH_C3_POI_03_Main", "box_OutputOrder_v2_4.Out", "box_StaticBreakableListener_81.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_53_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_59();
    l0 = self.box_PositionModifier_v2_53;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|67061989", "67061989", "TH_C3_POI_03_Main", "box_PositionModifier_v2_53.Done", "box_MissionBlockLayer_59.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_26();
    l0 = self.box_SpawnAI_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|627430522", "627430522", "TH_C3_POI_03_Main", "box_OutputOrder_v2_16.Out", "box_SpawnAI_26.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_14();
    l0 = self.box_StartCelebration_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|45229390", "45229390", "TH_C3_POI_03_Main", "box_OutputOrder_v2_16.Out", "box_StartCelebration_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_28();
    l0 = self.box_SpawnAI_26;
    l1 = self.box_SpawnAI_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|423535195", "423535195", "TH_C3_POI_03_Main", "box_SpawnAI_26.Out", "box_SpawnAI_28.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_83_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_81();
    l0 = self.box_OnceOnly_v3_83;
    l1 = self.box_StaticBreakableListener_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1984735606", "1984735606", "TH_C3_POI_03_Main", "box_OnceOnly_v3_83.Out", "box_StaticBreakableListener_81.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_22_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_10();
    l0 = self.box_Bind_v4_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1135351421", "1135351421", "TH_C3_POI_03_Main", "box_ParticleSystem_v3_22.Stopped", "box_Bind_v4_10.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_5_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_22();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1573652446", "1573652446", "TH_C3_POI_03_Main", "box_MissionBlockLayer_5.Disabled", "box_ParticleSystem_v3_22.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_47_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_48();
    l0 = self.box_ProximityTrigger_v2_47;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|652344058", "652344058", "TH_C3_POI_03_Main", "box_ProximityTrigger_v2_47.Enter", "box_StaticBreakableBreaker_48.NextState", l0:GetLuaBox(), l1:GetLuaBox());
    -- NextState
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_8_Done()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_9();
    l0 = self.box_PositionModifier_v2_8;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|94455544", "94455544", "TH_C3_POI_03_Main", "box_PositionModifier_v2_8.Done", "box_ParticleSystem_v3_9.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_8_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_23();
    l0 = self.box_PositionModifier_v2_8;
    l1 = self.box_Bind_v4_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1694455327", "1694455327", "TH_C3_POI_03_Main", "box_PositionModifier_v2_8.StartOut", "box_Bind_v4_23.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_FlashlightModifier_31_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_11();
    l0 = self.box_FlashlightModifier_31;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|705267092", "705267092", "TH_C3_POI_03_Main", "box_FlashlightModifier_31.Disabled", "box_ActivityRetry_11.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_43();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1018843628", "1018843628", "TH_C3_POI_03_Main", "box_EndActivityObjective_v2_45.Out", "box_AddActivityObjective_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_75_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_76();
    l0 = self.box_SoundModifier_v2_75;
    l1 = self.box_SoundModifier_v2_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1288834477", "1288834477", "TH_C3_POI_03_Main", "box_SoundModifier_v2_75.Started", "box_SoundModifier_v2_76.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundPointModifier_74_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_78();
    l0 = self.box_SoundModifier_v2_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1045895220", "1045895220", "TH_C3_POI_03_Main", "box_SoundPointModifier_74.Started", "box_SoundModifier_v2_78.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundPointModifier_74_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_75();
    l0 = self.box_SoundModifier_v2_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|596140407", "596140407", "TH_C3_POI_03_Main", "box_SoundPointModifier_74.Stopped", "box_SoundModifier_v2_75.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestTutorial_v3_25();
    l0 = self.box_ActivityInitialized_1;
    l1 = self.box_RequestTutorial_v3_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1814433016", "1814433016", "TH_C3_POI_03_Main", "box_ActivityInitialized_1.Out", "box_RequestTutorial_v3_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RequestTutorial_v3_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = self.box_RequestTutorial_v3_25;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1925709637", "1925709637", "TH_C3_POI_03_Main", "box_RequestTutorial_v3_25.Out", "box_OutputOrder_v2_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_59();
    l0 = self.box_MultipleOR_65;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1369553380", "1369553380", "TH_C3_POI_03_Main", "box_MultipleOR_65.Out", "box_MissionBlockLayer_59.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_42_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_45();
    l0 = self.box_ProximityTrigger_v2_42;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1285510124", "1285510124", "TH_C3_POI_03_Main", "box_ProximityTrigger_v2_42.Enter", "box_EndActivityObjective_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_23_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_18();
    l0 = self.box_Bind_v4_23;
    l1 = self.box_PositionModifier_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1222652994", "1222652994", "TH_C3_POI_03_Main", "box_Bind_v4_23.Bound", "box_PositionModifier_v2_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_StartCelebration_14_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_FlashlightModifier_29();
    l0 = self.box_StartCelebration_14;
    l1 = self.box_FlashlightModifier_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1588646459", "1588646459", "TH_C3_POI_03_Main", "box_StartCelebration_14.Ended", "box_FlashlightModifier_29.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StartCelebration_14_Started()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_38();
    l0 = self.box_StartCelebration_14;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|226353271", "226353271", "TH_C3_POI_03_Main", "box_StartCelebration_14.Started", "box_EndActivityObjective_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_39_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_39_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_40();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|960909137", "960909137", "TH_C3_POI_03_Main", "box_GetPlayerGroup_v2_39.Out", "box_AddActivityObjective_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_44();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1689137410", "1689137410", "TH_C3_POI_03_Main", "box_AddActivityObjective_v2_43.Out", "box_ActivityObjectiveMarkerModifier_v3_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_60_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_ProximityTrigger_v2_60;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|718550771", "718550771", "TH_C3_POI_03_Main", "box_ProximityTrigger_v2_60.Enter", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_62_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_51();
    l0 = self.box_StaticBreakableListener_62;
    l1 = self.box_ProximityTrigger_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|373723707", "373723707", "TH_C3_POI_03_Main", "box_StaticBreakableListener_62.Enabled", "box_ProximityTrigger_v2_51.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_62_OnStateChanged()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_27();
    l0 = self.box_StaticBreakableListener_62;
    l1 = self.box_LookAtTrigger_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|386647061", "386647061", "TH_C3_POI_03_Main", "box_StaticBreakableListener_62.OnStateChanged", "box_LookAtTrigger_v2_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_64_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_27();
    l0 = self.box_Delay_v5_64;
    l1 = self.box_LookAtTrigger_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1772667873", "1772667873", "TH_C3_POI_03_Main", "box_Delay_v5_64.TimeElapsed", "box_LookAtTrigger_v2_27.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_76_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_79();
    l0 = self.box_SoundModifier_v2_76;
    l1 = self.box_SoundModifier_v2_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|865210311", "865210311", "TH_C3_POI_03_Main", "box_SoundModifier_v2_76.Started", "box_SoundModifier_v2_79.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_82_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_82;
    l1 = self.box_OnceOnly_v3_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|2015132548", "2015132548", "TH_C3_POI_03_Main", "box_MultipleOR_82.Out", "box_OnceOnly_v3_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_ShimmerModifier_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|14545841");
    l0:SetConnections({
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
        [4] = "2102085110061887299",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_73()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101107702619966425",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_58()
    local params;
    params = {
        -- Group,
        [0] = "2103388317484614580",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|76573484");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_6_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_6_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2101742737486266618",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_46()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103067931691724934",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2102085110061887299",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|183857248");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "THC301 - Personal Mine",
            item = "THC301_Objective_02",
            id = "730099",
        },
        -- Success,
        [1] = true,
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
        [2] = "2102085110061887299",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103388665922225141",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|248133285");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_FlashlightModifier_29()
    local params;
    params = {
        -- archetypeId,
        [0] = "9015274923154954",
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_52()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103388032785744743",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_84()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104477909593897648",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_78()
    local params;
    params = {
        -- Pawns,
        [0] = "2102034897381145346",
        -- SoundId,
        [1] = "3899357366",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|303448904");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_40_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "THC301 - Personal Mine",
            item = "THC301_Objective_01",
            id = "730098",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_30()
    local params;
    params = {
        -- blendTime,
        [1] = 0.5,
        -- endTarget,
        [4] = "2103388500637287391",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103388050645091220",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|453006944");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100983198302352933",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_28()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102530107611564975",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_18()
    local params;
    params = {
        -- blendTime,
        [1] = 20,
        -- endTarget,
        [4] = "2102086081229896736",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102086075542420508",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|490309468");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_41_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2102724024667750420",
        -- ObjectiveId,
        [2] = {
            section = "THC301 - Personal Mine",
            item = "THC301_Objective_01",
            id = "730098",
        },
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_55()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2103388397151224762",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103388317484614580",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_81()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101632572313319580",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_37()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102529859757558273",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_2()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103388016130163533",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_72()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101052406235138369",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|655849608");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
        },
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
                [2] = self.f_box_OutputOrder_v2_61_Out_2,
                [3] = self.f_box_OutputOrder_v2_61_Out_3,
                [4] = self.f_box_OutputOrder_v2_61_Out_4,
                [5] = self.f_box_OutputOrder_v2_61_Out_5,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_50()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103111694894017192",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|689410890");
    l0:SetConnections({
        -- StateChanged,
        [3] = self.f_box_StaticBreakableBreaker_48_StateChanged,
    });
    params = {
        -- entity,
        [0] = "2101052818996595186",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_10()
    local params;
    params = {
        -- EntityA,
        [1] = "2099599409351234346",
        -- EntityB,
        [2] = "2099597756793361084",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_56()
    local params;
    params = {
        -- Group,
        [0] = "2104853805010011341",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_86()
    local params;
    params = {
        -- Group,
        [0] = "2102529308426779453",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_79()
    local params;
    params = {
        -- Pawns,
        [0] = "2104260124953587842",
        -- SoundId,
        [1] = "284953424",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_57()
    local params;
    params = {
        -- blendTime,
        [1] = 0.5,
        -- endTarget,
        [4] = "2103388420383474624",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103388317484614580",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|841669887");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_24_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_24_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2101742502009651446",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|861923550");
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

function export:OnEnter_box_MissionBlockLayer_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|905121566");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_59_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "18152984417212162",
        -- missionLayerId,
        [1] = "36167438915282880",
    };
    return params;
end;

function export:OnEnter_box_FlashlightModifier_85()
    local params;
    params = {
        -- archetypeId,
        [0] = "9015274923154954",
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|919618501");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_9_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_9_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2099597660777353793",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2103388553458254823",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|934544682");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_7_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_7_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2099597803073311436",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|956191700");
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
                [0] = self.f_box_OutputOrder_v2_71_Out_0,
                [1] = self.f_box_OutputOrder_v2_71_Out_1,
                [2] = self.f_box_OutputOrder_v2_71_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|970647552");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
                [3] = self.f_box_OutputOrder_v2_4_Out_3,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_53()
    local params;
    params = {
        -- blendTime,
        [1] = 0.5,
        -- endTarget,
        [4] = "2103388518408553445",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103388050645091220",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|978802413");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_26()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102529878726298284",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1063036307");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_22_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2101742537726247160",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1099068706");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_5_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "18152984417212162",
        -- missionLayerId,
        [1] = "45174582182734334",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_47()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103069718628822444",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_80()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104272556522490454",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1243534136");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "18152984417212162",
        -- missionLayerId,
        [1] = "27160215507676760",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_8()
    local params;
    params = {
        -- blendTime,
        [1] = 20,
        -- endTarget,
        [4] = "2099599431333581614",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2099599409351234346",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1299860972");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 3,
        -- SoundShapeId,
        [1] = "2104260039683387497",
    };
    return params;
end;

function export:OnEnter_box_FlashlightModifier_31()
    local params;
    params = {
        -- archetypeId,
        [0] = "9015274923154954",
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1324219324");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_45_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "THC301 - Personal Mine",
            item = "THC301_Objective_01",
            id = "730098",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_75()
    local params;
    params = {
        -- Pawns,
        [0] = "2104259979428016217",
        -- SoundId,
        [1] = "1026582016",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_63()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103387899763393077",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1415051025");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_SoundPointModifier_74_Started,
        -- Stopped,
        [1] = self.f_box_SoundPointModifier_74_Stopped,
    });
    params = {
        -- soundPoint,
        [0] = "2102034897381145346",
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_25()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015255988987428",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_42()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102725370431161224",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_23()
    local params;
    params = {
        -- EntityA,
        [1] = "2101742737486266618",
        -- EntityB,
        [2] = "2102086075542420508",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_14()
    local params;
    params = {
        -- Preset,
        [0] = "9015219471541668",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1786172318");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_39_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RainbowPrint_70()
    local params;
    params = {
        -- fTimer,
        [0] = 10,
        -- sString,
        [1] = "Treasure Hunt C3 Started",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|1799989236");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_43_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "THD101 - Flooded Bunker",
            item = "THD101_Objective_01",
            id = "711830",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_60()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099696937174308164",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_62()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101107712453512155",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_64()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_76()
    local params;
    params = {
        -- Pawns,
        [0] = "2102034897381145346",
        -- SoundId,
        [1] = "2457631631",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_C3_POI_03_Main.domino|@TH_C3_POI_03_Main|2115569700");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2102725305312494470",
        -- ObjectiveId,
        [2] = {
            section = "THD101 - Flooded Bunker",
            item = "THD101_Objective_01",
            id = "711830",
        },
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_39_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayerGroup = l0:GetDataOutValue(0);
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
