LUAC�~ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/father/father_010/father_010_b13.domino
-- User graph: SwappingArmySetUpB13
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/CameraShakeAndRumble_V2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/TimedSlowMotion_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.AllyAICanRevivePlayerB13.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.AssignIndependantBF.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.FatherRespawnSetupB13.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1511038353.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2699498991.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2872019893.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2685238676.bnk]], "CSoundResource");
        cboxRes:LoadResource([[776915040.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1788869364.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2665284510.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1857715084.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2515946790.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1356172451.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1940453412.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2708622917.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2692980226.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3619605597.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3654086454.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2122723641.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3127027001.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2332147828.bnk]], "CSoundResource");
        cboxRes:LoadResource([[906473430.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1752448415.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3738713320.bnk]], "CSoundResource");
        cboxRes:LoadResource([[828004351.bnk]], "CSoundResource");
        cboxRes:LoadResource([[410719232.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3490642609.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3592634314.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3092287137.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2936941412.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwappingArmySetUpB13.debug.lua")] = {
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
            [1] = {
                name = "StopTornadoSound",
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
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
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
            [0] = {
                name = "Result",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/PawnInvincibleState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetInvincible",
            },
            [1] = {
                name = "UnsetInvincible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSet",
                delayed = false,
            },
            [1] = {
                name = "OnUnSet",
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
    metadataTable[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SendEvent",
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
                name = "EventName",
                type = "string",
            },
            [1] = {
                name = "IntensityModifier",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/Player/PostFx_v3.lua")] = {
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
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "PostFxName",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/TimedSlowMotion_v2.lua")] = {
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
                name = "SlowMotionEnded",
                delayed = true,
            },
            [3] = {
                name = "SlowMotionStarted",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "BlendInTime",
                type = "float",
            },
            [2] = {
                name = "BlendOutTime",
                type = "float",
            },
            [3] = {
                name = "Duration",
                type = "float",
            },
            [4] = {
                name = "PreDelay",
                type = "float",
            },
            [5] = {
                name = "TimeFactor",
                type = "float",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.AllyAICanRevivePlayerB13.debug.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.AssignIndependantBF.debug.lua")] = {
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
                name = "CStoUseForIndependantBF",
                type = "entity",
            },
            [1] = {
                name = "GroupPosition",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.FatherRespawnSetupB13.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableListener",
            },
            [1] = {
                name = "NormalStart",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FatherKilled",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Play_the_Father_Revive_Dialog",
                delayed = false,
            },
            [1] = {
                name = "Play_the_Player_Revive_Dialog",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BlissRiverBanks",
                type = "entity",
            },
            [1] = {
                name = "CStoUseForGreenGFH",
                type = "entity",
            },
            [2] = {
                name = "CStoUseForRedGFH",
                type = "entity",
            },
            [3] = {
                name = "GFH",
                type = "entity",
            },
            [4] = {
                name = "MarkerWhenRevive",
                type = "entity",
            },
            [5] = {
                name = "ParticleWhenConverted",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "SwappingArmySetUpB13";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13";
    self.Out = DummyFunction;
    self.StopTornadoSound = DummyFunction;
    self.FriendsLeftToBringBackB13 = 7;
    self.FriendsLeftToBringBackB11 = 0;
    self.box_OnceOnly_v3_96 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|753526");
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
                [0] = self.f_box_OnceOnly_v3_96_Out_0,
            },
            count = 1,
        },
    });
    self.box_SpawnAI_40 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|108227625");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_40_Spawned,
    });
    self.box_OnceOnly_v3_63 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|126288591");
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
                [0] = self.f_box_OnceOnly_v3_63_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_98 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|137730313");
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
                [0] = self.f_box_OnceOnly_v3_98_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_86 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|247397282");
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
                [0] = self.f_box_OnceOnly_v3_86_Out_0,
            },
            count = 1,
        },
    });
    self.box_PostFx_v3_33 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|258208335");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_33_Enabled,
    });
    self.box_PlayDialog_v6_97 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|278200717");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_68 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|296388141");
    l0:SetConnections({
    });
    self.box_SwapingArmyMoveB13_6 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua");
    l0 = self.box_SwapingArmyMoveB13_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB13_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|392990744");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB13_6_Play_the_Father_Revive_Dialog,
        -- Play the Player Revive Dialog,
        [1] = self.f_box_SwapingArmyMoveB13_6_Play_the_Player_Revive_Dialog,
    });
    self.box_OnceOnly_v3_87 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|428994282");
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
                [0] = self.f_box_OnceOnly_v3_87_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_128 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|438744350");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_128_TimeElapsed,
    });
    self.box_Music_Quest_v2_48 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|468378922");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_83 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|495103448");
    l0:SetConnections({
    });
    self.box_Random_115 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|496018953");
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
                [0] = self.f_box_Random_115_Output_0,
                [1] = self.f_box_Random_115_Output_1,
                [2] = self.f_box_Random_115_Output_2,
                [3] = self.f_box_Random_115_Output_3,
            },
            count = 4,
        },
    });
    self.box_PostFx_v3_105 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|519365205");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_105_Disabled,
    });
    self.box_OnceOnly_v3_81 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|556231868");
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
                [0] = self.f_box_OnceOnly_v3_81_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_100 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|591773538");
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
                [0] = self.f_box_OnceOnly_v3_100_Out_0,
            },
            count = 1,
        },
    });
    self.box_SoundModifier_v2_108 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|598235367");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_108_Started,
    });
    self.box_OnceOnly_v3_84 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|603271569");
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
                [0] = self.f_box_OnceOnly_v3_84_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|630674544");
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
    self.box_PlayDialog_v6_88 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|631165730");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_35 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|647660954");
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
        [0] = self.f_box_MultipleAND_v2_35_Out,
    });
    self.box_AssignIndependantBF_106 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.AssignIndependantBF.debug.lua");
    l0 = self.box_AssignIndependantBF_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AssignIndependantBF_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|653025063");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_89 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|684467101");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_75 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|688250083");
    l0:SetConnections({
    });
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|707457874");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_PlayDialog_v6_93 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|754988747");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_73 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|796467812");
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
                [0] = self.f_box_OnceOnly_v3_73_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_127 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|801055042");
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
        [0] = self.f_box_MultipleOR_127_Out,
    });
    self.box_Delay_v5_51 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|833890850");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_51_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_51_TimeElapsed,
    });
    self.box_TimedSlowMotion_v2_27 = cbox:CreateBox("Domino/System/Player/TimedSlowMotion_v2.lua");
    l0 = self.box_TimedSlowMotion_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TimedSlowMotion_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|846297865");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TimedSlowMotion_v2_27_Enabled,
        -- SlowMotionEnded,
        [2] = self.f_box_TimedSlowMotion_v2_27_SlowMotionEnded,
        -- SlowMotionStarted,
        [3] = self.f_box_TimedSlowMotion_v2_27_SlowMotionStarted,
    });
    self.box_PlayDialog_v6_91 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|851245140");
    l0:SetConnections({
    });
    self.box_SwapingArmyMoveB13_7 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua");
    l0 = self.box_SwapingArmyMoveB13_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB13_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|952785488");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB13_7_Play_the_Father_Revive_Dialog,
    });
    self.box_AllyAICanRevivePlayerB13_39 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.AllyAICanRevivePlayerB13.debug.lua");
    l0 = self.box_AllyAICanRevivePlayerB13_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AllyAICanRevivePlayerB13_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|966629785");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_59 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|985359122");
    l0:SetConnections({
    });
    self.box_MultipleOR_114 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|997277291");
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
        [0] = self.f_box_MultipleOR_114_Out,
    });
    self.box_PlayDialog_v6_67 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1069252128");
    l0:SetConnections({
    });
    self.box_SwapingArmyMoveB13_26 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua");
    l0 = self.box_SwapingArmyMoveB13_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB13_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1114053546");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB13_26_Play_the_Father_Revive_Dialog,
        -- Play the Player Revive Dialog,
        [1] = self.f_box_SwapingArmyMoveB13_26_Play_the_Player_Revive_Dialog,
    });
    self.box_HealthListener_v6_3 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1133575507");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_3_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_3_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_3_Killed,
    });
    self.box_SwapingArmyMoveB13_25 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua");
    l0 = self.box_SwapingArmyMoveB13_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB13_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1144015039");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB13_25_Play_the_Father_Revive_Dialog,
    });
    self.box_PlayDialog_v6_99 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1149477608");
    l0:SetConnections({
    });
    self.box_SwapingArmyMoveB13_16 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua");
    l0 = self.box_SwapingArmyMoveB13_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB13_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1185521086");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB13_16_Play_the_Father_Revive_Dialog,
        -- Play the Player Revive Dialog,
        [1] = self.f_box_SwapingArmyMoveB13_16_Play_the_Player_Revive_Dialog,
    });
    self.box_PlayDialog_v6_78 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1189544155");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_61 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1192126721");
    l0:SetConnections({
    });
    self.box_Delay_v5_52 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1206812176");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_52_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_52_TimeElapsed,
    });
    self.box_SwapingArmyMoveB13_8 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua");
    l0 = self.box_SwapingArmyMoveB13_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB13_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1209693760");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB13_8_Play_the_Father_Revive_Dialog,
        -- Play the Player Revive Dialog,
        [1] = self.f_box_SwapingArmyMoveB13_8_Play_the_Player_Revive_Dialog,
    });
    self.box_SwapingArmyMoveB13_18 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua");
    l0 = self.box_SwapingArmyMoveB13_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB13_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1249596994");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB13_18_Play_the_Father_Revive_Dialog,
        -- Play the Player Revive Dialog,
        [1] = self.f_box_SwapingArmyMoveB13_18_Play_the_Player_Revive_Dialog,
    });
    self.box_SwapingArmyMoveB13_14 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua");
    l0 = self.box_SwapingArmyMoveB13_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB13_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1256363042");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB13_14_Play_the_Father_Revive_Dialog,
    });
    self.box_SwapingArmyMoveB13_23 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua");
    l0 = self.box_SwapingArmyMoveB13_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB13_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1273266346");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB13_23_Play_the_Father_Revive_Dialog,
        -- Play the Player Revive Dialog,
        [1] = self.f_box_SwapingArmyMoveB13_23_Play_the_Player_Revive_Dialog,
    });
    self.box_GroupSizeListener_v5_56 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1291709554");
    l0:SetConnections({
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_56_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_56_MemberRemoved,
    });
    self.box_SwapingArmyMoveB13_15 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua");
    l0 = self.box_SwapingArmyMoveB13_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB13_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1299045978");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB13_15_Play_the_Father_Revive_Dialog,
        -- Play the Player Revive Dialog,
        [1] = self.f_box_SwapingArmyMoveB13_15_Play_the_Player_Revive_Dialog,
    });
    self.box_AssignIndependantBF_32 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.AssignIndependantBF.debug.lua");
    l0 = self.box_AssignIndependantBF_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AssignIndependantBF_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1341586979");
    l0:SetConnections({
    });
    self.box_SwapingArmyMoveB13_19 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua");
    l0 = self.box_SwapingArmyMoveB13_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB13_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1366286969");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB13_19_Play_the_Father_Revive_Dialog,
    });
    self.box_PlayDialog_v6_80 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1400120139");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_133 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1414669426");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_133_Started,
    });
    self.box_OnceOnly_v3_90 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1420240374");
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
                [0] = self.f_box_OnceOnly_v3_90_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_113 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1448480140");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_113_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_113_TimeElapsed,
    });
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1463468617");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_OnceOnly_v3_79 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1464584286");
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
                [0] = self.f_box_OnceOnly_v3_79_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_72 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1465452692");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_76 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1470545679");
    l0:SetConnections({
    });
    self.box_FatherRespawnSetupB13_37 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.FatherRespawnSetupB13.debug.lua");
    l0 = self.box_FatherRespawnSetupB13_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FatherRespawnSetupB13_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1517338790");
    l0:SetConnections({
        -- FatherKilled,
        [0] = self.f_box_FatherRespawnSetupB13_37_FatherKilled,
    });
    self.box_ProximityTrigger_v2_55 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1519587621");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_55_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_55_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_55_Enter,
    });
    self.box_Delay_v5_58 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1525664348");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_58_TimeElapsed,
    });
    self.box_SoundModifier_v2_116 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1589789093");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_71 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1608675045");
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
                [0] = self.f_box_OnceOnly_v3_71_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_101 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1613665706");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_85 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1626322422");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_94 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1678974305");
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
                [0] = self.f_box_OnceOnly_v3_94_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_74 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1743665044");
    l0:SetConnections({
    });
    self.box_SwapingArmyMoveB13_24 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua");
    l0 = self.box_SwapingArmyMoveB13_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB13_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1770188410");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB13_24_Play_the_Father_Revive_Dialog,
    });
    self.box_PlayDialog_v6_77 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1789299274");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_66 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1789819738");
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
                [0] = self.f_box_OnceOnly_v3_66_Out_0,
            },
            count = 1,
        },
    });
    self.box_SoundModifier_v2_136 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1814791943");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_65 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1816906267");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_69 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1837485431");
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
                [0] = self.f_box_OnceOnly_v3_69_Out_0,
            },
            count = 1,
        },
    });
    self.box_SwapingArmyMoveB13_22 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua");
    l0 = self.box_SwapingArmyMoveB13_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB13_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1847176141");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB13_22_Play_the_Father_Revive_Dialog,
    });
    self.box_Delay_v5_119 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1949944503");
    l0:SetConnections({
        -- LoopingEnded,
        [0] = self.f_box_Delay_v5_119_LoopingEnded,
        -- Paused,
        [1] = self.f_box_Delay_v5_119_Paused,
        -- Resumed,
        [2] = self.f_box_Delay_v5_119_Resumed,
        -- Started,
        [3] = self.f_box_Delay_v5_119_Started,
        -- Stopped,
        [4] = self.f_box_Delay_v5_119_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_119_TimeElapsed,
    });
    self.box_OnceOnly_v3_62 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1956706142");
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
                [0] = self.f_box_OnceOnly_v3_62_Out_0,
            },
            count = 1,
        },
    });
    self.box_SwapingArmyMoveB13_1 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.SwapingArmyMoveB13.debug.lua");
    l0 = self.box_SwapingArmyMoveB13_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB13_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1997369835");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB13_1_Play_the_Father_Revive_Dialog,
    });
    self.box_AssignIndependantBF_111 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.AssignIndependantBF.debug.lua");
    l0 = self.box_AssignIndependantBF_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AssignIndependantBF_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2022070882");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_126 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2046485297");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_126_Started,
    });
    self.box_OnceOnly_v3_70 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2069042187");
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
                [0] = self.f_box_OnceOnly_v3_70_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_82 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2078505844");
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
                [0] = self.f_box_OnceOnly_v3_82_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_92 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2095807653");
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
                [0] = self.f_box_OnceOnly_v3_92_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_64 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2103581318");
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
                [0] = self.f_box_OnceOnly_v3_64_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_95 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2135704240");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_60 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2139669597");
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
                [0] = self.f_box_OnceOnly_v3_60_Out_0,
            },
            count = 1,
        },
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_AddActivityObjective_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1431061479", "1431061479", "SwappingArmySetUpB13", "In", "box_AddActivityObjective_v2_11.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB13_18();
    l0 = self.box_SwapingArmyMoveB13_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1316847156", "1316847156", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB13_18.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB13_26();
    l0 = self.box_SwapingArmyMoveB13_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1116016413", "1116016413", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB13_26.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB13_25();
    l0 = self.box_SwapingArmyMoveB13_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1914571847", "1914571847", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB13_25.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB13_23();
    l0 = self.box_SwapingArmyMoveB13_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1087079379", "1087079379", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB13_23.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|558250187", "558250187", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_OutputOrder_v2_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_SwapingArmyMoveB13_16();
    l0 = self.box_SwapingArmyMoveB13_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1558680293", "1558680293", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB13_16.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_GroupSizeListener_v5_56();
    l0 = self.box_GroupSizeListener_v5_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1883877466", "1883877466", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_GroupSizeListener_v5_56.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB13_15();
    l0 = self.box_SwapingArmyMoveB13_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1904909644", "1904909644", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB13_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB13_6();
    l0 = self.box_SwapingArmyMoveB13_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1040063693", "1040063693", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB13_6.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_FatherRespawnSetupB13_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1925507108", "1925507108", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_FatherRespawnSetupB13_37.DisableListener", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableListener
    l0:Exec(0, {
    });
    params = self:OnEnter_box_SwapingArmyMoveB13_22();
    l0 = self.box_SwapingArmyMoveB13_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2114779713", "2114779713", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB13_22.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB13_19();
    l0 = self.box_SwapingArmyMoveB13_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1013697929", "1013697929", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB13_19.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB13_14();
    l0 = self.box_SwapingArmyMoveB13_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1071987985", "1071987985", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB13_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB13_7();
    l0 = self.box_SwapingArmyMoveB13_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|372151699", "372151699", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB13_7.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB13_1();
    l0 = self.box_SwapingArmyMoveB13_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|653454825", "653454825", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB13_1.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB13_8();
    l0 = self.box_SwapingArmyMoveB13_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2020916454", "2020916454", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB13_8.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB13_24();
    l0 = self.box_SwapingArmyMoveB13_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|326045541", "326045541", "SwappingArmySetUpB13", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB13_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_35();
    l0 = self.box_MultipleAND_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1539040782", "1539040782", "SwappingArmySetUpB13", "box_Simple_Node_50.Out", "box_MultipleAND_v2_35.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OnceOnly_v3_96_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_95();
    l0 = self.box_OnceOnly_v3_96;
    l1 = self.box_PlayDialog_v6_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|864495488", "864495488", "SwappingArmySetUpB13", "box_OnceOnly_v3_96.Out", "box_PlayDialog_v6_95.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_40_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_46();
    l0 = self.box_SpawnAI_40;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|805452393", "805452393", "SwappingArmySetUpB13", "box_SpawnAI_40.Spawned", "box_AddActivityObjective_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_63_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_80();
    l0 = self.box_OnceOnly_v3_63;
    l1 = self.box_PlayDialog_v6_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|556235346", "556235346", "SwappingArmySetUpB13", "box_OnceOnly_v3_63.Out", "box_PlayDialog_v6_80.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_98_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_97();
    l0 = self.box_OnceOnly_v3_98;
    l1 = self.box_PlayDialog_v6_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1712650955", "1712650955", "SwappingArmySetUpB13", "box_OnceOnly_v3_98.Out", "box_PlayDialog_v6_97.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB13_14();
    l0 = self.box_SwapingArmyMoveB13_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2017461423", "2017461423", "SwappingArmySetUpB13", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB13_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB13_19();
    l0 = self.box_SwapingArmyMoveB13_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1382838013", "1382838013", "SwappingArmySetUpB13", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB13_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB13_7();
    l0 = self.box_SwapingArmyMoveB13_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|148877745", "148877745", "SwappingArmySetUpB13", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB13_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB13_1();
    l0 = self.box_SwapingArmyMoveB13_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|706620737", "706620737", "SwappingArmySetUpB13", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB13_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB13_22();
    l0 = self.box_SwapingArmyMoveB13_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2130592142", "2130592142", "SwappingArmySetUpB13", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB13_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB13_6();
    l0 = self.box_SwapingArmyMoveB13_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|98076440", "98076440", "SwappingArmySetUpB13", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB13_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB13_23();
    l0 = self.box_SwapingArmyMoveB13_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|901438188", "901438188", "SwappingArmySetUpB13", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB13_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB13_24();
    l0 = self.box_SwapingArmyMoveB13_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|948453874", "948453874", "SwappingArmySetUpB13", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB13_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB13_15();
    l0 = self.box_SwapingArmyMoveB13_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|187420036", "187420036", "SwappingArmySetUpB13", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB13_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB13_25();
    l0 = self.box_SwapingArmyMoveB13_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1079838729", "1079838729", "SwappingArmySetUpB13", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB13_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB13_16();
    l0 = self.box_SwapingArmyMoveB13_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|850525716", "850525716", "SwappingArmySetUpB13", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB13_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB13_26();
    l0 = self.box_SwapingArmyMoveB13_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|553260444", "553260444", "SwappingArmySetUpB13", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB13_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjectiveProgress_v2_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_13();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|797186557", "797186557", "SwappingArmySetUpB13", "box_AddActivityObjectiveProgress_v2_12.Out", "box_SetActivityObjectiveProgress_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_86_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_85();
    l0 = self.box_OnceOnly_v3_86;
    l1 = self.box_PlayDialog_v6_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1811314874", "1811314874", "SwappingArmySetUpB13", "box_OnceOnly_v3_86.Out", "box_PlayDialog_v6_85.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PostFx_v3_33_Enabled()
    local l0;
    l0 = self.box_PostFx_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1466381420", "1466381420", "SwappingArmySetUpB13", "box_PostFx_v3_33.Enabled", "StopTornadoSound", l0:GetLuaBox(), self);
    self:StopTornadoSound();
end;

function export:f_box_PawnInvincibleState_v2_41_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_3();
    l0 = self.box_HealthListener_v6_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|283263627", "283263627", "SwappingArmySetUpB13", "box_PawnInvincibleState_v2_41.OnSet", "box_HealthListener_v6_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_20_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_20_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_128();
    l0 = self.box_Delay_v5_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1054666231", "1054666231", "SwappingArmySetUpB13", "box_IntegerArithmetics_v2_20.Out", "box_Delay_v5_128.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EndActivityObjective_v2_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_29();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|40694027", "40694027", "SwappingArmySetUpB13", "box_EndActivityObjective_v2_47.Out", "box_Simple_Node_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SwapingArmyMoveB13_6_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_6;
    l1 = self.box_OnceOnly_v3_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|853824928", "853824928", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_6.Play the Father Revive Dialog", "box_OnceOnly_v3_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB13_6_Play_the_Player_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_6;
    l1 = self.box_OnceOnly_v3_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1476798966", "1476798966", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_6.Play the Player Revive Dialog", "box_OnceOnly_v3_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_87_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_88();
    l0 = self.box_OnceOnly_v3_87;
    l1 = self.box_PlayDialog_v6_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|132914731", "132914731", "SwappingArmySetUpB13", "box_OnceOnly_v3_87.Out", "box_PlayDialog_v6_88.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_128_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_53();
    l0 = self.box_Delay_v5_128;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|277215483", "277215483", "SwappingArmySetUpB13", "box_Delay_v5_128.TimeElapsed", "box_SetActivityObjectiveProgress_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_115_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_120();
    l0 = self.box_Random_115;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2147424493", "2147424493", "SwappingArmySetUpB13", "box_Random_115.Output", "box_ParticleSystem_v3_120.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_115_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_109();
    l0 = self.box_Random_115;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1583803026", "1583803026", "SwappingArmySetUpB13", "box_Random_115.Output", "box_ParticleSystem_v3_109.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_115_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_121();
    l0 = self.box_Random_115;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|423461835", "423461835", "SwappingArmySetUpB13", "box_Random_115.Output", "box_ParticleSystem_v3_121.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_115_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_107();
    l0 = self.box_Random_115;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|760819973", "760819973", "SwappingArmySetUpB13", "box_Random_115.Output", "box_ParticleSystem_v3_107.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_105_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_33();
    l0 = self.box_PostFx_v3_105;
    l1 = self.box_PostFx_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|683353711", "683353711", "SwappingArmySetUpB13", "box_PostFx_v3_105.Disabled", "box_PostFx_v3_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_109_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|110628699", "110628699", "SwappingArmySetUpB13", "box_ParticleSystem_v3_109.Started", "box_MultipleOR_127.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_81_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_61();
    l0 = self.box_OnceOnly_v3_81;
    l1 = self.box_PlayDialog_v6_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|263609294", "263609294", "SwappingArmySetUpB13", "box_OnceOnly_v3_81.Out", "box_PlayDialog_v6_61.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_10();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1697702973", "1697702973", "SwappingArmySetUpB13", "box_AddActivityObjective_v2_46.Out", "box_ParticleSystem_v3_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_34_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_133();
    l0 = self.box_SoundModifier_v2_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|159784748", "159784748", "SwappingArmySetUpB13", "box_SetContextualStrategy_34.Out", "box_SoundModifier_v2_133.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_100_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_99();
    l0 = self.box_OnceOnly_v3_100;
    l1 = self.box_PlayDialog_v6_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|188479926", "188479926", "SwappingArmySetUpB13", "box_OnceOnly_v3_100.Out", "box_PlayDialog_v6_99.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_108_Started()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_118();
    l0 = self.box_SoundModifier_v2_108;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|533343086", "533343086", "SwappingArmySetUpB13", "box_SoundModifier_v2_108.Started", "box_DynamicLightModifier_118.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_84_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_83();
    l0 = self.box_OnceOnly_v3_84;
    l1 = self.box_PlayDialog_v6_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1294491131", "1294491131", "SwappingArmySetUpB13", "box_OnceOnly_v3_84.Out", "box_PlayDialog_v6_83.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_36_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_52();
    l0 = self.box_Delay_v5_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1792197809", "1792197809", "SwappingArmySetUpB13", "box_Compare_Integers_36.A_ge_B", "box_Delay_v5_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TimedSlowMotion_v2_27();
    l0 = self.box_MultipleOR_38;
    l1 = self.box_TimedSlowMotion_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|544233388", "544233388", "SwappingArmySetUpB13", "box_MultipleOR_38.Out", "box_TimedSlowMotion_v2_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_51();
    l0 = self.box_MultipleAND_v2_35;
    l1 = self.box_Delay_v5_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1014555158", "1014555158", "SwappingArmySetUpB13", "box_MultipleAND_v2_35.Out", "box_Delay_v5_51.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DynamicLightModifier_31_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_116();
    l0 = self.box_SoundModifier_v2_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1902069416", "1902069416", "SwappingArmySetUpB13", "box_DynamicLightModifier_31.Disabled", "box_SoundModifier_v2_116.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_120_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1965366737", "1965366737", "SwappingArmySetUpB13", "box_ParticleSystem_v3_120.Started", "box_MultipleOR_127.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_35();
    l0 = self.box_Delay_v5_9;
    l1 = self.box_MultipleAND_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|919364043", "919364043", "SwappingArmySetUpB13", "box_Delay_v5_9.TimeElapsed", "box_MultipleAND_v2_35.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OnceOnly_v3_73_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_59();
    l0 = self.box_OnceOnly_v3_73;
    l1 = self.box_PlayDialog_v6_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|513348673", "513348673", "SwappingArmySetUpB13", "box_OnceOnly_v3_73.Out", "box_PlayDialog_v6_59.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_127_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_131();
    l0 = self.box_MultipleOR_127;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|399789652", "399789652", "SwappingArmySetUpB13", "box_MultipleOR_127.Out", "box_CameraShakeAndRumble_V2_131.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_51_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_34();
    l0 = self.box_Delay_v5_51;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2064940260", "2064940260", "SwappingArmySetUpB13", "box_Delay_v5_51.Started", "box_SetContextualStrategy_34.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_51_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_40();
    l0 = self.box_Delay_v5_51;
    l1 = self.box_SpawnAI_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1771069333", "1771069333", "SwappingArmySetUpB13", "box_Delay_v5_51.TimeElapsed", "box_SpawnAI_40.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_TimedSlowMotion_v2_27_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_28();
    l0 = self.box_TimedSlowMotion_v2_27;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|85575802", "85575802", "SwappingArmySetUpB13", "box_TimedSlowMotion_v2_27.Enabled", "box_ActivityObjectiveMarkerModifier_v3_28.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TimedSlowMotion_v2_27_SlowMotionEnded()
    local l0;
    l0 = self.box_TimedSlowMotion_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|686131368", "686131368", "SwappingArmySetUpB13", "box_TimedSlowMotion_v2_27.SlowMotionEnded", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_TimedSlowMotion_v2_27_SlowMotionStarted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_123();
    l0 = self.box_TimedSlowMotion_v2_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1174862091", "1174862091", "SwappingArmySetUpB13", "box_TimedSlowMotion_v2_27.SlowMotionStarted", "box_OutputOrder_v2_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_113();
    l0 = self.box_Delay_v5_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|813902323", "813902323", "SwappingArmySetUpB13", "box_OutputOrder_v2_17.Out", "box_Delay_v5_113.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|736998900", "736998900", "SwappingArmySetUpB13", "box_OutputOrder_v2_17.Out", "box_OutputOrder_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_AllyAICanRevivePlayerB13_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1837794033", "1837794033", "SwappingArmySetUpB13", "box_OutputOrder_v2_17.Out", "box_AllyAICanRevivePlayerB13_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_17_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_FatherRespawnSetupB13_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2055664563", "2055664563", "SwappingArmySetUpB13", "box_OutputOrder_v2_17.Out", "box_FatherRespawnSetupB13_37.NormalStart", clone:GetLuaBox(), l0:GetLuaBox());
    -- NormalStart
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_17_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_56();
    l0 = self.box_GroupSizeListener_v5_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|149391176", "149391176", "SwappingArmySetUpB13", "box_OutputOrder_v2_17.Out", "box_GroupSizeListener_v5_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_21_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|457343264", "457343264", "SwappingArmySetUpB13", "box_IntegerArithmetics_v2_21.Out", "box_SetActivityObjectiveProgress_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_12();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1448393377", "1448393377", "SwappingArmySetUpB13", "box_AddActivityObjective_v2_11.Out", "box_AddActivityObjectiveProgress_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_121_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|986630482", "986630482", "SwappingArmySetUpB13", "box_ParticleSystem_v3_121.Started", "box_MultipleOR_127.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SwapingArmyMoveB13_7_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_7;
    l1 = self.box_OnceOnly_v3_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1599067194", "1599067194", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_7.Play the Father Revive Dialog", "box_OnceOnly_v3_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_114_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_54();
    l0 = self.box_MultipleOR_114;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1875788798", "1875788798", "SwappingArmySetUpB13", "box_MultipleOR_114.Out", "box_TriggerState_v2_54.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AssignIndependantBF_111();
    l0 = self.box_AssignIndependantBF_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1422514126", "1422514126", "SwappingArmySetUpB13", "box_OutputOrder_v2_112.Out", "box_AssignIndependantBF_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_112_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AssignIndependantBF_106();
    l0 = self.box_AssignIndependantBF_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|741553768", "741553768", "SwappingArmySetUpB13", "box_OutputOrder_v2_112.Out", "box_AssignIndependantBF_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_112_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AssignIndependantBF_32();
    l0 = self.box_AssignIndependantBF_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1408500373", "1408500373", "SwappingArmySetUpB13", "box_OutputOrder_v2_112.Out", "box_AssignIndependantBF_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_107_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1586135453", "1586135453", "SwappingArmySetUpB13", "box_ParticleSystem_v3_107.Started", "box_MultipleOR_127.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_SetActivityObjectiveProgress_v2_53_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_36();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1991509248", "1991509248", "SwappingArmySetUpB13", "box_SetActivityObjectiveProgress_v2_53.Out", "box_Compare_Integers_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SwapingArmyMoveB13_26_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_26;
    l1 = self.box_OnceOnly_v3_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|482881007", "482881007", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_26.Play the Father Revive Dialog", "box_OnceOnly_v3_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB13_26_Play_the_Player_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_26;
    l1 = self.box_OnceOnly_v3_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1060994641", "1060994641", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_26.Play the Player Revive Dialog", "box_OnceOnly_v3_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_3_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_3;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1820358509", "1820358509", "SwappingArmySetUpB13", "box_HealthListener_v6_3.Downed", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_3_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_HealthListener_v6_3;
    l1 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1128681749", "1128681749", "SwappingArmySetUpB13", "box_HealthListener_v6_3.Enabled", "box_Delay_v5_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_3_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_3;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|155205768", "155205768", "SwappingArmySetUpB13", "box_HealthListener_v6_3.Killed", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SwapingArmyMoveB13_25_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_25;
    l1 = self.box_OnceOnly_v3_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1986753703", "1986753703", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_25.Play the Father Revive Dialog", "box_OnceOnly_v3_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB13_16_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_16;
    l1 = self.box_OnceOnly_v3_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|251554807", "251554807", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_16.Play the Father Revive Dialog", "box_OnceOnly_v3_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB13_16_Play_the_Player_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_16;
    l1 = self.box_OnceOnly_v3_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|532403169", "532403169", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_16.Play the Player Revive Dialog", "box_OnceOnly_v3_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_52_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_58();
    l0 = self.box_Delay_v5_52;
    l1 = self.box_Delay_v5_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|621803172", "621803172", "SwappingArmySetUpB13", "box_Delay_v5_52.Started", "box_Delay_v5_58.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_52_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_47();
    l0 = self.box_Delay_v5_52;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|265205318", "265205318", "SwappingArmySetUpB13", "box_Delay_v5_52.TimeElapsed", "box_EndActivityObjective_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SwapingArmyMoveB13_8_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_8;
    l1 = self.box_OnceOnly_v3_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|920531684", "920531684", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_8.Play the Father Revive Dialog", "box_OnceOnly_v3_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB13_8_Play_the_Player_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_8;
    l1 = self.box_OnceOnly_v3_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|208591262", "208591262", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_8.Play the Player Revive Dialog", "box_OnceOnly_v3_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TriggerState_v2_54_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_112();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1224370490", "1224370490", "SwappingArmySetUpB13", "box_TriggerState_v2_54.Disabled", "box_OutputOrder_v2_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SwapingArmyMoveB13_18_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_18;
    l1 = self.box_OnceOnly_v3_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|599394115", "599394115", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_18.Play the Father Revive Dialog", "box_OnceOnly_v3_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB13_18_Play_the_Player_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_18;
    l1 = self.box_OnceOnly_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|664943217", "664943217", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_18.Play the Player Revive Dialog", "box_OnceOnly_v3_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB13_14_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_14;
    l1 = self.box_OnceOnly_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1503542193", "1503542193", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_14.Play the Father Revive Dialog", "box_OnceOnly_v3_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetActivityObjectiveProgress_v2_13_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|668247361", "668247361", "SwappingArmySetUpB13", "box_SetActivityObjectiveProgress_v2_13.Out", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SwapingArmyMoveB13_23_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_23;
    l1 = self.box_OnceOnly_v3_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|547975094", "547975094", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_23.Play the Father Revive Dialog", "box_OnceOnly_v3_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB13_23_Play_the_Player_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_23;
    l1 = self.box_OnceOnly_v3_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1528334315", "1528334315", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_23.Play the Player Revive Dialog", "box_OnceOnly_v3_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_56_MemberAdded()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_20();
    l0 = self.box_GroupSizeListener_v5_56;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|199319953", "199319953", "SwappingArmySetUpB13", "box_GroupSizeListener_v5_56.MemberAdded", "box_IntegerArithmetics_v2_20.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_56_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_21();
    l0 = self.box_GroupSizeListener_v5_56;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|201891223", "201891223", "SwappingArmySetUpB13", "box_GroupSizeListener_v5_56.MemberRemoved", "box_IntegerArithmetics_v2_21.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SwapingArmyMoveB13_15_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_15;
    l1 = self.box_OnceOnly_v3_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1705579663", "1705579663", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_15.Play the Father Revive Dialog", "box_OnceOnly_v3_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB13_15_Play_the_Player_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_15;
    l1 = self.box_OnceOnly_v3_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1337920199", "1337920199", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_15.Play the Player Revive Dialog", "box_OnceOnly_v3_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB13_19_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_19;
    l1 = self.box_OnceOnly_v3_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1798404308", "1798404308", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_19.Play the Father Revive Dialog", "box_OnceOnly_v3_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SoundModifier_v2_133_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_108();
    l0 = self.box_SoundModifier_v2_133;
    l1 = self.box_SoundModifier_v2_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1110682467", "1110682467", "SwappingArmySetUpB13", "box_SoundModifier_v2_133.Started", "box_SoundModifier_v2_108.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_90_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_89();
    l0 = self.box_OnceOnly_v3_90;
    l1 = self.box_PlayDialog_v6_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|692355583", "692355583", "SwappingArmySetUpB13", "box_OnceOnly_v3_90.Out", "box_PlayDialog_v6_89.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_113_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_55();
    l0 = self.box_Delay_v5_113;
    l1 = self.box_ProximityTrigger_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|561081467", "561081467", "SwappingArmySetUpB13", "box_Delay_v5_113.Started", "box_ProximityTrigger_v2_55.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_113_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_55();
    l0 = self.box_Delay_v5_113;
    l1 = self.box_ProximityTrigger_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|601174333", "601174333", "SwappingArmySetUpB13", "box_Delay_v5_113.TimeElapsed", "box_ProximityTrigger_v2_55.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_42();
    l0 = self.box_Delay_v5_43;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1080340547", "1080340547", "SwappingArmySetUpB13", "box_Delay_v5_43.TimeElapsed", "box_PawnInvincibleState_v2_42.UnsetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnsetInvincible
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_79_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_78();
    l0 = self.box_OnceOnly_v3_79;
    l1 = self.box_PlayDialog_v6_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1864553152", "1864553152", "SwappingArmySetUpB13", "box_OnceOnly_v3_79.Out", "box_PlayDialog_v6_78.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_FatherRespawnSetupB13_37_FatherKilled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_50();
    l0 = self.box_FatherRespawnSetupB13_37;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1145340981", "1145340981", "SwappingArmySetUpB13", "box_FatherRespawnSetupB13_37.FatherKilled", "box_Simple_Node_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_55_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_55;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|390849500", "390849500", "SwappingArmySetUpB13", "box_ProximityTrigger_v2_55.Disabled", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_55_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_130();
    l0 = self.box_ProximityTrigger_v2_55;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|586074577", "586074577", "SwappingArmySetUpB13", "box_ProximityTrigger_v2_55.Enabled", "box_SetContextualStrategy_130.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_55_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_55;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|188124582", "188124582", "SwappingArmySetUpB13", "box_ProximityTrigger_v2_55.Enter", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_58_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_101();
    l0 = self.box_Delay_v5_58;
    l1 = self.box_PlayDialog_v6_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1725001462", "1725001462", "SwappingArmySetUpB13", "box_Delay_v5_58.TimeElapsed", "box_PlayDialog_v6_101.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_71_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_77();
    l0 = self.box_OnceOnly_v3_71;
    l1 = self.box_PlayDialog_v6_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|567245964", "567245964", "SwappingArmySetUpB13", "box_OnceOnly_v3_71.Out", "box_PlayDialog_v6_77.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_10_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_28();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|788126397", "788126397", "SwappingArmySetUpB13", "box_ParticleSystem_v3_10.Started", "box_ActivityObjectiveMarkerModifier_v3_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_94_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_93();
    l0 = self.box_OnceOnly_v3_94;
    l1 = self.box_PlayDialog_v6_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|862771256", "862771256", "SwappingArmySetUpB13", "box_OnceOnly_v3_94.Out", "box_PlayDialog_v6_93.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_28_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_30();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1278674455", "1278674455", "SwappingArmySetUpB13", "box_ActivityObjectiveMarkerModifier_v3_28.Disabled", "box_EndActivityObjective_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_28_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_41();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1271648090", "1271648090", "SwappingArmySetUpB13", "box_ActivityObjectiveMarkerModifier_v3_28.Enabled", "box_PawnInvincibleState_v2_41.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SwapingArmyMoveB13_24_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_24;
    l1 = self.box_OnceOnly_v3_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|597732624", "597732624", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_24.Play the Father Revive Dialog", "box_OnceOnly_v3_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_66_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_75();
    l0 = self.box_OnceOnly_v3_66;
    l1 = self.box_PlayDialog_v6_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|875588710", "875588710", "SwappingArmySetUpB13", "box_OnceOnly_v3_66.Out", "box_PlayDialog_v6_75.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_69_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_74();
    l0 = self.box_OnceOnly_v3_69;
    l1 = self.box_PlayDialog_v6_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2076194712", "2076194712", "SwappingArmySetUpB13", "box_OnceOnly_v3_69.Out", "box_PlayDialog_v6_74.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SwapingArmyMoveB13_22_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_22;
    l1 = self.box_OnceOnly_v3_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1774441701", "1774441701", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_22.Play the Father Revive Dialog", "box_OnceOnly_v3_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_132_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_126();
    l0 = self.box_SoundModifier_v2_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|233562017", "233562017", "SwappingArmySetUpB13", "box_Compare_Integers_132.A_eq_B", "box_SoundModifier_v2_126.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_117_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_136();
    l0 = self.box_SoundModifier_v2_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|409695644", "409695644", "SwappingArmySetUpB13", "box_Compare_Integers_117.A_eq_B", "box_SoundModifier_v2_136.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_119_LoopingEnded()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_31();
    l0 = self.box_Delay_v5_119;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2117877984", "2117877984", "SwappingArmySetUpB13", "box_Delay_v5_119.LoopingEnded", "box_DynamicLightModifier_31.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_119_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_132();
    l0 = self.box_Delay_v5_119;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1670620950", "1670620950", "SwappingArmySetUpB13", "box_Delay_v5_119.Started", "box_Compare_Integers_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_119_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_115();
    l0 = self.box_Delay_v5_119;
    l1 = self.box_Random_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2078514982", "2078514982", "SwappingArmySetUpB13", "box_Delay_v5_119.TimeElapsed", "box_Random_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_62_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_76();
    l0 = self.box_OnceOnly_v3_62;
    l1 = self.box_PlayDialog_v6_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|282430890", "282430890", "SwappingArmySetUpB13", "box_OnceOnly_v3_62.Out", "box_PlayDialog_v6_76.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_DynamicLightModifier_118_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_119();
    l0 = self.box_Delay_v5_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1163748213", "1163748213", "SwappingArmySetUpB13", "box_DynamicLightModifier_118.Enabled", "box_Delay_v5_119.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SwapingArmyMoveB13_1_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB13_1;
    l1 = self.box_OnceOnly_v3_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|813615985", "813615985", "SwappingArmySetUpB13", "box_SwapingArmyMoveB13_1.Play the Father Revive Dialog", "box_OnceOnly_v3_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SoundModifier_v2_126_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_117();
    l0 = self.box_SoundModifier_v2_126;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1616041861", "1616041861", "SwappingArmySetUpB13", "box_SoundModifier_v2_126.Started", "box_Compare_Integers_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_2();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1443340093", "1443340093", "SwappingArmySetUpB13", "box_OutputOrder_v2_123.Out", "box_MissionBlockLayer_2.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_105();
    l0 = self.box_PostFx_v3_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|938661528", "938661528", "SwappingArmySetUpB13", "box_OutputOrder_v2_123.Out", "box_PostFx_v3_105.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_70_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_68();
    l0 = self.box_OnceOnly_v3_70;
    l1 = self.box_PlayDialog_v6_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1227947875", "1227947875", "SwappingArmySetUpB13", "box_OnceOnly_v3_70.Out", "box_PlayDialog_v6_68.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_82_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_OnceOnly_v3_82;
    l1 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|941483463", "941483463", "SwappingArmySetUpB13", "box_OnceOnly_v3_82.Out", "box_PlayDialog_v6_65.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_92_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_91();
    l0 = self.box_OnceOnly_v3_92;
    l1 = self.box_PlayDialog_v6_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|751380711", "751380711", "SwappingArmySetUpB13", "box_OnceOnly_v3_92.Out", "box_PlayDialog_v6_91.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_64_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_72();
    l0 = self.box_OnceOnly_v3_64;
    l1 = self.box_PlayDialog_v6_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1885295822", "1885295822", "SwappingArmySetUpB13", "box_OnceOnly_v3_64.Out", "box_PlayDialog_v6_72.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|427546625", "427546625", "SwappingArmySetUpB13", "box_OutputOrder_v2_103.Out", "box_Delay_v5_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_48();
    l0 = self.box_Music_Quest_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|131824748", "131824748", "SwappingArmySetUpB13", "box_OutputOrder_v2_103.Out", "box_Music_Quest_v2_48.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_60_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_67();
    l0 = self.box_OnceOnly_v3_60;
    l1 = self.box_PlayDialog_v6_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|409555245", "409555245", "SwappingArmySetUpB13", "box_OnceOnly_v3_60.Out", "box_PlayDialog_v6_67.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|@DisableListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|@FatherIsResetB13");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_50_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_40()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103842614653499095",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|207117866");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
                [3] = self.f_box_OutputOrder_v2_5_Out_3,
                [4] = self.f_box_OutputOrder_v2_5_Out_4,
                [5] = self.f_box_OutputOrder_v2_5_Out_5,
                [6] = self.f_box_OutputOrder_v2_5_Out_6,
                [7] = self.f_box_OutputOrder_v2_5_Out_7,
                [8] = self.f_box_OutputOrder_v2_5_Out_8,
                [9] = self.f_box_OutputOrder_v2_5_Out_9,
                [10] = self.f_box_OutputOrder_v2_5_Out_10,
                [11] = self.f_box_OutputOrder_v2_5_Out_11,
            },
            count = 12,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|232681482");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_12_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "FATHER_010_B10_ReviveYourFriend",
            id = "688650",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 12,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_33()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "Hallucination_Medium_OUT",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|259732123");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_41_OnSet,
    });
    params = {
        -- Pawn,
        [0] = "2103842614657693405",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_97()
    local params;
    DrawTextToScreen("Comment: Grace (Brainwashed) - Got my sights on you, Deputy.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Grace (Brainwashed) - Got my sights on you, Deputy.");
    params = {
        -- Group,
        [0] = "2103499350893191284",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "828004351",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_68()
    local params;
    DrawTextToScreen("Comment: Honey, you're quite the hero!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Honey, you're quite the hero!");
    params = {
        -- Group,
        [0] = "2103499340946398705",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1511038353",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|312100752");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_20_Out,
    });
    params = {
        -- A,
        [0] = self.FriendsLeftToBringBackB13,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|349394324");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_47_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "FATHER_010_B10_ReviveYourFriend",
            id = "688650",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_130()
    local params, l0;
    DrawTextToScreen("Comment: This makes our revived Ally invincible to enemy (father) fire. That would bring no fun to have father take down our friend once he's vulnerable", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetContextualStrategy')-- Comment: This makes our revived Ally invincible to enemy (father) fire. That would bring no fun to have father take down our friend once he's vulnerable");
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|375273681");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104922389671357974",
        -- Group,
        [1] = "#0382900D",
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB13_6()
    local params;
    DrawTextToScreen("Comment: Tracy Rifle - Uni13", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB13')-- Comment: Tracy Rifle - Uni13");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080267141471769",
        -- CStoUseForGreenGFH,
        [1] = "2103291309553881761",
        -- CStoUseForRedGFH,
        [2] = "2103762483805230104",
        -- GFH,
        [3] = "2103499342557011503",
        -- MarkerWhenRevive,
        [4] = "2102032930783116479",
        -- ParticleWhenConverted,
        [5] = "2103996065171650167",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_128()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_48()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 9,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1356172451",
        -- StopEvent,
        [7] = "2665284510",
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

function export:OnEnter_box_PlayDialog_v6_83()
    local params;
    DrawTextToScreen("Comment: Tracey - Oh, Jesus. What a nightmare! Thanks, Rookie.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Tracey - Oh, Jesus. What a nightmare! Thanks, Rookie.");
    params = {
        -- Group,
        [0] = "2103499342557011503",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1752448415",
    };
    return params;
end;

function export:OnEnter_box_Random_115()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_105()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "scopolaminemedium",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|552602144");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_109_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104381166646729574",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|577490268");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_46_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "FATHER_010_B10_EliminateFather",
            id = "570101",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_34()
    local params, l0;
    DrawTextToScreen("Comment: This makes our revived Ally invincible to enemy (father) fire. That would bring no fun to have father take down our friend once he's vulnerable", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetContextualStrategy')-- Comment: This makes our revived Ally invincible to enemy (father) fire. That would bring no fun to have father take down our friend once he's vulnerable");
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|583803995");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_34_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103801433192193934",
        -- Group,
        [1] = "#0382900D",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_108()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "906473430",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|610615682");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_36_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.FriendsLeftToBringBackB13,
        -- B,
        [1] = 12,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_88()
    local params;
    DrawTextToScreen("Comment: I'm gonna light your dumb ass up, shithead.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: I'm gonna light your dumb ass up, shithead.");
    params = {
        -- Group,
        [0] = "2103499347030237017",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "776915040",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_35()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_AssignIndependantBF_106()
    local params;
    params = {
        -- CStoUseForIndependantBF,
        [0] = "2104507653775432927",
        -- GroupPosition,
        [1] = "#09FE2143",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|657795760");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_31_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2104713068039640341",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|664759161");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_120_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104080588404186787",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_89()
    local params;
    DrawTextToScreen("Comment: Tracy (brainwashed) - I'm sorry Father. I will never doubt you again.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Tracy (brainwashed) - I'm sorry Father. I will never doubt you again.");
    params = {
        -- Group,
        [0] = "2103499342557011503",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1788869364",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_75()
    local params;
    params = {
        -- Group,
        [0] = "2101853840574790732",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2515946790",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|743190233");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "FATHER_010_B10_ReviveYourFriend",
            id = "688650",
        },
        -- Progress,
        [1] = self.FriendsLeftToBringBackB13,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_93()
    local params;
    DrawTextToScreen("Comment: Sweetheart, why don't you come over to Addie's side?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Sweetheart, why don't you come over to Addie's side?");
    params = {
        -- Group,
        [0] = "2103499340946398705",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3738713320",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_51()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_TimedSlowMotion_v2_27()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- BlendInTime,
        [1] = 2,
        -- BlendOutTime,
        [2] = 2,
        -- Duration,
        [3] = 1,
        -- PreDelay,
        [4] = 0,
        -- TimeFactor,
        [5] = 0.25,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_91()
    local params;
    DrawTextToScreen("Comment: Weathy (Brainwashed) - I am one with the Father's message!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Weathy (Brainwashed) - I am one with the Father's message!");
    params = {
        -- Group,
        [0] = "2103499346115878664",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2685238676",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|879022238");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
                [3] = self.f_box_OutputOrder_v2_17_Out_3,
                [4] = self.f_box_OutputOrder_v2_17_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|893952308");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_21_Out,
    });
    params = {
        -- A,
        [0] = self.FriendsLeftToBringBackB13,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|904960315");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_11_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "FATHER_010_B10_ReviveYourFriend",
            id = "688650",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|948353272");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_121_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104381169188477800",
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB13_7()
    local params;
    DrawTextToScreen("Comment: Deputy Stacey Pratt - The BOY Shotgun - Uni44", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB13')-- Comment: Deputy Stacey Pratt - The BOY Shotgun - Uni44");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080153614245170",
        -- CStoUseForGreenGFH,
        [1] = "2103291309553881761",
        -- CStoUseForRedGFH,
        [2] = "2103762418543956920",
        -- GFH,
        [3] = "2101853841111661705",
        -- MarkerWhenRevive,
        [4] = "2102034299871039984",
        -- ParticleWhenConverted,
        [5] = "2103843130643083285",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_59()
    local params;
    params = {
        -- Group,
        [0] = "2103499353999073660",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3654086454",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1003358089");
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
                [0] = self.f_box_OutputOrder_v2_112_Out_0,
                [1] = self.f_box_OutputOrder_v2_112_Out_1,
                [2] = self.f_box_OutputOrder_v2_112_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_67()
    local params;
    DrawTextToScreen("Comment: Jesse - Ugh. My head. Some fucker needs punishin' for that!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Jesse - Ugh. My head. Some fucker needs punishin' for that!");
    params = {
        -- Group,
        [0] = "2103499346417868573",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3619605597",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1083785373");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_107_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104381170086058858",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1109546714");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_53_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "FATHER_010_B10_ReviveYourFriend",
            id = "688650",
        },
        -- Progress,
        [1] = self.FriendsLeftToBringBackB13,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB13_26()
    local params;
    DrawTextToScreen("Comment: Hurk Rocket - Uni43", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB13')-- Comment: Hurk Rocket - Uni43");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080272088653343",
        -- CStoUseForGreenGFH,
        [1] = "2103291309553881761",
        -- CStoUseForRedGFH,
        [2] = "2102128033688203898",
        -- GFH,
        [3] = "2103499344809352897",
        -- MarkerWhenRevive,
        [4] = "2101909442300775885",
        -- ParticleWhenConverted,
        [5] = "2103996068971689595",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_3()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2103842614657693405",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1135679004");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "FATHER_010_B10_EliminateFather",
            id = "570101",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB13_25()
    local params;
    DrawTextToScreen("Comment: MaryMay Rifle - Key02", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB13')-- Comment: MaryMay Rifle - Key02");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080229789097438",
        -- CStoUseForGreenGFH,
        [1] = "2103291309553881761",
        -- CStoUseForRedGFH,
        [2] = "2103762483805230104",
        -- GFH,
        [3] = "2103499349559402513",
        -- MarkerWhenRevive,
        [4] = "2102032903981513880",
        -- ParticleWhenConverted,
        [5] = "2103996052163016289",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_99()
    local params;
    DrawTextToScreen("Comment: Hurk (Brainwashed) - I hate to fuck you up like this, Deputy.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Hurk (Brainwashed) - I hate to fuck you up like this, Deputy.");
    params = {
        -- Group,
        [0] = "2103499344809352897",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2699498991",
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB13_16()
    local params;
    DrawTextToScreen("Comment: Grace Sniper - Uni07", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB13')-- Comment: Grace Sniper - Uni07");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080270327045661",
        -- CStoUseForGreenGFH,
        [1] = "2103291309553881761",
        -- CStoUseForRedGFH,
        [2] = "2103788117176663925",
        -- GFH,
        [3] = "2103499350893191284",
        -- MarkerWhenRevive,
        [4] = "2102032907246779548",
        -- ParticleWhenConverted,
        [5] = "2103996073398777471",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_78()
    local params;
    params = {
        -- Group,
        [0] = "2101853837819132937",
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3092287137",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_61()
    local params;
    params = {
        -- Group,
        [0] = "2101853841111661705",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2332147828",
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

function export:OnEnter_box_SwapingArmyMoveB13_8()
    local params;
    DrawTextToScreen("Comment: Bowshaw Shotgun - Uni24", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB13')-- Comment: Bowshaw Shotgun - Uni24");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080264689901079",
        -- CStoUseForGreenGFH,
        [1] = "2103291309553881761",
        -- CStoUseForRedGFH,
        [2] = "2103762418543956920",
        -- GFH,
        [3] = "2103499347030237017",
        -- MarkerWhenRevive,
        [4] = "2101933285568417525",
        -- ParticleWhenConverted,
        [5] = "2103996060457252467",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1212691985");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_54_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2103801487221120946",
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB13_18()
    local params;
    DrawTextToScreen("Comment: Adelaide Rifle - Uni56", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB13')-- Comment: Adelaide Rifle - Uni56");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080268898885147",
        -- CStoUseForGreenGFH,
        [1] = "2103291309553881761",
        -- CStoUseForRedGFH,
        [2] = "2103762483805230104",
        -- GFH,
        [3] = "2103499340946398705",
        -- MarkerWhenRevive,
        [4] = "2101909444408413653",
        -- ParticleWhenConverted,
        [5] = "2103996067430282873",
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB13_14()
    local params;
    DrawTextToScreen("Comment: Deputy Joey Hudson, THE GIRL Shotgun - Uni40", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB13')-- Comment: Deputy Joey Hudson, THE GIRL Shotgun - Uni40");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080143396920615",
        -- CStoUseForGreenGFH,
        [1] = "2104507653775432927",
        -- CStoUseForRedGFH,
        [2] = "2103762418543956920",
        -- GFH,
        [3] = "2101853840574790732",
        -- MarkerWhenRevive,
        [4] = "2102034302452634100",
        -- ParticleWhenConverted,
        [5] = "2103843129223311377",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1262825929");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_13_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "FATHER_010_B10_ReviveYourFriend",
            id = "688650",
        },
        -- Progress,
        [1] = self.FriendsLeftToBringBackB13,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB13_23()
    local params;
    DrawTextToScreen("Comment: Weathy Shotgun - Uni13", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB13')-- Comment: Weathy Shotgun - Uni13");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080261676293653",
        -- CStoUseForGreenGFH,
        [1] = "2103291309553881761",
        -- CStoUseForRedGFH,
        [2] = "2102128033688203898",
        -- GFH,
        [3] = "2103499346115878664",
        -- MarkerWhenRevive,
        [4] = "2102032883282623568",
        -- ParticleWhenConverted,
        [5] = "2103996063395362421",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_56()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#0382900D",
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB13_15()
    local params;
    DrawTextToScreen("Comment: Jesse Bow - Uni33", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB13')-- Comment: Jesse Bow - Uni33");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080273349041697",
        -- CStoUseForGreenGFH,
        [1] = "2103291309553881761",
        -- CStoUseForRedGFH,
        [2] = "2104050610153249996",
        -- GFH,
        [3] = "2103499346417868573",
        -- MarkerWhenRevive,
        [4] = "2102033451715673919",
        -- ParticleWhenConverted,
        [5] = "2103996071542797949",
    };
    return params;
end;

function export:OnEnter_box_AssignIndependantBF_32()
    local params;
    params = {
        -- CStoUseForIndependantBF,
        [0] = "2103291309553881761",
        -- GroupPosition,
        [1] = "#B5421B27",
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB13_19()
    local params;
    DrawTextToScreen("Comment: Sheriff Pistolero - Uni50", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB13')-- Comment: Sheriff Pistolero - Uni50");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080156451691828",
        -- CStoUseForGreenGFH,
        [1] = "2103291309553881761",
        -- CStoUseForRedGFH,
        [2] = "2102128033688203898",
        -- GFH,
        [3] = "2101853837819132937",
        -- MarkerWhenRevive,
        [4] = "2102034304539300344",
        -- ParticleWhenConverted,
        [5] = "2103843130326413331",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_80()
    local params;
    params = {
        -- Group,
        [0] = "2103499353632072050",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2708622917",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_133()
    local params;
    DrawTextToScreen("Comment: Father (ETHEREAL) - You don't know what you're doing! Only I can save you! You have to believe me!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Father (ETHEREAL) - You don't know what you're doing! Only I can save you! You have to believe me!");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1857715084",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_113()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_43()
    local params;
    DrawTextToScreen("Comment: Delay so that Father doesn't die right away (by accident or Allies fire)", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Delay_v5')-- Comment: Delay so that Father doesn't die right away (by accident or Allies fire)");
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_72()
    local params;
    DrawTextToScreen("Comment: Hurk - Oh, fuuuck Joseph Seed! Am I right, amigo? Oh shit, I was gonna murder you.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Hurk - Oh, fuuuck Joseph Seed! Am I right, amigo? Oh shit, I was gonna murder you.");
    params = {
        -- Group,
        [0] = "2103499344809352897",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1940453412",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_76()
    local params;
    params = {
        -- Group,
        [0] = "2103499349559402513",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3592634314",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103801487221120946",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_58()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_116()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "906473430",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_101()
    local params;
    DrawTextToScreen("Comment: Jesse encourage you to attack Father - Take him down! Take him down hard!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Jesse encourage you to attack Father - Take him down! Take him down hard!");
    params = {
        -- Group,
        [0] = "2103499346417868573",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3490642609",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_85()
    local params;
    DrawTextToScreen("Comment: Dang, I feel wrung out man. Lemme catch my breath.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Dang, I feel wrung out man. Lemme catch my breath.");
    params = {
        -- Group,
        [0] = "2103499347030237017",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2122723641",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_10()
    local params, l0;
    DrawTextToScreen("Comment: Particles that spawn where the Father is to cover his respawn", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: Particles that spawn where the Father is to cover his respawn");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1677709490");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_10_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104730014281914620",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1732742042");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_28_Disabled,
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_28_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2103387254524296416",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "FATHER_010_B10_EliminateFather",
            id = "570101",
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_74()
    local params;
    params = {
        -- Group,
        [0] = "2103499351146946753",
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "410719232",
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB13_24()
    local params;
    DrawTextToScreen("Comment: Pastor Jerome Shotgun - Uni35", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB13')-- Comment: Pastor Jerome Shotgun - Uni35");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080227685653980",
        -- CStoUseForGreenGFH,
        [1] = "2104507650510167259",
        -- CStoUseForRedGFH,
        [2] = "2103762418543956920",
        -- GFH,
        [3] = "2103499353999073660",
        -- MarkerWhenRevive,
        [4] = "2102500265386054928",
        -- ParticleWhenConverted,
        [5] = "2103996049533187679",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1780298769");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "weaponBulletShoot",
        -- IntensityModifier,
        [1] = 0.45,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_77()
    local params;
    DrawTextToScreen("Comment: Grace - Jesus! Let's get those fucks!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Grace - Jesus! Let's get those fucks!");
    params = {
        -- Group,
        [0] = "2103499350893191284",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2936941412",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_136()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2692980226",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_65()
    local params;
    DrawTextToScreen("Comment: Weathy - Sweet fucking Christ, that was a bad trip!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Weathy - Sweet fucking Christ, that was a bad trip!");
    params = {
        -- Group,
        [0] = "2103499346115878664",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3127027001",
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB13_22()
    local params;
    DrawTextToScreen("Comment: Tammy Shotgun - Uni25", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB13')-- Comment: Tammy Shotgun - Uni25");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080231240326624",
        -- CStoUseForGreenGFH,
        [1] = "2103291309553881761",
        -- CStoUseForRedGFH,
        [2] = "2103762418543956920",
        -- GFH,
        [3] = "2103499353632072050",
        -- MarkerWhenRevive,
        [4] = "2102032892845636692",
        -- ParticleWhenConverted,
        [5] = "2103996053951886947",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1853254872");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_132_A_eq_B,
    });
    l0 = self.box_Delay_v5_119;
    params = {
        -- A,
        [0] = 2,
        -- B,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_2()
    local params, l0;
    DrawTextToScreen("Comment: Deactivate Fog by starting a big Negative Fog for a sweet reveal", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Deactivate Fog by starting a big Negative Fog for a sweet reveal");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1863594581");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "81203421232216569",
        -- missionLayerId,
        [1] = "54181839568840272",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1942082109");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_117_A_eq_B,
    });
    l0 = self.box_Delay_v5_119;
    params = {
        -- A,
        [0] = 6,
        -- B,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_119()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- nbLoop,
        [1] = 8,
        -- seconds,
        [2] = 0.4,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|1968090594");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_118_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2104713068039640341",
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB13_1()
    local params;
    DrawTextToScreen("Comment: NickRye Rifle - Key01", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB13')-- Comment: NickRye Rifle - Key01");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080233217940962",
        -- CStoUseForGreenGFH,
        [1] = "2104507653775432927",
        -- CStoUseForRedGFH,
        [2] = "2103762483805230104",
        -- GFH,
        [3] = "2103499351146946753",
        -- MarkerWhenRevive,
        [4] = "2102033217071627684",
        -- ParticleWhenConverted,
        [5] = "2103996056413943397",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2010498313");
    l0:SetConnections({
    });
    params = {
        -- Pawn,
        [0] = "2103842614657693405",
    };
    return params;
end;

function export:OnEnter_box_AssignIndependantBF_111()
    local params;
    params = {
        -- CStoUseForIndependantBF,
        [0] = "2104507650510167259",
        -- GroupPosition,
        [1] = "#F3C1AC98",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_126()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2692980226",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2049767884");
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
                [0] = self.f_box_OutputOrder_v2_123_Out_0,
                [1] = self.f_box_OutputOrder_v2_123_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@SwappingArmySetUpB13|2106722962");
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
                [0] = self.f_box_OutputOrder_v2_103_Out_0,
                [1] = self.f_box_OutputOrder_v2_103_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_95()
    local params;
    DrawTextToScreen("Comment: Jesse - Gonna gut you and skin you for the Father.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Jesse - Gonna gut you and skin you for the Father.");
    params = {
        -- Group,
        [0] = "2103499346417868573",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2872019893",
    };
    return params;
end;

function export:OnExit_box_IntegerArithmetics_v2_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.FriendsLeftToBringBackB13 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.FriendsLeftToBringBackB13 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:StopTornadoSound()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="StopTornadoSound" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
