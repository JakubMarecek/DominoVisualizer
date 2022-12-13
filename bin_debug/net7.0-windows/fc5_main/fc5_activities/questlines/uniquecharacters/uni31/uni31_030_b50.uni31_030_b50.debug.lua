LUACb3 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni31/uni31_030_b50.domino
-- User graph: UNI31_030_B50
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
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ListReader.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/SpawnParticle_v6.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_030_B50.SwapArchetype_v2.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[newparticles\\9015276107927388.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[972734866.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4041304575.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles\\9015275839677935.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[newparticles\\45044056916184328.part]], "CParticlesSystemParamResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_030_B50.UNI31_030_B50.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")] = {
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
                name = "MarkerTypeId",
                type = "database",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "ProgressDisplayType",
                type = "int",
            },
            [3] = {
                name = "TotalProgress",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
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
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/ListReader.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Read",
            },
            [1] = {
                name = "ResetRead",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EndOfList",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
            },
            [1] = {
                name = "Input",
                type = "list",
            },
            [2] = {
                name = "Loop",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "CursorPos",
                type = "int",
            },
            [1] = {
                name = "Data",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/SpawnParticle_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DestroyParticle",
            },
            [1] = {
                name = "SpawnAutomanagedParticle",
            },
            [2] = {
                name = "SpawnParticle",
            },
            [3] = {
                name = "StopToDestroyParticle",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "OnDestroyParticle",
                delayed = false,
            },
            [1] = {
                name = "OnSpawnAutomanagedParticle",
                delayed = false,
            },
            [2] = {
                name = "OnSpawnParticle",
                delayed = false,
            },
            [3] = {
                name = "OnStopToDestroyParticle",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "handleName",
                type = "string",
            },
            [2] = {
                name = "Offset_X",
                type = "float",
            },
            [3] = {
                name = "Offset_Y",
                type = "float",
            },
            [4] = {
                name = "Offset_Z",
                type = "float",
            },
            [5] = {
                name = "ParticleName",
                type = "particle",
            },
            [6] = {
                name = "Pawns",
                type = "group",
            },
            [7] = {
                name = "Rotate",
                type = "string",
            },
            [8] = {
                name = "TagName",
                type = "string",
            },
        },
        dataInCount = 9,
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
    metadataTable[GetPathID("Domino/System/StimsEmitter_v2.lua")] = {
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
                name = "StimsEmitter",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_030_B50.SwapArchetype_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Transform",
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
                name = "b_CheckIfFormerEntityIsAlive",
                type = "bool",
            },
            [1] = {
                name = "FormerEntity_ID",
                type = "entity",
            },
            [2] = {
                name = "LatterSpawner_ID",
                type = "entity",
            },
            [3] = {
                name = "VFX_Emitter",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "NewEntity_ID",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI31_030_B50";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50";
    self.JudgeMoose = nil;
    self.Host = nil;
    self.Client = nil;
    self.i_IllusionKilled = 0;
    self.f_judgeHealth = 0;
    self.l_LastHalluSpawned = {
    };
    self.e_replacment = nil;
    self.e_CurrentHallucination = nil;
    self.i_judgeHealth = 0;
    self.box_OnceOnly_v3_90 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|7213823");
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
    self.box_MultipleOR_73 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|8662400");
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
        [0] = self.f_box_MultipleOR_73_Out,
    });
    self.box_Bind_v4_13 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|50701077");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_13_Bound,
    });
    self.box_GroupSizeListener_v5_62 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|58802119");
    l0:SetConnections({
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_62_MemberRemoved,
    });
    self.box_ListReader_40 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|65669034");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_40_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_40_Out,
    });
    self.box_Delay_v5_79 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|65715345");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_79_Started,
        -- Stopped,
        [4] = self.f_box_Delay_v5_79_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_79_TimeElapsed,
    });
    self.box_Delay_v5_84 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|172265716");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_84_TimeElapsed,
    });
    self.box_Delay_v5_88 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|179551735");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_88_TimeElapsed,
    });
    self.box_GroupSizeListener_v5_50 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|207196623");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_50_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_50_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_50_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_50_MemberRemoved,
    });
    self.box_OnceOnly_v3_77 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|209828867");
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
                [0] = self.f_box_OnceOnly_v3_77_Out_0,
            },
            count = 2,
        },
    });
    self.box_HealthListener_v6_25 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|217817084");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_25_Damaged,
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|262417215");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_Delay_v5_136 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|292354509");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_136_TimeElapsed,
    });
    self.box_SpawnParticle_v6_144 = cbox:CreateBox("Domino/System/Player/SpawnParticle_v6.lua");
    l0 = self.box_SpawnParticle_v6_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnParticle_v6_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|314074529");
    l0:SetConnections({
        -- OnSpawnParticle,
        [2] = self.f_box_SpawnParticle_v6_144_OnSpawnParticle,
        -- OnStopToDestroyParticle,
        [3] = self.f_box_SpawnParticle_v6_144_OnStopToDestroyParticle,
    });
    self.box_OnceOnly_v3_74 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|321156021");
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
    self.box_MultipleOR_101 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|364245606");
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
    self.box_SwapArchetype_v2_2 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_030_B50.SwapArchetype_v2.debug.lua");
    l0 = self.box_SwapArchetype_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapArchetype_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|402216654");
    l0:SetConnections({
    });
    self.box_SwapArchetype_v2_34 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_030_B50.SwapArchetype_v2.debug.lua");
    l0 = self.box_SwapArchetype_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapArchetype_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|469675373");
    l0:SetConnections({
    });
    self.box_Bind_v4_89 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|488543236");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_89_Bound,
    });
    self.box_HealthListener_v6_32 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|490837006");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_32_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_32_Killed,
    });
    self.box_HealthListener_v6_64 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|518639452");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_64_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_64_Killed,
    });
    self.box_SpawnParticle_v6_120 = cbox:CreateBox("Domino/System/Player/SpawnParticle_v6.lua");
    l0 = self.box_SpawnParticle_v6_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnParticle_v6_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|583104389");
    l0:SetConnections({
    });
    self.box_SpawnParticle_v6_29 = cbox:CreateBox("Domino/System/Player/SpawnParticle_v6.lua");
    l0 = self.box_SpawnParticle_v6_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnParticle_v6_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|615152155");
    l0:SetConnections({
        -- OnSpawnParticle,
        [2] = self.f_box_SpawnParticle_v6_29_OnSpawnParticle,
    });
    self.box_OnceOnly_v3_70 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|617073436");
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
                [0] = self.f_box_OnceOnly_v3_70_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_58 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|636156665");
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
    self.box_SpawnParticle_v6_143 = cbox:CreateBox("Domino/System/Player/SpawnParticle_v6.lua");
    l0 = self.box_SpawnParticle_v6_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnParticle_v6_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|659675917");
    l0:SetConnections({
        -- OnSpawnParticle,
        [2] = self.f_box_SpawnParticle_v6_143_OnSpawnParticle,
        -- OnStopToDestroyParticle,
        [3] = self.f_box_SpawnParticle_v6_143_OnStopToDestroyParticle,
    });
    self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|678172225");
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
        [0] = self.f_box_MultipleOR_44_Out,
    });
    self.box_Delay_v5_45 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|679016039");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_45_TimeElapsed,
    });
    self.box_ListReader_22 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|756189389");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_22_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_22_Out,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|765421694");
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
    self.box_HealthListener_v6_6 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|801049438");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_6_Killed,
    });
    self.box_MultipleOR_85 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|824481701");
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
    self.box_Music_Quest_v2_37 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|825363380");
    l0:SetConnections({
    });
    self.box_Gate_v3_53 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|865334373");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_53_Closed,
    });
    self.box_RemoveEntity_v2_16 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|891662578");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_16_Out,
    });
    self.box_Delay_v5_71 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|955186358");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_71_TimeElapsed,
    });
    self.box_MultipleOR_119 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|964970313");
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
    self.box_SpawnAI_106 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|972373915");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_106_Spawned,
    });
    self.box_Switch_55 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|977431723");
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
                [1] = self.f_box_Switch_55_Output_1,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_41 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1006077484");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_41_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_41_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_41_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_41_Success,
    });
    self.box_StartCelebration_47 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1051470504");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_47_Ended,
    });
    self.box_MultipleOR_83 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1072040215");
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
    self.box_Delay_v5_121 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1126986903");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_121_TimeElapsed,
    });
    self.box_SpawnParticle_v6_75 = cbox:CreateBox("Domino/System/Player/SpawnParticle_v6.lua");
    l0 = self.box_SpawnParticle_v6_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnParticle_v6_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1185829335");
    l0:SetConnections({
    });
    self.box_SpawnParticle_v6_87 = cbox:CreateBox("Domino/System/Player/SpawnParticle_v6.lua");
    l0 = self.box_SpawnParticle_v6_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnParticle_v6_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1262283908");
    l0:SetConnections({
    });
    self.box_MultipleOR_66 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1275798847");
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
        [0] = self.f_box_MultipleOR_66_Out,
    });
    self.box_Delay_v5_108 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1301589246");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_108_TimeElapsed,
    });
    self.box_SpawnAI_125 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1333271693");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_125_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_125_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_125_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_125_Success,
    });
    self.box_SpawnAI_105 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1489874098");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_105_Fail,
        -- Success,
        [3] = self.f_box_SpawnAI_105_Success,
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1555153924");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
    self.box_SpawnParticle_v6_69 = cbox:CreateBox("Domino/System/Player/SpawnParticle_v6.lua");
    l0 = self.box_SpawnParticle_v6_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnParticle_v6_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1580441999");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1615966117");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_Bind_v4_98 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1637177214");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_98_Bound,
    });
    self.box_SpawnAI_114 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1709483328");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_114_Fail,
        -- Success,
        [3] = self.f_box_SpawnAI_114_Success,
    });
    self.box_HealthListener_v6_61 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1766619256");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_61_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_61_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_61_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_61_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_61_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_61_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_61_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_61_Revived,
    });
    self.box_OnceOnly_v3_17 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1777254858");
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
    self.box_HealthListener_v6_147 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1815678022");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_147_Killed,
    });
    self.box_HealthListener_v6_117 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1878633676");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_117_Damaged,
    });
    self.box_MultipleOR_57 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1895100645");
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
    self.box_Bind_v4_30 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1928887817");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_30_Bound,
    });
    self.box_SpawnParticle_v6_124 = cbox:CreateBox("Domino/System/Player/SpawnParticle_v6.lua");
    l0 = self.box_SpawnParticle_v6_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnParticle_v6_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1930397843");
    l0:SetConnections({
    });
    self.box_Delay_v5_3 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1972611051");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_3_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
    self.box_MultipleOR_78 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2018205903");
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
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2036335875");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_HealthListener_v6_80 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2046986027");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_80_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_80_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_80_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_80_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_80_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_80_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_80_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_80_Revived,
    });
    self.box_RemoveEntity_v2_93 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2085330999");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_93_Out,
    });
    self.box_SpawnParticle_v6_141 = cbox:CreateBox("Domino/System/Player/SpawnParticle_v6.lua");
    l0 = self.box_SpawnParticle_v6_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnParticle_v6_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2146101559");
    l0:SetConnections({
        -- OnSpawnParticle,
        [2] = self.f_box_SpawnParticle_v6_141_OnSpawnParticle,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2094179942", "2094179942", "UNI31_030_B50", "In", "box_ActivityAcknowledgeGate_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2105302829", "2105302829", "UNI31_030_B50", "OnLeaveZone", "box_OutputOrder_v2_46.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_59_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1660411771", "1660411771", "UNI31_030_B50", "box_Simple_Node_59.Out", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_25();
    l0 = self.box_HealthListener_v6_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|75713965", "75713965", "UNI31_030_B50", "box_Simple_Node_43.Out", "box_HealthListener_v6_25.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_GroupAddToGroup_v2_54();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|128343950", "128343950", "UNI31_030_B50", "box_Simple_Node_43.Out", "box_GroupAddToGroup_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_97_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_89();
    l0 = self.box_Bind_v4_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1839189454", "1839189454", "UNI31_030_B50", "box_Simple_Node_97.Out", "box_Bind_v4_89.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2098142642", "2098142642", "UNI31_030_B50", "box_Simple_Node_97.Out", "box_MultipleOR_73.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|168324696", "168324696", "UNI31_030_B50", "box_Simple_Node_97.Out", "box_OutputOrder_v2_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_96_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_71();
    l0 = self.box_Delay_v5_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|757083648", "757083648", "UNI31_030_B50", "box_Simple_Node_96.Out", "box_Delay_v5_71.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_130_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_136();
    l0 = self.box_Delay_v5_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1319214229", "1319214229", "UNI31_030_B50", "box_Simple_Node_130.Out", "box_Delay_v5_136.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_37();
    l0 = self.box_Music_Quest_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|870856303", "870856303", "UNI31_030_B50", "box_Simple_Node_63.Out", "box_Music_Quest_v2_37.Start_Reset_MIS_Attacked", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Reset_MIS_Attacked
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_90_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_92();
    l0 = self.box_OnceOnly_v3_90;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1391152176", "1391152176", "UNI31_030_B50", "box_OnceOnly_v3_90.Out", "box_SetContextualStrategy_92.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_73_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_73;
    l1 = self.box_OnceOnly_v3_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|828845673", "828845673", "UNI31_030_B50", "box_MultipleOR_73.Out", "box_OnceOnly_v3_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Bind_v4_13_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_64();
    l0 = self.box_Bind_v4_13;
    l1 = self.box_HealthListener_v6_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|210864280", "210864280", "UNI31_030_B50", "box_Bind_v4_13.Bound", "box_HealthListener_v6_64.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_62_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_55();
    l0 = self.box_GroupSizeListener_v5_62;
    l1 = self.box_Switch_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|966827", "966827", "UNI31_030_B50", "box_GroupSizeListener_v5_62.MemberRemoved", "box_Switch_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ListReader_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_39();
    l0 = self.box_ListReader_40;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|129556394", "129556394", "UNI31_030_B50", "box_ListReader_40.Out", "box_SetEntity_v2_39.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_79_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = self.box_Delay_v5_79;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|966687812", "966687812", "UNI31_030_B50", "box_Delay_v5_79.Started", "box_OutputOrder_v2_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_79_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_80();
    l0 = self.box_Delay_v5_79;
    l1 = self.box_HealthListener_v6_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|697376812", "697376812", "UNI31_030_B50", "box_Delay_v5_79.Stopped", "box_HealthListener_v6_80.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_79_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_80();
    l0 = self.box_Delay_v5_79;
    l1 = self.box_HealthListener_v6_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1057958804", "1057958804", "UNI31_030_B50", "box_Delay_v5_79.TimeElapsed", "box_HealthListener_v6_80.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_84_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_12();
    l0 = self.box_Delay_v5_84;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1549338344", "1549338344", "UNI31_030_B50", "box_Delay_v5_84.TimeElapsed", "box_StimsEmitter_v2_12.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_88_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_15();
    l0 = self.box_Delay_v5_88;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|985228216", "985228216", "UNI31_030_B50", "box_Delay_v5_88.TimeElapsed", "box_GetHealthState_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_79();
    l0 = self.box_Delay_v5_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1992480135", "1992480135", "UNI31_030_B50", "box_OutputOrder_v2_56.Out", "box_Delay_v5_79.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_62();
    l0 = self.box_GroupSizeListener_v5_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1920202093", "1920202093", "UNI31_030_B50", "box_OutputOrder_v2_56.Out", "box_GroupSizeListener_v5_62.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_50_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_50;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|476303957", "476303957", "UNI31_030_B50", "box_GroupSizeListener_v5_50.Enabled", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_50_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_50;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1696418585", "1696418585", "UNI31_030_B50", "box_GroupSizeListener_v5_50.MemberRemoved", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_77_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_121();
    l0 = self.box_OnceOnly_v3_77;
    l1 = self.box_Delay_v5_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|450167635", "450167635", "UNI31_030_B50", "box_OnceOnly_v3_77.Out", "box_Delay_v5_121.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_25_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_25;
    l1 = self.box_OnceOnly_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1517818022", "1517818022", "UNI31_030_B50", "box_HealthListener_v6_25.Damaged", "box_OnceOnly_v3_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_10();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1338508040", "1338508040", "UNI31_030_B50", "box_OutputOrder_v2_20.Out", "box_Compare_Floats_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_8();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1411625474", "1411625474", "UNI31_030_B50", "box_OutputOrder_v2_20.Out", "box_SetInteger_v2_8.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_53();
    l0 = self.box_Gate_v3_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|587748087", "587748087", "UNI31_030_B50", "box_OutputOrder_v2_20.Out", "box_Gate_v3_53.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_60();
    l0 = self.box_ActivityInitialized_4;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|766685160", "766685160", "UNI31_030_B50", "box_ActivityInitialized_4.Out", "box_AddActivityObjective_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_136_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_125();
    l0 = self.box_Delay_v5_136;
    l1 = self.box_SpawnAI_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|691681752", "691681752", "UNI31_030_B50", "box_Delay_v5_136.TimeElapsed", "box_SpawnAI_125.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnParticle_v6_144_OnSpawnParticle()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_SpawnParticle_v6_144;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1170285599", "1170285599", "UNI31_030_B50", "box_SpawnParticle_v6_144.OnSpawnParticle", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnParticle_v6_144_OnStopToDestroyParticle()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnParticle_v6_87();
    l0 = self.box_SpawnParticle_v6_144;
    l1 = self.box_SpawnParticle_v6_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|74777207", "74777207", "UNI31_030_B50", "box_SpawnParticle_v6_144.OnStopToDestroyParticle", "box_SpawnParticle_v6_87.SpawnParticle", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnParticle
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_74_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = self.box_OnceOnly_v3_74;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|579607549", "579607549", "UNI31_030_B50", "box_OnceOnly_v3_74.Out", "box_Simple_Node_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_147();
    l0 = self.box_HealthListener_v6_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|763140939", "763140939", "UNI31_030_B50", "box_OutputOrder_v2_38.Out", "box_HealthListener_v6_147.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_134();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|589527184", "589527184", "UNI31_030_B50", "box_OutputOrder_v2_38.Out", "box_SetInteger_v2_134.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1024450280", "1024450280", "UNI31_030_B50", "box_OutputOrder_v2_36.Out", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_47();
    l0 = self.box_StartCelebration_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1420098474", "1420098474", "UNI31_030_B50", "box_OutputOrder_v2_36.Out", "box_StartCelebration_47.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_101_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_106();
    l0 = self.box_MultipleOR_101;
    l1 = self.box_SpawnAI_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1316036730", "1316036730", "UNI31_030_B50", "box_MultipleOR_101.Out", "box_SpawnAI_106.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetInteger_v2_67_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_67_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|631331391", "631331391", "UNI31_030_B50", "box_SetInteger_v2_67.Out", "box_MultipleOR_66.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EndActivityObjective_v2_48_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1929711840", "1929711840", "UNI31_030_B50", "box_EndActivityObjective_v2_48.Out", "box_OutputOrder_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_39_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_39_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_113();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1395552711", "1395552711", "UNI31_030_B50", "box_SetEntity_v2_39.Out", "box_OutputOrder_v2_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_89_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_91();
    l0 = self.box_Bind_v4_89;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|532095611", "532095611", "UNI31_030_B50", "box_Bind_v4_89.Bound", "box_ParticleSystem_v3_91.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_32_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_117();
    l0 = self.box_HealthListener_v6_32;
    l1 = self.box_HealthListener_v6_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1907125252", "1907125252", "UNI31_030_B50", "box_HealthListener_v6_32.Enabled", "box_HealthListener_v6_117.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_32_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_SwapArchetype_v2_2();
    l0 = self.box_HealthListener_v6_32;
    l1 = self.box_SwapArchetype_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|164458462", "164458462", "UNI31_030_B50", "box_HealthListener_v6_32.Killed", "box_SwapArchetype_v2_2.Transform", l0:GetLuaBox(), l1:GetLuaBox());
    -- Transform
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_64_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_30();
    l0 = self.box_HealthListener_v6_64;
    l1 = self.box_Bind_v4_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1345402761", "1345402761", "UNI31_030_B50", "box_HealthListener_v6_64.Enabled", "box_Bind_v4_30.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_64_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_SwapArchetype_v2_34();
    l0 = self.box_HealthListener_v6_64;
    l1 = self.box_SwapArchetype_v2_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1030343278", "1030343278", "UNI31_030_B50", "box_HealthListener_v6_64.Killed", "box_SwapArchetype_v2_34.Transform", l0:GetLuaBox(), l1:GetLuaBox());
    -- Transform
    l1:Exec(0, params);
end;

function export:f_box_AddActivityObjectiveProgress_v2_52_Out()
    self:OnExit_box_AddActivityObjectiveProgress_v2_52_Out();
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_61();
    l0 = self.box_HealthListener_v6_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|645010473", "645010473", "UNI31_030_B50", "box_OutputOrder_v2_9.Out", "box_HealthListener_v6_61.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_6();
    l0 = self.box_HealthListener_v6_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|563212574", "563212574", "UNI31_030_B50", "box_OutputOrder_v2_9.Out", "box_HealthListener_v6_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1467528514", "1467528514", "UNI31_030_B50", "box_OutputOrder_v2_9.Out", "box_OutputOrder_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_63();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1985067473", "1985067473", "UNI31_030_B50", "box_OutputOrder_v2_9.Out", "box_Simple_Node_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnParticle_v6_29_OnSpawnParticle()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnParticle_v6_75();
    l0 = self.box_SpawnParticle_v6_29;
    l1 = self.box_SpawnParticle_v6_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1175906785", "1175906785", "UNI31_030_B50", "box_SpawnParticle_v6_29.OnSpawnParticle", "box_SpawnParticle_v6_75.DestroyParticle", l0:GetLuaBox(), l1:GetLuaBox());
    -- DestroyParticle
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_95_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1561951227", "1561951227", "UNI31_030_B50", "box_OutputOrder_v2_95.Out", "box_MultipleOR_83.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_95_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_130();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|786903636", "786903636", "UNI31_030_B50", "box_OutputOrder_v2_95.Out", "box_Simple_Node_130.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_70_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_97();
    l0 = self.box_OnceOnly_v3_70;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|825505585", "825505585", "UNI31_030_B50", "box_OnceOnly_v3_70.Out", "box_Simple_Node_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_58_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_52();
    l0 = self.box_OnceOnly_v3_58;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1813443232", "1813443232", "UNI31_030_B50", "box_OnceOnly_v3_58.Out", "box_AddActivityObjectiveProgress_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnParticle_v6_143_OnSpawnParticle()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnParticle_v6_144();
    l0 = self.box_SpawnParticle_v6_143;
    l1 = self.box_SpawnParticle_v6_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|228482870", "228482870", "UNI31_030_B50", "box_SpawnParticle_v6_143.OnSpawnParticle", "box_SpawnParticle_v6_144.SpawnParticle", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnParticle
    l1:Exec(2, params);
end;

function export:f_box_SpawnParticle_v6_143_OnStopToDestroyParticle()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnParticle_v6_69();
    l0 = self.box_SpawnParticle_v6_143;
    l1 = self.box_SpawnParticle_v6_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1543193028", "1543193028", "UNI31_030_B50", "box_SpawnParticle_v6_143.OnStopToDestroyParticle", "box_SpawnParticle_v6_69.SpawnParticle", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnParticle
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_148_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnParticle_v6_143();
    l0 = self.box_SpawnParticle_v6_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|44485025", "44485025", "UNI31_030_B50", "box_OutputOrder_v2_148.Out", "box_SpawnParticle_v6_143.StopToDestroyParticle", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopToDestroyParticle
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_148_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnParticle_v6_144();
    l0 = self.box_SpawnParticle_v6_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1015427708", "1015427708", "UNI31_030_B50", "box_OutputOrder_v2_148.Out", "box_SpawnParticle_v6_144.StopToDestroyParticle", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopToDestroyParticle
    l0:Exec(3, params);
end;

function export:f_box_MultipleOR_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_37();
    l0 = self.box_MultipleOR_44;
    l1 = self.box_Music_Quest_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1818956598", "1818956598", "UNI31_030_B50", "box_MultipleOR_44.Out", "box_Music_Quest_v2_37.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_45_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_98();
    l0 = self.box_Delay_v5_45;
    l1 = self.box_Bind_v4_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|468560009", "468560009", "UNI31_030_B50", "box_Delay_v5_45.TimeElapsed", "box_Bind_v4_98.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_134_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_134_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_133();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|165317998", "165317998", "UNI31_030_B50", "box_SetInteger_v2_134.Out", "box_HealthModifier_v2_133.Set", clone:GetLuaBox(), l0:GetLuaBox());
    -- Set
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListReader_22_Out()
    self:OnExit_box_ListReader_22_Out();
end;

function export:f_box_MultipleOR_7_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_7;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|349280184", "349280184", "UNI31_030_B50", "box_MultipleOR_7.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_HealthListener_v6_6_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_HealthListener_v6_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1705833464", "1705833464", "UNI31_030_B50", "box_HealthListener_v6_6.Killed", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_15_Critical()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1846974731", "1846974731", "UNI31_030_B50", "box_GetHealthState_15.Critical", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetHealthState_15_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1554229122", "1554229122", "UNI31_030_B50", "box_GetHealthState_15.Healthy", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_26();
    l0 = self.box_MultipleOR_85;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1725983128", "1725983128", "UNI31_030_B50", "box_MultipleOR_85.Out", "box_Compare_Integers_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_53_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Gate_v3_53;
    l1 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2145865644", "2145865644", "UNI31_030_B50", "box_Gate_v3_53.Closed", "box_Delay_v5_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_96();
    l0 = self.box_RemoveEntity_v2_16;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1729809323", "1729809323", "UNI31_030_B50", "box_RemoveEntity_v2_16.Out", "box_Simple_Node_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnParticle_v6_124();
    l0 = self.box_SpawnParticle_v6_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|552028643", "552028643", "UNI31_030_B50", "box_OutputOrder_v2_31.Out", "box_SpawnParticle_v6_124.SpawnParticle", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnParticle
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnParticle_v6_120();
    l0 = self.box_SpawnParticle_v6_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1258620345", "1258620345", "UNI31_030_B50", "box_OutputOrder_v2_31.Out", "box_SpawnParticle_v6_120.SpawnParticle", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnParticle
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_71_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_114();
    l0 = self.box_Delay_v5_71;
    l1 = self.box_SpawnAI_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1270341362", "1270341362", "UNI31_030_B50", "box_Delay_v5_71.TimeElapsed", "box_SpawnAI_114.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_119_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_105();
    l0 = self.box_MultipleOR_119;
    l1 = self.box_SpawnAI_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|4462000", "4462000", "UNI31_030_B50", "box_MultipleOR_119.Out", "box_SpawnAI_105.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_106_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_86();
    l0 = self.box_SpawnAI_106;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1207828993", "1207828993", "UNI31_030_B50", "box_SpawnAI_106.Spawned", "box_SetEntity_v2_86.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_55_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_42();
    l0 = self.box_Switch_55;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1378377310", "1378377310", "UNI31_030_B50", "box_Switch_55.Output", "box_SetContextualStrategy_42.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_41_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_41_Spawned();
    params = self:OnEnter_box_ListReader_22();
    l0 = self.box_SpawnAI_41;
    l1 = self.box_ListReader_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1355862473", "1355862473", "UNI31_030_B50", "box_SpawnAI_41.Spawned", "box_ListReader_22.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_StartCelebration_47_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_27();
    l0 = self.box_StartCelebration_47;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1227218317", "1227218317", "UNI31_030_B50", "box_StartCelebration_47.Ended", "box_ActivityEnd_27.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_21_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_122();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1904585312", "1904585312", "UNI31_030_B50", "box_SetInteger_v2_21.Out", "box_HealthModifier_v2_122.Set", clone:GetLuaBox(), l0:GetLuaBox());
    -- Set
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_83_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_83;
    l1 = self.box_OnceOnly_v3_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1990717168", "1990717168", "UNI31_030_B50", "box_MultipleOR_83.Out", "box_OnceOnly_v3_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_91_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnParticle_v6_141();
    l0 = self.box_SpawnParticle_v6_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1911144267", "1911144267", "UNI31_030_B50", "box_ParticleSystem_v3_91.Started", "box_SpawnParticle_v6_141.SpawnParticle", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnParticle
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_86_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_86_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1442625555", "1442625555", "UNI31_030_B50", "box_SetEntity_v2_86.Out", "box_OutputOrder_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_8_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|340623655", "340623655", "UNI31_030_B50", "box_SetInteger_v2_8.Out", "box_OnceOnly_v3_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_121_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_Delay_v5_121;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|139617416", "139617416", "UNI31_030_B50", "box_Delay_v5_121.TimeElapsed", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_133_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnParticle_v6_143();
    l0 = self.box_SpawnParticle_v6_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2076724502", "2076724502", "UNI31_030_B50", "box_HealthModifier_v2_133.OnSet", "box_SpawnParticle_v6_143.SpawnParticle", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnParticle
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_113_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_115();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|4154981", "4154981", "UNI31_030_B50", "box_OutputOrder_v2_113.Out", "box_Simple_Node_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_113_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1905740592", "1905740592", "UNI31_030_B50", "box_OutputOrder_v2_113.Out", "box_OutputOrder_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_76_Critical()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|876993956", "876993956", "UNI31_030_B50", "box_GetHealthState_76.Critical", "box_MultipleOR_78.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetHealthState_76_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1953908848", "1953908848", "UNI31_030_B50", "box_GetHealthState_76.Healthy", "box_MultipleOR_78.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthModifier_v2_122_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_79();
    l0 = self.box_Delay_v5_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2017990868", "2017990868", "UNI31_030_B50", "box_HealthModifier_v2_122.OnSet", "box_Delay_v5_79.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_23();
    l0 = self.box_MultipleOR_66;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|630699484", "630699484", "UNI31_030_B50", "box_MultipleOR_66.Out", "box_SetActivityObjectiveProgress_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_50();
    l0 = self.box_GroupSizeListener_v5_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2089400870", "2089400870", "UNI31_030_B50", "box_OutputOrder_v2_24.Out", "box_GroupSizeListener_v5_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_25();
    l0 = self.box_HealthListener_v6_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1154680193", "1154680193", "UNI31_030_B50", "box_OutputOrder_v2_24.Out", "box_HealthListener_v6_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_108_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_21();
    l0 = self.box_Delay_v5_108;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1516441439", "1516441439", "UNI31_030_B50", "box_Delay_v5_108.TimeElapsed", "box_SetInteger_v2_21.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_125_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_125_Spawned();
    params = self:OnEnter_box_ListReader_40();
    l0 = self.box_SpawnAI_125;
    l1 = self.box_ListReader_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1192375167", "1192375167", "UNI31_030_B50", "box_SpawnAI_125.Spawned", "box_ListReader_40.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_GroupAddToGroup_v2_54_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_45();
    l0 = self.box_Delay_v5_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1520768275", "1520768275", "UNI31_030_B50", "box_GroupAddToGroup_v2_54.Out", "box_Delay_v5_45.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_112_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_115();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1056856787", "1056856787", "UNI31_030_B50", "box_OutputOrder_v2_112.Out", "box_Simple_Node_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_108();
    l0 = self.box_Delay_v5_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2120130324", "2120130324", "UNI31_030_B50", "box_OutputOrder_v2_112.Out", "box_Delay_v5_108.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_50();
    l0 = self.box_GroupSizeListener_v5_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1977306818", "1977306818", "UNI31_030_B50", "box_OutputOrder_v2_49.Out", "box_GroupSizeListener_v5_50.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_41();
    l0 = self.box_SpawnAI_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1043014979", "1043014979", "UNI31_030_B50", "box_OutputOrder_v2_49.Out", "box_SpawnAI_41.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_60_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|391620209", "391620209", "UNI31_030_B50", "box_AddActivityObjective_v2_60.Out", "box_ActivityObjectiveMarkerModifier_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_105_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_105;
    l1 = self.box_MultipleOR_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|43388913", "43388913", "UNI31_030_B50", "box_SpawnAI_105.Fail", "box_MultipleOR_101.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_105_Success()
    local l0, l1;
    l0 = self.box_SpawnAI_105;
    l1 = self.box_MultipleOR_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1134773534", "1134773534", "UNI31_030_B50", "box_SpawnAI_105.Success", "box_MultipleOR_101.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnParticle_v6_29();
    l0 = self.box_SpawnParticle_v6_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|113217349", "113217349", "UNI31_030_B50", "box_OutputOrder_v2_68.Out", "box_SpawnParticle_v6_29.SpawnParticle", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnParticle
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_112();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1490850814", "1490850814", "UNI31_030_B50", "box_OutputOrder_v2_68.Out", "box_OutputOrder_v2_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_35();
    l0 = self.box_Delay_v5_33;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|451282594", "451282594", "UNI31_030_B50", "box_Delay_v5_33.TimeElapsed", "box_StimsEmitter_v2_35.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_11_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1742356630", "1742356630", "UNI31_030_B50", "box_ActivityObjectiveMarkerModifier_v3_11.Enabled", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|542775452", "542775452", "UNI31_030_B50", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|940320946", "940320946", "UNI31_030_B50", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Bind_v4_98_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_94();
    l0 = self.box_Bind_v4_98;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1621832561", "1621832561", "UNI31_030_B50", "box_Bind_v4_98.Bound", "box_ParticleSystem_v3_94.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_114_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_114;
    l1 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|467394614", "467394614", "UNI31_030_B50", "box_SpawnAI_114.Fail", "box_MultipleOR_119.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_114_Success()
    local l0, l1;
    l0 = self.box_SpawnAI_114;
    l1 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1384126350", "1384126350", "UNI31_030_B50", "box_SpawnAI_114.Success", "box_MultipleOR_119.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StimsEmitter_v2_35_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1349348754", "1349348754", "UNI31_030_B50", "box_StimsEmitter_v2_35.Enabled", "box_Delay_v5_33.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_HealthListener_v6_61_Critical()
    self:OnExit_box_HealthListener_v6_61_Critical();
end;

function export:f_box_HealthListener_v6_61_Damaged()
    local params, l0, l1;
    self:OnExit_box_HealthListener_v6_61_Damaged();
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_HealthListener_v6_61;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|902955774", "902955774", "UNI31_030_B50", "box_HealthListener_v6_61.Damaged", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_61_Healed()
    self:OnExit_box_HealthListener_v6_61_Healed();
end;

function export:f_box_HealthListener_v6_61_Killed()
    self:OnExit_box_HealthListener_v6_61_Killed();
end;

function export:f_box_OnceOnly_v3_17_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_18();
    l0 = self.box_OnceOnly_v3_17;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1834110250", "1834110250", "UNI31_030_B50", "box_OnceOnly_v3_17.Out", "box_SetContextualStrategy_18.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_67();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|507037469", "507037469", "UNI31_030_B50", "box_OutputOrder_v2_65.Out", "box_SetInteger_v2_67.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_48();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|274939239", "274939239", "UNI31_030_B50", "box_OutputOrder_v2_65.Out", "box_EndActivityObjective_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_147_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_148();
    l0 = self.box_HealthListener_v6_147;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1183813154", "1183813154", "UNI31_030_B50", "box_HealthListener_v6_147.Killed", "box_OutputOrder_v2_148.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_59();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1469556093", "1469556093", "UNI31_030_B50", "box_OutputOrder_v2_46.Out", "box_Simple_Node_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_1();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|869418573", "869418573", "UNI31_030_B50", "box_OutputOrder_v2_46.Out", "box_ActivityRetry_1.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_94_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_88();
    l0 = self.box_Delay_v5_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|999241969", "999241969", "UNI31_030_B50", "box_ParticleSystem_v3_94.Started", "box_Delay_v5_88.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_HealthListener_v6_117_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_117;
    l1 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|471711364", "471711364", "UNI31_030_B50", "box_HealthListener_v6_117.Damaged", "box_MultipleOR_83.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_57_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_16();
    l0 = self.box_MultipleOR_57;
    l1 = self.box_RemoveEntity_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2051043240", "2051043240", "UNI31_030_B50", "box_MultipleOR_57.Out", "box_RemoveEntity_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_30_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_32();
    l0 = self.box_Bind_v4_30;
    l1 = self.box_HealthListener_v6_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1795612338", "1795612338", "UNI31_030_B50", "box_Bind_v4_30.Bound", "box_HealthListener_v6_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_3_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_3;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|485478019", "485478019", "UNI31_030_B50", "box_Delay_v5_3.Started", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_53();
    l0 = self.box_Delay_v5_3;
    l1 = self.box_Gate_v3_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2048807411", "2048807411", "UNI31_030_B50", "box_Delay_v5_3.TimeElapsed", "box_Gate_v3_53.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_StimsEmitter_v2_12_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_35();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1034202542", "1034202542", "UNI31_030_B50", "box_StimsEmitter_v2_12.Disabled", "box_StimsEmitter_v2_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_12_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_84();
    l0 = self.box_Delay_v5_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|295780028", "295780028", "UNI31_030_B50", "box_StimsEmitter_v2_12.Enabled", "box_Delay_v5_84.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_78_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_93();
    l0 = self.box_MultipleOR_78;
    l1 = self.box_RemoveEntity_v2_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|533017408", "533017408", "UNI31_030_B50", "box_MultipleOR_78.Out", "box_RemoveEntity_v2_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_12();
    l0 = self.box_Delay_v5_28;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2048905184", "2048905184", "UNI31_030_B50", "box_Delay_v5_28.TimeElapsed", "box_StimsEmitter_v2_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_13();
    l0 = self.box_Bind_v4_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1630277246", "1630277246", "UNI31_030_B50", "box_OutputOrder_v2_81.Out", "box_Bind_v4_13.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_62();
    l0 = self.box_GroupSizeListener_v5_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|874839723", "874839723", "UNI31_030_B50", "box_OutputOrder_v2_81.Out", "box_GroupSizeListener_v5_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_HealthListener_v6_80_Critical()
    self:OnExit_box_HealthListener_v6_80_Critical();
end;

function export:f_box_HealthListener_v6_80_Damaged()
    local l0, l1;
    self:OnExit_box_HealthListener_v6_80_Damaged();
    l0 = self.box_HealthListener_v6_80;
    l1 = self.box_OnceOnly_v3_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|984772399", "984772399", "UNI31_030_B50", "box_HealthListener_v6_80.Damaged", "box_OnceOnly_v3_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_80_Downed()
    self:OnExit_box_HealthListener_v6_80_Downed();
end;

function export:f_box_HealthListener_v6_80_Healed()
    self:OnExit_box_HealthListener_v6_80_Healed();
end;

function export:f_box_HealthListener_v6_80_Killed()
    self:OnExit_box_HealthListener_v6_80_Killed();
end;

function export:f_box_HealthListener_v6_80_Revived()
    self:OnExit_box_HealthListener_v6_80_Revived();
end;

function export:f_box_Compare_Floats_72_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1859335539", "1859335539", "UNI31_030_B50", "box_Compare_Floats_72.A_le_B", "box_MultipleOR_73.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_26_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1208501305", "1208501305", "UNI31_030_B50", "box_Compare_Integers_26.A_le_B", "box_OutputOrder_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_10_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_72();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|416298402", "416298402", "UNI31_030_B50", "box_Compare_Floats_10.A_gt_B", "box_Compare_Floats_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_10_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2022567134", "2022567134", "UNI31_030_B50", "box_Compare_Floats_10.A_le_B", "box_OnceOnly_v3_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntity_v2_93_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_95();
    l0 = self.box_RemoveEntity_v2_93;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1154496135", "1154496135", "UNI31_030_B50", "box_RemoveEntity_v2_93.Out", "box_OutputOrder_v2_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnParticle_v6_141_OnSpawnParticle()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_76();
    l0 = self.box_SpawnParticle_v6_141;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|526666420", "526666420", "UNI31_030_B50", "box_SpawnParticle_v6_141.OnSpawnParticle", "box_GetHealthState_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|@LeaveZone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_59_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|@n_CleanupPhase_01");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_43_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|@n_CleanupPhase_02");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_97_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|@n_StartPhase_02");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_96_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|@n_StartPhase_03");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_130_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|@n_UpdateHPBarEntity");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|@StartMusic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_63_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_13()
    local params;
    params = {
        -- EntityA,
        [1] = "2102711196261026902",
        -- EntityB,
        [2] = "2102796175871600830",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = true,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_62()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#B6E0F89A",
    };
    return params;
end;

function export:OnEnter_box_ListReader_40()
    local params, l0;
    l0 = self.box_SpawnAI_125;
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_79()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_84()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_88()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|196368379");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_50()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#B6E0F89A",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_25()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#B6E0F89A",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|218220485");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
                [2] = self.f_box_OutputOrder_v2_20_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_136()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_SpawnParticle_v6_144()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine2",
        -- Offset_X,
        [2] = 0,
        -- Offset_Y,
        [3] = 0,
        -- Offset_Z,
        [4] = 0,
        -- ParticleName,
        [5] = "newparticles\\9015275839677935.part",
        -- Pawns,
        [6] = self.JudgeMoose,
        -- Rotate,
        [7] = "xyz",
        -- TagName,
        [8] = "DominoGenerated",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|343984902");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|347498960");
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

function export:OnEnter_box_SetInteger_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|371132951");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_67_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|388268485");
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

function export:OnEnter_box_SwapArchetype_v2_2()
    local params;
    params = {
        -- b_CheckIfFormerEntityIsAlive,
        [0] = false,
        -- FormerEntity_ID,
        [1] = "2102711328729730452",
        -- LatterSpawner_ID,
        [2] = "2102796193353459960",
        -- VFX_Emitter,
        [3] = "2103857835120004797",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|424185496");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_48_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI31_030_B50A_KillMoose",
            id = "725760",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|440835419");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_39_Out,
    });
    l0 = self.box_ListReader_40;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_SwapArchetype_v2_34()
    local params;
    params = {
        -- b_CheckIfFormerEntityIsAlive,
        [0] = false,
        -- FormerEntity_ID,
        [1] = "2102711196261026902",
        -- LatterSpawner_ID,
        [2] = "2102796175871600830",
        -- VFX_Emitter,
        [3] = "2103857835120004797",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_89()
    local params;
    params = {
        -- EntityA,
        [1] = self.JudgeMoose,
        -- EntityB,
        [2] = "2103857835120004797",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = true,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_32()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2102711328729730452",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_64()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2102711196261026902",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|557994556");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_52_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI31_030_B50A_KillMoose",
            id = "725760",
        },
        -- ProgressDisplayType,
        [2] = 1,
        -- TotalProgress,
        [3] = self.i_judgeHealth,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|566623129");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
                [3] = self.f_box_OutputOrder_v2_9_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnParticle_v6_120()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- Offset_X,
        [2] = 0,
        -- Offset_Y,
        [3] = 0,
        -- Offset_Z,
        [4] = 0,
        -- ParticleName,
        [5] = "newparticles\\45044056916184328.part",
        -- Pawns,
        [6] = "#54D5F44A",
        -- Rotate,
        [7] = "xyz",
        -- TagName,
        [8] = "DominoGenerated",
    };
    return params;
end;

function export:OnEnter_box_SpawnParticle_v6_29()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- Offset_X,
        [2] = 0,
        -- Offset_Y,
        [3] = 0,
        -- Offset_Z,
        [4] = 0,
        -- ParticleName,
        [5] = "newparticles\\45044056916184328.part",
        -- Pawns,
        [6] = "#B6E0F89A",
        -- Rotate,
        [7] = "xyz",
        -- TagName,
        [8] = "DominoGenerated",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|615594028");
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
                [0] = self.f_box_OutputOrder_v2_95_Out_0,
                [1] = self.f_box_OutputOrder_v2_95_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnParticle_v6_143()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine1",
        -- Offset_X,
        [2] = 0,
        -- Offset_Y,
        [3] = 0,
        -- Offset_Z,
        [4] = 0,
        -- ParticleName,
        [5] = "newparticles\\9015275839677935.part",
        -- Pawns,
        [6] = self.JudgeMoose,
        -- Rotate,
        [7] = "xyz",
        -- TagName,
        [8] = "DominoGenerated",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|662931552");
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
                [0] = self.f_box_OutputOrder_v2_148_Out_0,
                [1] = self.f_box_OutputOrder_v2_148_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|664282516");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_45()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|692622186");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_134_Out,
    });
    params = {
        -- Float,
        [0] = self.f_judgeHealth,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ListReader_22()
    local params, l0;
    l0 = self.box_SpawnAI_41;
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_6()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#11FBC314",
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|813216140");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_GetHealthState_15_Critical,
        -- Healthy,
        [3] = self.f_box_GetHealthState_15_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.JudgeMoose,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_37()
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
        [6] = "4041304575",
        -- StopEvent,
        [7] = "972734866",
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

function export:OnEnter_box_Gate_v3_53()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_16()
    local params;
    params = {
        -- Group,
        [0] = self.JudgeMoose,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|903400534");
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|912975089");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI31_030_B50A_KillMoose",
            id = "725760",
        },
        -- Progress,
        [1] = self.i_judgeHealth,
        -- ProgressId,
        [2] = self._sld_ProgressId_box_AddActivityObjectiveProgress_v2_52,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_71()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_106()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102711330436812229",
    };
    return params;
end;

function export:OnEnter_box_Switch_55()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_41()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102916985602975579",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_47()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1070792901");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_21_Out,
    });
    params = {
        -- Float,
        [0] = self.f_judgeHealth,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1096779366");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_91_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103857835120004797",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1099329104");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_86_Out,
    });
    params = {
        -- Entity,
        [0] = "2102711330438909387",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1106789419");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_8_Out,
    });
    params = {
        -- Float,
        [0] = self.f_judgeHealth,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_121()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1137376518");
    l0:SetConnections({
        -- OnSet,
        [3] = self.f_box_HealthModifier_v2_133_OnSet,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self.JudgeMoose,
        -- value,
        [3] = self._sld_Target_box_SetInteger_v2_134,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1153914193");
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

function export:OnEnter_box_GetHealthState_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1185006533");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_GetHealthState_76_Critical,
        -- Healthy,
        [3] = self.f_box_GetHealthState_76_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.JudgeMoose,
    };
    return params;
end;

function export:OnEnter_box_SpawnParticle_v6_75()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- Offset_X,
        [2] = 0,
        -- Offset_Y,
        [3] = 0,
        -- Offset_Z,
        [4] = 0,
        -- ParticleName,
        [5] = "newparticles\\45044056916184328.part",
        -- Pawns,
        [6] = "#11FBC314",
        -- Rotate,
        [7] = "xyz",
        -- TagName,
        [8] = "DominoGenerated",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1188579991");
    l0:SetConnections({
        -- OnSet,
        [3] = self.f_box_HealthModifier_v2_122_OnSet,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self.JudgeMoose,
        -- value,
        [3] = self._sld_Target_box_SetInteger_v2_21,
    };
    return params;
end;

function export:OnEnter_box_SpawnParticle_v6_87()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine2",
        -- Offset_X,
        [2] = 0,
        -- Offset_Y,
        [3] = 0,
        -- Offset_Z,
        [4] = 0,
        -- ParticleName,
        [5] = "newparticles\\9015276107927388.part",
        -- Pawns,
        [6] = self.JudgeMoose,
        -- Rotate,
        [7] = "xyz",
        -- TagName,
        [8] = "DominoGenerated",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1283476932");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2102629040390156177",
        -- Group,
        [1] = "#B6E0F89A",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1295859701");
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

function export:OnEnter_box_Delay_v5_108()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_125()
    local params;
    DrawTextToScreen("Comment: Fire Moose Spawned 01", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: Fire Moose Spawned 01");
    params = {
        -- EntitySpawner,
        [0] = "2102780238774721209",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1349458667");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_54_Out,
    });
    params = {
        -- FromGroup,
        [0] = "#B6E0F89A",
        -- ToGroup,
        [1] = "#3F20B60B",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1354122059");
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
                [0] = self.f_box_OutputOrder_v2_112_Out_0,
                [1] = self.f_box_OutputOrder_v2_112_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1398738420");
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

function export:OnEnter_box_AddActivityObjective_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1414015595");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_60_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI31_030_B50A_KillMoose",
            id = "725760",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1471782662");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2102629040390156177",
        -- Group,
        [1] = self.JudgeMoose,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_105()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102711328727633294",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1490173068");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_33()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1566380893");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_11_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2104906120559604085",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI31_030_B50A_KillMoose",
            id = "725760",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnParticle_v6_69()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine1",
        -- Offset_X,
        [2] = 0,
        -- Offset_Y,
        [3] = 0,
        -- Offset_Z,
        [4] = 0,
        -- ParticleName,
        [5] = "newparticles\\9015276107927388.part",
        -- Pawns,
        [6] = self.JudgeMoose,
        -- Rotate,
        [7] = "xyz",
        -- TagName,
        [8] = "DominoGenerated",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1611542554");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2102629040390156177",
        -- Group,
        [1] = "#B6E0F89A",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_98()
    local params;
    params = {
        -- EntityA,
        [1] = self.JudgeMoose,
        -- EntityB,
        [2] = "2103857835120004797",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = true,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_114()
    local params;
    DrawTextToScreen("Comment: Spawn Group 01", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: Spawn Group 01");
    params = {
        -- EntitySpawner,
        [0] = "2102711196256832592",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1740024527");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_35_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2104076460823163500",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_61()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#11FBC314",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1794649592");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_147()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = self.JudgeMoose,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1820927984");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1835077143");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_94_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103857835120004797",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_117()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = self.JudgeMoose,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_30()
    local params;
    params = {
        -- EntityA,
        [1] = "2102711328729730452",
        -- EntityB,
        [2] = "2102796193353459960",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = true,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnParticle_v6_124()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- Offset_X,
        [2] = 0,
        -- Offset_Y,
        [3] = 0,
        -- Offset_Z,
        [4] = 0,
        -- ParticleName,
        [5] = "newparticles\\45044056916184328.part",
        -- Pawns,
        [6] = "#B6E0F89A",
        -- Rotate,
        [7] = "xyz",
        -- TagName,
        [8] = "DominoGenerated",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_3()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|1974777734");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_12_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_12_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2104076456974889576",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2039577702");
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
                [0] = self.f_box_OutputOrder_v2_81_Out_0,
                [1] = self.f_box_OutputOrder_v2_81_Out_1,
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
        [0] = true,
        -- pawns,
        [1] = "#B6E0F89A",
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2064849415");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_72_A_le_B,
    });
    params = {
        -- A,
        [0] = self.f_judgeHealth,
        -- B,
        [1] = 3500,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2065870223");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_26_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_50;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@UNI31_030_B50|2071085601");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_10_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_10_A_le_B,
    });
    params = {
        -- A,
        [0] = self.f_judgeHealth,
        -- B,
        [1] = 1750,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_93()
    local params;
    params = {
        -- Group,
        [0] = self.JudgeMoose,
    };
    return params;
end;

function export:OnEnter_box_SpawnParticle_v6_141()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- Offset_X,
        [2] = 0,
        -- Offset_Y,
        [3] = 0,
        -- Offset_Z,
        [4] = 0,
        -- ParticleName,
        [5] = "newparticles\\45044056916184328.part",
        -- Pawns,
        [6] = "#54D5F44A",
        -- Rotate,
        [7] = "xyz",
        -- TagName,
        [8] = "DominoGenerated",
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_67_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_judgeHealth = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_39_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.JudgeMoose = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_52_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self._sld_ProgressId_box_AddActivityObjectiveProgress_v2_52 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_134_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self._sld_Target_box_SetInteger_v2_134 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListReader_22_Out()
    local l0;
    l0 = self.box_ListReader_22;
    self.JudgeMoose = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SpawnAI_41_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_41;
    l1 = self.box_ListReader_22;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self._sld_Target_box_SetInteger_v2_21 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_86_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.JudgeMoose = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_judgeHealth = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_125_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_125;
    l1 = self.box_ListReader_40;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_HealthListener_v6_61_Critical()
    local l0;
    l0 = self.box_HealthListener_v6_61;
    self.f_judgeHealth = l0:GetDataOutValue(0);
end;

function export:OnExit_box_HealthListener_v6_61_Damaged()
    local l0;
    l0 = self.box_HealthListener_v6_61;
    self.f_judgeHealth = l0:GetDataOutValue(0);
end;

function export:OnExit_box_HealthListener_v6_61_Healed()
    local l0;
    l0 = self.box_HealthListener_v6_61;
    self.f_judgeHealth = l0:GetDataOutValue(0);
end;

function export:OnExit_box_HealthListener_v6_61_Killed()
    local l0;
    l0 = self.box_HealthListener_v6_61;
    self.f_judgeHealth = l0:GetDataOutValue(0);
end;

function export:OnExit_box_HealthListener_v6_80_Critical()
    local l0;
    l0 = self.box_HealthListener_v6_80;
    self.e_CurrentHallucination = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_80_Damaged()
    local l0;
    l0 = self.box_HealthListener_v6_80;
    self.e_CurrentHallucination = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_80_Downed()
    local l0;
    l0 = self.box_HealthListener_v6_80;
    self.e_CurrentHallucination = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_80_Healed()
    local l0;
    l0 = self.box_HealthListener_v6_80;
    self.e_CurrentHallucination = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_80_Killed()
    local l0;
    l0 = self.box_HealthListener_v6_80;
    self.e_CurrentHallucination = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_80_Revived()
    local l0;
    l0 = self.box_HealthListener_v6_80;
    self.e_CurrentHallucination = l0:GetDataOutValue(6);
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
