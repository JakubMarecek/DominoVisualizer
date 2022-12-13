LUACc� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_020/lt01_020_b10.domino
-- User graph: LT01_020_B10
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
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DiplayTextModifier_v6.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FloatArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsGunsForHire_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleHealthListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1990873229.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3011913587.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3131248717.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2337605513.bnk]], "CSoundResource");
        cboxRes:LoadResource([[673783914.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1112275517.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2095425785.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1828168742.bnk]], "CSoundResource");
        cboxRes:LoadResource([[111112819.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4281658605.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1504068527.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1536984422.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3251857637.bnk]], "CSoundResource");
        cboxRes:LoadResource([[562162217.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1632554026.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1231417822.bnk]], "CSoundResource");
        cboxRes:LoadResource([[88469371.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1247664801.bnk]], "CSoundResource");
        cboxRes:LoadResource([[entityarchetypeslibrary/9015178558966851.ark.fcb]], "CEntityArchetypeRes");
        cboxRes:LoadResource([[1362605.bnk]], "CSoundResource");
        cboxRes:LoadResource([[323211064.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3413280657.bnk]], "CSoundResource");
        cboxRes:LoadResource([[150392036.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_020/LT01_020_B10.LT01_020_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/DiplayTextModifier_v6.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ClearText",
            },
            [1] = {
                name = "DisplayText",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "TextCleared",
                delayed = false,
            },
            [1] = {
                name = "TextDisplayed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "displayOverCinematic",
                type = "bool",
            },
            [1] = {
                name = "displayTimer",
                type = "float",
            },
            [2] = {
                name = "forceInstantDisplay",
                type = "bool",
            },
            [3] = {
                name = "isKarmaEvent",
                type = "bool",
            },
            [4] = {
                name = "textId",
                type = "oasis",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/FloatArithmetics_v2.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
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
    metadataTable[GetPathID("Domino/System/IsGunsForHire_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
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
                name = "Roster",
                delayed = false,
            },
            [3] = {
                name = "Squad",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Player",
                type = "entity",
            },
            [1] = {
                name = "targetGFHArchetype",
                type = "archetype",
            },
            [2] = {
                name = "targetGFHEntity",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "affectedGFHEntity",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT01_020_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10";
    self.Player1ToBeReplaced = nil;
    self.gFriendlyPlayers = nil;
    self.eJohnSeed = nil;
    self.JohnSeedToBeReplaced = nil;
    self.eJohnSeedPlane = nil;
    self.JSPlaneToBeReplaced = nil;
    self.s_playerVehicle = "";
    self.e_playerVehicle = nil;
    self.e_damageInstigator = nil;
    self.f_JohnSeedZPosition = 0;
    self.f_positionDelta = 0;
    self.f_AbsPositionDelta = 0;
    self.f_JohnPreviousZPosition = 0;
    self.f_johnSeedPlaneHealth = 0;
    self.f_JohnSeedPlanePreviousHealth = 0;
    self.f_johnSeedPlaneMaxHealth = 0;
    self.f_johnSeedPlaneHealthDelta = 0;
    self.f_progressID = 0;
    self.f_progressAmount = 0;
    self.i_progressAmount = 0;
    self.e_PlayerVehicle = nil;
    self.b_NickJohnDialog = false;
    self.box_MultipleOR_124 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|22900886");
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
        [0] = self.f_box_MultipleOR_124_Out,
    });
    self.box_Random_31 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|67738238");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_31_Output_0,
                [1] = self.f_box_Random_31_Output_1,
            },
            count = 3,
        },
    });
    self.box_Delay_v5_120 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|75809679");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_120_TimeElapsed,
    });
    self.box_VehicleDamageListener_v2_86 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|96063492");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_86_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_86_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_86_Disabled,
    });
    self.box_RequestPhoneCall_v2_24 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|117747572");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_24_Completed,
    });
    self.box_Random_19 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|175712201");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_19_Output_0,
                [1] = self.f_box_Random_19_Output_1,
                [2] = self.f_box_Random_19_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleAND_v2_42 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|178980810");
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
        [0] = self.f_box_MultipleAND_v2_42_Out,
    });
    self.box_MultipleOR_117 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|181519120");
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
        [0] = self.f_box_MultipleOR_117_Out,
    });
    self.box_EntityStatusListener_88 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|184898666");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_88_Unloaded,
    });
    self.box_OnceOnly_v3_122 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|209636467");
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
                [0] = self.f_box_OnceOnly_v3_122_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_114 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|241406375");
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
    self.box_Delay_v5_123 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|251426681");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_123_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_77 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|296345219");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_77_Completed,
    });
    self.box_CharacterLoadedIdListener_85 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|312253633");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_85_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_85_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_85_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_85_LoadedIdReceived,
    });
    self.box_RequestPhoneCall_v2_158 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|342941060");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_158_Completed,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_158_Started,
    });
    self.box_MultipleAND_v2_110 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|395389545");
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
        [0] = self.f_box_MultipleAND_v2_110_Out,
    });
    self.box_MultipleOR_161 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|405789555");
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
        [0] = self.f_box_MultipleOR_161_Out,
    });
    self.box_OnceOnly_v3_17 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|425768158");
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
    self.box_MultipleOR_173 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|498489485");
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
        [0] = self.f_box_MultipleOR_173_Out,
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|516627708");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
    self.box_Gate_v3_26 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|589516599");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_26_Out,
    });
    self.box_CharacterLoadedIdListener_96 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|597837828");
    l0:SetConnections({
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_96_LoadedIdReceived,
    });
    self.box_Music_Quest_v2_70 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|628447330");
    l0:SetConnections({
    });
    self.box_MultipleOR_68 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|631273464");
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
        [0] = self.f_box_MultipleOR_68_Out,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|634170365");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_MultipleOR_116 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|640248716");
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
        [0] = self.f_box_MultipleOR_116_Out,
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|644741582");
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
    self.box_HealthListener_v6_75 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|646284547");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_75_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_75_Killed,
    });
    self.box_PlayDialog_v6_143 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|652220827");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_143_Finished,
    });
    self.box_RemoveEntity_v2_100 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|667597832");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_100_Out,
    });
    self.box_OnceOnly_v3_60 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|713842482");
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
                [0] = self.f_box_OnceOnly_v3_60_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_142 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|719657519");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_142_Finished,
    });
    self.box_Gate_v3_14 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|799037935");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_14_Out,
    });
    self.box_RequestPhoneCall_v2_157 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|812735603");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_157_Completed,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_157_Started,
    });
    self.box_PlayDialog_v6_134 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|814240427");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_134_Finished,
    });
    self.box_RemoveEntity_v2_99 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|849504164");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_99_Out,
    });
    self.box_RequestPhoneCall_v2_147 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|854195546");
    l0:SetConnections({
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_147_Started,
    });
    self.box_RequestPhoneCall_v2_162 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|908746865");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_162_Completed,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_162_Started,
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|933410048");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_MultipleOR_94 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|940909690");
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
        [0] = self.f_box_MultipleOR_94_Out,
    });
    self.box_RequestPhoneCall_v2_153 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|949702137");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_16 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|972657678");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_16_Completed,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_16_Started,
    });
    self.box_OnceOnly_v3_182 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|976973517");
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
                [0] = self.f_box_OnceOnly_v3_182_Out_0,
            },
            count = 1,
        },
    });
    self.box_VehicleDamageListener_v2_154 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1002105252");
    l0:SetConnections({
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_154_Disabled,
    });
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1034661188");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_Gate_v3_155 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1034712342");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_155_Out,
    });
    self.box_Delay_v5_127 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1107908642");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_127_TimeElapsed,
    });
    self.box_Random_175 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1155607640");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_175_Output_0,
                [1] = self.f_box_Random_175_Output_1,
                [2] = self.f_box_Random_175_Output_2,
            },
            count = 3,
        },
    });
    self.box_VehicleListener_v3_63 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1224055905");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_63_OnSit,
    });
    self.box_VehicleHealthListener_v2_7 = cbox:CreateBox("Domino/System/VehicleHealthListener_v2.lua");
    l0 = self.box_VehicleHealthListener_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleHealthListener_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1245937245");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleHealthListener_v2_7_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleHealthListener_v2_7_Enabled,
        -- HealthChanged,
        [2] = self.f_box_VehicleHealthListener_v2_7_HealthChanged,
    });
    self.box_MultipleOR_170 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1286382878");
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
        [0] = self.f_box_MultipleOR_170_Out,
    });
    self.box_VehicleHealthListener_v2_36 = cbox:CreateBox("Domino/System/VehicleHealthListener_v2.lua");
    l0 = self.box_VehicleHealthListener_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleHealthListener_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1308010502");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleHealthListener_v2_36_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleHealthListener_v2_36_Enabled,
        -- HealthChanged,
        [2] = self.f_box_VehicleHealthListener_v2_36_HealthChanged,
    });
    self.box_OnceOnly_v3_21 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1315354493");
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
    self.box_MultipleOR_160 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1400201305");
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
        [0] = self.f_box_MultipleOR_160_Out,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1420570129");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_Delay_v5_65 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1451299249");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_65_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_177 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1462560440");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_23 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1468960404");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_23_Completed,
    });
    self.box_PlayDialog_v6_112 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1483372226");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_112_Finished,
    });
    self.box_ProximityRadiusListener_v3_30 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1491455149");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_30_AllFar,
    });
    self.box_RequestPhoneCall_v2_176 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1494330070");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_22 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1547732269");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_22_Completed,
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1557797451");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box_Music_Quest_v2_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1562381667");
    l0:SetConnections({
    });
    self.box_VehicleListener_v3_169 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1599207066");
    l0:SetConnections({
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_169_OnStandUp,
    });
    self.box_RequestPhoneCall_v2_32 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1607435941");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_66 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1622370033");
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
                [0] = self.f_box_OnceOnly_v3_66_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_76 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1638256872");
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
        [0] = self.f_box_MultipleOR_76_Out,
    });
    self.box_Delay_v5_67 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1681895561");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_67_TimeElapsed,
    });
    self.box_MultipleOR_28 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1688272778");
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
    self.box_MultipleOR_108 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1697948530");
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
        [0] = self.f_box_MultipleOR_108_Out,
    });
    self.box_VehicleListener_v3_93 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1748646719");
    l0:SetConnections({
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_93_OnStandUp,
    });
    self.box_EntityStatusListener_102 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1758487713");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_102_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_102_Unloaded,
    });
    self.box_CharacterLoadedIdListener_73 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1775223194");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_73_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_73_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_73_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_73_LoadedIdReceived,
    });
    self.box_ActivityAcknowledgeGate_125 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1811028328");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_125_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_125_Reloaded,
    });
    self.box_OnceOnly_v3_115 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1834907108");
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
                [0] = self.f_box_OnceOnly_v3_115_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_25 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1837203969");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_25_TimeElapsed,
    });
    self.box_Delay_v5_109 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1854133399");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_109_TimeElapsed,
    });
    self.box_Random_8 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1855061090");
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
                [0] = self.f_box_Random_8_Output_0,
                [1] = self.f_box_Random_8_Output_1,
                [2] = self.f_box_Random_8_Output_2,
                [3] = self.f_box_Random_8_Output_3,
                [4] = self.f_box_Random_8_Output_4,
            },
            count = 5,
        },
    });
    self.box_EntityStatusListener_103 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1856813515");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_103_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_103_Unloaded,
    });
    self.box_ActivityInitialized_128 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1976701584");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_128_Out,
    });
    self.box_RequestPhoneCall_v2_18 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1997739076");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_18_Completed,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_18_Started,
    });
    self.box_Delay_v5_90 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2022109566");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_90_TimeElapsed,
    });
    self.box_MultipleAND_v2_106 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2027839140");
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
        [0] = self.f_box_MultipleAND_v2_106_Out,
    });
    self.box_RequestPhoneCall_v2_172 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2044480992");
    l0:SetConnections({
    });
    self.box_VehicleHealthListener_v2_9 = cbox:CreateBox("Domino/System/VehicleHealthListener_v2.lua");
    l0 = self.box_VehicleHealthListener_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleHealthListener_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2052480174");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleHealthListener_v2_9_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleHealthListener_v2_9_Enabled,
        -- HealthChanged,
        [2] = self.f_box_VehicleHealthListener_v2_9_HealthChanged,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2078168611");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_OnceOnly_v3_107 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2080208829");
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
                [0] = self.f_box_OnceOnly_v3_107_Out_0,
            },
            count = 1,
        },
    });
    self.box_RequestPhoneCall_v2_33 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2104038327");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|283432401", "283432401", "LT01_020_B10", "In", "box_OutputOrder_v2_89.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_181_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_70();
    l0 = self.box_Music_Quest_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|853225384", "853225384", "LT01_020_B10", "box_Simple_Node_181.Out", "box_Music_Quest_v2_70.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_59_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleHealthListener_v2_9();
    l0 = self.box_VehicleHealthListener_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1101629079", "1101629079", "LT01_020_B10", "box_Simple_Node_59.Out", "box_VehicleHealthListener_v2_9.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_VehicleDamageListener_v2_86();
    l0 = self.box_VehicleDamageListener_v2_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|814565948", "814565948", "LT01_020_B10", "box_Simple_Node_59.Out", "box_VehicleDamageListener_v2_86.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_145();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1391063714", "1391063714", "LT01_020_B10", "box_Simple_Node_59.Out", "box_OutputOrder_v2_145.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_168_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|877941064", "877941064", "LT01_020_B10", "box_Simple_Node_168.Out", "box_OutputOrder_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_83_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_85();
    l0 = self.box_CharacterLoadedIdListener_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2013008501", "2013008501", "LT01_020_B10", "box_Simple_Node_83.Out", "box_CharacterLoadedIdListener_85.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_144_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_79();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1889545323", "1889545323", "LT01_020_B10", "box_Simple_Node_144.Out", "box_SetBoolean_v2_79.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_71_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|477917835", "477917835", "LT01_020_B10", "box_Simple_Node_71.Out", "box_MultipleOR_108.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Simple_Node_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_45();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1519555071", "1519555071", "LT01_020_B10", "box_Simple_Node_47.Out", "box_GetPawnVehicleInfo_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|420080844", "420080844", "LT01_020_B10", "box_Simple_Node_46.Out", "box_OutputOrder_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_55_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_53();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|100906421", "100906421", "LT01_020_B10", "box_Simple_Node_55.Out", "box_FloatArithmetics_v2_53.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_72_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|537903745", "537903745", "LT01_020_B10", "box_Simple_Node_72.Out", "box_OnceOnly_v3_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_133_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_56();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|573946467", "573946467", "LT01_020_B10", "box_Simple_Node_133.Out", "box_AddActivityObjective_v2_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_132_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_86();
    l0 = self.box_VehicleDamageListener_v2_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1804252101", "1804252101", "LT01_020_B10", "box_Simple_Node_132.Out", "box_VehicleDamageListener_v2_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_130_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|811126099", "811126099", "LT01_020_B10", "box_Simple_Node_130.Out", "box_MultipleOR_108.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
    params = self:OnEnter_box_Music_Quest_v2_4();
    l0 = self.box_Music_Quest_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1672559272", "1672559272", "LT01_020_B10", "box_Simple_Node_130.Out", "box_Music_Quest_v2_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Compare_Entity_105_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2132172380", "2132172380", "LT01_020_B10", "box_Compare_Entity_105.Equal", "box_MultipleOR_116.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Entity_105_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_110();
    l0 = self.box_MultipleAND_v2_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1512601588", "1512601588", "LT01_020_B10", "box_Compare_Entity_105.NotEqual", "box_MultipleAND_v2_110.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Compare_Entity_98_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|649742806", "649742806", "LT01_020_B10", "box_Compare_Entity_98.Equal", "box_MultipleOR_116.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Entity_98_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_110();
    l0 = self.box_MultipleAND_v2_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1100368371", "1100368371", "LT01_020_B10", "box_Compare_Entity_98.NotEqual", "box_MultipleAND_v2_110.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_124_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsGunsForHire_v2_126();
    l0 = self.box_MultipleOR_124;
    l1 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1062095038", "1062095038", "LT01_020_B10", "box_MultipleOR_124.Out", "box_IsGunsForHire_v2_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsGunsForHire_v2_64_None()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_72();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|335956585", "335956585", "LT01_020_B10", "box_IsGunsForHire_v2_64.None", "box_Simple_Node_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsGunsForHire_v2_64_Roster()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2010800453", "2010800453", "LT01_020_B10", "box_IsGunsForHire_v2_64.Roster", "box_MultipleOR_68.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsGunsForHire_v2_64_Squad()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1942848194", "1942848194", "LT01_020_B10", "box_IsGunsForHire_v2_64.Squad", "box_MultipleOR_68.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_31_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_32();
    l0 = self.box_Random_31;
    l1 = self.box_RequestPhoneCall_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|628699686", "628699686", "LT01_020_B10", "box_Random_31.Output", "box_RequestPhoneCall_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_31_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_33();
    l0 = self.box_Random_31;
    l1 = self.box_RequestPhoneCall_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|92459198", "92459198", "LT01_020_B10", "box_Random_31.Output", "box_RequestPhoneCall_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_45_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_45_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|764019255", "764019255", "LT01_020_B10", "box_GetPawnVehicleInfo_45.InVehicle", "box_OutputOrder_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_45_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_45_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|536637473", "536637473", "LT01_020_B10", "box_GetPawnVehicleInfo_45.NotInVehicle", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_45_Out()
    self:OnExit_box_GetPawnVehicleInfo_45_Out();
end;

function export:f_box_Delay_v5_120_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_120;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|41546573", "41546573", "LT01_020_B10", "box_Delay_v5_120.TimeElapsed", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleDamageListener_v2_86_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_86;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1520121002", "1520121002", "LT01_020_B10", "box_VehicleDamageListener_v2_86.Broken", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleDamageListener_v2_86_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_86;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|965060447", "965060447", "LT01_020_B10", "box_VehicleDamageListener_v2_86.Destroyed", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_86_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_86;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1124472808", "1124472808", "LT01_020_B10", "box_VehicleDamageListener_v2_86.Disabled", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_24_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_24;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2095986332", "2095986332", "LT01_020_B10", "box_RequestPhoneCall_v2_24.Completed", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Random_19_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_22();
    l0 = self.box_Random_19;
    l1 = self.box_RequestPhoneCall_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1243998941", "1243998941", "LT01_020_B10", "box_Random_19.Output", "box_RequestPhoneCall_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_19_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_23();
    l0 = self.box_Random_19;
    l1 = self.box_RequestPhoneCall_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1433841965", "1433841965", "LT01_020_B10", "box_Random_19.Output", "box_RequestPhoneCall_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_19_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_24();
    l0 = self.box_Random_19;
    l1 = self.box_RequestPhoneCall_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1555900843", "1555900843", "LT01_020_B10", "box_Random_19.Output", "box_RequestPhoneCall_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_42_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_42;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1483053656", "1483053656", "LT01_020_B10", "box_MultipleAND_v2_42.Out", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_117_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_117;
    l1 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|233509233", "233509233", "LT01_020_B10", "box_MultipleOR_117.Out", "box_MultipleOR_116.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_EntityStatusListener_88_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_83();
    l0 = self.box_EntityStatusListener_88;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|381699521", "381699521", "LT01_020_B10", "box_EntityStatusListener_88.Unloaded", "box_Simple_Node_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_122_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_147();
    l0 = self.box_OnceOnly_v3_122;
    l1 = self.box_RequestPhoneCall_v2_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1910104684", "1910104684", "LT01_020_B10", "box_OnceOnly_v3_122.Out", "box_RequestPhoneCall_v2_147.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PawnInvincibleState_v2_87_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_109();
    l0 = self.box_Delay_v5_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|300982690", "300982690", "LT01_020_B10", "box_PawnInvincibleState_v2_87.OnSet", "box_Delay_v5_109.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_114_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_114;
    l1 = self.box_OnceOnly_v3_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|347657960", "347657960", "LT01_020_B10", "box_MultipleOR_114.Out", "box_OnceOnly_v3_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_123_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_123;
    l1 = self.box_MultipleOR_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|53007469", "53007469", "LT01_020_B10", "box_Delay_v5_123.TimeElapsed", "box_MultipleOR_124.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_58_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_54();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1083248703", "1083248703", "LT01_020_B10", "box_Compare_Integers_58.A_ge_B", "box_SetActivityObjectiveProgress_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_58_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_69();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1539658967", "1539658967", "LT01_020_B10", "box_Compare_Integers_58.A_lt_B", "box_SetActivityObjectiveProgress_v2_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_77_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_77;
    l1 = self.box_MultipleOR_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|748347618", "748347618", "LT01_020_B10", "box_RequestPhoneCall_v2_77.Completed", "box_MultipleOR_124.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CharacterLoadedIdListener_85_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_85_LoadedIdReceived();
    params = self:OnEnter_box_PawnInvincibleState_v2_82();
    l0 = self.box_CharacterLoadedIdListener_85;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1357616631", "1357616631", "LT01_020_B10", "box_CharacterLoadedIdListener_85.LoadedIdReceived", "box_PawnInvincibleState_v2_82.SetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetInvincible
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_93();
    l0 = self.box_VehicleListener_v3_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|175683091", "175683091", "LT01_020_B10", "box_OutputOrder_v2_78.Out", "box_VehicleListener_v3_93.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_75();
    l0 = self.box_HealthListener_v6_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1700608688", "1700608688", "LT01_020_B10", "box_OutputOrder_v2_78.Out", "box_HealthListener_v6_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_168();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1628136766", "1628136766", "LT01_020_B10", "box_OutputOrder_v2_78.Out", "box_Simple_Node_168.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_132();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|387085565", "387085565", "LT01_020_B10", "box_OutputOrder_v2_78.Out", "box_Simple_Node_132.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_88();
    l0 = self.box_EntityStatusListener_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|58355136", "58355136", "LT01_020_B10", "box_OutputOrder_v2_78.Out", "box_EntityStatusListener_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_158_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_158;
    l1 = self.box_MultipleOR_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|770192154", "770192154", "LT01_020_B10", "box_RequestPhoneCall_v2_158.Completed", "box_MultipleOR_161.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_158_Started()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_158;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|644609099", "644609099", "LT01_020_B10", "box_RequestPhoneCall_v2_158.Started", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_145_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_169();
    l0 = self.box_VehicleListener_v3_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|807455663", "807455663", "LT01_020_B10", "box_OutputOrder_v2_145.Out", "box_VehicleListener_v3_169.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_145_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_154();
    l0 = self.box_VehicleDamageListener_v2_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1565832032", "1565832032", "LT01_020_B10", "box_OutputOrder_v2_145.Out", "box_VehicleDamageListener_v2_154.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_110_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_111();
    l0 = self.box_MultipleAND_v2_110;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|917709841", "917709841", "LT01_020_B10", "box_MultipleAND_v2_110.Out", "box_OutputOrder_v2_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_161_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_155();
    l0 = self.box_MultipleOR_161;
    l1 = self.box_Gate_v3_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1950702911", "1950702911", "LT01_020_B10", "box_MultipleOR_161.Out", "box_Gate_v3_155.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_17_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_172();
    l0 = self.box_OnceOnly_v3_17;
    l1 = self.box_RequestPhoneCall_v2_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1032986939", "1032986939", "LT01_020_B10", "box_OnceOnly_v3_17.Out", "box_RequestPhoneCall_v2_172.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Strings_150_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_106();
    l0 = self.box_MultipleAND_v2_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1145537414", "1145537414", "LT01_020_B10", "box_Compare_Strings_150.A_neq_B", "box_MultipleAND_v2_106.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_121();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|919647923", "919647923", "LT01_020_B10", "box_OutputOrder_v2_89.Out", "box_Print_v2_121.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_80();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|852907410", "852907410", "LT01_020_B10", "box_OutputOrder_v2_89.Out", "box_GetPlayerGroup_v2_80.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_173_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_173;
    l1 = self.box_OnceOnly_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1332200604", "1332200604", "LT01_020_B10", "box_MultipleOR_173.Out", "box_OnceOnly_v3_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleHealthListener_v2_36();
    l0 = self.box_Delay_v5_35;
    l1 = self.box_VehicleHealthListener_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1011523742", "1011523742", "LT01_020_B10", "box_Delay_v5_35.TimeElapsed", "box_VehicleHealthListener_v2_36.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Compare_Strings_44_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_42();
    l0 = self.box_MultipleAND_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1017465500", "1017465500", "LT01_020_B10", "box_Compare_Strings_44.A_neq_B", "box_MultipleAND_v2_42.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetContextualStrategy_141_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1567011568", "1567011568", "LT01_020_B10", "box_SetContextualStrategy_141.Out", "box_OutputOrder_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_54_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_57();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1222045547", "1222045547", "LT01_020_B10", "box_SetActivityObjectiveProgress_v2_54.Out", "box_Print_v2_57.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_61();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1767672276", "1767672276", "LT01_020_B10", "box_SetActivityObjectiveProgress_v2_50.Out", "box_ActivityObjectiveMarkerModifier_v3_61.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_80_Out()
    local l0;
    self:OnExit_box_GetPlayerGroup_v2_80_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|958381265", "958381265", "LT01_020_B10", "box_GetPlayerGroup_v2_80.Out", "box_ActivityAcknowledgeGate_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_GetPawnVehicleInfo_91_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_91_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_141();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|85060553", "85060553", "LT01_020_B10", "box_GetPawnVehicleInfo_91.InVehicle", "box_SetContextualStrategy_141.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_91_NotInVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_91_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_62();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1831029113", "1831029113", "LT01_020_B10", "box_GetPawnVehicleInfo_91.NotInVehicle", "box_Print_v2_62.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_91_Out()
    self:OnExit_box_GetPawnVehicleInfo_91_Out();
end;

function export:f_box_IsGunsForHire_v2_126_Roster()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_123();
    l0 = self.box_Delay_v5_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1045045928", "1045045928", "LT01_020_B10", "box_IsGunsForHire_v2_126.Roster", "box_Delay_v5_123.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsGunsForHire_v2_126_Squad()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_81();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|518096347", "518096347", "LT01_020_B10", "box_IsGunsForHire_v2_126.Squad", "box_SetBoolean_v2_81.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_19();
    l0 = self.box_Gate_v3_26;
    l1 = self.box_Random_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|168244056", "168244056", "LT01_020_B10", "box_Gate_v3_26.Out", "box_Random_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_CharacterLoadedIdListener_96_LoadedIdReceived()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_127();
    l0 = self.box_CharacterLoadedIdListener_96;
    l1 = self.box_Delay_v5_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1302469915", "1302469915", "LT01_020_B10", "box_CharacterLoadedIdListener_96.LoadedIdReceived", "box_Delay_v5_127.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_AddActivityObjectiveProgress_v2_49_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_49_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_50();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|386080566", "386080566", "LT01_020_B10", "box_AddActivityObjectiveProgress_v2_49.Out", "box_SetActivityObjectiveProgress_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_10_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_11();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1509081749", "1509081749", "LT01_020_B10", "box_FloatArithmetics_v2_10.Out", "box_FloatArithmetics_v2_11.Abs", clone:GetLuaBox(), l0:GetLuaBox());
    -- Abs
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_74_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|959227822", "959227822", "LT01_020_B10", "box_Compare_Boolean_74.A_is_False", "box_OnceOnly_v3_122.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_74_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_120();
    l0 = self.box_Delay_v5_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1738588187", "1738588187", "LT01_020_B10", "box_Compare_Boolean_74.A_is_True", "box_Delay_v5_120.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_164_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleHealthListener_v2_9();
    l0 = self.box_VehicleHealthListener_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1442520582", "1442520582", "LT01_020_B10", "box_OutputOrder_v2_164.Out", "box_VehicleHealthListener_v2_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_164_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleHealthListener_v2_7();
    l0 = self.box_VehicleHealthListener_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1367022626", "1367022626", "LT01_020_B10", "box_OutputOrder_v2_164.Out", "box_VehicleHealthListener_v2_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_68_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_68;
    l1 = self.box_OnceOnly_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1271891466", "1271891466", "LT01_020_B10", "box_MultipleOR_68.Out", "box_OnceOnly_v3_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_130();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1521532489", "1521532489", "LT01_020_B10", "box_MultipleOR_1.Out", "box_Simple_Node_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_116_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_116;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1213997540", "1213997540", "LT01_020_B10", "box_MultipleOR_116.Out", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayTextModifier_v6_38();
    l0 = self.box_MultipleOR_48;
    l1 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1400175448", "1400175448", "LT01_020_B10", "box_MultipleOR_48.Out", "box_DisplayTextModifier_v6_38.DisplayText", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisplayText
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_75_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_75;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1972105055", "1972105055", "LT01_020_B10", "box_HealthListener_v6_75.Downed", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_75_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_75;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2077578910", "2077578910", "LT01_020_B10", "box_HealthListener_v6_75.Killed", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_143_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_143;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|701212892", "701212892", "LT01_020_B10", "box_PlayDialog_v6_143.Finished", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntity_v2_100_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_118();
    l0 = self.box_RemoveEntity_v2_100;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1804048856", "1804048856", "LT01_020_B10", "box_RemoveEntity_v2_100.Out", "box_VehicleModifier_v2_118.SetExplosion", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExplosion
    l1:Exec(17, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_40();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1485529566", "1485529566", "LT01_020_B10", "box_OutputOrder_v2_43.Out", "box_Compare_Strings_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_44();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1913120528", "1913120528", "LT01_020_B10", "box_OutputOrder_v2_43.Out", "box_Compare_Strings_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_11_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_12();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|330256166", "330256166", "LT01_020_B10", "box_FloatArithmetics_v2_11.Out", "box_Compare_Floats_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_60_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_149();
    l0 = self.box_OnceOnly_v3_60;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1219938958", "1219938958", "LT01_020_B10", "box_OnceOnly_v3_60.Out", "box_SetActivityFact_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_142_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_143();
    l0 = self.box_PlayDialog_v6_142;
    l1 = self.box_PlayDialog_v6_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|616487321", "616487321", "LT01_020_B10", "box_PlayDialog_v6_142.Finished", "box_PlayDialog_v6_143.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_102();
    l0 = self.box_EntityStatusListener_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1176477293", "1176477293", "LT01_020_B10", "box_OutputOrder_v2_104.Out", "box_EntityStatusListener_102.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_104_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_103();
    l0 = self.box_EntityStatusListener_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1947005221", "1947005221", "LT01_020_B10", "box_OutputOrder_v2_104.Out", "box_EntityStatusListener_103.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_5_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_113();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|424727614", "424727614", "LT01_020_B10", "box_ActivityObjectiveMarkerModifier_v3_5.Disabled", "box_ActivityEnd_113.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_Gate_v3_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1282241683", "1282241683", "LT01_020_B10", "box_Gate_v3_14.Out", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_12_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_155();
    l0 = self.box_Gate_v3_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1333577905", "1333577905", "LT01_020_B10", "box_Compare_Floats_12.A_gt_B", "box_Gate_v3_155.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Compare_Floats_12_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|676069529", "676069529", "LT01_020_B10", "box_Compare_Floats_12.A_lt_B", "box_Delay_v5_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RequestPhoneCall_v2_157_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_157;
    l1 = self.box_MultipleOR_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1946845411", "1946845411", "LT01_020_B10", "box_RequestPhoneCall_v2_157.Completed", "box_MultipleOR_161.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_157_Started()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_157;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1819357342", "1819357342", "LT01_020_B10", "box_RequestPhoneCall_v2_157.Started", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_134_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_142();
    l0 = self.box_PlayDialog_v6_134;
    l1 = self.box_PlayDialog_v6_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|4462226", "4462226", "LT01_020_B10", "box_PlayDialog_v6_134.Finished", "box_PlayDialog_v6_142.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_99_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_119();
    l0 = self.box_RemoveEntity_v2_99;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1071210637", "1071210637", "LT01_020_B10", "box_RemoveEntity_v2_99.Out", "box_VehicleModifier_v2_119.SetExplosion", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExplosion
    l1:Exec(17, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_147_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_120();
    l0 = self.box_RequestPhoneCall_v2_147;
    l1 = self.box_Delay_v5_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|130202949", "130202949", "LT01_020_B10", "box_RequestPhoneCall_v2_147.Started", "box_Delay_v5_120.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_SetBoolean_v2_97_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_97_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_72();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1413424746", "1413424746", "LT01_020_B10", "box_SetBoolean_v2_97.Out", "box_Simple_Node_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_162_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_162;
    l1 = self.box_MultipleOR_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|643180581", "643180581", "LT01_020_B10", "box_RequestPhoneCall_v2_162.Completed", "box_MultipleOR_161.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_162_Started()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_162;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1083441304", "1083441304", "LT01_020_B10", "box_RequestPhoneCall_v2_162.Started", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_14();
    l0 = self.box_Delay_v5_13;
    l1 = self.box_Gate_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|64992738", "64992738", "LT01_020_B10", "box_Delay_v5_13.TimeElapsed", "box_Gate_v3_14.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_94_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_90();
    l0 = self.box_MultipleOR_94;
    l1 = self.box_Delay_v5_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2062610164", "2062610164", "LT01_020_B10", "box_MultipleOR_94.Out", "box_Delay_v5_90.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_151_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_167();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1713045836", "1713045836", "LT01_020_B10", "box_OutputOrder_v2_151.Out", "box_Compare_Strings_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_151_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_150();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|55459466", "55459466", "LT01_020_B10", "box_OutputOrder_v2_151.Out", "box_Compare_Strings_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_16_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_16;
    l1 = self.box_MultipleOR_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|615440608", "615440608", "LT01_020_B10", "box_RequestPhoneCall_v2_16.Completed", "box_MultipleOR_161.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_RequestPhoneCall_v2_16_Started()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_16;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|968592779", "968592779", "LT01_020_B10", "box_RequestPhoneCall_v2_16.Started", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OnceOnly_v3_182_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_OnceOnly_v3_182;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1306497718", "1306497718", "LT01_020_B10", "box_OnceOnly_v3_182.Out", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_154_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_154;
    l1 = self.box_MultipleOR_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|599443677", "599443677", "LT01_020_B10", "box_VehicleDamageListener_v2_154.Disabled", "box_MultipleOR_173.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_27;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|177387231", "177387231", "LT01_020_B10", "box_Delay_v5_27.TimeElapsed", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_155_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_8();
    l0 = self.box_Gate_v3_155;
    l1 = self.box_Random_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|239315622", "239315622", "LT01_020_B10", "box_Gate_v3_155.Out", "box_Random_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|701027089", "701027089", "LT01_020_B10", "box_OutputOrder_v2_3.Out", "box_OnceOnly_v3_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_30();
    l0 = self.box_ProximityRadiusListener_v3_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|905091917", "905091917", "LT01_020_B10", "box_OutputOrder_v2_3.Out", "box_ProximityRadiusListener_v3_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_26();
    l0 = self.box_Gate_v3_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1065637176", "1065637176", "LT01_020_B10", "box_OutputOrder_v2_3.Out", "box_Gate_v3_26.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Compare_Strings_40_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_42();
    l0 = self.box_MultipleAND_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|449386333", "449386333", "LT01_020_B10", "box_Compare_Strings_40.A_neq_B", "box_MultipleAND_v2_42.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_164();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1444028114", "1444028114", "LT01_020_B10", "box_OutputOrder_v2_34.Out", "box_OutputOrder_v2_164.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|91784777", "91784777", "LT01_020_B10", "box_OutputOrder_v2_34.Out", "box_Simple_Node_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2057412909", "2057412909", "LT01_020_B10", "box_OutputOrder_v2_34.Out", "box_MultipleOR_76.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_167_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_171();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1648394482", "1648394482", "LT01_020_B10", "box_Compare_Strings_167.A_eq_B", "box_OutputOrder_v2_171.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_167_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_106();
    l0 = self.box_MultipleAND_v2_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|470989251", "470989251", "LT01_020_B10", "box_Compare_Strings_167.A_neq_B", "box_MultipleAND_v2_106.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_127_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_84();
    l0 = self.box_Delay_v5_127;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|819764954", "819764954", "LT01_020_B10", "box_Delay_v5_127.TimeElapsed", "box_OutputOrder_v2_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_171_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_169();
    l0 = self.box_VehicleListener_v3_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|506580507", "506580507", "LT01_020_B10", "box_OutputOrder_v2_171.Out", "box_VehicleListener_v3_169.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_171_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_154();
    l0 = self.box_VehicleDamageListener_v2_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|377983219", "377983219", "LT01_020_B10", "box_OutputOrder_v2_171.Out", "box_VehicleDamageListener_v2_154.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_65();
    l0 = self.box_Delay_v5_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1258729626", "1258729626", "LT01_020_B10", "box_OutputOrder_v2_51.Out", "box_Delay_v5_65.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_55();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|505598170", "505598170", "LT01_020_B10", "box_OutputOrder_v2_51.Out", "box_Simple_Node_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_175_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_153();
    l0 = self.box_Random_175;
    l1 = self.box_RequestPhoneCall_v2_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|707553345", "707553345", "LT01_020_B10", "box_Random_175.Output", "box_RequestPhoneCall_v2_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_175_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_176();
    l0 = self.box_Random_175;
    l1 = self.box_RequestPhoneCall_v2_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1136203472", "1136203472", "LT01_020_B10", "box_Random_175.Output", "box_RequestPhoneCall_v2_176.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_175_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_177();
    l0 = self.box_Random_175;
    l1 = self.box_RequestPhoneCall_v2_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|204314790", "204314790", "LT01_020_B10", "box_Random_175.Output", "box_RequestPhoneCall_v2_177.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_FloatArithmetics_v2_53_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_53_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_52();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|873253405", "873253405", "LT01_020_B10", "box_FloatArithmetics_v2_53.Out", "box_SetInteger_v2_52.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_63_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_91();
    l0 = self.box_VehicleListener_v3_63;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|651252673", "651252673", "LT01_020_B10", "box_VehicleListener_v3_63.OnSit", "box_GetPawnVehicleInfo_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleHealthListener_v2_7_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_166();
    l0 = self.box_VehicleHealthListener_v2_7;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2109523048", "2109523048", "LT01_020_B10", "box_VehicleHealthListener_v2_7.Enabled", "box_GetPawnVehicleInfo_166.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleHealthListener_v2_7_HealthChanged()
    local params, l0, l1;
    self:OnExit_box_VehicleHealthListener_v2_7_HealthChanged();
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_VehicleHealthListener_v2_7;
    l1 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1096616909", "1096616909", "LT01_020_B10", "box_VehicleHealthListener_v2_7.HealthChanged", "box_Delay_v5_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_170_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_175();
    l0 = self.box_MultipleOR_170;
    l1 = self.box_Random_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1427416676", "1427416676", "LT01_020_B10", "box_MultipleOR_170.Out", "box_Random_175.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_VehicleHealthListener_v2_36_HealthChanged()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Floats_37();
    l0 = self.box_VehicleHealthListener_v2_36;
    l1 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1798144832", "1798144832", "LT01_020_B10", "box_VehicleHealthListener_v2_36.HealthChanged", "box_Compare_Floats_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_21_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_21;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|67212359", "67212359", "LT01_020_B10", "box_OnceOnly_v3_21.Out", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_160_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_155();
    l0 = self.box_MultipleOR_160;
    l1 = self.box_Gate_v3_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|492547124", "492547124", "LT01_020_B10", "box_MultipleOR_160.Out", "box_Gate_v3_155.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleHealthListener_v2_7();
    l0 = self.box_Delay_v5_6;
    l1 = self.box_VehicleHealthListener_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1284601850", "1284601850", "LT01_020_B10", "box_Delay_v5_6.TimeElapsed", "box_VehicleHealthListener_v2_7.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_65_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_14();
    l0 = self.box_Delay_v5_65;
    l1 = self.box_Gate_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|129906987", "129906987", "LT01_020_B10", "box_Delay_v5_65.TimeElapsed", "box_Gate_v3_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_23_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_23;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1637369700", "1637369700", "LT01_020_B10", "box_RequestPhoneCall_v2_23.Completed", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_112_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_134();
    l0 = self.box_PlayDialog_v6_112;
    l1 = self.box_PlayDialog_v6_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|717402737", "717402737", "LT01_020_B10", "box_PlayDialog_v6_112.Finished", "box_PlayDialog_v6_134.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_30_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_Random_31();
    l0 = self.box_ProximityRadiusListener_v3_30;
    l1 = self.box_Random_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1014853790", "1014853790", "LT01_020_B10", "box_ProximityRadiusListener_v3_30.AllFar", "box_Random_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetPawnVehicleInfo_92_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_92_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1713811764", "1713811764", "LT01_020_B10", "box_GetPawnVehicleInfo_92.InVehicle", "box_OutputOrder_v2_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_92_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_92_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|73032240", "73032240", "LT01_020_B10", "box_GetPawnVehicleInfo_92.NotInVehicle", "box_MultipleOR_116.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetPawnVehicleInfo_92_Out()
    self:OnExit_box_GetPawnVehicleInfo_92_Out();
end;

function export:f_box_RequestPhoneCall_v2_22_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_22;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|311317059", "311317059", "LT01_020_B10", "box_RequestPhoneCall_v2_22.Completed", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_25();
    l0 = self.box_MultipleOR_29;
    l1 = self.box_Delay_v5_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1625267236", "1625267236", "LT01_020_B10", "box_MultipleOR_29.Out", "box_Delay_v5_25.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_95_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_73();
    l0 = self.box_CharacterLoadedIdListener_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|624782557", "624782557", "LT01_020_B10", "box_OutputOrder_v2_95.Out", "box_CharacterLoadedIdListener_73.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_95_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_133();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|933937954", "933937954", "LT01_020_B10", "box_OutputOrder_v2_95.Out", "box_Simple_Node_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_95_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_144();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|939526455", "939526455", "LT01_020_B10", "box_OutputOrder_v2_95.Out", "box_Simple_Node_144.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_95_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_181();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1629133763", "1629133763", "LT01_020_B10", "box_OutputOrder_v2_95.Out", "box_Simple_Node_181.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_169_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_169;
    l1 = self.box_MultipleOR_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1683653787", "1683653787", "LT01_020_B10", "box_VehicleListener_v3_169.OnStandUp", "box_MultipleOR_173.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_81_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_81_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_96();
    l0 = self.box_CharacterLoadedIdListener_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|309719907", "309719907", "LT01_020_B10", "box_SetBoolean_v2_81.Out", "box_CharacterLoadedIdListener_96.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_66_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_77();
    l0 = self.box_OnceOnly_v3_66;
    l1 = self.box_RequestPhoneCall_v2_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|555770802", "555770802", "LT01_020_B10", "box_OnceOnly_v3_66.Out", "box_RequestPhoneCall_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetActivityObjectiveProgress_v2_69_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_71();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|530323936", "530323936", "LT01_020_B10", "box_SetActivityObjectiveProgress_v2_69.Out", "box_Simple_Node_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_74();
    l0 = self.box_MultipleOR_76;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|248611279", "248611279", "LT01_020_B10", "box_MultipleOR_76.Out", "box_Compare_Boolean_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_52_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_52_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_58();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2118039970", "2118039970", "LT01_020_B10", "box_SetInteger_v2_52.Out", "box_Compare_Integers_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_67_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_67;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1451876126", "1451876126", "LT01_020_B10", "box_Delay_v5_67.TimeElapsed", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_MultipleOR_28;
    l1 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|750238119", "750238119", "LT01_020_B10", "box_MultipleOR_28.Out", "box_Delay_v5_27.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_108_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_108;
    l1 = self.box_OnceOnly_v3_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|376723563", "376723563", "LT01_020_B10", "box_MultipleOR_108.Out", "box_OnceOnly_v3_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleHealthListener_v2_36();
    l0 = self.box_VehicleHealthListener_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2130229414", "2130229414", "LT01_020_B10", "box_OutputOrder_v2_2.Out", "box_VehicleHealthListener_v2_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|981393973", "981393973", "LT01_020_B10", "box_OutputOrder_v2_2.Out", "box_Delay_v5_35.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_79_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_79_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsGunsForHire_v2_64();
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1343978858", "1343978858", "LT01_020_B10", "box_SetBoolean_v2_79.Out", "box_IsGunsForHire_v2_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_101();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1394424543", "1394424543", "LT01_020_B10", "box_OutputOrder_v2_41.Out", "box_EndActivityObjective_v2_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_59();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|281004608", "281004608", "LT01_020_B10", "box_OutputOrder_v2_41.Out", "box_Simple_Node_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_93_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_93;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|168760271", "168760271", "LT01_020_B10", "box_VehicleListener_v3_93.OnStandUp", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_102_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_98();
    l0 = self.box_EntityStatusListener_102;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1004972707", "1004972707", "LT01_020_B10", "box_EntityStatusListener_102.Loaded", "box_Compare_Entity_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_102_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_102;
    l1 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1722574976", "1722574976", "LT01_020_B10", "box_EntityStatusListener_102.Unloaded", "box_MultipleOR_117.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CharacterLoadedIdListener_73_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_73_LoadedIdReceived();
    params = self:OnEnter_box_PawnInvincibleState_v2_87();
    l0 = self.box_CharacterLoadedIdListener_73;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1078433438", "1078433438", "LT01_020_B10", "box_CharacterLoadedIdListener_73.LoadedIdReceived", "box_PawnInvincibleState_v2_87.SetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetInvincible
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_125_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_125;
    l1 = self.box_MultipleOR_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1564449634", "1564449634", "LT01_020_B10", "box_ActivityAcknowledgeGate_125.Acknowledged", "box_MultipleOR_94.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_125_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_125;
    l1 = self.box_MultipleOR_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|826078626", "826078626", "LT01_020_B10", "box_ActivityAcknowledgeGate_125.Reloaded", "box_MultipleOR_94.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjective_v2_56_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_49();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|716941918", "716941918", "LT01_020_B10", "box_AddActivityObjective_v2_56.Out", "box_AddActivityObjectiveProgress_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_84_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_112();
    l0 = self.box_PlayDialog_v6_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1632646810", "1632646810", "LT01_020_B10", "box_OutputOrder_v2_84.Out", "box_PlayDialog_v6_112.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_84_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_67();
    l0 = self.box_Delay_v5_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|452212901", "452212901", "LT01_020_B10", "box_OutputOrder_v2_84.Out", "box_Delay_v5_67.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_115_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_115;
    l1 = self.box_ActivityInitialized_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1912053546", "1912053546", "LT01_020_B10", "box_OnceOnly_v3_115.Out", "box_ActivityInitialized_128.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_25_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_Delay_v5_25;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1616956689", "1616956689", "LT01_020_B10", "box_Delay_v5_25.TimeElapsed", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_166_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_166_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_151();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1767408975", "1767408975", "LT01_020_B10", "box_GetPawnVehicleInfo_166.InVehicle", "box_OutputOrder_v2_151.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_166_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_166_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1045037986", "1045037986", "LT01_020_B10", "box_GetPawnVehicleInfo_166.NotInVehicle", "box_MultipleOR_170.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_166_Out()
    self:OnExit_box_GetPawnVehicleInfo_166_Out();
end;

function export:f_box_Delay_v5_109_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_63();
    l0 = self.box_Delay_v5_109;
    l1 = self.box_VehicleListener_v3_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|327908288", "327908288", "LT01_020_B10", "box_Delay_v5_109.TimeElapsed", "box_VehicleListener_v3_63.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Random_8_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_157();
    l0 = self.box_Random_8;
    l1 = self.box_RequestPhoneCall_v2_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1782774635", "1782774635", "LT01_020_B10", "box_Random_8.Output", "box_RequestPhoneCall_v2_157.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_8_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_158();
    l0 = self.box_Random_8;
    l1 = self.box_RequestPhoneCall_v2_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2113041840", "2113041840", "LT01_020_B10", "box_Random_8.Output", "box_RequestPhoneCall_v2_158.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_8_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_162();
    l0 = self.box_Random_8;
    l1 = self.box_RequestPhoneCall_v2_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1328500159", "1328500159", "LT01_020_B10", "box_Random_8.Output", "box_RequestPhoneCall_v2_162.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_8_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_18();
    l0 = self.box_Random_8;
    l1 = self.box_RequestPhoneCall_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2070881541", "2070881541", "LT01_020_B10", "box_Random_8.Output", "box_RequestPhoneCall_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_8_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_16();
    l0 = self.box_Random_8;
    l1 = self.box_RequestPhoneCall_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1865076371", "1865076371", "LT01_020_B10", "box_Random_8.Output", "box_RequestPhoneCall_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_103_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_105();
    l0 = self.box_EntityStatusListener_103;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|953437358", "953437358", "LT01_020_B10", "box_EntityStatusListener_103.Loaded", "box_Compare_Entity_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_103_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_103;
    l1 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2034595063", "2034595063", "LT01_020_B10", "box_EntityStatusListener_103.Unloaded", "box_MultipleOR_117.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_10();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|509773124", "509773124", "LT01_020_B10", "box_OutputOrder_v2_15.Out", "box_FloatArithmetics_v2_10.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_14();
    l0 = self.box_Gate_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1099168043", "1099168043", "LT01_020_B10", "box_OutputOrder_v2_15.Out", "box_Gate_v3_14.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_101_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1840007038", "1840007038", "LT01_020_B10", "box_EndActivityObjective_v2_101.Out", "box_ActivityObjectiveMarkerModifier_v3_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_128_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_95();
    l0 = self.box_ActivityInitialized_128;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1328118459", "1328118459", "LT01_020_B10", "box_ActivityInitialized_128.Out", "box_OutputOrder_v2_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_18_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_18;
    l1 = self.box_MultipleOR_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1399814176", "1399814176", "LT01_020_B10", "box_RequestPhoneCall_v2_18.Completed", "box_MultipleOR_161.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_RequestPhoneCall_v2_18_Started()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_18;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1034141881", "1034141881", "LT01_020_B10", "box_RequestPhoneCall_v2_18.Started", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Delay_v5_90_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_92();
    l0 = self.box_Delay_v5_90;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|783461522", "783461522", "LT01_020_B10", "box_Delay_v5_90.TimeElapsed", "box_GetPawnVehicleInfo_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_106_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_106;
    l1 = self.box_MultipleOR_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1850516240", "1850516240", "LT01_020_B10", "box_MultipleAND_v2_106.Out", "box_MultipleOR_170.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Floats_37_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|269062096", "269062096", "LT01_020_B10", "box_Compare_Floats_37.A_lt_B", "box_OnceOnly_v3_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleHealthListener_v2_9_HealthChanged()
    local params, l0, l1;
    self:OnExit_box_VehicleHealthListener_v2_9_HealthChanged();
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_VehicleHealthListener_v2_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2103054992", "2103054992", "LT01_020_B10", "box_VehicleHealthListener_v2_9.HealthChanged", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_111_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_100();
    l0 = self.box_RemoveEntity_v2_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1109862461", "1109862461", "LT01_020_B10", "box_OutputOrder_v2_111.Out", "box_RemoveEntity_v2_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_111_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_99();
    l0 = self.box_RemoveEntity_v2_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|684732721", "684732721", "LT01_020_B10", "box_OutputOrder_v2_111.Out", "box_RemoveEntity_v2_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_111_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2040089401", "2040089401", "LT01_020_B10", "box_OutputOrder_v2_111.Out", "box_MultipleOR_114.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_97();
    l0 = self.box_MultipleOR_20;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1652231849", "1652231849", "LT01_020_B10", "box_MultipleOR_20.Out", "box_SetBoolean_v2_97.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_107_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = self.box_OnceOnly_v3_107;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1638810116", "1638810116", "LT01_020_B10", "box_OnceOnly_v3_107.Out", "box_OutputOrder_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_26();
    l0 = self.box_Gate_v3_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1145714202", "1145714202", "LT01_020_B10", "box_OutputOrder_v2_39.Out", "box_Gate_v3_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_47();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|352556741", "352556741", "LT01_020_B10", "box_OutputOrder_v2_39.Out", "box_Simple_Node_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|@Music");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_181_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|@n_Cleanup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_59_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|@n_JohnSeedPhoneCall");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_168_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|@n_JohnUnloaded");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_83_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|@n_NickRyePhoneCall");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_144_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|@n_PlaneDamageDone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_71_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|@n_PlayerHint");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_47_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|@n_SpawnReinf");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_46_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|@n_UpdateProgress");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_55_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|@nCallManager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_72_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|@nObjectives");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_133_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|@nPlaneHealth");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_132_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|@nPlayerDownedPlane");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_130_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2241241");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_105_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_105_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = "2103001921326458239",
        -- Entity2,
        [1] = self.e_PlayerVehicle,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|21055136");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_98_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_98_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = "2103001907153904927",
        -- Entity2,
        [1] = self.e_PlayerVehicle,
    };
    return params;
end;

function export:OnEnter_box_IsGunsForHire_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsGunsForHire_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|39056485");
    l0:SetConnections({
        -- None,
        [0] = self.f_box_IsGunsForHire_v2_64_None,
        -- Roster,
        [2] = self.f_box_IsGunsForHire_v2_64_Roster,
        -- Squad,
        [3] = self.f_box_IsGunsForHire_v2_64_Squad,
    });
    params = {
        -- targetGFHArchetype,
        [1] = "9015178558966851",
    };
    return params;
end;

function export:OnEnter_box_Random_31()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|71619343");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_45_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_45_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_45_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_120()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_86()
    local params;
    params = {
        -- Vehicle,
        [0] = self.eJohnSeedPlane,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_24()
    local params;
    DrawTextToScreen("Comment: CALL ID 810198", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 810198");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1990873229",
    };
    return params;
end;

function export:OnEnter_box_Random_19()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_42()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_88()
    local params;
    DrawTextToScreen("Comment: PATCHY PATCH", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EntityStatusListener')-- Comment: PATCHY PATCH");
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eJohnSeed,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|202219555");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|229242691");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_87_OnSet,
    });
    params = {
        -- Pawn,
        [0] = self.eJohnSeed,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_123()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|267821595");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_58_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_58_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.i_progressAmount,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|293288342");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "---- LT01_020_B10 ---- SCRIPT IS RUNNING.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_77()
    local params;
    DrawTextToScreen("Comment: CALL ID 820113", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 820113");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1362605",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_85()
    local params;
    DrawTextToScreen("Comment: PATCHOULI 222", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'CharacterLoadedIdListener')-- Comment: PATCHOULI 222");
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015197747626394",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|339062207");
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
                [0] = self.f_box_OutputOrder_v2_78_Out_0,
                [1] = self.f_box_OutputOrder_v2_78_Out_1,
                [2] = self.f_box_OutputOrder_v2_78_Out_2,
                [3] = self.f_box_OutputOrder_v2_78_Out_3,
                [4] = self.f_box_OutputOrder_v2_78_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_158()
    local params;
    DrawTextToScreen("Comment: CALL ID 703328", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 703328");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3413280657",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|388299626");
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|395039243");
    l0:SetConnections({
    });
    params = {
        -- CharacterId,
        [0] = "9015197747626394",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT01_020_B10_OBJ_AttackPlane",
            id = "501670",
        },
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_110()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|442366997");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_150_A_neq_B,
    });
    params = {
        -- A,
        [0] = self.s_playerVehicle,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|459084935");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2103001921326458239",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|480838750");
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

function export:OnEnter_box_VehicleModifier_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|492086868");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2103001907153904927",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_35()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 70,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|526865524");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_44_A_neq_B,
    });
    params = {
        -- A,
        [0] = self.s_playerVehicle,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|538233593");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_141_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103389984890349963",
        -- Group,
        [1] = self.eJohnSeed,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|550286498");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_54_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT01_020_B10_OBJ_AttackPlane",
            id = "501670",
        },
        -- Progress,
        [1] = self.i_progressAmount,
        -- ProgressId,
        [2] = self.f_progressID,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|582314094");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_50_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT01_020_B10_OBJ_AttackPlane",
            id = "501670",
        },
        -- Progress,
        [1] = 550,
        -- ProgressId,
        [2] = self.f_progressID,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|584568998");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_80_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|587118174");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_91_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_91_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_91_Out,
    });
    params = {
        -- pawn,
        [0] = self.eJohnSeed,
    };
    return params;
end;

function export:OnEnter_box_IsGunsForHire_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsGunsForHire_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|588579317");
    l0:SetConnections({
        -- Roster,
        [2] = self.f_box_IsGunsForHire_v2_126_Roster,
        -- Squad,
        [3] = self.f_box_IsGunsForHire_v2_126_Squad,
    });
    params = {
        -- targetGFHArchetype,
        [1] = "9015178558966851",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_26()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_96()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015184054185563",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|603418780");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_49_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT01_020_B10_OBJ_AttackPlane",
            id = "501670",
        },
        -- ProgressDisplayType,
        [2] = 1,
        -- TotalProgress,
        [3] = 550,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|611170067");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_10_Out,
    });
    params = {
        -- A,
        [0] = self.f_JohnSeedPlanePreviousHealth,
        -- B,
        [1] = self.f_johnSeedPlaneHealth,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|615946953");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_74_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_74_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_NickJohnDialog,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|626841223");
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
                [0] = self.f_box_OutputOrder_v2_164_Out_0,
                [1] = self.f_box_OutputOrder_v2_164_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_70()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 5,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "323211064",
        -- StopEvent,
        [7] = "1828168742",
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

function export:OnEnter_box_HealthListener_v6_75()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eJohnSeed,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_143()
    local params;
    params = {
        -- Group,
        [0] = self.gFriendlyPlayers,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1247664801",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_100()
    local params;
    params = {
        -- Group,
        [0] = "2103001921326458239",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|687548582");
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

function export:OnEnter_box_FloatArithmetics_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|694509652");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_11_Out,
    });
    params = {
        -- A,
        [0] = self.f_johnSeedPlaneHealthDelta,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|695012498");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 10,
        -- int,
        [6] = self.i_progressAmount,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "---- LT01_020_B10 ---- PROGRESS VALUE = ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_142()
    local params;
    params = {
        -- Group,
        [0] = self.gFriendlyPlayers,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1231417822",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|723233559");
    l0:SetConnections({
    });
    params = {
        -- Pawn,
        [0] = self.eJohnSeed,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|757321256");
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
                [0] = self.f_box_OutputOrder_v2_104_Out_0,
                [1] = self.f_box_OutputOrder_v2_104_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|774846509");
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
        [8] = "JS NOT IN VEHICLE!!!!!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|783547710");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_5_Disabled,
    });
    params = {
        -- CharacterId,
        [0] = "9015197747626394",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT01_020_B10_OBJ_AttackPlane",
            id = "501670",
        },
    };
    return params;
end;

function export:OnEnter_box_DisplayTextModifier_v6_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayTextModifier_v6_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|797952446");
    l0:SetConnections({
    });
    params = {
        -- displayOverCinematic,
        [0] = false,
        -- displayTimer,
        [1] = 7,
        -- forceInstantDisplay,
        [2] = false,
        -- isKarmaEvent,
        [3] = false,
        -- textId,
        [4] = {
            section = "Objectives",
            item = "HINT_LT01_020_FINDAIRPLANE",
            id = "859097",
        },
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_14()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|812558148");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_12_A_gt_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_12_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.f_johnSeedPlaneHealthDelta,
        -- B,
        [1] = 115,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_157()
    local params;
    DrawTextToScreen("Comment: CALL ID 810145", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 810145");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2337605513",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_134()
    local params;
    params = {
        -- Group,
        [0] = self.gFriendlyPlayers,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1536984422",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|849401990");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "playerInCombatWithJohn",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_99()
    local params;
    params = {
        -- Group,
        [0] = "2103001907153904927",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_147()
    local params;
    DrawTextToScreen("Comment: CALL ID 810143", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 810143");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "88469371",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|881790958");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_97_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_162()
    local params;
    DrawTextToScreen("Comment: CALL ID 703226", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 703226");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3011913587",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|942517908");
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
                [0] = self.f_box_OutputOrder_v2_151_Out_0,
                [1] = self.f_box_OutputOrder_v2_151_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_153()
    local params;
    DrawTextToScreen("Comment: CALL ID 810208", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 810208");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "4281658605",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_16()
    local params;
    DrawTextToScreen("Comment: CALL ID 703326", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 703326");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1112275517",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_154()
    local params;
    params = {
        -- Vehicle,
        [0] = self.e_playerVehicle,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_27()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 480,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_155()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1052398980");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1058649916");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_40_A_neq_B,
    });
    params = {
        -- A,
        [0] = self.s_playerVehicle,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1089062331");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
                [2] = self.f_box_OutputOrder_v2_34_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1089428578");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_167_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_167_A_neq_B,
    });
    params = {
        -- A,
        [0] = self.s_playerVehicle,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_127()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1113008298");
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

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1120747244");
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

function export:OnEnter_box_Random_175()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1192039351");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_53_Out,
    });
    params = {
        -- A,
        [0] = self.f_johnSeedPlaneHealth,
        -- B,
        [1] = 450,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_63()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.eJohnSeed,
    };
    return params;
end;

function export:OnEnter_box_VehicleHealthListener_v2_7()
    local params;
    params = {
        -- Vehicle,
        [0] = self.eJohnSeedPlane,
    };
    return params;
end;

function export:OnEnter_box_VehicleHealthListener_v2_36()
    local params;
    params = {
        -- Vehicle,
        [0] = self.eJohnSeedPlane,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_65()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_177()
    local params;
    DrawTextToScreen("Comment: CALL ID 810210", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 810210");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1504068527",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_23()
    local params;
    DrawTextToScreen("Comment: CALL ID 810197", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 810197");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "150392036",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_112()
    local params;
    params = {
        -- Group,
        [0] = self.gFriendlyPlayers,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3251857637",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- farZone,
        [2] = 700,
        -- id2,
        [3] = self.eJohnSeedPlane,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_176()
    local params;
    DrawTextToScreen("Comment: CALL ID 810209", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 810209");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3131248717",
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_92()
    local params, l0;
    DrawTextToScreen("Comment: CHECK PLAYER VEHICLE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetPawnVehicleInfo')-- Comment: CHECK PLAYER VEHICLE");
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1509428706");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_92_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_92_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_92_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_22()
    local params;
    DrawTextToScreen("Comment: CALL ID 703224", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 703224");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2095425785",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_4()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 6,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "323211064",
        -- StopEvent,
        [7] = "1828168742",
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

function export:OnEnter_box_OutputOrder_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1582582239");
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
                [0] = self.f_box_OutputOrder_v2_95_Out_0,
                [1] = self.f_box_OutputOrder_v2_95_Out_1,
                [2] = self.f_box_OutputOrder_v2_95_Out_2,
                [3] = self.f_box_OutputOrder_v2_95_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_169()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = self.e_playerVehicle,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_32()
    local params;
    DrawTextToScreen("Comment: CALL ID 810204", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 810204");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "111112819",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1617242747");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_81_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1625082142");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_69_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT01_020_B10_OBJ_AttackPlane",
            id = "501670",
        },
        -- Progress,
        [1] = 0,
        -- ProgressId,
        [2] = self.f_progressID,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1650665377");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_52_Out,
    });
    params = {
        -- Float,
        [0] = self.f_progressAmount,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_67()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1711073377");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1711246498");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_79_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1745796434");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_93()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.eJohnSeed,
        -- vehicle,
        [4] = self.eJohnSeedPlane,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_102()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103001907153904927",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_73()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015197747626394",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1814542904");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_56_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT01_020_B10_OBJ_AttackPlane",
            id = "501670",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1819918564");
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
                [0] = self.f_box_OutputOrder_v2_84_Out_0,
                [1] = self.f_box_OutputOrder_v2_84_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_25()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1844955673");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_166_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_166_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_166_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_109()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_Random_8()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 5,
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_103()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103001921326458239",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1886728843");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|1934413324");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_101_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT01_020_B10_OBJ_AttackPlane",
            id = "501670",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_18()
    local params;
    DrawTextToScreen("Comment: CALL ID 703324", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 703324");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "673783914",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_90()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_106()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_172()
    local params;
    DrawTextToScreen("Comment: CALL ID 810202", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 810202");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1632554026",
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2047395016");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_37_A_lt_B,
    });
    l0 = self.box_VehicleHealthListener_v2_36;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(0),
        -- B,
        [1] = 300,
    };
    return params;
end;

function export:OnEnter_box_VehicleHealthListener_v2_9()
    local params;
    params = {
        -- Vehicle,
        [0] = self.eJohnSeedPlane,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2067662143");
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
                [0] = self.f_box_OutputOrder_v2_111_Out_0,
                [1] = self.f_box_OutputOrder_v2_111_Out_1,
                [2] = self.f_box_OutputOrder_v2_111_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B10.domino|@LT01_020_B10|2103513884");
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_33()
    local params;
    DrawTextToScreen("Comment: CALL ID 810206", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: CALL ID 810206");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "562162217",
    };
    return params;
end;

function export:OnExit_box_GetPawnVehicleInfo_45_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.e_playerVehicle = l0:GetDataOutValue(2);
    self.s_playerVehicle = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_45_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.e_playerVehicle = l0:GetDataOutValue(2);
    self.s_playerVehicle = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.e_playerVehicle = l0:GetDataOutValue(2);
    self.s_playerVehicle = l0:GetDataOutValue(3);
end;

function export:OnExit_box_CharacterLoadedIdListener_85_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_85;
    self.eJohnSeed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_80_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_91_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eJohnSeedPlane = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_91_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eJohnSeedPlane = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_91_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eJohnSeedPlane = l0:GetDataOutValue(2);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.f_progressID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.f_johnSeedPlaneHealthDelta = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.f_johnSeedPlaneHealthDelta = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_97_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_NickJohnDialog = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_53_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.f_progressAmount = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleHealthListener_v2_7_HealthChanged()
    local l0;
    l0 = self.box_VehicleHealthListener_v2_7;
    self.f_JohnSeedPlanePreviousHealth = l0:GetDataOutValue(0);
    self.f_johnSeedPlaneMaxHealth = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_92_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.e_PlayerVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_92_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.e_PlayerVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_92_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.e_PlayerVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetBoolean_v2_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_NickJohnDialog = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_52_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_progressAmount = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_79_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_NickJohnDialog = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_73_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_73;
    self.eJohnSeed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_166_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.e_playerVehicle = l0:GetDataOutValue(2);
    self.s_playerVehicle = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_166_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.e_playerVehicle = l0:GetDataOutValue(2);
    self.s_playerVehicle = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_166_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.e_playerVehicle = l0:GetDataOutValue(2);
    self.s_playerVehicle = l0:GetDataOutValue(3);
end;

function export:OnExit_box_VehicleHealthListener_v2_9_HealthChanged()
    local l0;
    l0 = self.box_VehicleHealthListener_v2_9;
    self.f_johnSeedPlaneHealth = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
