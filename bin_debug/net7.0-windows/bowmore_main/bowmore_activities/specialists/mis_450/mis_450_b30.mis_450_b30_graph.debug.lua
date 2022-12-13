LUAC-L -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_450/mis_450_b30.domino
-- User graph: MIS_450_B30_graph
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
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DisplayHackHint.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2024226209.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2109998049.bnk]], "CSoundResource");
        cboxRes:LoadResource([[16358332.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2604139666.bnk]], "CSoundResource");
        cboxRes:LoadResource([[635308506.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3945082172.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1537278571.bnk]], "CSoundResource");
        cboxRes:LoadResource([[897539088.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4026025953.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1304835985.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1973206597.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2395235040.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3968009049.bnk]], "CSoundResource");
        cboxRes:LoadResource([[349514401.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1833494196.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4211003825.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1070038761.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2820544222.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2826111839.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2785390246.bnk]], "CSoundResource");
        cboxRes:LoadResource([[709375046.bnk]], "CSoundResource");
        cboxRes:LoadResource([[875002794.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4210602046.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1971375926.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/mis_450/MIS_450_B30.MIS_450_B30_graph.debug.lua")] = {
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
            [0] = {
                name = "BlowPipe1",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/DisplayHackHint.lua")] = {
        stateless = false,
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
                name = "textId",
                type = "oasis",
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v3.lua")] = {
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
                name = "OnAllInside",
                delayed = true,
            },
            [5] = {
                name = "OnEmpty",
                delayed = true,
            },
            [6] = {
                name = "OnOccupied",
                delayed = true,
            },
            [7] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 8,
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
                name = "requiresPawnsActive",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_450_B30_graph";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph";
    self.Players = nil;
    self.Blowpipe1 = 0;
    self.PuzzlePressureLevel = 0;
    self.Quebecois = nil;
    self.bWaterLevel_25 = false;
    self.box_UniversalInteractionListener_105 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|26925391");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_105_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_105_Interacted,
    });
    self.box_SoundModifier_v2_186 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|42420770");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_186_Started,
    });
    self.box_SoundModifier_v2_165 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|65696540");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_165_Started,
    });
    self.box_SoundModifier_v2_172 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|75129699");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|88465867");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_SpawnAI_31 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|103686136");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_284 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_284");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|119505805");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_284_Started,
    });
    self.box_SoundModifier_v2_116 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|123622782");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_116_Started,
    });
    self.box_SoundModifier_v2_117 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|157573019");
    l0:SetConnections({
    });
    self.box_ShimmerModifier_v2_130 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|159107851");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_151 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|163720002");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_151_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_142 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|200148350");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_142_Enabled,
    });
    self.box_PositionModifier_v2_225 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|224835799");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_221 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|288503811");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_v2_191 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|297492577");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_191_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_191_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_191_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_191_LoadedIdReceived,
    });
    self.box_SoundModifier_v2_159 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|307351688");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_19 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|307466375");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_201 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|319617786");
    l0:SetConnections({
    });
    self.box_UniversalInteractionListener_69 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|354628354");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_69_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_69_Interacted,
    });
    self.box_PositionModifier_v2_120 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|357409648");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_158 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|358952454");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_158_Loaded,
    });
    self.box_OnceOnly_v3_55 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|366075922");
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
                [0] = self.f_box_OnceOnly_v3_55_Out_0,
            },
            count = 2,
        },
    });
    self.box_VisibilityModifier_287 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_287;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_287");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|383615258");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_287_Disabled,
    });
    self.box_UniversalInteractionListener_10 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|387776280");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_10_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_10_Interacted,
    });
    self.box_Switch_91 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|389182356");
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
                [0] = self.f_box_Switch_91_Output_0,
                [1] = self.f_box_Switch_91_Output_1,
            },
            count = 2,
        },
    });
    self.box_UniversalInteractionModifier_v2_143 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|413402492");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_143_Enabled,
    });
    self.box_Delay_v5_24 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|426843317");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_24_TimeElapsed,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|443059722");
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
    self.box_SoundModifier_v2_162 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|457864869");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_162_Started,
    });
    self.box_EntityStatusListener_149 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|461854562");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_149_Loaded,
    });
    self.box_SoundModifier_v2_210 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|462804019");
    l0:SetConnections({
    });
    self.box_Switch_99 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|467423611");
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
                [0] = self.f_box_Switch_99_Output_0,
                [1] = self.f_box_Switch_99_Output_1,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_121 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|473503894");
    l0:SetConnections({
    });
    self.box_MultipleOR_300 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_300;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_300");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|475446611");
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
    });
    self.box_SoundModifier_v2_166 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|476114550");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_177 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|485245055");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_177_Started,
    });
    self.box_SoundModifier_v2_175 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|486510361");
    l0:SetConnections({
    });
    self.box_RequestTutorial_v3_277 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_277");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|496668678");
    l0:SetConnections({
        -- OnDisplayed,
        [0] = self.f_box_RequestTutorial_v3_277_OnDisplayed,
        -- OnHidden,
        [1] = self.f_box_RequestTutorial_v3_277_OnHidden,
        -- Out,
        [2] = self.f_box_RequestTutorial_v3_277_Out,
        -- RequestFailure,
        [3] = self.f_box_RequestTutorial_v3_277_RequestFailure,
        -- RequestSuccess,
        [4] = self.f_box_RequestTutorial_v3_277_RequestSuccess,
    });
    self.box_RequestPhoneCall_v2_231 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|498828644");
    l0:SetConnections({
    });
    self.box_ShimmerModifier_v2_52 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|502157226");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_52_Enabled,
    });
    self.box_UniversalInteractionListener_97 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|523469196");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_97_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_97_Interacted,
    });
    self.box_SoundModifier_v2_276 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_276;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_276");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|525291402");
    l0:SetConnections({
    });
    self.box_Delay_v5_258 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|568231886");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_258_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_138 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|599060790");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_138_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_267 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_267;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_267");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|641387408");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_310 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_310;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_310");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|646003767");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_187 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|649854502");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_268 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_268;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_268");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|657110304");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_178 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|661526411");
    l0:SetConnections({
    });
    self.box_SpawnAI_312 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_312;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_312");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|679599576");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_148 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|698282144");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_148_Enabled,
    });
    self.box_SoundModifier_v2_308 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_308;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_308");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|702965783");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_308_Started,
    });
    self.box_UniversalInteractionModifier_v2_154 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|705129511");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_154_Enabled,
    });
    self.box_HACK_DisplayHackHint_61 = cbox:CreateBox("Domino/System/DisplayHackHint.lua");
    l0 = self.box_HACK_DisplayHackHint_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HACK_DisplayHackHint_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|707833312");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_174 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|715755491");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_174_Started,
    });
    self.box_UniversalInteractionModifier_v2_140 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|715907160");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_140_Enabled,
    });
    self.box_SoundModifier_v2_160 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|761838628");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_160_Started,
    });
    self.box_ShimmerModifier_v2_134 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|787119114");
    l0:SetConnections({
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|807453264");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
    self.box_Delay_v5_217 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|826857432");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_217_TimeElapsed,
    });
    self.box_PositionModifier_v2_15 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|860475218");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_15_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_15_StartOut,
    });
    self.box_UniversalInteractionModifier_v2_153 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|885704281");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_153_Enabled,
    });
    self.box_ProximityRadiusListener_v3_54 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|904133207");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_54_AllNear,
    });
    self.box_SoundModifier_v2_293 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_293;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_293");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|951339076");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_293_Started,
    });
    self.box_SoundModifier_v2_122 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|965317855");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_122_Started,
    });
    self.box_SpawnAI_315 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_315;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_315");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|967316261");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_285 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_285;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_285");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|980114001");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_285_Started,
    });
    self.box_ShimmerModifier_v2_136 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|984492570");
    l0:SetConnections({
    });
    self.box_ShimmerModifier_v2_133 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|985840515");
    l0:SetConnections({
    });
    self.box_SpawnAI_313 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_313;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_313");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1007957164");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_147 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1029994286");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_147_Enabled,
    });
    self.box_PositionModifier_v2_21 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1046744422");
    l0:SetConnections({
    });
    self.box_ShimmerModifier_v2_137 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1071585902");
    l0:SetConnections({
    });
    self.box_UniversalInteractionListener_63 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1113348979");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_63_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_63_Interacted,
    });
    self.box_OnceOnly_v3_216 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1118114933");
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
                [0] = self.f_box_OnceOnly_v3_216_Out_0,
            },
            count = 2,
        },
    });
    self.box_UniversalInteractionModifier_v2_157 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1136892300");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_157_Enabled,
    });
    self.box_ProximityRadiusListener_v3_232 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1141515744");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_232_SomeoneNear,
    });
    self.box_GunsForHireSystemModifier_197 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1172879500");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_197_Disabled,
    });
    self.box_StaticBreakableListener_12 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1183199099");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_12_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_12_OnBreak,
    });
    self.box_EntityStatusListener_144 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1185023657");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_144_Loaded,
    });
    self.box_ShimmerModifier_v2_135 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1185540374");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_145 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1236483906");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_145_Enabled,
    });
    self.box_SoundModifier_v2_316 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_316;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_316");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1295703458");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_316_Started,
    });
    self.box_SoundModifier_v2_168 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1295800716");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_168_Started,
    });
    self.box_Switch_80 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1312631305");
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
                [0] = self.f_box_Switch_80_Output_0,
                [1] = self.f_box_Switch_80_Output_1,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_161 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1325670131");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_205 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1329636929");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_266 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_266;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_266");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1332425543");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_294 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_294;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_294");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1362393129");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_156 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1425317526");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_156_Enabled,
    });
    self.box_SoundModifier_v2_118 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1435729828");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_118_Started,
    });
    self.box_SpawnAI_33 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1486962535");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_208 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1492148193");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_181 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1507978297");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_169 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1528256767");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_311 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_311;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_311");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1543723429");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_311_Loaded,
    });
    self.box_CoopActivePlayers_1 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1558094130");
    l0:SetConnections({
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_1_PlayerAdded,
    });
    self.box_SoundModifier_v2_318 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_318;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_318");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1560016374");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_171 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1564316037");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_171_Started,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1568689204");
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
        [0] = self.f_box_MultipleOR_46_Out,
    });
    self.box_VisibilityModifier_283 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_283;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_283");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1590507992");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_283_Enabled,
    });
    self.box_PositionModifier_v2_9 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1591636116");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_9_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_9_StartOut,
    });
    self.box_PositionModifier_v2_36 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1591983836");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_36_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_36_StartOut,
    });
    self.box_SoundModifier_v2_309 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_309;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_309");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1638245291");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_309_Started,
    });
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1660979045");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_EntityStatusListener_29 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1687385604");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_29_Loaded,
    });
    self.box_SoundModifier_v2_317 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_317;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_317");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1688179244");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_222 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1689041460");
    l0:SetConnections({
    });
    self.box_TeleportPawns_38 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1689062900");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_38_Out,
    });
    self.box_UniversalInteractionModifier_v2_150 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1719646388");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_150_Enabled,
    });
    self.box_EntityStatusListener_37 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1722359455");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_37_Loaded,
    });
    self.box_SoundModifier_v2_250 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1736429709");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_250_Started,
    });
    self.box_OnceOnly_v3_275 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_275;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_275");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1755686822");
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
                [0] = self.f_box_OnceOnly_v3_275_Out_0,
            },
            count = 2,
        },
    });
    self.box_UniversalInteractionListener_84 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1785433380");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_84_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_84_Interacted,
    });
    self.box_EntityStatusListener_146 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1823129512");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_146_Loaded,
    });
    self.box_Music_Quest_v2_126 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1823834165");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_220 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1829939712");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_220_SomeoneNear,
    });
    self.box_SoundModifier_v2_183 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1846574127");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_183_Started,
    });
    self.box_ProximityTrigger_v3_273 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_273;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_273");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1876312875");
    l0:SetConnections({
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_273_OnOccupied,
    });
    self.box_GunsForHireSystemModifier_196 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1878347246");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_196_Disabled,
    });
    self.box_SoundModifier_v2_213 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1894106188");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_215 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1908399214");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_215_Finished,
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1908625695");
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
        [0] = self.f_box_MultipleOR_39_Out,
    });
    self.box_SpawnAI_30 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1919680381");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1956518169");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_ProximityRadiusListener_v3_301 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_301;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_301");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1965460658");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_301_SomeoneNear,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1993550149");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_Switch_68 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2005292264");
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
                [0] = self.f_box_Switch_68_Output_0,
                [1] = self.f_box_Switch_68_Output_1,
            },
            count = 2,
        },
    });
    self.box_Switch_244 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2005698644");
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
        -- Out,
        [1] = self.f_box_Switch_244_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_244_Output_0,
                [1] = self.f_box_Switch_244_Output_1,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_242 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_242;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2007573834");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_152 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2028090648");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_152_Loaded,
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2030891614");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_Switch_88 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2045570023");
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
                [0] = self.f_box_Switch_88_Output_0,
                [1] = self.f_box_Switch_88_Output_1,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_243 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2046604715");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_123 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2052958009");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_123_Started,
    });
    self.box_PositionModifier_v2_119 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2095347818");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_155 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2098845722");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_155_Enabled,
    });
    self.box_SoundModifier_v2_212 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2120385734");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_184 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2121130919");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_223 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2133365218");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_223_SomeoneNear,
    });
    self.box_SoundModifier_v2_180 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2139629504");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_180_Started,
    });
    self.box_UniversalInteractionModifier_v2_139 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2143459164");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_139_Enabled,
    });
    self.box_Delay_v5_305 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_305;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_305");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2143587055");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_305_TimeElapsed,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1513475458", "1513475458", "MIS_450_B30_graph", "In", "box_ActivityAcknowledgeGate_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_314();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1265530574", "1265530574", "MIS_450_B30_graph", "box_Simple_Node_62.Out", "box_OutputOrder_v2_314.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_194();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|139731774", "139731774", "MIS_450_B30_graph", "box_Simple_Node_62.Out", "box_OutputOrder_v2_194.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_319();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1913247077", "1913247077", "MIS_450_B30_graph", "box_Simple_Node_62.Out", "box_OutputOrder_v2_319.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_266();
    l0 = self.box_UniversalInteractionModifier_v2_266;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1206858891", "1206858891", "MIS_450_B30_graph", "box_Simple_Node_62.Out", "box_UniversalInteractionModifier_v2_266.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_301();
    l0 = self.box_ProximityRadiusListener_v3_301;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1108117497", "1108117497", "MIS_450_B30_graph", "box_Simple_Node_62.Out", "box_ProximityRadiusListener_v3_301.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_141();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1240797458", "1240797458", "MIS_450_B30_graph", "box_Simple_Node_62.Out", "box_OutputOrder_v2_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_UniversalInteractionListener_10();
    l0 = self.box_UniversalInteractionListener_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|493441117", "493441117", "MIS_450_B30_graph", "box_Simple_Node_62.Out", "box_UniversalInteractionListener_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_131_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_96();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1264634329", "1264634329", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_ParticleSystem_v3_96.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_SoundModifier_v2_180();
    l0 = self.box_SoundModifier_v2_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|77022126", "77022126", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_SoundModifier_v2_180.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_SoundModifier_v2_177();
    l0 = self.box_SoundModifier_v2_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1470562868", "1470562868", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_SoundModifier_v2_177.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_SoundModifier_v2_160();
    l0 = self.box_SoundModifier_v2_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1161687000", "1161687000", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_SoundModifier_v2_160.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_UniversalInteractionListener_69();
    l0 = self.box_UniversalInteractionListener_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|735583404", "735583404", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionListener_69.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_151();
    l0 = self.box_UniversalInteractionModifier_v2_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|913451629", "913451629", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionModifier_v2_151.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SoundModifier_v2_174();
    l0 = self.box_SoundModifier_v2_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1759827679", "1759827679", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_SoundModifier_v2_174.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_150();
    l0 = self.box_UniversalInteractionModifier_v2_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|932439809", "932439809", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionModifier_v2_150.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ParticleSystem_v3_103();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1214137845", "1214137845", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_ParticleSystem_v3_103.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_148();
    l0 = self.box_UniversalInteractionModifier_v2_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|225512590", "225512590", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionModifier_v2_148.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ShimmerModifier_v2_134();
    l0 = self.box_ShimmerModifier_v2_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1725514267", "1725514267", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_ShimmerModifier_v2_134.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ShimmerModifier_v2_135();
    l0 = self.box_ShimmerModifier_v2_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|853512234", "853512234", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_ShimmerModifier_v2_135.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionListener_105();
    l0 = self.box_UniversalInteractionListener_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1174350498", "1174350498", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionListener_105.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionListener_63();
    l0 = self.box_UniversalInteractionListener_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1123269913", "1123269913", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionListener_63.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_254();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2129335356", "2129335356", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_OutputOrder_v2_254.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_142();
    l0 = self.box_UniversalInteractionModifier_v2_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|178951668", "178951668", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionModifier_v2_142.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_153();
    l0 = self.box_UniversalInteractionModifier_v2_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|632148503", "632148503", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionModifier_v2_153.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_140();
    l0 = self.box_UniversalInteractionModifier_v2_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1151219867", "1151219867", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionModifier_v2_140.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SoundModifier_v2_183();
    l0 = self.box_SoundModifier_v2_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|99907092", "99907092", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_SoundModifier_v2_183.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_UniversalInteractionListener_97();
    l0 = self.box_UniversalInteractionListener_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|354403727", "354403727", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionListener_97.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_138();
    l0 = self.box_UniversalInteractionModifier_v2_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|81478274", "81478274", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionModifier_v2_138.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SoundModifier_v2_171();
    l0 = self.box_SoundModifier_v2_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1343697676", "1343697676", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_SoundModifier_v2_171.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_147();
    l0 = self.box_UniversalInteractionModifier_v2_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|699061897", "699061897", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionModifier_v2_147.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SoundModifier_v2_168();
    l0 = self.box_SoundModifier_v2_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1257212001", "1257212001", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_SoundModifier_v2_168.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_SoundModifier_v2_186();
    l0 = self.box_SoundModifier_v2_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1444028991", "1444028991", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_SoundModifier_v2_186.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_143();
    l0 = self.box_UniversalInteractionModifier_v2_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|666228077", "666228077", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionModifier_v2_143.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_155();
    l0 = self.box_UniversalInteractionModifier_v2_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1795298591", "1795298591", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionModifier_v2_155.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ShimmerModifier_v2_137();
    l0 = self.box_ShimmerModifier_v2_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|52323665", "52323665", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_ShimmerModifier_v2_137.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_156();
    l0 = self.box_UniversalInteractionModifier_v2_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1793350198", "1793350198", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionModifier_v2_156.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SoundModifier_v2_165();
    l0 = self.box_SoundModifier_v2_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2100666615", "2100666615", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_SoundModifier_v2_165.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_UniversalInteractionListener_84();
    l0 = self.box_UniversalInteractionListener_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1630405254", "1630405254", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionListener_84.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_139();
    l0 = self.box_UniversalInteractionModifier_v2_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1781778378", "1781778378", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionModifier_v2_139.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1553802525", "1553802525", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_OutputOrder_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_157();
    l0 = self.box_UniversalInteractionModifier_v2_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|900476741", "900476741", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionModifier_v2_157.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SoundModifier_v2_162();
    l0 = self.box_SoundModifier_v2_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|224823891", "224823891", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_SoundModifier_v2_162.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_ShimmerModifier_v2_133();
    l0 = self.box_ShimmerModifier_v2_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2023585142", "2023585142", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_ShimmerModifier_v2_133.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_154();
    l0 = self.box_UniversalInteractionModifier_v2_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|592223750", "592223750", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionModifier_v2_154.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_145();
    l0 = self.box_UniversalInteractionModifier_v2_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1185715429", "1185715429", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_UniversalInteractionModifier_v2_145.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ShimmerModifier_v2_136();
    l0 = self.box_ShimmerModifier_v2_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|633962681", "633962681", "MIS_450_B30_graph", "box_Simple_Node_131.Out", "box_ShimmerModifier_v2_136.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_238_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_201();
    l0 = self.box_SoundModifier_v2_201;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|282670513", "282670513", "MIS_450_B30_graph", "box_Simple_Node_238.Out", "box_SoundModifier_v2_201.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_ParticleSystem_v3_198();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|607963291", "607963291", "MIS_450_B30_graph", "box_Simple_Node_238.Out", "box_ParticleSystem_v3_198.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_227();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|428343014", "428343014", "MIS_450_B30_graph", "box_Simple_Node_238.Out", "box_ParticleSystem_v3_227.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_228();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1650132142", "1650132142", "MIS_450_B30_graph", "box_Simple_Node_238.Out", "box_ParticleSystem_v3_228.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_107();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1242418588", "1242418588", "MIS_450_B30_graph", "box_Simple_Node_238.Out", "box_ParticleSystem_v3_107.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_239_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_201();
    l0 = self.box_SoundModifier_v2_201;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1448846635", "1448846635", "MIS_450_B30_graph", "box_Simple_Node_239.Out", "box_SoundModifier_v2_201.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
    params = self:OnEnter_box_ParticleSystem_v3_227();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|100647079", "100647079", "MIS_450_B30_graph", "box_Simple_Node_239.Out", "box_ParticleSystem_v3_227.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_198();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1497810714", "1497810714", "MIS_450_B30_graph", "box_Simple_Node_239.Out", "box_ParticleSystem_v3_198.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_107();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|523426009", "523426009", "MIS_450_B30_graph", "box_Simple_Node_239.Out", "box_ParticleSystem_v3_107.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_228();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1896030178", "1896030178", "MIS_450_B30_graph", "box_Simple_Node_239.Out", "box_ParticleSystem_v3_228.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_241_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_236();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|65629247", "65629247", "MIS_450_B30_graph", "box_Simple_Node_241.Out", "box_ParticleSystem_v3_236.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_230();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1086406761", "1086406761", "MIS_450_B30_graph", "box_Simple_Node_241.Out", "box_ParticleSystem_v3_230.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_234();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1107966211", "1107966211", "MIS_450_B30_graph", "box_Simple_Node_241.Out", "box_ParticleSystem_v3_234.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_SoundModifier_v2_242();
    l0 = self.box_SoundModifier_v2_242;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|970581791", "970581791", "MIS_450_B30_graph", "box_Simple_Node_241.Out", "box_SoundModifier_v2_242.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_ParticleSystem_v3_233();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|44237910", "44237910", "MIS_450_B30_graph", "box_Simple_Node_241.Out", "box_ParticleSystem_v3_233.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_235();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|690846165", "690846165", "MIS_450_B30_graph", "box_Simple_Node_241.Out", "box_ParticleSystem_v3_235.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_240_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_242();
    l0 = self.box_SoundModifier_v2_242;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1342408755", "1342408755", "MIS_450_B30_graph", "box_Simple_Node_240.Out", "box_SoundModifier_v2_242.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
    params = self:OnEnter_box_ParticleSystem_v3_236();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1749512441", "1749512441", "MIS_450_B30_graph", "box_Simple_Node_240.Out", "box_ParticleSystem_v3_236.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_235();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|95150382", "95150382", "MIS_450_B30_graph", "box_Simple_Node_240.Out", "box_ParticleSystem_v3_235.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_234();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|218118788", "218118788", "MIS_450_B30_graph", "box_Simple_Node_240.Out", "box_ParticleSystem_v3_234.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_230();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1805399340", "1805399340", "MIS_450_B30_graph", "box_Simple_Node_240.Out", "box_ParticleSystem_v3_230.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_233();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1952914454", "1952914454", "MIS_450_B30_graph", "box_Simple_Node_240.Out", "box_ParticleSystem_v3_233.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_4();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|142263910", "142263910", "MIS_450_B30_graph", "box_Simple_Node_74.Out", "box_Compare_Integers_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Compare_Integers_77();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1472787797", "1472787797", "MIS_450_B30_graph", "box_Simple_Node_74.Out", "box_Compare_Integers_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Compare_Integers_72();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|690721648", "690721648", "MIS_450_B30_graph", "box_Simple_Node_74.Out", "box_Compare_Integers_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_129_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_122();
    l0 = self.box_SoundModifier_v2_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1151426977", "1151426977", "MIS_450_B30_graph", "box_Simple_Node_129.Out", "box_SoundModifier_v2_122.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_279_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_56();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2084986436", "2084986436", "MIS_450_B30_graph", "box_Simple_Node_279.Out", "box_ParticleSystem_v3_56.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_267();
    l0 = self.box_UniversalInteractionModifier_v2_267;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1807564375", "1807564375", "MIS_450_B30_graph", "box_Simple_Node_279.Out", "box_UniversalInteractionModifier_v2_267.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ParticleSystem_v3_274();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|758616028", "758616028", "MIS_450_B30_graph", "box_Simple_Node_279.Out", "box_ParticleSystem_v3_274.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_278_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_268();
    l0 = self.box_UniversalInteractionModifier_v2_268;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|489066825", "489066825", "MIS_450_B30_graph", "box_Simple_Node_278.Out", "box_UniversalInteractionModifier_v2_268.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ParticleSystem_v3_274();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1908375240", "1908375240", "MIS_450_B30_graph", "box_Simple_Node_278.Out", "box_ParticleSystem_v3_274.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_56();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1269559328", "1269559328", "MIS_450_B30_graph", "box_Simple_Node_278.Out", "box_ParticleSystem_v3_56.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_105_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_137();
    l0 = self.box_UniversalInteractionListener_105;
    l1 = self.box_ShimmerModifier_v2_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1887719400", "1887719400", "MIS_450_B30_graph", "box_UniversalInteractionListener_105.Enabled", "box_ShimmerModifier_v2_137.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_105_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_99();
    l0 = self.box_UniversalInteractionListener_105;
    l1 = self.box_Switch_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|761376719", "761376719", "MIS_450_B30_graph", "box_UniversalInteractionListener_105.Interacted", "box_Switch_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_103_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_101();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|858006108", "858006108", "MIS_450_B30_graph", "box_ParticleSystem_v3_103.Started", "box_IntegerArithmetics_v2_101.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_186_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_187();
    l0 = self.box_SoundModifier_v2_186;
    l1 = self.box_SoundModifier_v2_187;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|54139601", "54139601", "MIS_450_B30_graph", "box_SoundModifier_v2_186.Started", "box_SoundModifier_v2_187.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Print_v2_85_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|758225113", "758225113", "MIS_450_B30_graph", "box_Print_v2_85.PrintedToScreen", "box_Simple_Node_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_25_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|95932103", "95932103", "MIS_450_B30_graph", "box_ParticleSystem_v3_25.Started", "box_Delay_v5_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Integers_77_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_239();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|51644224", "51644224", "MIS_450_B30_graph", "box_Compare_Integers_77.A_eq_B", "box_Simple_Node_239.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_77_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_238();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|608237184", "608237184", "MIS_450_B30_graph", "box_Compare_Integers_77.A_lt_B", "box_Simple_Node_238.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_165_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_166();
    l0 = self.box_SoundModifier_v2_165;
    l1 = self.box_SoundModifier_v2_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1186171606", "1186171606", "MIS_450_B30_graph", "box_SoundModifier_v2_165.Started", "box_SoundModifier_v2_166.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_207_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_69();
    l0 = self.box_UniversalInteractionListener_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1258657928", "1258657928", "MIS_450_B30_graph", "box_OutputOrder_v2_207.Out", "box_UniversalInteractionListener_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_207_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_208();
    l0 = self.box_SoundModifier_v2_208;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1433724913", "1433724913", "MIS_450_B30_graph", "box_OutputOrder_v2_207.Out", "box_SoundModifier_v2_208.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_70_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_66();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|297096009", "297096009", "MIS_450_B30_graph", "box_ParticleSystem_v3_70.Started", "box_IntegerArithmetics_v2_66.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_206_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_311();
    l0 = self.box_EntityStatusListener_311;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|492696488", "492696488", "MIS_450_B30_graph", "box_OutputOrder_v2_206.Out", "box_EntityStatusListener_311.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_206_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_63();
    l0 = self.box_UniversalInteractionListener_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|792403944", "792403944", "MIS_450_B30_graph", "box_OutputOrder_v2_206.Out", "box_UniversalInteractionListener_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_5();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1956840283", "1956840283", "MIS_450_B30_graph", "box_ActivityInitialized_2.Out", "box_GetPlayerGroup_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_284_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_294();
    l0 = self.box_SoundModifier_v2_284;
    l1 = self.box_SoundModifier_v2_294;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1702401393", "1702401393", "MIS_450_B30_graph", "box_SoundModifier_v2_284.Started", "box_SoundModifier_v2_294.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_116_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_318();
    l0 = self.box_SoundModifier_v2_116;
    l1 = self.box_SoundModifier_v2_318;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|663246131", "663246131", "MIS_450_B30_graph", "box_SoundModifier_v2_116.Started", "box_SoundModifier_v2_318.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_125_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_131();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|325323992", "325323992", "MIS_450_B30_graph", "box_OutputOrder_v2_125.Out", "box_Simple_Node_131.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|189784914", "189784914", "MIS_450_B30_graph", "box_OutputOrder_v2_125.Out", "box_ActivityEnd_3.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_86_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_90();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1181704551", "1181704551", "MIS_450_B30_graph", "box_ParticleSystem_v3_86.Stopped", "box_ParticleSystem_v3_90.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_290_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_282();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|45210110", "45210110", "MIS_450_B30_graph", "box_SoundPointModifier_290.Stopped", "box_SoundPointModifier_282.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_151_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_211();
    l0 = self.box_UniversalInteractionModifier_v2_151;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|911551062", "911551062", "MIS_450_B30_graph", "box_UniversalInteractionModifier_v2_151.Enabled", "box_OutputOrder_v2_211.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_142_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_179();
    l0 = self.box_UniversalInteractionModifier_v2_142;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|540177739", "540177739", "MIS_450_B30_graph", "box_UniversalInteractionModifier_v2_142.Enabled", "box_OutputOrder_v2_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_305();
    l0 = self.box_Delay_v5_305;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|18855408", "18855408", "MIS_450_B30_graph", "box_OutputOrder_v2_58.Out", "box_Delay_v5_305.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HACK_DisplayHackHint_61();
    l0 = self.box_HACK_DisplayHackHint_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|444199847", "444199847", "MIS_450_B30_graph", "box_OutputOrder_v2_58.Out", "box_HACK_DisplayHackHint_61.ClearText", clone:GetLuaBox(), l0:GetLuaBox());
    -- ClearText
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_214_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_105();
    l0 = self.box_UniversalInteractionListener_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1398082020", "1398082020", "MIS_450_B30_graph", "box_OutputOrder_v2_214.Out", "box_UniversalInteractionListener_105.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_214_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_213();
    l0 = self.box_SoundModifier_v2_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|694099839", "694099839", "MIS_450_B30_graph", "box_OutputOrder_v2_214.Out", "box_SoundModifier_v2_213.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1171379268", "1171379268", "MIS_450_B30_graph", "box_OutputOrder_v2_11.Out", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|521054314", "521054314", "MIS_450_B30_graph", "box_OutputOrder_v2_11.Out", "box_OutputOrder_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_29();
    l0 = self.box_EntityStatusListener_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|155991951", "155991951", "MIS_450_B30_graph", "box_OutputOrder_v2_11.Out", "box_EntityStatusListener_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_209_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_84();
    l0 = self.box_UniversalInteractionListener_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1451981750", "1451981750", "MIS_450_B30_graph", "box_OutputOrder_v2_209.Out", "box_UniversalInteractionListener_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_209_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_210();
    l0 = self.box_SoundModifier_v2_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|255159936", "255159936", "MIS_450_B30_graph", "box_OutputOrder_v2_209.Out", "box_SoundModifier_v2_210.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_307_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_261();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|93600731", "93600731", "MIS_450_B30_graph", "box_OutputOrder_v2_307.Out", "box_ParticleSystem_v3_261.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_307_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_118();
    l0 = self.box_SoundModifier_v2_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1975930442", "1975930442", "MIS_450_B30_graph", "box_OutputOrder_v2_307.Out", "box_SoundModifier_v2_118.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_19();
    l0 = self.box_PositionModifier_v2_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1724653140", "1724653140", "MIS_450_B30_graph", "box_OutputOrder_v2_20.Out", "box_PositionModifier_v2_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_21();
    l0 = self.box_PositionModifier_v2_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2048848446", "2048848446", "MIS_450_B30_graph", "box_OutputOrder_v2_20.Out", "box_PositionModifier_v2_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_273();
    l0 = self.box_ProximityTrigger_v3_273;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|144920661", "144920661", "MIS_450_B30_graph", "box_OutputOrder_v2_20.Out", "box_ProximityTrigger_v3_273.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_67_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_65();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|328744702", "328744702", "MIS_450_B30_graph", "box_ParticleSystem_v3_67.Stopped", "box_ParticleSystem_v3_65.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_15();
    l0 = self.box_PositionModifier_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1341645900", "1341645900", "MIS_450_B30_graph", "box_OutputOrder_v2_23.Out", "box_PositionModifier_v2_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|374426495", "374426495", "MIS_450_B30_graph", "box_OutputOrder_v2_23.Out", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_191_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_191_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_219();
    l0 = self.box_CharacterLoadedIdListener_v2_191;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1982049312", "1982049312", "MIS_450_B30_graph", "box_CharacterLoadedIdListener_v2_191.LoadedIdReceived", "box_OutputOrder_v2_219.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_192_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_129();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1532520966", "1532520966", "MIS_450_B30_graph", "box_OutputOrder_v2_192.Out", "box_Simple_Node_129.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_192_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2119027994", "2119027994", "MIS_450_B30_graph", "box_OutputOrder_v2_192.Out", "box_Delay_v5_35.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UniversalInteractionListener_69_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_133();
    l0 = self.box_UniversalInteractionListener_69;
    l1 = self.box_ShimmerModifier_v2_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2144566379", "2144566379", "MIS_450_B30_graph", "box_UniversalInteractionListener_69.Enabled", "box_ShimmerModifier_v2_133.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_69_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_68();
    l0 = self.box_UniversalInteractionListener_69;
    l1 = self.box_Switch_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|37543320", "37543320", "MIS_450_B30_graph", "box_UniversalInteractionListener_69.Interacted", "box_Switch_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_28_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_73();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2113708685", "2113708685", "MIS_450_B30_graph", "box_IntegerArithmetics_v2_28.Out", "box_Print_v2_73.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_158_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_157();
    l0 = self.box_EntityStatusListener_158;
    l1 = self.box_UniversalInteractionModifier_v2_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1427777278", "1427777278", "MIS_450_B30_graph", "box_EntityStatusListener_158.Loaded", "box_UniversalInteractionModifier_v2_157.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_55_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_276();
    l0 = self.box_OnceOnly_v3_55;
    l1 = self.box_SoundModifier_v2_276;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|459939181", "459939181", "MIS_450_B30_graph", "box_OnceOnly_v3_55.Out", "box_SoundModifier_v2_276.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_287_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_293();
    l0 = self.box_VisibilityModifier_287;
    l1 = self.box_SoundModifier_v2_293;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|400216892", "400216892", "MIS_450_B30_graph", "box_VisibilityModifier_287.Disabled", "box_SoundModifier_v2_293.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionListener_10_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_310();
    l0 = self.box_UniversalInteractionListener_10;
    l1 = self.box_SoundModifier_v2_310;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1157417549", "1157417549", "MIS_450_B30_graph", "box_UniversalInteractionListener_10.Enabled", "box_SoundModifier_v2_310.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionListener_10_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_244();
    l0 = self.box_UniversalInteractionListener_10;
    l1 = self.box_Switch_244;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|181598158", "181598158", "MIS_450_B30_graph", "box_UniversalInteractionListener_10.Interacted", "box_Switch_244.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_91_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_153();
    l0 = self.box_Switch_91;
    l1 = self.box_UniversalInteractionModifier_v2_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1709499191", "1709499191", "MIS_450_B30_graph", "box_Switch_91.Output", "box_UniversalInteractionModifier_v2_153.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_91_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_154();
    l0 = self.box_Switch_91;
    l1 = self.box_UniversalInteractionModifier_v2_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1194363389", "1194363389", "MIS_450_B30_graph", "box_Switch_91.Output", "box_UniversalInteractionModifier_v2_154.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_143_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_167();
    l0 = self.box_UniversalInteractionModifier_v2_143;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|970341257", "970341257", "MIS_450_B30_graph", "box_UniversalInteractionModifier_v2_143.Enabled", "box_OutputOrder_v2_167.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_24_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_25();
    l0 = self.box_Delay_v5_24;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1042289302", "1042289302", "MIS_450_B30_graph", "box_Delay_v5_24.TimeElapsed", "box_ParticleSystem_v3_25.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_196();
    l0 = self.box_MultipleOR_6;
    l1 = self.box_GunsForHireSystemModifier_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|854998462", "854998462", "MIS_450_B30_graph", "box_MultipleOR_6.Out", "box_GunsForHireSystemModifier_196.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_162_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_161();
    l0 = self.box_SoundModifier_v2_162;
    l1 = self.box_SoundModifier_v2_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1882438222", "1882438222", "MIS_450_B30_graph", "box_SoundModifier_v2_162.Started", "box_SoundModifier_v2_161.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_149_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_150();
    l0 = self.box_EntityStatusListener_149;
    l1 = self.box_UniversalInteractionModifier_v2_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1076768700", "1076768700", "MIS_450_B30_graph", "box_EntityStatusListener_149.Loaded", "box_UniversalInteractionModifier_v2_150.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_99_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_156();
    l0 = self.box_Switch_99;
    l1 = self.box_UniversalInteractionModifier_v2_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|312100439", "312100439", "MIS_450_B30_graph", "box_Switch_99.Output", "box_UniversalInteractionModifier_v2_156.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_99_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_155();
    l0 = self.box_Switch_99;
    l1 = self.box_UniversalInteractionModifier_v2_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1899835755", "1899835755", "MIS_450_B30_graph", "box_Switch_99.Output", "box_UniversalInteractionModifier_v2_155.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_177_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_178();
    l0 = self.box_SoundModifier_v2_177;
    l1 = self.box_SoundModifier_v2_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|587653715", "587653715", "MIS_450_B30_graph", "box_SoundModifier_v2_177.Started", "box_SoundModifier_v2_178.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_16();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1211418112", "1211418112", "MIS_450_B30_graph", "box_OutputOrder_v2_18.Out", "box_ParticleSystem_v3_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_13();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1691603588", "1691603588", "MIS_450_B30_graph", "box_OutputOrder_v2_18.Out", "box_ParticleSystem_v3_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_26();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|676327142", "676327142", "MIS_450_B30_graph", "box_OutputOrder_v2_18.Out", "box_ParticleSystem_v3_26.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestTutorial_v3_277_OnDisplayed()
    local l0, l1;
    l0 = self.box_RequestTutorial_v3_277;
    l1 = self.box_MultipleOR_300;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1412932597", "1412932597", "MIS_450_B30_graph", "box_RequestTutorial_v3_277.OnDisplayed", "box_MultipleOR_300.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_RequestTutorial_v3_277_OnHidden()
    local l0, l1;
    l0 = self.box_RequestTutorial_v3_277;
    l1 = self.box_MultipleOR_300;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1548669002", "1548669002", "MIS_450_B30_graph", "box_RequestTutorial_v3_277.OnHidden", "box_MultipleOR_300.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_RequestTutorial_v3_277_Out()
    local l0, l1;
    l0 = self.box_RequestTutorial_v3_277;
    l1 = self.box_MultipleOR_300;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1703106936", "1703106936", "MIS_450_B30_graph", "box_RequestTutorial_v3_277.Out", "box_MultipleOR_300.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestTutorial_v3_277_RequestFailure()
    local l0, l1;
    l0 = self.box_RequestTutorial_v3_277;
    l1 = self.box_MultipleOR_300;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|649327489", "649327489", "MIS_450_B30_graph", "box_RequestTutorial_v3_277.RequestFailure", "box_MultipleOR_300.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestTutorial_v3_277_RequestSuccess()
    local l0, l1;
    l0 = self.box_RequestTutorial_v3_277;
    l1 = self.box_MultipleOR_300;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|162219193", "162219193", "MIS_450_B30_graph", "box_RequestTutorial_v3_277.RequestSuccess", "box_MultipleOR_300.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Print_v2_104_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1254435215", "1254435215", "MIS_450_B30_graph", "box_Print_v2_104.PrintedToScreen", "box_Simple_Node_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_52_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_266();
    l0 = self.box_ShimmerModifier_v2_52;
    l1 = self.box_UniversalInteractionModifier_v2_266;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|548683818", "548683818", "MIS_450_B30_graph", "box_ShimmerModifier_v2_52.Enabled", "box_UniversalInteractionModifier_v2_266.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_286_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_295();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1386814915", "1386814915", "MIS_450_B30_graph", "box_ParticleSystem_v3_286.Stopped", "box_ParticleSystem_v3_295.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_296_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_283();
    l0 = self.box_VisibilityModifier_283;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|548113473", "548113473", "MIS_450_B30_graph", "box_ParticleSystem_v3_296.Started", "box_VisibilityModifier_283.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_97_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_136();
    l0 = self.box_UniversalInteractionListener_97;
    l1 = self.box_ShimmerModifier_v2_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|887423695", "887423695", "MIS_450_B30_graph", "box_UniversalInteractionListener_97.Enabled", "box_ShimmerModifier_v2_136.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_97_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_91();
    l0 = self.box_UniversalInteractionListener_97;
    l1 = self.box_Switch_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2057755863", "2057755863", "MIS_450_B30_graph", "box_UniversalInteractionListener_97.Interacted", "box_Switch_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_258_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_256();
    l0 = self.box_Delay_v5_258;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1634135211", "1634135211", "MIS_450_B30_graph", "box_Delay_v5_258.TimeElapsed", "box_ParticleSystem_v3_256.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_130();
    l0 = self.box_ShimmerModifier_v2_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1781542655", "1781542655", "MIS_450_B30_graph", "box_OutputOrder_v2_51.Out", "box_ShimmerModifier_v2_130.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_52();
    l0 = self.box_ShimmerModifier_v2_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|474449758", "474449758", "MIS_450_B30_graph", "box_OutputOrder_v2_51.Out", "box_ShimmerModifier_v2_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_138_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_163();
    l0 = self.box_UniversalInteractionModifier_v2_138;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|132874704", "132874704", "MIS_450_B30_graph", "box_UniversalInteractionModifier_v2_138.Enabled", "box_OutputOrder_v2_163.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_96_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_95();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|242814872", "242814872", "MIS_450_B30_graph", "box_ParticleSystem_v3_96.Started", "box_IntegerArithmetics_v2_95.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_179_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_67();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1458432965", "1458432965", "MIS_450_B30_graph", "box_OutputOrder_v2_179.Out", "box_ParticleSystem_v3_67.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_179_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_177();
    l0 = self.box_SoundModifier_v2_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1978924489", "1978924489", "MIS_450_B30_graph", "box_OutputOrder_v2_179.Out", "box_SoundModifier_v2_177.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_141_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_267();
    l0 = self.box_UniversalInteractionModifier_v2_267;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|434837334", "434837334", "MIS_450_B30_graph", "box_OutputOrder_v2_141.Out", "box_UniversalInteractionModifier_v2_267.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_141_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_268();
    l0 = self.box_UniversalInteractionModifier_v2_268;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|414920733", "414920733", "MIS_450_B30_graph", "box_OutputOrder_v2_141.Out", "box_UniversalInteractionModifier_v2_268.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_89_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_76();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1786159066", "1786159066", "MIS_450_B30_graph", "box_ParticleSystem_v3_89.Stopped", "box_ParticleSystem_v3_76.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_66_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_66_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_71();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2112784066", "2112784066", "MIS_450_B30_graph", "box_IntegerArithmetics_v2_66.Out", "box_Print_v2_71.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_148_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_182();
    l0 = self.box_UniversalInteractionModifier_v2_148;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|696242188", "696242188", "MIS_450_B30_graph", "box_UniversalInteractionModifier_v2_148.Enabled", "box_OutputOrder_v2_182.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_308_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_316();
    l0 = self.box_SoundModifier_v2_308;
    l1 = self.box_SoundModifier_v2_316;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|459273026", "459273026", "MIS_450_B30_graph", "box_SoundModifier_v2_308.Started", "box_SoundModifier_v2_316.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_154_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_185();
    l0 = self.box_UniversalInteractionModifier_v2_154;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1388555022", "1388555022", "MIS_450_B30_graph", "box_UniversalInteractionModifier_v2_154.Enabled", "box_OutputOrder_v2_185.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_50_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_54();
    l0 = self.box_ProximityRadiusListener_v3_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|588803571", "588803571", "MIS_450_B30_graph", "box_ActivityObjectiveMarkerModifier_v3_50.Enabled", "box_ProximityRadiusListener_v3_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_174_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_175();
    l0 = self.box_SoundModifier_v2_174;
    l1 = self.box_SoundModifier_v2_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|564755740", "564755740", "MIS_450_B30_graph", "box_SoundModifier_v2_174.Started", "box_SoundModifier_v2_175.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_140_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_206();
    l0 = self.box_UniversalInteractionModifier_v2_140;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2058672178", "2058672178", "MIS_450_B30_graph", "box_UniversalInteractionModifier_v2_140.Enabled", "box_OutputOrder_v2_206.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_47();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|300563337", "300563337", "MIS_450_B30_graph", "box_OutputOrder_v2_48.Out", "box_AddActivityObjective_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1182324114", "1182324114", "MIS_450_B30_graph", "box_OutputOrder_v2_48.Out", "box_OutputOrder_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_9();
    l0 = self.box_PositionModifier_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1841872338", "1841872338", "MIS_450_B30_graph", "box_OutputOrder_v2_48.Out", "box_PositionModifier_v2_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1125747929", "1125747929", "MIS_450_B30_graph", "box_OutputOrder_v2_48.Out", "box_CoopActivePlayers_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_SoundModifier_v2_160_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_159();
    l0 = self.box_SoundModifier_v2_160;
    l1 = self.box_SoundModifier_v2_159;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1966313851", "1966313851", "MIS_450_B30_graph", "box_SoundModifier_v2_160.Started", "box_SoundModifier_v2_159.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_170_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_86();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1968139576", "1968139576", "MIS_450_B30_graph", "box_OutputOrder_v2_170.Out", "box_ParticleSystem_v3_86.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_170_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_168();
    l0 = self.box_SoundModifier_v2_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1550729126", "1550729126", "MIS_450_B30_graph", "box_OutputOrder_v2_170.Out", "box_SoundModifier_v2_168.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_257_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|605980113", "605980113", "MIS_450_B30_graph", "box_OutputOrder_v2_257.Out", "box_Delay_v5_41.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_257_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_258();
    l0 = self.box_Delay_v5_258;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1330783492", "1330783492", "MIS_450_B30_graph", "box_OutputOrder_v2_257.Out", "box_Delay_v5_258.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_257_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_273();
    l0 = self.box_ProximityTrigger_v3_273;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1023269278", "1023269278", "MIS_450_B30_graph", "box_OutputOrder_v2_257.Out", "box_ProximityTrigger_v3_273.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_215();
    l0 = self.box_Delay_v5_35;
    l1 = self.box_SoundModifier_v2_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|205982604", "205982604", "MIS_450_B30_graph", "box_Delay_v5_35.TimeElapsed", "box_SoundModifier_v2_215.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_217_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_217;
    l1 = self.box_OnceOnly_v3_275;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|919687347", "919687347", "MIS_450_B30_graph", "box_Delay_v5_217.TimeElapsed", "box_OnceOnly_v3_275.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_45_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2001820218", "2001820218", "MIS_450_B30_graph", "box_Compare_Integers_45.A_eq_B", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_195_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_190();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2039565746", "2039565746", "MIS_450_B30_graph", "box_OutputOrder_v2_195.Out", "box_AddActivityObjective_v2_190.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_27_Out()
    local l0;
    self:OnExit_box_IntegerArithmetics_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|798161276", "798161276", "MIS_450_B30_graph", "box_IntegerArithmetics_v2_27.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_40_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_40_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_38();
    l0 = self.box_TeleportPawns_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|483837784", "483837784", "MIS_450_B30_graph", "box_GetPlayerGroup_v2_40.Out", "box_TeleportPawns_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_15_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_PositionModifier_v2_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1794019224", "1794019224", "MIS_450_B30_graph", "box_PositionModifier_v2_15.Done", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_15_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_257();
    l0 = self.box_PositionModifier_v2_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1508455461", "1508455461", "MIS_450_B30_graph", "box_PositionModifier_v2_15.StartOut", "box_OutputOrder_v2_257.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_102();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2050560352", "2050560352", "MIS_450_B30_graph", "box_OutputOrder_v2_176.Out", "box_ParticleSystem_v3_102.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_174();
    l0 = self.box_SoundModifier_v2_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1155535696", "1155535696", "MIS_450_B30_graph", "box_OutputOrder_v2_176.Out", "box_SoundModifier_v2_174.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_153_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_173();
    l0 = self.box_UniversalInteractionModifier_v2_153;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|473778829", "473778829", "MIS_450_B30_graph", "box_UniversalInteractionModifier_v2_153.Enabled", "box_OutputOrder_v2_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_54_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_195();
    l0 = self.box_ProximityRadiusListener_v3_54;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|530958479", "530958479", "MIS_450_B30_graph", "box_ProximityRadiusListener_v3_54.AllNear", "box_OutputOrder_v2_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|489490638", "489490638", "MIS_450_B30_graph", "box_OutputOrder_v2_83.Out", "box_OutputOrder_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_293_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_285();
    l0 = self.box_SoundModifier_v2_293;
    l1 = self.box_SoundModifier_v2_285;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1161128596", "1161128596", "MIS_450_B30_graph", "box_SoundModifier_v2_293.Started", "box_SoundModifier_v2_285.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_122_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_123();
    l0 = self.box_SoundModifier_v2_122;
    l1 = self.box_SoundModifier_v2_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1060530151", "1060530151", "MIS_450_B30_graph", "box_SoundModifier_v2_122.Started", "box_SoundModifier_v2_123.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_144();
    l0 = self.box_EntityStatusListener_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|198538525", "198538525", "MIS_450_B30_graph", "box_OutputOrder_v2_75.Out", "box_EntityStatusListener_144.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_146();
    l0 = self.box_EntityStatusListener_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1773451345", "1773451345", "MIS_450_B30_graph", "box_OutputOrder_v2_75.Out", "box_EntityStatusListener_146.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_149();
    l0 = self.box_EntityStatusListener_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|102581815", "102581815", "MIS_450_B30_graph", "box_OutputOrder_v2_75.Out", "box_EntityStatusListener_149.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_152();
    l0 = self.box_EntityStatusListener_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|99594557", "99594557", "MIS_450_B30_graph", "box_OutputOrder_v2_75.Out", "box_EntityStatusListener_152.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_158();
    l0 = self.box_EntityStatusListener_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|715787870", "715787870", "MIS_450_B30_graph", "box_OutputOrder_v2_75.Out", "box_EntityStatusListener_158.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_285_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_284();
    l0 = self.box_SoundModifier_v2_285;
    l1 = self.box_SoundModifier_v2_284;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|650359399", "650359399", "MIS_450_B30_graph", "box_SoundModifier_v2_285.Started", "box_SoundModifier_v2_284.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_5_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_281();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|690490146", "690490146", "MIS_450_B30_graph", "box_GetPlayerGroup_v2_5.Out", "box_OutputOrder_v2_281.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_147_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_207();
    l0 = self.box_UniversalInteractionModifier_v2_147;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1402082423", "1402082423", "MIS_450_B30_graph", "box_UniversalInteractionModifier_v2_147.Enabled", "box_OutputOrder_v2_207.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_101_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_101_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_104();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|397405133", "397405133", "MIS_450_B30_graph", "box_IntegerArithmetics_v2_101.Out", "box_Print_v2_104.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_90_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_87();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|346872650", "346872650", "MIS_450_B30_graph", "box_ParticleSystem_v3_90.Started", "box_IntegerArithmetics_v2_87.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_72_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_125();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1383918165", "1383918165", "MIS_450_B30_graph", "box_Compare_Integers_72.A_eq_B", "box_OutputOrder_v2_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_64_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_70();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|269629944", "269629944", "MIS_450_B30_graph", "box_ParticleSystem_v3_64.Stopped", "box_ParticleSystem_v3_70.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_12();
    l0 = self.box_StaticBreakableListener_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|93637214", "93637214", "MIS_450_B30_graph", "box_OutputOrder_v2_8.Out", "box_StaticBreakableListener_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_10();
    l0 = self.box_UniversalInteractionListener_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|46789641", "46789641", "MIS_450_B30_graph", "box_OutputOrder_v2_8.Out", "box_UniversalInteractionListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_260();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1622777212", "1622777212", "MIS_450_B30_graph", "box_OutputOrder_v2_8.Out", "box_ParticleSystem_v3_260.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_271_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_271_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_272();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1894155259", "1894155259", "MIS_450_B30_graph", "box_GetLocalPlayer_v2_271.Out", "box_HealthModifier_v2_272.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_63_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_134();
    l0 = self.box_UniversalInteractionListener_63;
    l1 = self.box_ShimmerModifier_v2_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1084969693", "1084969693", "MIS_450_B30_graph", "box_UniversalInteractionListener_63.Enabled", "box_ShimmerModifier_v2_134.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_63_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_80();
    l0 = self.box_UniversalInteractionListener_63;
    l1 = self.box_Switch_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2068938591", "2068938591", "MIS_450_B30_graph", "box_UniversalInteractionListener_63.Interacted", "box_Switch_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_216_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_221();
    l0 = self.box_OnceOnly_v3_216;
    l1 = self.box_RequestPhoneCall_v2_221;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1877032265", "1877032265", "MIS_450_B30_graph", "box_OnceOnly_v3_216.Out", "box_RequestPhoneCall_v2_221.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_157_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_214();
    l0 = self.box_UniversalInteractionModifier_v2_157;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1334189055", "1334189055", "MIS_450_B30_graph", "box_UniversalInteractionModifier_v2_157.Enabled", "box_OutputOrder_v2_214.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_194_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_224();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|953622874", "953622874", "MIS_450_B30_graph", "box_OutputOrder_v2_194.Out", "box_ActivityObjectiveMarkerModifier_v3_224.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_194_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_189();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1387292883", "1387292883", "MIS_450_B30_graph", "box_OutputOrder_v2_194.Out", "box_ActivityObjectiveMarkerModifier_v3_189.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_232_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_232;
    l1 = self.box_OnceOnly_v3_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1790047327", "1790047327", "MIS_450_B30_graph", "box_ProximityRadiusListener_v3_232.SomeoneNear", "box_OnceOnly_v3_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_319_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_274();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|614035764", "614035764", "MIS_450_B30_graph", "box_OutputOrder_v2_319.Out", "box_ParticleSystem_v3_274.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_319_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_261();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1486935640", "1486935640", "MIS_450_B30_graph", "box_OutputOrder_v2_319.Out", "box_ParticleSystem_v3_261.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_100_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_103();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2133153690", "2133153690", "MIS_450_B30_graph", "box_ParticleSystem_v3_100.Stopped", "box_ParticleSystem_v3_103.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_167_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_64();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1581362595", "1581362595", "MIS_450_B30_graph", "box_OutputOrder_v2_167.Out", "box_ParticleSystem_v3_64.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_167_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_165();
    l0 = self.box_SoundModifier_v2_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2037382658", "2037382658", "MIS_450_B30_graph", "box_OutputOrder_v2_167.Out", "box_SoundModifier_v2_165.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_GunsForHireSystemModifier_197_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_40();
    l0 = self.box_GunsForHireSystemModifier_197;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|799072787", "799072787", "MIS_450_B30_graph", "box_GunsForHireSystemModifier_197.Disabled", "box_GetPlayerGroup_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_12_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_StaticBreakableListener_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1927848059", "1927848059", "MIS_450_B30_graph", "box_StaticBreakableListener_12.Enabled", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_12_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_132();
    l0 = self.box_StaticBreakableListener_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|809906339", "809906339", "MIS_450_B30_graph", "box_StaticBreakableListener_12.OnBreak", "box_OutputOrder_v2_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_144_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_140();
    l0 = self.box_EntityStatusListener_144;
    l1 = self.box_UniversalInteractionModifier_v2_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|670333319", "670333319", "MIS_450_B30_graph", "box_EntityStatusListener_144.Loaded", "box_UniversalInteractionModifier_v2_140.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_49_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_62();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|171344698", "171344698", "MIS_450_B30_graph", "box_ParticleSystem_v3_49.Stopped", "box_Simple_Node_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_106_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_101();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1293358935", "1293358935", "MIS_450_B30_graph", "box_ParticleSystem_v3_106.Started", "box_IntegerArithmetics_v2_101.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_145_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_170();
    l0 = self.box_UniversalInteractionModifier_v2_145;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|596182473", "596182473", "MIS_450_B30_graph", "box_UniversalInteractionModifier_v2_145.Enabled", "box_OutputOrder_v2_170.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_4_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_240();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1077057478", "1077057478", "MIS_450_B30_graph", "box_Compare_Integers_4.A_eq_B", "box_Simple_Node_240.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_4_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_241();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|606534205", "606534205", "MIS_450_B30_graph", "box_Compare_Integers_4.A_lt_B", "box_Simple_Node_241.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_65_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_66();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1238684004", "1238684004", "MIS_450_B30_graph", "box_ParticleSystem_v3_65.Started", "box_IntegerArithmetics_v2_66.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_50();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1635645910", "1635645910", "MIS_450_B30_graph", "box_AddActivityObjective_v2_47.Out", "box_ActivityObjectiveMarkerModifier_v3_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_43_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_42();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1033883577", "1033883577", "MIS_450_B30_graph", "box_SoundPointModifier_43.Stopped", "box_SoundPointModifier_42.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_82_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_28();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2077264730", "2077264730", "MIS_450_B30_graph", "box_ParticleSystem_v3_82.Started", "box_IntegerArithmetics_v2_28.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_79();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1706695382", "1706695382", "MIS_450_B30_graph", "box_OutputOrder_v2_163.Out", "box_ParticleSystem_v3_79.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_160();
    l0 = self.box_SoundModifier_v2_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|739366917", "739366917", "MIS_450_B30_graph", "box_OutputOrder_v2_163.Out", "box_SoundModifier_v2_160.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_292_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_290();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2073179577", "2073179577", "MIS_450_B30_graph", "box_OutputOrder_v2_292.Out", "box_SoundPointModifier_290.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_292_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_291();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1246689468", "1246689468", "MIS_450_B30_graph", "box_OutputOrder_v2_292.Out", "box_ParticleSystem_v3_291.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_87_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_87_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_85();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|121183976", "121183976", "MIS_450_B30_graph", "box_IntegerArithmetics_v2_87.Out", "box_Print_v2_85.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_316_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_317();
    l0 = self.box_SoundModifier_v2_316;
    l1 = self.box_SoundModifier_v2_317;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1650489396", "1650489396", "MIS_450_B30_graph", "box_SoundModifier_v2_316.Started", "box_SoundModifier_v2_317.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_168_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_169();
    l0 = self.box_SoundModifier_v2_168;
    l1 = self.box_SoundModifier_v2_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|469282524", "469282524", "MIS_450_B30_graph", "box_SoundModifier_v2_168.Started", "box_SoundModifier_v2_169.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_80_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_138();
    l0 = self.box_Switch_80;
    l1 = self.box_UniversalInteractionModifier_v2_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1344587246", "1344587246", "MIS_450_B30_graph", "box_Switch_80.Output", "box_UniversalInteractionModifier_v2_138.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_80_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_139();
    l0 = self.box_Switch_80;
    l1 = self.box_UniversalInteractionModifier_v2_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|817840848", "817840848", "MIS_450_B30_graph", "box_Switch_80.Output", "box_UniversalInteractionModifier_v2_139.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Print_v2_73_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|488451773", "488451773", "MIS_450_B30_graph", "box_Print_v2_73.PrintedToScreen", "box_Simple_Node_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_261_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_308();
    l0 = self.box_SoundModifier_v2_308;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|426271093", "426271093", "MIS_450_B30_graph", "box_ParticleSystem_v3_261.Started", "box_SoundModifier_v2_308.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_95_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_95_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_93();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1288363532", "1288363532", "MIS_450_B30_graph", "box_IntegerArithmetics_v2_95.Out", "box_Print_v2_93.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_164_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_81();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|402666349", "402666349", "MIS_450_B30_graph", "box_OutputOrder_v2_164.Out", "box_ParticleSystem_v3_81.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_164_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_162();
    l0 = self.box_SoundModifier_v2_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2102476996", "2102476996", "MIS_450_B30_graph", "box_OutputOrder_v2_164.Out", "box_SoundModifier_v2_162.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_76_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_87();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1522542862", "1522542862", "MIS_450_B30_graph", "box_ParticleSystem_v3_76.Started", "box_IntegerArithmetics_v2_87.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_56_Paused()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_53();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|422885970", "422885970", "MIS_450_B30_graph", "box_ParticleSystem_v3_56.Paused", "box_ParticleSystem_v3_53.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_56_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_53();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|722682817", "722682817", "MIS_450_B30_graph", "box_ParticleSystem_v3_56.Started", "box_ParticleSystem_v3_53.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_100();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1805739957", "1805739957", "MIS_450_B30_graph", "box_OutputOrder_v2_188.Out", "box_ParticleSystem_v3_100.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_186();
    l0 = self.box_SoundModifier_v2_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2066487805", "2066487805", "MIS_450_B30_graph", "box_OutputOrder_v2_188.Out", "box_SoundModifier_v2_186.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_81_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_82();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|218226676", "218226676", "MIS_450_B30_graph", "box_ParticleSystem_v3_81.Stopped", "box_ParticleSystem_v3_82.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_156_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_188();
    l0 = self.box_UniversalInteractionModifier_v2_156;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|684408758", "684408758", "MIS_450_B30_graph", "box_UniversalInteractionModifier_v2_156.Enabled", "box_OutputOrder_v2_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_118_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_309();
    l0 = self.box_SoundModifier_v2_118;
    l1 = self.box_SoundModifier_v2_309;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|60611807", "60611807", "MIS_450_B30_graph", "box_SoundModifier_v2_118.Started", "box_SoundModifier_v2_309.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_255_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_278();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|101199445", "101199445", "MIS_450_B30_graph", "box_Compare_Integers_255.A_eq_B", "box_Simple_Node_278.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_255_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_279();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1359290433", "1359290433", "MIS_450_B30_graph", "box_Compare_Integers_255.A_gt_B", "box_Simple_Node_279.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_265_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_262();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1269495704", "1269495704", "MIS_450_B30_graph", "box_OutputOrder_v2_265.Out", "box_ParticleSystem_v3_262.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_265_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_263();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|215716257", "215716257", "MIS_450_B30_graph", "box_OutputOrder_v2_265.Out", "box_ParticleSystem_v3_263.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_265_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_264();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|515552799", "515552799", "MIS_450_B30_graph", "box_OutputOrder_v2_265.Out", "box_ParticleSystem_v3_264.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Print_v2_93_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|84301708", "84301708", "MIS_450_B30_graph", "box_Print_v2_93.PrintedToScreen", "box_Simple_Node_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_98_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_95();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|102390691", "102390691", "MIS_450_B30_graph", "box_ParticleSystem_v3_98.Started", "box_IntegerArithmetics_v2_95.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_281_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|181905892", "181905892", "MIS_450_B30_graph", "box_OutputOrder_v2_281.Out", "box_OutputOrder_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_281_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_289();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|302029135", "302029135", "MIS_450_B30_graph", "box_OutputOrder_v2_281.Out", "box_OutputOrder_v2_289.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_281_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_126();
    l0 = self.box_Music_Quest_v2_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1994676838", "1994676838", "MIS_450_B30_graph", "box_OutputOrder_v2_281.Out", "box_Music_Quest_v2_126.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_256_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_243();
    l0 = self.box_SoundModifier_v2_243;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|229388273", "229388273", "MIS_450_B30_graph", "box_ParticleSystem_v3_256.Started", "box_SoundModifier_v2_243.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_124_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_36();
    l0 = self.box_PositionModifier_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1345993137", "1345993137", "MIS_450_B30_graph", "box_OutputOrder_v2_124.Out", "box_PositionModifier_v2_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_124_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_120();
    l0 = self.box_PositionModifier_v2_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1132758485", "1132758485", "MIS_450_B30_graph", "box_OutputOrder_v2_124.Out", "box_PositionModifier_v2_120.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_311_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_205();
    l0 = self.box_EntityStatusListener_311;
    l1 = self.box_SoundModifier_v2_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|296385408", "296385408", "MIS_450_B30_graph", "box_EntityStatusListener_311.Loaded", "box_SoundModifier_v2_205.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_CoopActivePlayers_1_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_57();
    l0 = self.box_CoopActivePlayers_1;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1090720615", "1090720615", "MIS_450_B30_graph", "box_CoopActivePlayers_1.PlayerAdded", "box_Compare_Boolean_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_171_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_172();
    l0 = self.box_SoundModifier_v2_171;
    l1 = self.box_SoundModifier_v2_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1521607118", "1521607118", "MIS_450_B30_graph", "box_SoundModifier_v2_171.Started", "box_SoundModifier_v2_172.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_45();
    l0 = self.box_MultipleOR_46;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2085054938", "2085054938", "MIS_450_B30_graph", "box_MultipleOR_46.Out", "box_Compare_Integers_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_57_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_225();
    l0 = self.box_PositionModifier_v2_225;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1376985159", "1376985159", "MIS_450_B30_graph", "box_Compare_Boolean_57.A_is_False", "box_PositionModifier_v2_225.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_57_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_119();
    l0 = self.box_PositionModifier_v2_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|125868776", "125868776", "MIS_450_B30_graph", "box_Compare_Boolean_57.A_is_True", "box_PositionModifier_v2_119.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_VisibilityModifier_283_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_287();
    l0 = self.box_VisibilityModifier_283;
    l1 = self.box_VisibilityModifier_287;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1356554512", "1356554512", "MIS_450_B30_graph", "box_VisibilityModifier_283.Enabled", "box_VisibilityModifier_287.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_254_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_251();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|26869733", "26869733", "MIS_450_B30_graph", "box_OutputOrder_v2_254.Out", "box_ParticleSystem_v3_251.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_254_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_252();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|182990359", "182990359", "MIS_450_B30_graph", "box_OutputOrder_v2_254.Out", "box_ParticleSystem_v3_252.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_254_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_249();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|216712757", "216712757", "MIS_450_B30_graph", "box_OutputOrder_v2_254.Out", "box_ParticleSystem_v3_249.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_254_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_250();
    l0 = self.box_SoundModifier_v2_250;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1828336809", "1828336809", "MIS_450_B30_graph", "box_OutputOrder_v2_254.Out", "box_SoundModifier_v2_250.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_254_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_247();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|144695599", "144695599", "MIS_450_B30_graph", "box_OutputOrder_v2_254.Out", "box_ParticleSystem_v3_247.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_254_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_248();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2090893739", "2090893739", "MIS_450_B30_graph", "box_OutputOrder_v2_254.Out", "box_ParticleSystem_v3_248.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_254_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_245();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1156927327", "1156927327", "MIS_450_B30_graph", "box_OutputOrder_v2_254.Out", "box_ParticleSystem_v3_245.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_254_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_253();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1419410386", "1419410386", "MIS_450_B30_graph", "box_OutputOrder_v2_254.Out", "box_ParticleSystem_v3_253.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_254_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_246();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|784786976", "784786976", "MIS_450_B30_graph", "box_OutputOrder_v2_254.Out", "box_ParticleSystem_v3_246.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_9_Done()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_193();
    l0 = self.box_PositionModifier_v2_9;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1689147945", "1689147945", "MIS_450_B30_graph", "box_PositionModifier_v2_9.Done", "box_SetBoolean_v2_193.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_9_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_PositionModifier_v2_9;
    l1 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1989672561", "1989672561", "MIS_450_B30_graph", "box_PositionModifier_v2_9.StartOut", "box_Delay_v5_34.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_36_Done()
    local l0, l1;
    l0 = self.box_PositionModifier_v2_36;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|723567424", "723567424", "MIS_450_B30_graph", "box_PositionModifier_v2_36.Done", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PositionModifier_v2_36_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_43();
    l0 = self.box_PositionModifier_v2_36;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|51603540", "51603540", "MIS_450_B30_graph", "box_PositionModifier_v2_36.StartOut", "box_SoundPointModifier_43.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_26_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_49();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1282763096", "1282763096", "MIS_450_B30_graph", "box_ParticleSystem_v3_26.Stopped", "box_ParticleSystem_v3_49.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_274_Paused()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_261();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1452152371", "1452152371", "MIS_450_B30_graph", "box_ParticleSystem_v3_274.Paused", "box_ParticleSystem_v3_261.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_274_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_307();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|785981627", "785981627", "MIS_450_B30_graph", "box_ParticleSystem_v3_274.Started", "box_OutputOrder_v2_307.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_291_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_286();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|907538648", "907538648", "MIS_450_B30_graph", "box_ParticleSystem_v3_291.Stopped", "box_ParticleSystem_v3_286.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_309_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_317();
    l0 = self.box_SoundModifier_v2_309;
    l1 = self.box_SoundModifier_v2_317;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1340717009", "1340717009", "MIS_450_B30_graph", "box_SoundModifier_v2_309.Started", "box_SoundModifier_v2_317.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_Delay_v5_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|93267823", "93267823", "MIS_450_B30_graph", "box_Delay_v5_14.TimeElapsed", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_29_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = self.box_EntityStatusListener_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1745079392", "1745079392", "MIS_450_B30_graph", "box_EntityStatusListener_29.Loaded", "box_OutputOrder_v2_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_37();
    l0 = self.box_TeleportPawns_38;
    l1 = self.box_EntityStatusListener_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1967236005", "1967236005", "MIS_450_B30_graph", "box_TeleportPawns_38.Out", "box_EntityStatusListener_37.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_94_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_96();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1413453646", "1413453646", "MIS_450_B30_graph", "box_ParticleSystem_v3_94.Stopped", "box_ParticleSystem_v3_96.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_30();
    l0 = self.box_SpawnAI_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2058923602", "2058923602", "MIS_450_B30_graph", "box_OutputOrder_v2_32.Out", "box_SpawnAI_30.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_31();
    l0 = self.box_SpawnAI_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|663972343", "663972343", "MIS_450_B30_graph", "box_OutputOrder_v2_32.Out", "box_SpawnAI_31.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_33();
    l0 = self.box_SpawnAI_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|459038040", "459038040", "MIS_450_B30_graph", "box_OutputOrder_v2_32.Out", "box_SpawnAI_33.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_150_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_209();
    l0 = self.box_UniversalInteractionModifier_v2_150;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1185650131", "1185650131", "MIS_450_B30_graph", "box_UniversalInteractionModifier_v2_150.Enabled", "box_OutputOrder_v2_209.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_37_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_124();
    l0 = self.box_EntityStatusListener_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|462195608", "462195608", "MIS_450_B30_graph", "box_EntityStatusListener_37.Loaded", "box_OutputOrder_v2_124.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_27();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2146475996", "2146475996", "MIS_450_B30_graph", "box_OutputOrder_v2_132.Out", "box_IntegerArithmetics_v2_27.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_130();
    l0 = self.box_ShimmerModifier_v2_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|377957216", "377957216", "MIS_450_B30_graph", "box_OutputOrder_v2_132.Out", "box_ShimmerModifier_v2_130.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_132_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_117();
    l0 = self.box_SoundModifier_v2_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|188221807", "188221807", "MIS_450_B30_graph", "box_OutputOrder_v2_132.Out", "box_SoundModifier_v2_117.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_102_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_106();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2021205135", "2021205135", "MIS_450_B30_graph", "box_ParticleSystem_v3_102.Stopped", "box_ParticleSystem_v3_106.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_250_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_222();
    l0 = self.box_SoundModifier_v2_250;
    l1 = self.box_SoundModifier_v2_222;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1597075403", "1597075403", "MIS_450_B30_graph", "box_SoundModifier_v2_250.Started", "box_SoundModifier_v2_222.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_275_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_231();
    l0 = self.box_OnceOnly_v3_275;
    l1 = self.box_RequestPhoneCall_v2_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|591823299", "591823299", "MIS_450_B30_graph", "box_OnceOnly_v3_275.Out", "box_RequestPhoneCall_v2_231.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_193_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_193_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_192();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1024093872", "1024093872", "MIS_450_B30_graph", "box_SetBoolean_v2_193.Out", "box_OutputOrder_v2_192.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_84_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_135();
    l0 = self.box_UniversalInteractionListener_84;
    l1 = self.box_ShimmerModifier_v2_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|467190017", "467190017", "MIS_450_B30_graph", "box_UniversalInteractionListener_84.Enabled", "box_ShimmerModifier_v2_135.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_84_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_88();
    l0 = self.box_UniversalInteractionListener_84;
    l1 = self.box_Switch_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1511794823", "1511794823", "MIS_450_B30_graph", "box_UniversalInteractionListener_84.Interacted", "box_Switch_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_92_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_98();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1609138562", "1609138562", "MIS_450_B30_graph", "box_ParticleSystem_v3_92.Stopped", "box_ParticleSystem_v3_98.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_146_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_269();
    l0 = self.box_EntityStatusListener_146;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1099509456", "1099509456", "MIS_450_B30_graph", "box_EntityStatusListener_146.Loaded", "box_OutputOrder_v2_269.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_185_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_94();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1892057519", "1892057519", "MIS_450_B30_graph", "box_OutputOrder_v2_185.Out", "box_ParticleSystem_v3_94.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_185_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_183();
    l0 = self.box_SoundModifier_v2_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1862631028", "1862631028", "MIS_450_B30_graph", "box_OutputOrder_v2_185.Out", "box_SoundModifier_v2_183.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_220_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_220;
    l1 = self.box_OnceOnly_v3_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2040796176", "2040796176", "MIS_450_B30_graph", "box_ProximityRadiusListener_v3_220.SomeoneNear", "box_OnceOnly_v3_216.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SoundModifier_v2_183_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_184();
    l0 = self.box_SoundModifier_v2_183;
    l1 = self.box_SoundModifier_v2_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1633419692", "1633419692", "MIS_450_B30_graph", "box_SoundModifier_v2_183.Started", "box_SoundModifier_v2_184.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_289_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_292();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2000796834", "2000796834", "MIS_450_B30_graph", "box_OutputOrder_v2_289.Out", "box_OutputOrder_v2_292.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_289_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_296();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|94845797", "94845797", "MIS_450_B30_graph", "box_OutputOrder_v2_289.Out", "box_ParticleSystem_v3_296.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_289_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_288();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1603660693", "1603660693", "MIS_450_B30_graph", "box_OutputOrder_v2_289.Out", "box_ParticleSystem_v3_288.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_211_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_97();
    l0 = self.box_UniversalInteractionListener_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|898453600", "898453600", "MIS_450_B30_graph", "box_OutputOrder_v2_211.Out", "box_UniversalInteractionListener_97.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_211_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_212();
    l0 = self.box_SoundModifier_v2_212;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|287522980", "287522980", "MIS_450_B30_graph", "box_OutputOrder_v2_211.Out", "box_SoundModifier_v2_212.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_269_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_147();
    l0 = self.box_UniversalInteractionModifier_v2_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1317743884", "1317743884", "MIS_450_B30_graph", "box_OutputOrder_v2_269.Out", "box_UniversalInteractionModifier_v2_147.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_269_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_265();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|426431424", "426431424", "MIS_450_B30_graph", "box_OutputOrder_v2_269.Out", "box_OutputOrder_v2_265.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_273_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_271();
    l0 = self.box_ProximityTrigger_v3_273;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1866113955", "1866113955", "MIS_450_B30_graph", "box_ProximityTrigger_v3_273.OnOccupied", "box_GetLocalPlayer_v2_271.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_196_Disabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_196;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1267231679", "1267231679", "MIS_450_B30_graph", "box_GunsForHireSystemModifier_196.Disabled", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_173_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_92();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|923854219", "923854219", "MIS_450_B30_graph", "box_OutputOrder_v2_173.Out", "box_ParticleSystem_v3_92.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_173_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_171();
    l0 = self.box_SoundModifier_v2_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1696127734", "1696127734", "MIS_450_B30_graph", "box_OutputOrder_v2_173.Out", "box_SoundModifier_v2_171.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_215_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_232();
    l0 = self.box_SoundModifier_v2_215;
    l1 = self.box_ProximityRadiusListener_v3_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|222654798", "222654798", "MIS_450_B30_graph", "box_SoundModifier_v2_215.Finished", "box_ProximityRadiusListener_v3_232.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_197();
    l0 = self.box_MultipleOR_39;
    l1 = self.box_GunsForHireSystemModifier_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1770886222", "1770886222", "MIS_450_B30_graph", "box_MultipleOR_39.Out", "box_GunsForHireSystemModifier_197.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_190_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_224();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|358469453", "358469453", "MIS_450_B30_graph", "box_AddActivityObjective_v2_190.Out", "box_ActivityObjectiveMarkerModifier_v3_224.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_44_Out()
    local l0;
    self:OnExit_box_IntegerArithmetics_v2_44_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1639607222", "1639607222", "MIS_450_B30_graph", "box_IntegerArithmetics_v2_44.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1722212363", "1722212363", "MIS_450_B30_graph", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|378250564", "378250564", "MIS_450_B30_graph", "box_ActivityAcknowledgeGate_7.Reloaded", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_301_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_ProximityRadiusListener_v3_301;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|944485377", "944485377", "MIS_450_B30_graph", "box_ProximityRadiusListener_v3_301.SomeoneNear", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_79_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_78();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|677059591", "677059591", "MIS_450_B30_graph", "box_ParticleSystem_v3_79.Stopped", "box_ParticleSystem_v3_78.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_16();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1681238495", "1681238495", "MIS_450_B30_graph", "box_OutputOrder_v2_22.Out", "box_ParticleSystem_v3_16.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_13();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|845329578", "845329578", "MIS_450_B30_graph", "box_OutputOrder_v2_22.Out", "box_ParticleSystem_v3_13.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_25();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1231677562", "1231677562", "MIS_450_B30_graph", "box_OutputOrder_v2_22.Out", "box_ParticleSystem_v3_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_314_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_312();
    l0 = self.box_SpawnAI_312;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|671053790", "671053790", "MIS_450_B30_graph", "box_OutputOrder_v2_314.Out", "box_SpawnAI_312.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_314_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_313();
    l0 = self.box_SpawnAI_313;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2011635150", "2011635150", "MIS_450_B30_graph", "box_OutputOrder_v2_314.Out", "box_SpawnAI_313.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_314_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_315();
    l0 = self.box_SpawnAI_315;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|602098730", "602098730", "MIS_450_B30_graph", "box_OutputOrder_v2_314.Out", "box_SpawnAI_315.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_89();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1027834445", "1027834445", "MIS_450_B30_graph", "box_OutputOrder_v2_182.Out", "box_ParticleSystem_v3_89.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_182_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_180();
    l0 = self.box_SoundModifier_v2_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|157188384", "157188384", "MIS_450_B30_graph", "box_OutputOrder_v2_182.Out", "box_SoundModifier_v2_180.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_191();
    l0 = self.box_Delay_v5_34;
    l1 = self.box_CharacterLoadedIdListener_v2_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|923371331", "923371331", "MIS_450_B30_graph", "box_Delay_v5_34.TimeElapsed", "box_CharacterLoadedIdListener_v2_191.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_219_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_217();
    l0 = self.box_Delay_v5_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1389008920", "1389008920", "MIS_450_B30_graph", "box_OutputOrder_v2_219.Out", "box_Delay_v5_217.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_219_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_220();
    l0 = self.box_ProximityRadiusListener_v3_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1553071309", "1553071309", "MIS_450_B30_graph", "box_OutputOrder_v2_219.Out", "box_ProximityRadiusListener_v3_220.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_219_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_223();
    l0 = self.box_ProximityRadiusListener_v3_223;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1467014251", "1467014251", "MIS_450_B30_graph", "box_OutputOrder_v2_219.Out", "box_ProximityRadiusListener_v3_223.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1239277505", "1239277505", "MIS_450_B30_graph", "box_OutputOrder_v2_17.Out", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_52();
    l0 = self.box_ShimmerModifier_v2_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1562178496", "1562178496", "MIS_450_B30_graph", "box_OutputOrder_v2_17.Out", "box_ShimmerModifier_v2_52.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|696737074", "696737074", "MIS_450_B30_graph", "box_OutputOrder_v2_17.Out", "box_Delay_v5_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_17_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_116();
    l0 = self.box_SoundModifier_v2_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|896401863", "896401863", "MIS_450_B30_graph", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_116.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Switch_68_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_143();
    l0 = self.box_Switch_68;
    l1 = self.box_UniversalInteractionModifier_v2_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|494839772", "494839772", "MIS_450_B30_graph", "box_Switch_68.Output", "box_UniversalInteractionModifier_v2_143.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_68_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_142();
    l0 = self.box_Switch_68;
    l1 = self.box_UniversalInteractionModifier_v2_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|115608488", "115608488", "MIS_450_B30_graph", "box_Switch_68.Output", "box_UniversalInteractionModifier_v2_142.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_244_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_255();
    l0 = self.box_Switch_244;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1971280634", "1971280634", "MIS_450_B30_graph", "box_Switch_244.Out", "box_Compare_Integers_255.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_244_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_44();
    l0 = self.box_Switch_244;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|462733171", "462733171", "MIS_450_B30_graph", "box_Switch_244.Output", "box_IntegerArithmetics_v2_44.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_244_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_44();
    l0 = self.box_Switch_244;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1062406255", "1062406255", "MIS_450_B30_graph", "box_Switch_244.Output", "box_IntegerArithmetics_v2_44.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_71_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1440699766", "1440699766", "MIS_450_B30_graph", "box_Print_v2_71.PrintedToScreen", "box_Simple_Node_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_152_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_151();
    l0 = self.box_EntityStatusListener_152;
    l1 = self.box_UniversalInteractionModifier_v2_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|141571628", "141571628", "MIS_450_B30_graph", "box_EntityStatusListener_152.Loaded", "box_UniversalInteractionModifier_v2_151.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_218();
    l0 = self.box_Delay_v5_41;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1823592815", "1823592815", "MIS_450_B30_graph", "box_Delay_v5_41.TimeElapsed", "box_StaticBreakableBreaker_218.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_301();
    l0 = self.box_ProximityRadiusListener_v3_301;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|730302290", "730302290", "MIS_450_B30_graph", "box_OutputOrder_v2_60.Out", "box_ProximityRadiusListener_v3_301.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_305();
    l0 = self.box_Delay_v5_305;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|880889118", "880889118", "MIS_450_B30_graph", "box_OutputOrder_v2_60.Out", "box_Delay_v5_305.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Switch_88_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_148();
    l0 = self.box_Switch_88;
    l1 = self.box_UniversalInteractionModifier_v2_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1599609243", "1599609243", "MIS_450_B30_graph", "box_Switch_88.Output", "box_UniversalInteractionModifier_v2_148.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_88_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_145();
    l0 = self.box_Switch_88;
    l1 = self.box_UniversalInteractionModifier_v2_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1595089580", "1595089580", "MIS_450_B30_graph", "box_Switch_88.Output", "box_UniversalInteractionModifier_v2_145.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_123_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_121();
    l0 = self.box_SoundModifier_v2_123;
    l1 = self.box_SoundModifier_v2_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|330529190", "330529190", "MIS_450_B30_graph", "box_SoundModifier_v2_123.Started", "box_SoundModifier_v2_121.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_155_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_176();
    l0 = self.box_UniversalInteractionModifier_v2_155;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1587067613", "1587067613", "MIS_450_B30_graph", "box_UniversalInteractionModifier_v2_155.Enabled", "box_OutputOrder_v2_176.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_223_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_RequestTutorial_v3_277();
    l0 = self.box_ProximityRadiusListener_v3_223;
    l1 = self.box_RequestTutorial_v3_277;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|200338701", "200338701", "MIS_450_B30_graph", "box_ProximityRadiusListener_v3_223.SomeoneNear", "box_RequestTutorial_v3_277.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_78_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_28();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1639575277", "1639575277", "MIS_450_B30_graph", "box_ParticleSystem_v3_78.Started", "box_IntegerArithmetics_v2_28.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_180_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_181();
    l0 = self.box_SoundModifier_v2_180;
    l1 = self.box_SoundModifier_v2_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1487034004", "1487034004", "MIS_450_B30_graph", "box_SoundModifier_v2_180.Started", "box_SoundModifier_v2_181.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_139_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_164();
    l0 = self.box_UniversalInteractionModifier_v2_139;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|819562617", "819562617", "MIS_450_B30_graph", "box_UniversalInteractionModifier_v2_139.Enabled", "box_OutputOrder_v2_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_305_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HACK_DisplayHackHint_61();
    l0 = self.box_Delay_v5_305;
    l1 = self.box_HACK_DisplayHackHint_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2126246189", "2126246189", "MIS_450_B30_graph", "box_Delay_v5_305.TimeElapsed", "box_HACK_DisplayHackHint_61.DisplayText", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisplayText
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|@blowpipeexploded");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_62_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|@CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_131_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|@Phase2 OFF");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_238_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|@Phase2 ON");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_239_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_241()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|@Phase3 OFF");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_241_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|@Phase3 ON");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_240_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|@PressureBlowUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_74_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|@Puzzle_1_Audio_Finished");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_129_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_279()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_279");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|@ValveFirstCanonPipe CLOSE");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_279_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_278()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_278");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|@ValveFirstCanonPipe_OPEN");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_278_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_105()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- usableEntityId,
        [1] = "2107730805513001455",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|38818392");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_103_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108781237091999280",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_186()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737720363799938",
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

function export:OnEnter_box_Print_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|51985553");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_85_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.PuzzlePressureLevel,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|52837957");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_25_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109126958508935459",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|55964687");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_77_A_eq_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_77_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.PuzzlePressureLevel,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_165()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737716861556096",
        -- SoundId,
        [1] = "1070038761",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|68973963");
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
                [0] = self.f_box_OutputOrder_v2_207_Out_0,
                [1] = self.f_box_OutputOrder_v2_207_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|71987740");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_70_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109264221175810514",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_172()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737698136085882",
        -- SoundId,
        [1] = "1833494196",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|79506918");
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
                [0] = self.f_box_OutputOrder_v2_206_Out_0,
                [1] = self.f_box_OutputOrder_v2_206_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_31()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108309999783544051",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_282()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_282");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|114228393");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2107921851194812127",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_284()
    local params;
    params = {
        -- Pawns,
        [0] = "2108403661106316699",
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

function export:OnEnter_box_SoundModifier_v2_116()
    local params;
    params = {
        -- Pawns,
        [0] = "2108419692551999697",
        -- SoundId,
        [1] = "349514401",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|147386627");
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
                [0] = self.f_box_OutputOrder_v2_125_Out_0,
                [3] = self.f_box_OutputOrder_v2_125_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|149115148");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_86_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108781235317808684",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_295()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_295");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|150985373");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108982582241667954",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_290()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_290");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|153941955");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_SoundPointModifier_290_Stopped,
    });
    params = {
        -- soundPoint,
        [0] = "2107921810084341469",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_117()
    local params;
    params = {
        -- Pawns,
        [0] = "2108419678142468303",
        -- SoundId,
        [1] = "1833494196",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_130()
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
        [4] = "2107645016221427128",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_151()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2107578402088169395",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|166027746");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109125249590112013",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_142()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2108326906190405295",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|206127162");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|208398055");
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
                [0] = self.f_box_OutputOrder_v2_214_Out_0,
                [1] = self.f_box_OutputOrder_v2_214_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|215357880");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [3] = self.f_box_OutputOrder_v2_11_Out_3,
                [4] = self.f_box_OutputOrder_v2_11_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_225()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2107536237540681282",
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

function export:OnEnter_box_OutputOrder_v2_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|262297785");
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
                [0] = self.f_box_OutputOrder_v2_209_Out_0,
                [1] = self.f_box_OutputOrder_v2_209_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_307()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_307");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|280872485");
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
                [0] = self.f_box_OutputOrder_v2_307_Out_0,
                [1] = self.f_box_OutputOrder_v2_307_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|285710584");
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

function export:OnEnter_box_ParticleSystem_v3_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|287395332");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_67_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109264221175810514",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_221()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.Players,
        -- SoundId,
        [5] = "875002794",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|294620573");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_191()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328869770419",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_159()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737710249235836",
        -- SoundId,
        [1] = "1833494196",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_19()
    local params;
    params = {
        -- blendTime,
        [1] = 0.2,
        -- endTarget,
        [4] = "2107645320860018165",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100956042820063390",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_201()
    local params;
    params = {
        -- Pawns,
        [0] = "2108405069914311433",
        -- SoundId,
        [1] = "3968009049",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_249()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|338256674");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109125249590112015",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|342837001");
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
                [0] = self.f_box_OutputOrder_v2_192_Out_0,
                [1] = self.f_box_OutputOrder_v2_192_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_69()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- usableEntityId,
        [1] = "2108326906190405295",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_120()
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

function export:OnEnter_box_IntegerArithmetics_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|357422985");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_28_Out,
    });
    params = {
        -- A,
        [0] = self.PuzzlePressureLevel,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_158()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107730805513001455",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_287()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108350890621542854",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- usableEntityId,
        [1] = "2109265254092403013",
    };
    return params;
end;

function export:OnEnter_box_Switch_91()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_143()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_PARACHUTE_WINGSUIT_CLOSE",
            id = "874284",
        },
        -- usableEntity,
        [4] = "2108326906190405295",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|421559307");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109166047985677520",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_24()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_162()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737710249235836",
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

function export:OnEnter_box_EntityStatusListener_149()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108326818370068131",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_210()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737714347070846",
        -- SoundId,
        [1] = "1070038761",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Switch_99()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_121()
    local params;
    params = {
        -- Pawns,
        [0] = "2108403655930545561",
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

function export:OnEnter_box_SoundModifier_v2_166()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737716861556096",
        -- SoundId,
        [1] = "1833494196",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_177()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737716861556096",
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

function export:OnEnter_box_SoundModifier_v2_175()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737720363799938",
        -- SoundId,
        [1] = "1833494196",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|488173165");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_277()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015351845916373",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_231()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.Players,
        -- SoundId,
        [5] = "2826111839",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|501629616");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_104_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.PuzzlePressureLevel,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_52()
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
        [4] = "2109265254092403013",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_286()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_286");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|506478689");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_286_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108973503964261230",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_296()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_296");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|511897700");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_296_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109124661921974656",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_97()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- usableEntityId,
        [1] = "2107578402088169395",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_276()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2785390246",
        -- SoundType,
        [2] = 2,
        -- StopFadeOut,
        [3] = 2,
        -- UseSubtitles,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_248()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|551910580");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109166037011281102",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_258()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|591858690");
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

function export:OnEnter_box_UniversalInteractionModifier_v2_138()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_PARACHUTE_WINGSUIT_CLOSE",
            id = "874284",
        },
        -- usableEntity,
        [4] = "2107730908713851407",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|609224207");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_96_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108781236200709678",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|620120891");
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
                [0] = self.f_box_OutputOrder_v2_179_Out_0,
                [1] = self.f_box_OutputOrder_v2_179_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|622109088");
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
                [0] = self.f_box_OutputOrder_v2_141_Out_0,
                [1] = self.f_box_OutputOrder_v2_141_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_267()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2109265254092403013",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|644761627");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_89_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109264236271110621",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_310()
    local params;
    params = {
        -- Pawns,
        [0] = "2109553772375057582",
        -- SoundId,
        [1] = "1971375926",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_187()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737720363799938",
        -- SoundId,
        [1] = "3945082172",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|652713990");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109125249590112015",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_268()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_PARACHUTE_WINGSUIT_CLOSE",
            id = "874284",
        },
        -- usableEntity,
        [4] = "2109265254092403013",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|659079498");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109125249592209173",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_178()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737716861556096",
        -- SoundId,
        [1] = "3945082172",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_245");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|670014406");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109166047985677520",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|674797323");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_66_Out,
    });
    params = {
        -- A,
        [0] = self.PuzzlePressureLevel,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_312()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109563080663903973",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_272()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_272");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|685974283");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self._sld_LocalPlayer_box_GetLocalPlayer_v2_271,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|697402103");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2110048284293741178",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_450_B30",
            id = "1025410",
        },
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_148()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2108326818370068131",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_308()
    local params;
    params = {
        -- Pawns,
        [0] = "2109553772375057582",
        -- SoundId,
        [1] = "1971375926",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_154()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2107578402088169395",
    };
    return params;
end;

function export:OnEnter_box_HACK_DisplayHackHint_61()
    local params;
    params = {
        -- textId,
        [0] = {
            section = "Notes",
            item = "MIS_450_Hint_2",
            id = "1033650",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|712651342");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_50_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2108780607256429344",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_450_B50-2",
            id = "1025426",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_174()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737720363799938",
        -- SoundId,
        [1] = "1070038761",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_140()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2107730908713851407",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_264()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_264");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|739268508");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109264221175810514",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|747970828");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
                [2] = self.f_box_OutputOrder_v2_48_Out_2,
                [3] = self.f_box_OutputOrder_v2_48_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_160()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737710249235836",
        -- SoundId,
        [1] = "1070038761",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|778455611");
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
                [0] = self.f_box_OutputOrder_v2_170_Out_0,
                [1] = self.f_box_OutputOrder_v2_170_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_134()
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
        [4] = "2107730908713851407",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_257()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_257");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|793251867");
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
                [0] = self.f_box_OutputOrder_v2_257_Out_0,
                [1] = self.f_box_OutputOrder_v2_257_Out_1,
                [2] = self.f_box_OutputOrder_v2_257_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_35()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_217()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|836292740");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_45_A_eq_B,
    });
    params = {
        -- A,
        [0] = 2,
        -- B,
        [1] = self.Blowpipe1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|849881781");
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
                [0] = self.f_box_OutputOrder_v2_195_Out_0,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|854826156");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_27_Out,
    });
    params = {
        -- A,
        [0] = self.Blowpipe1,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|858921226");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_40_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_15()
    local params;
    params = {
        -- blendTime,
        [1] = 0.45,
        -- endTarget,
        [4] = "2107645295769691633",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107645163902871009",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|860876387");
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
                [0] = self.f_box_OutputOrder_v2_176_Out_0,
                [1] = self.f_box_OutputOrder_v2_176_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_153()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_PARACHUTE_WINGSUIT_CLOSE",
            id = "874284",
        },
        -- usableEntity,
        [4] = "2107578402088169395",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_251()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|895801751");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109125249590112019",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2108780607256429344",
        -- nearZone,
        [4] = 6.5,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|907749905");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_293()
    local params;
    params = {
        -- Pawns,
        [0] = "2108403655930545561",
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

function export:OnEnter_box_SoundModifier_v2_122()
    local params;
    params = {
        -- Pawns,
        [0] = "2108403655930545561",
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

function export:OnEnter_box_SpawnAI_315()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109563334331216853",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|970228267");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109166056433005778",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|974987279");
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
                [0] = self.f_box_OutputOrder_v2_75_Out_0,
                [1] = self.f_box_OutputOrder_v2_75_Out_1,
                [2] = self.f_box_OutputOrder_v2_75_Out_2,
                [3] = self.f_box_OutputOrder_v2_75_Out_3,
                [4] = self.f_box_OutputOrder_v2_75_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_285()
    local params;
    params = {
        -- Pawns,
        [0] = "2108403655930545561",
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

function export:OnEnter_box_ShimmerModifier_v2_136()
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
        [4] = "2107578402088169395",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_133()
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
        [4] = "2108326906190405295",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1005806326");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_313()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109563335293809641",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_147()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2108326906190405295",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1039597882");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_101_Out,
    });
    params = {
        -- A,
        [0] = self.PuzzlePressureLevel,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_288()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_288");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1042394519");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108970229936707399",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_21()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2109951322150151643",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107645163902871009",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1052235931");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_90_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109264236271110621",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1063917639");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_72_A_eq_B,
    });
    params = {
        -- A,
        [0] = 3,
        -- B,
        [1] = self.PuzzlePressureLevel,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_137()
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
        [4] = "2107730805513001455",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1084265438");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_64_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108781225490554410",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1091292898");
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

function export:OnEnter_box_ParticleSystem_v3_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_246");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1095816506");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109166081819030742",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_271()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_271");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1103623741");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_271_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1111223620");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_63()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- usableEntityId,
        [1] = "2107730908713851407",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_157()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_PARACHUTE_WINGSUIT_CLOSE",
            id = "874284",
        },
        -- usableEntity,
        [4] = "2107730805513001455",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1140894628");
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

function export:OnEnter_box_ProximityRadiusListener_v3_232()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2108834027860406981",
        -- nearZone,
        [4] = 4,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1142470701");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109263868053173560",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_319()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_319");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1152679409");
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
                [0] = self.f_box_OutputOrder_v2_319_Out_0,
                [1] = self.f_box_OutputOrder_v2_319_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1156160127");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_100_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109264248518478312",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1162206558");
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
                [0] = self.f_box_OutputOrder_v2_167_Out_0,
                [1] = self.f_box_OutputOrder_v2_167_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_197()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2107645016221427128",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_144()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107730908713851407",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_260()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1185427594");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109265046004588065",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_135()
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
        [4] = "2108326818370068131",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1207009947");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_49_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109263817989961009",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1216427324");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109166081819030742",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1218974446");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_106_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109264248518478312",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_145()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_PARACHUTE_WINGSUIT_CLOSE",
            id = "874284",
        },
        -- usableEntity,
        [4] = "2108326818370068131",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1240938196");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_4_A_eq_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_4_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.PuzzlePressureLevel,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1242541428");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_65_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108781225490554410",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1256711885");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_47_Out,
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

function export:OnEnter_box_SoundPointModifier_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1257433891");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_SoundPointModifier_43_Stopped,
    });
    params = {
        -- soundPoint,
        [0] = "2107921810084341469",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1286626846");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_82_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108781165864328740",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1287539345");
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
                [0] = self.f_box_OutputOrder_v2_163_Out_0,
                [1] = self.f_box_OutputOrder_v2_163_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_292()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_292");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1291969118");
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
                [0] = self.f_box_OutputOrder_v2_292_Out_0,
                [1] = self.f_box_OutputOrder_v2_292_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_262()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_262");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1293874299");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109264172196825532",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1294382436");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_87_Out,
    });
    params = {
        -- A,
        [0] = self.PuzzlePressureLevel,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_316()
    local params;
    params = {
        -- Pawns,
        [0] = "2109553772375057582",
        -- SoundId,
        [1] = "3945082172",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_168()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737714347070846",
        -- SoundId,
        [1] = "1070038761",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Switch_80()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1324815454");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_73_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.PuzzlePressureLevel,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_161()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737710249235836",
        -- SoundId,
        [1] = "3945082172",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_205()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737710249235836",
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

function export:OnEnter_box_UniversalInteractionModifier_v2_266()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2109265254092403013",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_261()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_261");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1335679529");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_261_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109265046004588065",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1349243423");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_95_Out,
    });
    params = {
        -- A,
        [0] = self.PuzzlePressureLevel,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1355948429");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109263865740014902",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1360466031");
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

function export:OnEnter_box_SoundModifier_v2_294()
    local params;
    params = {
        -- Pawns,
        [0] = "2108403655930545561",
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

function export:OnEnter_box_ParticleSystem_v3_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1377641725");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_76_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108781235317808684",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1382781505");
    l0:SetConnections({
        -- Paused,
        [1] = self.f_box_ParticleSystem_v3_56_Paused,
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_56_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109263799415485743",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1386583920");
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

function export:OnEnter_box_ParticleSystem_v3_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1411032514");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_81_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109264172196825532",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_156()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2107730805513001455",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_118()
    local params;
    params = {
        -- Pawns,
        [0] = "2109553772375057582",
        -- SoundId,
        [1] = "1070038761",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_255()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_255");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1446869574");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_255_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_255_A_gt_B,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.Blowpipe1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_265()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_265");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1449634845");
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
                [0] = self.f_box_OutputOrder_v2_265_Out_0,
                [1] = self.f_box_OutputOrder_v2_265_Out_1,
                [2] = self.f_box_OutputOrder_v2_265_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1460050075");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_93_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.PuzzlePressureLevel,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1462698913");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_98_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109264203161274823",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_33()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108310552930454366",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_281()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_281");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1491077465");
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
                [0] = self.f_box_OutputOrder_v2_281_Out_0,
                [1] = self.f_box_OutputOrder_v2_281_Out_1,
                [2] = self.f_box_OutputOrder_v2_281_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1491723861");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_256_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109176879836585027",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_208()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737716861556096",
        -- SoundId,
        [1] = "1070038761",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_181()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737714347070846",
        -- SoundId,
        [1] = "3945082172",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_169()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737714347070846",
        -- SoundId,
        [1] = "1833494196",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1533264891");
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
                [0] = self.f_box_OutputOrder_v2_124_Out_0,
                [1] = self.f_box_OutputOrder_v2_124_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_311()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108737710249235836",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_247()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_247");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1553758359");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109166056433005778",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1558874712");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2109125564139843378",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_318()
    local params;
    params = {
        -- Pawns,
        [0] = "2109553772375057582",
        -- SoundId,
        [1] = "3945082172",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_171()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737698136085882",
        -- SoundId,
        [1] = "1070038761",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1575257641");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_57_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_57_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bWaterLevel_25,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_283()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108779347893563887",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_254()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_254");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1591097206");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 9,
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
                [0] = self.f_box_OutputOrder_v2_254_Out_0,
                [1] = self.f_box_OutputOrder_v2_254_Out_1,
                [2] = self.f_box_OutputOrder_v2_254_Out_2,
                [3] = self.f_box_OutputOrder_v2_254_Out_3,
                [4] = self.f_box_OutputOrder_v2_254_Out_4,
                [5] = self.f_box_OutputOrder_v2_254_Out_5,
                [6] = self.f_box_OutputOrder_v2_254_Out_6,
                [7] = self.f_box_OutputOrder_v2_254_Out_7,
                [8] = self.f_box_OutputOrder_v2_254_Out_8,
            },
            count = 9,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_9()
    local params;
    params = {
        -- blendTime,
        [1] = 50,
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

function export:OnEnter_box_PositionModifier_v2_36()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2107536237540681282",
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

function export:OnEnter_box_ParticleSystem_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1598812166");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_26_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109263799415485743",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_274()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_274");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1598854923");
    l0:SetConnections({
        -- Paused,
        [1] = self.f_box_ParticleSystem_v3_274_Paused,
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_274_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109265065612959269",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_291()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_291");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1608083358");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_291_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108982578064141168",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_309()
    local params;
    params = {
        -- Pawns,
        [0] = "2109553772375057582",
        -- SoundId,
        [1] = "1833494196",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1640603043");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109263817989961009",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_14()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_29()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107578402088169395",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_317()
    local params;
    params = {
        -- Pawns,
        [0] = "2108419678142468303",
        -- SoundId,
        [1] = "1971375926",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_222()
    local params;
    params = {
        -- Pawns,
        [0] = "2108405069914311433",
        -- SoundId,
        [1] = "897539088",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_38()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2107546934760707535",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.Players,
        -- UseBlackScreen,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1701065948");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_94_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109264203161274823",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1707551711");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
                [2] = self.f_box_OutputOrder_v2_32_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_150()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_PARACHUTE_WINGSUIT_CLOSE",
            id = "874284",
        },
        -- usableEntity,
        [4] = "2108326818370068131",
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
        [2] = "2100194873448598553",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1727319959");
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
                [0] = self.f_box_OutputOrder_v2_132_Out_0,
                [1] = self.f_box_OutputOrder_v2_132_Out_1,
                [2] = self.f_box_OutputOrder_v2_132_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1733685002");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_102_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108781237091999280",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_250()
    local params;
    params = {
        -- Pawns,
        [0] = "2108405069914311433",
        -- SoundId,
        [1] = "635308506",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_253()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_253");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1737408029");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109166078195152084",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1780153283");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_193_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_84()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- usableEntityId,
        [1] = "2108326818370068131",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1812049780");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_92_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108781236200709678",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_146()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108326906190405295",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_126()
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

function export:OnEnter_box_OutputOrder_v2_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1824273373");
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
                [0] = self.f_box_OutputOrder_v2_185_Out_0,
                [1] = self.f_box_OutputOrder_v2_185_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1828700582");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2107921851194812127",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_220()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2107730908713851407",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_252()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_252");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1831650275");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109125249590112013",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_183()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737698136085882",
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

function export:OnEnter_box_OutputOrder_v2_289()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_289");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1849198210");
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
                [0] = self.f_box_OutputOrder_v2_289_Out_0,
                [2] = self.f_box_OutputOrder_v2_289_Out_2,
                [3] = self.f_box_OutputOrder_v2_289_Out_3,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1856253282");
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

function export:OnEnter_box_OutputOrder_v2_269()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_269");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1856387529");
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
                [0] = self.f_box_OutputOrder_v2_269_Out_0,
                [1] = self.f_box_OutputOrder_v2_269_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1860841647");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109166078195152084",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_273()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109428967432789126",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_196()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1881653901");
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

function export:OnEnter_box_SoundModifier_v2_213()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737720363799938",
        -- SoundId,
        [1] = "1070038761",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_215()
    local params;
    params = {
        -- Pawns,
        [0] = self.Players,
        -- SoundId,
        [1] = "2109998049",
        -- SoundType,
        [2] = 2,
        -- StopFadeOut,
        [3] = 2,
        -- UseSubtitles,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_30()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108309620559739855",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1933580477");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_190_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_450_B30",
            id = "1025410",
        },
        -- TargetGroup,
        [2] = self.Players,
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1949010203");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_44_Out,
    });
    params = {
        -- A,
        [0] = self.Blowpipe1,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_263");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1949889046");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109264203161274823",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1960905719");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2108020280059233846",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_450_B30",
            id = "1025410",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_301()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2109513289745570657",
        -- nearZone,
        [4] = 12,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1967773428");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_79_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108781165864328740",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1971189017");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
                [2] = self.f_box_OutputOrder_v2_22_Out_2,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_314()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_314");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1980225363");
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
                [0] = self.f_box_OutputOrder_v2_314_Out_0,
                [1] = self.f_box_OutputOrder_v2_314_Out_1,
                [2] = self.f_box_OutputOrder_v2_314_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1985634127");
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
                [0] = self.f_box_OutputOrder_v2_182_Out_0,
                [1] = self.f_box_OutputOrder_v2_182_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_233()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1992921742");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109166037011281102",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|1996559568");
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
                [0] = self.f_box_OutputOrder_v2_219_Out_0,
                [1] = self.f_box_OutputOrder_v2_219_Out_1,
                [2] = self.f_box_OutputOrder_v2_219_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2002259736");
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
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_68()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Switch_244()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_242()
    local params;
    params = {
        -- Pawns,
        [0] = "2108405069914311433",
        -- SoundId,
        [1] = "4026025953",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2014553163");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_71_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.PuzzlePressureLevel,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_152()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107578402088169395",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.17,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2039473863");
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

function export:OnEnter_box_Switch_88()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_243()
    local params;
    params = {
        -- Pawns,
        [0] = "2109205701009092741",
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

function export:OnEnter_box_SoundModifier_v2_123()
    local params;
    params = {
        -- Pawns,
        [0] = "2108403661106316699",
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

function export:OnEnter_box_PositionModifier_v2_119()
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

function export:OnEnter_box_UniversalInteractionModifier_v2_155()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_PARACHUTE_WINGSUIT_CLOSE",
            id = "874284",
        },
        -- usableEntity,
        [4] = "2107730805513001455",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2100225160");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109125249590112019",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_212()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737698136085882",
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

function export:OnEnter_box_SoundModifier_v2_184()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737698136085882",
        -- SoundId,
        [1] = "3945082172",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_223()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2108820159884964539",
        -- nearZone,
        [4] = 3,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B30.domino|@MIS_450_B30_graph|2138539583");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_78_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109264172196825532",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_180()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737714347070846",
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

function export:OnEnter_box_UniversalInteractionModifier_v2_139()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2107730908713851407",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_305()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 60,
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_191_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_191;
    self.Quebecois = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.PuzzlePressureLevel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_66_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.PuzzlePressureLevel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.Blowpipe1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_101_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.PuzzlePressureLevel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_271_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self._sld_LocalPlayer_box_GetLocalPlayer_v2_271 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_87_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.PuzzlePressureLevel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_95_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.PuzzlePressureLevel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_193_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bWaterLevel_25 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.Blowpipe1 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut>
		<DataOut Name="BlowPipe1" AnchorDynType="0" DataTypeID="int" />
	</DatasOut>
</DominoMetadata>
