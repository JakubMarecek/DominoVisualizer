LUAC�1 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/father/father_010/father_010_b12.domino
-- User graph: FATHER_010_B12
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/CameraShakeAndRumble_V2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.BindingSetupB12.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.Boundaries.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.SwappingArmySetUpB12.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.Wolf_Attack.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2692980226.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2467866744.bnk]], "CSoundResource");
        cboxRes:LoadResource([[471235639.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2665284510.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1409084277.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2786272169.bnk]], "CSoundResource");
        cboxRes:LoadResource([[906473430.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1356172451.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.FATHER_010_B12.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")] = {
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
                name = "ActivityAbortAndFastTravelEnabled",
                type = "bool",
            },
            [1] = {
                name = "SleepingCampEnabled",
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
    metadataTable[GetPathID("Domino/System/CHEAT_SetEnvironmentTimeScale.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetTimeScale",
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
                name = "timeScale",
                type = "float",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/ConsoleCommand_v3.lua")] = {
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
                name = "Execute",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Loop",
                type = "bool",
            },
            [1] = {
                name = "Name",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Parameter",
                type = "string",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/IndexList_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/PlayerSpeedModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ApplySpeedFactor",
            },
            [1] = {
                name = "ForceWalk",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "ApplySpeedFactorOut",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "ForceWalkOut",
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
                name = "blendTime",
                type = "float",
            },
            [1] = {
                name = "factor",
                type = "float",
            },
            [2] = {
                name = "Players",
                type = "group",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/SetTimeOfDay.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "IncrementTimeOfDay",
            },
            [1] = {
                name = "SetTimeOfDay",
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
                name = "Hour",
                type = "int",
            },
            [1] = {
                name = "Minute",
                type = "int",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.BindingSetupB12.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "IN",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.Boundaries.debug.lua")] = {
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
                name = "ePlayer",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.SwappingArmySetUpB12.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.Wolf_Attack.debug.lua")] = {
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
    self._name = "FATHER_010_B12";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12";
    self.Players = nil;
    self.NPCOutofTheInvisibleWall = nil;
    self.PlayerWhoPassedTheBoundaries = nil;
    self.DoweDoTheZombieOrNot = 1;
    self.box_SoundModifier_v2_47 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|13454180");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v5_97 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|19280725");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_97_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_97_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_97_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_97_MemberRemoved,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|41927035");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_SoundModifier_v2_83 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|72029161");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|132361839");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_PositionModifier_v2_20 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|138892620");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_20_Done,
    });
    self.box_SwappingArmySetUpB12_12 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.SwappingArmySetUpB12.debug.lua");
    l0 = self.box_SwappingArmySetUpB12_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwappingArmySetUpB12_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|155437164");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SwappingArmySetUpB12_12_Out,
    });
    self.box_Random_100 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|156480957");
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
                [0] = self.f_box_Random_100_Output_0,
                [1] = self.f_box_Random_100_Output_1,
                [2] = self.f_box_Random_100_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_109 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|251206740");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_109_Spawned,
    });
    self.box_Delay_v5_57 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|252309747");
    l0:SetConnections({
        -- LoopingEnded,
        [0] = self.f_box_Delay_v5_57_LoopingEnded,
        -- Paused,
        [1] = self.f_box_Delay_v5_57_Paused,
        -- Resumed,
        [2] = self.f_box_Delay_v5_57_Resumed,
        -- Started,
        [3] = self.f_box_Delay_v5_57_Started,
        -- Stopped,
        [4] = self.f_box_Delay_v5_57_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_57_TimeElapsed,
    });
    self.box_SoundModifier_v2_42 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|263656684");
    l0:SetConnections({
    });
    self.box_Gate_v3_104 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|274916950");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_104_Out,
    });
    self.box_GunsForHireSystemModifier_69 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|287324577");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_69_Disabled,
    });
    self.box_Delay_v5_58 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|287561319");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_58_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_58_TimeElapsed,
    });
    self.box_PositionModifier_v2_21 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|456831304");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_21_Done,
    });
    self.box_SoundModifier_v2_37 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|481628454");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_52 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|513175586");
    l0:SetConnections({
    });
    self.box_SpawnAI_99 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|526659672");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_99_Spawned,
    });
    self.box_GroupSizeListener_v5_110 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|528379984");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_110_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_110_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_110_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_110_MemberRemoved,
    });
    self.box_Boundaries_68 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.Boundaries.debug.lua");
    l0 = self.box_Boundaries_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Boundaries_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|541935599");
    l0:SetConnections({
    });
    self.box_MultipleOR_74 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|650299788");
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
        [0] = self.f_box_MultipleOR_74_Out,
    });
    self.box_IndexList_v2_117 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|659828488");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_117_Output_0,
                [1] = self.f_box_IndexList_v2_117_Output_1,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_34 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|666439409");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_34_Started,
    });
    self.box_SoundModifier_v2_44 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|705815087");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_43 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|768899914");
    l0:SetConnections({
    });
    self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|781224610");
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
        [0] = self.f_box_MultipleOR_60_Out,
    });
    self.box_PlayerSpeedModifier_v3_26 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|806830216");
    l0:SetConnections({
    });
    self.box_Random_28 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|839680389");
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
                [0] = self.f_box_Random_28_Output_0,
                [1] = self.f_box_Random_28_Output_1,
                [2] = self.f_box_Random_28_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleAND_v2_80 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|841873689");
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
        [0] = self.f_box_MultipleAND_v2_80_Out,
    });
    self.box_Boundaries_66 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.Boundaries.debug.lua");
    l0 = self.box_Boundaries_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Boundaries_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|873581482");
    l0:SetConnections({
    });
    self.box_Bind_v4_86 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|911015940");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_86_Bound,
    });
    self.box_PositionModifier_v2_18 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|982915073");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_18_Done,
    });
    self.box_SoundModifier_v2_35 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|986504957");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_17 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1046806298");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_17_Loaded,
    });
    self.box_CoopActivePlayers_65 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1061501880");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_65_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_65_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_65_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_65_TwoPlayers,
    });
    self.box_MultipleOR_96 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1064112033");
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
        [0] = self.f_box_MultipleOR_96_Out,
    });
    self.box_Delay_v5_91 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1067684896");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_91_TimeElapsed,
    });
    self.box_SoundModifier_v2_49 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1089040049");
    l0:SetConnections({
    });
    self.box_Delay_v5_54 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1089988884");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_54_TimeElapsed,
    });
    self.box_Delay_v5_120 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1152015203");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_120_TimeElapsed,
    });
    self.box_SoundModifier_v2_48 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1175988046");
    l0:SetConnections({
    });
    self.box_Delay_v5_73 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1176633881");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_73_TimeElapsed,
    });
    self.box_ActivityInitialized_7 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1180865166");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_7_Out,
    });
    self.box_Delay_v5_75 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1219774235");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_75_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_75_TimeElapsed,
    });
    self.box_SoundModifier_v2_10 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1257934291");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_10_Started,
    });
    self.box_Wolf_Attack_59 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.Wolf_Attack.debug.lua");
    l0 = self.box_Wolf_Attack_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Wolf_Attack_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1276036039");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_79 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1289356382");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_50 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1307878827");
    l0:SetConnections({
    });
    self.box_SpawnAI_112 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1341136043");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_112_Spawned,
    });
    self.box_Bind_v4_88 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1464914516");
    l0:SetConnections({
        -- UnBound,
        [1] = self.f_box_Bind_v4_88_UnBound,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_13 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1515405741");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_13_Out,
    });
    self.box_Music_Quest_v2_25 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1527925668");
    l0:SetConnections({
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1538777650");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_SoundModifier_v2_36 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1547006247");
    l0:SetConnections({
    });
    self.box_Delay_v5_107 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1549883694");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_107_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_107_TimeElapsed,
    });
    self.box_Delay_v5_103 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1551349745");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_103_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_103_TimeElapsed,
    });
    self.box_Delay_v5_101 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1605268436");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_101_TimeElapsed,
    });
    self.box_ConsoleCommand_v3_118 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1612614967");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_118_Execute,
    });
    self.box_Delay_v5_70 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1638874161");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_70_TimeElapsed,
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1662687944");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_SoundModifier_v2_82 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1693918753");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_82_Started,
    });
    self.box_BindingSetupB12_6 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.BindingSetupB12.debug.lua");
    l0 = self.box_BindingSetupB12_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindingSetupB12_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1708341445");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_94 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1741558940");
    l0:SetConnections({
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1745877572");
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
        [0] = self.f_box_MultipleOR_23_Out,
    });
    self.box_PostFx_v3_32 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1786436454");
    l0:SetConnections({
    });
    self.box_TeleportPawns_84 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1814088544");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_84_Out,
    });
    self.box_Delay_v5_106 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1835545240");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_106_TimeElapsed,
    });
    self.box_SoundModifier_v2_9 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1900160604");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v5_105 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1919517569");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_105_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_105_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_105_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_105_MemberRemoved,
    });
    self.box_PositionModifier_v2_22 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1924568151");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_22_Done,
    });
    self.box_SoundModifier_v2_45 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1929844480");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_85 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|2044763312");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_85_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_85_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_85_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_85_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_85_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_85_SomeoneNear,
    });
    self.box_Bind_v4_76 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|2067333616");
    l0:SetConnections({
        -- UnBound,
        [1] = self.f_box_Bind_v4_76_UnBound,
    });
    self.box_MultipleOR_116 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|2077825377");
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
        [0] = self.f_box_MultipleOR_116_Out,
    });
    self.box_Bind_v4_77 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|2089088673");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_77_Bound,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|870051122", "870051122", "FATHER_010_B12", "In", "box_OutputOrder_v2_8.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_90_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_75();
    l0 = self.box_Delay_v5_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1017995546", "1017995546", "FATHER_010_B12", "box_Simple_Node_90.Out", "box_Delay_v5_75.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_113_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|165718717", "165718717", "FATHER_010_B12", "box_Simple_Node_113.Out", "box_CoopActivePlayers_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_115_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|138809625", "138809625", "FATHER_010_B12", "box_Simple_Node_115.Out", "box_MultipleOR_96.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_72_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_81();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|345121118", "345121118", "FATHER_010_B12", "box_Simple_Node_72.Out", "box_ParticleSystem_v3_81.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|624581594", "624581594", "FATHER_010_B12", "box_Simple_Node_72.Out", "box_OutputOrder_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|386091224", "386091224", "FATHER_010_B12", "box_Simple_Node_72.Out", "box_OutputOrder_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_71_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|31652628", "31652628", "FATHER_010_B12", "box_Simple_Node_71.Out", "box_OutputOrder_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Delay_v5_58();
    l0 = self.box_Delay_v5_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|2036602104", "2036602104", "FATHER_010_B12", "box_Simple_Node_71.Out", "box_Delay_v5_58.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_IndexList_v2_117();
    l0 = self.box_IndexList_v2_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|683791095", "683791095", "FATHER_010_B12", "box_Simple_Node_71.Out", "box_IndexList_v2_117.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_39_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_95();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|750500729", "750500729", "FATHER_010_B12", "box_Simple_Node_39.Out", "box_OutputOrder_v2_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Delay_v5_91();
    l0 = self.box_Delay_v5_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1093404600", "1093404600", "FATHER_010_B12", "box_Simple_Node_39.Out", "box_Delay_v5_91.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0 = self.box_Wolf_Attack_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1462969357", "1462969357", "FATHER_010_B12", "box_Simple_Node_39.Out", "box_Wolf_Attack_59.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_114_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_103();
    l0 = self.box_Delay_v5_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1162811603", "1162811603", "FATHER_010_B12", "box_Simple_Node_114.Out", "box_Delay_v5_103.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_107();
    l0 = self.box_Delay_v5_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1889476876", "1889476876", "FATHER_010_B12", "box_Simple_Node_114.Out", "box_Delay_v5_107.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_104();
    l0 = self.box_Gate_v3_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|253565969", "253565969", "FATHER_010_B12", "box_Simple_Node_114.Out", "box_Gate_v3_104.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_106();
    l0 = self.box_Delay_v5_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1778087398", "1778087398", "FATHER_010_B12", "box_Simple_Node_114.Out", "box_Delay_v5_106.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_9();
    l0 = self.box_SoundModifier_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|779733743", "779733743", "FATHER_010_B12", "box_OutputOrder_v2_61.Out", "box_SoundModifier_v2_9.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_120();
    l0 = self.box_Delay_v5_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|399449179", "399449179", "FATHER_010_B12", "box_OutputOrder_v2_61.Out", "box_Delay_v5_120.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v5_97_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_115();
    l0 = self.box_GroupSizeListener_v5_97;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|766796866", "766796866", "FATHER_010_B12", "box_GroupSizeListener_v5_97.Disabled", "box_Simple_Node_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_97_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_98();
    l0 = self.box_GroupSizeListener_v5_97;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1509953699", "1509953699", "FATHER_010_B12", "box_GroupSizeListener_v5_97.MemberRemoved", "box_Compare_Integers_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_108_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_105();
    l0 = self.box_GroupSizeListener_v5_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|941837485", "941837485", "FATHER_010_B12", "box_Compare_Integers_108.A_le_B", "box_GroupSizeListener_v5_105.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_15_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_15;
    l1 = self.box_ActivityInitialized_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|862658919", "862658919", "FATHER_010_B12", "box_MultipleOR_15.Out", "box_ActivityInitialized_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_1();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|343879986", "343879986", "FATHER_010_B12", "box_OutputOrder_v2_40.Out", "box_GetPlayerGroup_v2_1.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_BindingSetupB12_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1880978479", "1880978479", "FATHER_010_B12", "box_OutputOrder_v2_40.Out", "box_BindingSetupB12_6.IN", clone:GetLuaBox(), l0:GetLuaBox());
    -- IN
    l0:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|649518793", "649518793", "FATHER_010_B12", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|27721312", "27721312", "FATHER_010_B12", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PositionModifier_v2_20_Done()
    local l0, l1;
    l0 = self.box_PositionModifier_v2_20;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1742565483", "1742565483", "FATHER_010_B12", "box_PositionModifier_v2_20.Done", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SwappingArmySetUpB12_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_39();
    l0 = self.box_SwappingArmySetUpB12_12;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1459515270", "1459515270", "FATHER_010_B12", "box_SwappingArmySetUpB12_12.Out", "box_Simple_Node_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_100_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_99();
    l0 = self.box_Random_100;
    l1 = self.box_SpawnAI_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|680869525", "680869525", "FATHER_010_B12", "box_Random_100.Output", "box_SpawnAI_99.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_100_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_109();
    l0 = self.box_Random_100;
    l1 = self.box_SpawnAI_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1594224791", "1594224791", "FATHER_010_B12", "box_Random_100.Output", "box_SpawnAI_109.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_100_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_112();
    l0 = self.box_Random_100;
    l1 = self.box_SpawnAI_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1273451676", "1273451676", "FATHER_010_B12", "box_Random_100.Output", "box_SpawnAI_112.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_109_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_105();
    l0 = self.box_SpawnAI_109;
    l1 = self.box_GroupSizeListener_v5_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|2003336988", "2003336988", "FATHER_010_B12", "box_SpawnAI_109.Spawned", "box_GroupSizeListener_v5_105.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_57_LoopingEnded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_71();
    l0 = self.box_Delay_v5_57;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1893606653", "1893606653", "FATHER_010_B12", "box_Delay_v5_57.LoopingEnded", "box_Simple_Node_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_57_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_63();
    l0 = self.box_Delay_v5_57;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1109482560", "1109482560", "FATHER_010_B12", "box_Delay_v5_57.Started", "box_Compare_Integers_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_57_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_28();
    l0 = self.box_Delay_v5_57;
    l1 = self.box_Random_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|102563695", "102563695", "FATHER_010_B12", "box_Delay_v5_57.TimeElapsed", "box_Random_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_106();
    l0 = self.box_Gate_v3_104;
    l1 = self.box_Delay_v5_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1476487126", "1476487126", "FATHER_010_B12", "box_Gate_v3_104.Out", "box_Delay_v5_106.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GunsForHireSystemModifier_69_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = self.box_GunsForHireSystemModifier_69;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|371861859", "371861859", "FATHER_010_B12", "box_GunsForHireSystemModifier_69.Disabled", "box_OutputOrder_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_58_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_34();
    l0 = self.box_Delay_v5_58;
    l1 = self.box_SoundModifier_v2_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1434383207", "1434383207", "FATHER_010_B12", "box_Delay_v5_58.Started", "box_SoundModifier_v2_34.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_58_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_31();
    l0 = self.box_Delay_v5_58;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|304196837", "304196837", "FATHER_010_B12", "box_Delay_v5_58.TimeElapsed", "box_DynamicLightModifier_31.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|18312108", "18312108", "FATHER_010_B12", "box_SetTimeOfDay_14.Out", "box_OutputOrder_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_63_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_82();
    l0 = self.box_SoundModifier_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1051908152", "1051908152", "FATHER_010_B12", "box_Compare_Integers_63.A_eq_B", "box_SoundModifier_v2_82.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_11_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|2012140665", "2012140665", "FATHER_010_B12", "box_MissionBlockLayer_11.Disabled", "box_OutputOrder_v2_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_21_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_20();
    l0 = self.box_PositionModifier_v2_21;
    l1 = self.box_PositionModifier_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|709514542", "709514542", "FATHER_010_B12", "box_PositionModifier_v2_21.Done", "box_PositionModifier_v2_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_49();
    l0 = self.box_SoundModifier_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1283332845", "1283332845", "FATHER_010_B12", "box_OutputOrder_v2_51.Out", "box_SoundModifier_v2_49.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_52();
    l0 = self.box_SoundModifier_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|351373234", "351373234", "FATHER_010_B12", "box_OutputOrder_v2_51.Out", "box_SoundModifier_v2_52.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_48();
    l0 = self.box_SoundModifier_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1883005929", "1883005929", "FATHER_010_B12", "box_OutputOrder_v2_51.Out", "box_SoundModifier_v2_48.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_50();
    l0 = self.box_SoundModifier_v2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1323257598", "1323257598", "FATHER_010_B12", "box_OutputOrder_v2_51.Out", "box_SoundModifier_v2_50.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_99_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_97();
    l0 = self.box_SpawnAI_99;
    l1 = self.box_GroupSizeListener_v5_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|459331370", "459331370", "FATHER_010_B12", "box_SpawnAI_99.Spawned", "box_GroupSizeListener_v5_97.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_110_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_115();
    l0 = self.box_GroupSizeListener_v5_110;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1497854805", "1497854805", "FATHER_010_B12", "box_GroupSizeListener_v5_110.Disabled", "box_Simple_Node_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_110_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_111();
    l0 = self.box_GroupSizeListener_v5_110;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1520512025", "1520512025", "FATHER_010_B12", "box_GroupSizeListener_v5_110.MemberRemoved", "box_Compare_Integers_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1033135938", "1033135938", "FATHER_010_B12", "box_OutputOrder_v2_3.Out", "box_MultipleOR_62.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1551752538", "1551752538", "FATHER_010_B12", "box_OutputOrder_v2_3.Out", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_78();
    l0 = self.box_MultipleOR_74;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|227531740", "227531740", "FATHER_010_B12", "box_MultipleOR_74.Out", "box_CameraShakeAndRumble_V2_78.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_117_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_117;
    l1 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1213888954", "1213888954", "FATHER_010_B12", "box_IndexList_v2_117.Output", "box_MultipleOR_116.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_117_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_103();
    l0 = self.box_IndexList_v2_117;
    l1 = self.box_Delay_v5_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1524258451", "1524258451", "FATHER_010_B12", "box_IndexList_v2_117.Output", "box_Delay_v5_103.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SoundModifier_v2_34_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_SoundModifier_v2_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|2037836942", "2037836942", "FATHER_010_B12", "box_SoundModifier_v2_34.Started", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_67_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_83();
    l0 = self.box_SoundModifier_v2_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|2119552538", "2119552538", "FATHER_010_B12", "box_Compare_Integers_67.A_eq_B", "box_SoundModifier_v2_83.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_98_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_97();
    l0 = self.box_GroupSizeListener_v5_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1913778170", "1913778170", "FATHER_010_B12", "box_Compare_Integers_98.A_le_B", "box_GroupSizeListener_v5_97.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Boundaries_68();
    l0 = self.box_MultipleOR_60;
    l1 = self.box_Boundaries_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|860313401", "860313401", "FATHER_010_B12", "box_MultipleOR_60.Out", "box_Boundaries_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_SwappingArmySetUpB12_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1588869650", "1588869650", "FATHER_010_B12", "box_OutputOrder_v2_64.Out", "box_SwappingArmySetUpB12_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Wolf_Attack_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1793743111", "1793743111", "FATHER_010_B12", "box_OutputOrder_v2_64.Out", "box_Wolf_Attack_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Random_28_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_53();
    l0 = self.box_Random_28;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|2051305738", "2051305738", "FATHER_010_B12", "box_Random_28.Output", "box_ParticleSystem_v3_53.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_28_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_55();
    l0 = self.box_Random_28;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1430864194", "1430864194", "FATHER_010_B12", "box_Random_28.Output", "box_ParticleSystem_v3_55.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_28_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_56();
    l0 = self.box_Random_28;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1215396821", "1215396821", "FATHER_010_B12", "box_Random_28.Output", "box_ParticleSystem_v3_56.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_80_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = self.box_MultipleAND_v2_80;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1307037459", "1307037459", "FATHER_010_B12", "box_MultipleAND_v2_80.Out", "box_ActivityEnd_4.EndNoSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndNoSave
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_86_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_33();
    l0 = self.box_Bind_v4_86;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1239230546", "1239230546", "FATHER_010_B12", "box_Bind_v4_86.Bound", "box_ParticleSystem_v3_33.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_56_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|816127083", "816127083", "FATHER_010_B12", "box_ParticleSystem_v3_56.Started", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PositionModifier_v2_18_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_21();
    l0 = self.box_PositionModifier_v2_18;
    l1 = self.box_PositionModifier_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|663322753", "663322753", "FATHER_010_B12", "box_PositionModifier_v2_18.Done", "box_PositionModifier_v2_21.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_26();
    l0 = self.box_PlayerSpeedModifier_v3_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1053620889", "1053620889", "FATHER_010_B12", "box_OutputOrder_v2_16.Out", "box_PlayerSpeedModifier_v3_26.ApplySpeedFactor", clone:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_32();
    l0 = self.box_PostFx_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|266562974", "266562974", "FATHER_010_B12", "box_OutputOrder_v2_16.Out", "box_PostFx_v3_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_13();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|377124333", "377124333", "FATHER_010_B12", "box_OutputOrder_v2_16.Out", "box_CHEAT_SetEnvironmentTimeScale_13.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_25();
    l0 = self.box_Music_Quest_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|496941384", "496941384", "FATHER_010_B12", "box_OutputOrder_v2_16.Out", "box_Music_Quest_v2_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1004986253", "1004986253", "FATHER_010_B12", "box_OutputOrder_v2_16.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_17_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_70();
    l0 = self.box_EntityStatusListener_17;
    l1 = self.box_Delay_v5_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|719050839", "719050839", "FATHER_010_B12", "box_EntityStatusListener_17.Loaded", "box_Delay_v5_70.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DynamicLightModifier_29_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1093820074", "1093820074", "FATHER_010_B12", "box_DynamicLightModifier_29.Enabled", "box_Delay_v5_57.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_CoopActivePlayers_65_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_65_OnePlayer();
    l0 = self.box_CoopActivePlayers_65;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1957933687", "1957933687", "FATHER_010_B12", "box_CoopActivePlayers_65.OnePlayer", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_65_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_65;
    l1 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|50031202", "50031202", "FATHER_010_B12", "box_CoopActivePlayers_65.PlayerAdded", "box_MultipleOR_60.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CoopActivePlayers_65_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_65_TwoPlayers();
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_CoopActivePlayers_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|928739724", "928739724", "FATHER_010_B12", "box_CoopActivePlayers_65.TwoPlayers", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_96_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_104();
    l0 = self.box_MultipleOR_96;
    l1 = self.box_Gate_v3_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1457687621", "1457687621", "FATHER_010_B12", "box_MultipleOR_96.Out", "box_Gate_v3_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_91_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_79();
    l0 = self.box_Delay_v5_91;
    l1 = self.box_PlayDialog_v6_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|128682098", "128682098", "FATHER_010_B12", "box_Delay_v5_91.TimeElapsed", "box_PlayDialog_v6_79.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_54_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_80();
    l0 = self.box_Delay_v5_54;
    l1 = self.box_MultipleAND_v2_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1605860928", "1605860928", "FATHER_010_B12", "box_Delay_v5_54.TimeElapsed", "box_MultipleAND_v2_80.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_GetPlayerGroup_v2_1_Out()
    local l0;
    self:OnExit_box_GetPlayerGroup_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1562951830", "1562951830", "FATHER_010_B12", "box_GetPlayerGroup_v2_1.Out", "box_ActivityAcknowledgeGate_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Delay_v5_120_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_80();
    l0 = self.box_Delay_v5_120;
    l1 = self.box_MultipleAND_v2_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|117224922", "117224922", "FATHER_010_B12", "box_Delay_v5_120.TimeElapsed", "box_MultipleAND_v2_80.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_73_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_2();
    l0 = self.box_Delay_v5_73;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|453921119", "453921119", "FATHER_010_B12", "box_Delay_v5_73.TimeElapsed", "box_MissionBlockLayer_2.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_41();
    l0 = self.box_ActivityInitialized_7;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1924778806", "1924778806", "FATHER_010_B12", "box_ActivityInitialized_7.Out", "box_ActivityMiscInfoModifier_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_75_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_85();
    l0 = self.box_Delay_v5_75;
    l1 = self.box_ProximityRadiusListener_v3_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1277739222", "1277739222", "FATHER_010_B12", "box_Delay_v5_75.Started", "box_ProximityRadiusListener_v3_85.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_75_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_85();
    l0 = self.box_Delay_v5_75;
    l1 = self.box_ProximityRadiusListener_v3_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|118975571", "118975571", "FATHER_010_B12", "box_Delay_v5_75.TimeElapsed", "box_ProximityRadiusListener_v3_85.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_24_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_19();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|137277555", "137277555", "FATHER_010_B12", "box_ParticleSystem_v3_24.Stopped", "box_ParticleSystem_v3_19.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_10_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_SoundModifier_v2_10;
    l1 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1480142291", "1480142291", "FATHER_010_B12", "box_SoundModifier_v2_10.Started", "box_Delay_v5_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_72();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1765217334", "1765217334", "FATHER_010_B12", "box_OutputOrder_v2_8.Out", "box_Simple_Node_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_17();
    l0 = self.box_EntityStatusListener_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|439628851", "439628851", "FATHER_010_B12", "box_OutputOrder_v2_8.Out", "box_EntityStatusListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConsoleCommand_v3_118();
    l0 = self.box_ConsoleCommand_v3_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|585369397", "585369397", "FATHER_010_B12", "box_OutputOrder_v2_8.Out", "box_ConsoleCommand_v3_118.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_DynamicLightModifier_31_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_24();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1182433664", "1182433664", "FATHER_010_B12", "box_DynamicLightModifier_31.Disabled", "box_ParticleSystem_v3_24.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_111_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_110();
    l0 = self.box_GroupSizeListener_v5_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|836339022", "836339022", "FATHER_010_B12", "box_Compare_Integers_111.A_le_B", "box_GroupSizeListener_v5_110.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_55_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1354602615", "1354602615", "FATHER_010_B12", "box_ParticleSystem_v3_55.Started", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_112_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_110();
    l0 = self.box_SpawnAI_112;
    l1 = self.box_GroupSizeListener_v5_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1479966139", "1479966139", "FATHER_010_B12", "box_SpawnAI_112.Spawned", "box_GroupSizeListener_v5_110.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_95_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_10();
    l0 = self.box_SoundModifier_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1805544820", "1805544820", "FATHER_010_B12", "box_OutputOrder_v2_95.Out", "box_SoundModifier_v2_10.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_95_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_94();
    l0 = self.box_Music_Quest_v2_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1354651409", "1354651409", "FATHER_010_B12", "box_OutputOrder_v2_95.Out", "box_Music_Quest_v2_94.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_81_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1074278475", "1074278475", "FATHER_010_B12", "box_ParticleSystem_v3_81.Started", "box_OutputOrder_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_88_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_90();
    l0 = self.box_Bind_v4_88;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|493820418", "493820418", "FATHER_010_B12", "box_Bind_v4_88.UnBound", "box_Simple_Node_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_14();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_13;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|354553851", "354553851", "FATHER_010_B12", "box_CHEAT_SetEnvironmentTimeScale_13.Out", "box_SetTimeOfDay_14.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_69();
    l0 = self.box_GunsForHireSystemModifier_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|685544041", "685544041", "FATHER_010_B12", "box_ActivityMiscInfoModifier_v2_41.Out", "box_GunsForHireSystemModifier_69.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Boundaries_66();
    l0 = self.box_MultipleOR_62;
    l1 = self.box_Boundaries_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1717077796", "1717077796", "FATHER_010_B12", "box_MultipleOR_62.Out", "box_Boundaries_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_2_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_11();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|327510691", "327510691", "FATHER_010_B12", "box_MissionBlockLayer_2.Disabled", "box_MissionBlockLayer_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_43();
    l0 = self.box_SoundModifier_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1478983237", "1478983237", "FATHER_010_B12", "box_OutputOrder_v2_38.Out", "box_SoundModifier_v2_43.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_35();
    l0 = self.box_SoundModifier_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|18198448", "18198448", "FATHER_010_B12", "box_OutputOrder_v2_38.Out", "box_SoundModifier_v2_35.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_42();
    l0 = self.box_SoundModifier_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1382470722", "1382470722", "FATHER_010_B12", "box_OutputOrder_v2_38.Out", "box_SoundModifier_v2_42.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_36();
    l0 = self.box_SoundModifier_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|268390940", "268390940", "FATHER_010_B12", "box_OutputOrder_v2_38.Out", "box_SoundModifier_v2_36.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_107_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_107;
    l1 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|132250114", "132250114", "FATHER_010_B12", "box_Delay_v5_107.Started", "box_MultipleOR_116.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_107_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_102();
    l0 = self.box_Delay_v5_107;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|767913283", "767913283", "FATHER_010_B12", "box_Delay_v5_107.TimeElapsed", "box_HealthModifier_v2_102.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_103_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_101();
    l0 = self.box_Delay_v5_103;
    l1 = self.box_Delay_v5_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|2045176034", "2045176034", "FATHER_010_B12", "box_Delay_v5_103.Started", "box_Delay_v5_101.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_103_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_103;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|77364198", "77364198", "FATHER_010_B12", "box_Delay_v5_103.TimeElapsed", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_53_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|141578920", "141578920", "FATHER_010_B12", "box_ParticleSystem_v3_53.Started", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_119_Out()
    self:OnExit_box_SetInteger_v2_119_Out();
end;

function export:f_box_Delay_v5_101_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_114();
    l0 = self.box_Delay_v5_101;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|199477322", "199477322", "FATHER_010_B12", "box_Delay_v5_101.TimeElapsed", "box_Simple_Node_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_118_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_119();
    l0 = self.box_ConsoleCommand_v3_118;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1055593010", "1055593010", "FATHER_010_B12", "box_ConsoleCommand_v3_118.Execute", "box_SetInteger_v2_119.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_70_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_27();
    l0 = self.box_Delay_v5_70;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1317230294", "1317230294", "FATHER_010_B12", "box_Delay_v5_70.TimeElapsed", "box_MissionBlockLayer_27.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_29();
    l0 = self.box_Delay_v5_30;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|871586312", "871586312", "FATHER_010_B12", "box_Delay_v5_30.TimeElapsed", "box_DynamicLightModifier_29.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_82_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_67();
    l0 = self.box_SoundModifier_v2_82;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1268436017", "1268436017", "FATHER_010_B12", "box_SoundModifier_v2_82.Started", "box_Compare_Integers_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_22();
    l0 = self.box_MultipleOR_23;
    l1 = self.box_PositionModifier_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|362937518", "362937518", "FATHER_010_B12", "box_MultipleOR_23.Out", "box_PositionModifier_v2_22.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_TeleportPawns_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_87();
    l0 = self.box_TeleportPawns_84;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|943497679", "943497679", "FATHER_010_B12", "box_TeleportPawns_84.Out", "box_ParticleSystem_v3_87.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_106_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_100();
    l0 = self.box_Delay_v5_106;
    l1 = self.box_Random_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1474282419", "1474282419", "FATHER_010_B12", "box_Delay_v5_106.TimeElapsed", "box_Random_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_19_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_54();
    l0 = self.box_Delay_v5_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|460453827", "460453827", "FATHER_010_B12", "box_ParticleSystem_v3_19.Stopped", "box_Delay_v5_54.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_44();
    l0 = self.box_SoundModifier_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|437850610", "437850610", "FATHER_010_B12", "box_OutputOrder_v2_46.Out", "box_SoundModifier_v2_44.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_47();
    l0 = self.box_SoundModifier_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|303385419", "303385419", "FATHER_010_B12", "box_OutputOrder_v2_46.Out", "box_SoundModifier_v2_47.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_46_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_37();
    l0 = self.box_SoundModifier_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1787359542", "1787359542", "FATHER_010_B12", "box_OutputOrder_v2_46.Out", "box_SoundModifier_v2_37.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_46_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_45();
    l0 = self.box_SoundModifier_v2_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|323488504", "323488504", "FATHER_010_B12", "box_OutputOrder_v2_46.Out", "box_SoundModifier_v2_45.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_105_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_115();
    l0 = self.box_GroupSizeListener_v5_105;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|912195474", "912195474", "FATHER_010_B12", "box_GroupSizeListener_v5_105.Disabled", "box_Simple_Node_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_105_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_108();
    l0 = self.box_GroupSizeListener_v5_105;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|109089318", "109089318", "FATHER_010_B12", "box_GroupSizeListener_v5_105.MemberRemoved", "box_Compare_Integers_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_22_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_18();
    l0 = self.box_PositionModifier_v2_22;
    l1 = self.box_PositionModifier_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|283242731", "283242731", "FATHER_010_B12", "box_PositionModifier_v2_22.Done", "box_PositionModifier_v2_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_113();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|2143587460", "2143587460", "FATHER_010_B12", "box_OutputOrder_v2_89.Out", "box_Simple_Node_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_90();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|950043287", "950043287", "FATHER_010_B12", "box_OutputOrder_v2_89.Out", "box_Simple_Node_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_27_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|734601368", "734601368", "FATHER_010_B12", "box_MissionBlockLayer_27.Activated", "box_Delay_v5_73.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_85_AllFar()
    self:OnExit_box_ProximityRadiusListener_v3_85_AllFar();
end;

function export:f_box_ProximityRadiusListener_v3_85_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_85_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_85_SomeoneFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_85_SomeoneFar();
    params = self:OnEnter_box_Bind_v4_77();
    l0 = self.box_ProximityRadiusListener_v3_85;
    l1 = self.box_Bind_v4_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1606954804", "1606954804", "FATHER_010_B12", "box_ProximityRadiusListener_v3_85.SomeoneFar", "box_Bind_v4_77.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_85_SomeoneNear()
    self:OnExit_box_ProximityRadiusListener_v3_85_SomeoneNear();
end;

function export:f_box_Bind_v4_76_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_88();
    l0 = self.box_Bind_v4_76;
    l1 = self.box_Bind_v4_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1041009849", "1041009849", "FATHER_010_B12", "box_Bind_v4_76.UnBound", "box_Bind_v4_88.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_116_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_80();
    l0 = self.box_MultipleOR_116;
    l1 = self.box_MultipleAND_v2_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1801951442", "1801951442", "FATHER_010_B12", "box_MultipleOR_116.Out", "box_MultipleAND_v2_80.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_Bind_v4_77_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_86();
    l0 = self.box_Bind_v4_77;
    l1 = self.box_Bind_v4_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|797605531", "797605531", "FATHER_010_B12", "box_Bind_v4_77.Bound", "box_Bind_v4_86.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_33_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_84();
    l0 = self.box_TeleportPawns_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|406399448", "406399448", "FATHER_010_B12", "box_ParticleSystem_v3_33.Started", "box_TeleportPawns_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_87_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_76();
    l0 = self.box_Bind_v4_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|824632948", "824632948", "FATHER_010_B12", "box_ParticleSystem_v3_87.Started", "box_Bind_v4_76.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|@Look again");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_90_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|@Look again Player");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_113_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|@RespawnBlessed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_115_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|@Start_Tornado_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_72_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|@Stop_Tornado_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_71_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|@StopListeningExitZone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_39_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|@StopSetup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_114_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|9205815");
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

function export:OnEnter_box_SoundModifier_v2_47()
    local params;
    params = {
        -- Pawns,
        [0] = "2104380476597781346",
        -- SoundId,
        [1] = "2786272169",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_97()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#D2CB9176",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|22217549");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_108_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_105;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_83()
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

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|96584176");
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

function export:OnEnter_box_HealthModifier_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|116521253");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#D2CB9176",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_20()
    local params;
    params = {
        -- blendTime,
        [1] = 5,
        -- endTarget,
        [4] = "2103983269860104544",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103983198894578008",
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_Random_100()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_109()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105129477462847277",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_57()
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

function export:OnEnter_box_SoundModifier_v2_42()
    local params;
    params = {
        -- Pawns,
        [0] = "2104380482998289252",
        -- SoundId,
        [1] = "471235639",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_104()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_69()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_58()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|393805935");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_14_Out,
    });
    params = {
        -- Hour,
        [0] = 15,
        -- Minute,
        [1] = 40,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|423956310");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_63_A_eq_B,
    });
    l0 = self.box_Delay_v5_57;
    params = {
        -- A,
        [0] = 2,
        -- B,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_11()
    local params, l0;
    DrawTextToScreen("Comment: Deactivate Fog", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Deactivate Fog");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|425410860");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_11_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "36167440667521927",
        -- missionLayerId,
        [1] = "27160246229144451",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_21()
    local params;
    params = {
        -- blendTime,
        [1] = 9,
        -- endTarget,
        [4] = "2103983269860104548",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103983198894578008",
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_37()
    local params;
    params = {
        -- Pawns,
        [0] = "2104380482998289252",
        -- SoundId,
        [1] = "2786272169",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|512804917");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
                [2] = self.f_box_OutputOrder_v2_51_Out_2,
                [3] = self.f_box_OutputOrder_v2_51_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_52()
    local params;
    params = {
        -- Pawns,
        [0] = "2104368697928885251",
        -- SoundId,
        [1] = "2786272169",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_99()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105129395803942368",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_110()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#D2CB9176",
    };
    return params;
end;

function export:OnEnter_box_Boundaries_68()
    local params, l0;
    l0 = self.box_CoopActivePlayers_65;
    params = {
        -- ePlayer,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|580202476");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|613979901");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_117()
    local params;
    params = {
        -- Index,
        [0] = self.DoweDoTheZombieOrNot,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_34()
    local params;
    DrawTextToScreen("Comment: Father ETHEREAL - Everything you've done... Everything you've earned... Everything you've fought for is for nothing.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Father ETHEREAL - Everything you've done... Everything you've earned... Everything you've fought for is for nothing.");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1409084277",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_44()
    local params;
    params = {
        -- Pawns,
        [0] = "2104380471436690272",
        -- SoundId,
        [1] = "2786272169",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|748055230");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_67_A_eq_B,
    });
    l0 = self.box_Delay_v5_57;
    params = {
        -- A,
        [0] = 6,
        -- B,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_43()
    local params;
    params = {
        -- Pawns,
        [0] = "2104380471436690272",
        -- SoundId,
        [1] = "471235639",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|774862933");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_98_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_97;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_26()
    local params;
    params = {
        -- blendTime,
        [0] = 1,
        -- factor,
        [1] = 0.85,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|818341722");
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
                [0] = self.f_box_OutputOrder_v2_64_Out_0,
                [1] = self.f_box_OutputOrder_v2_64_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_28()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_80()
    local params;
    DrawTextToScreen("Comment: To confirm that the dialog is really finished before moving on the next beat", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MultipleAND_v2')-- Comment: To confirm that the dialog is really finished before moving on the next beat");
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Boundaries_66()
    local params, l0;
    l0 = self.box_CoopActivePlayers_65;
    params = {
        -- ePlayer,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_86()
    local params;
    params = {
        -- EntityA,
        [1] = self.NPCOutofTheInvisibleWall,
        -- EntityB,
        [2] = "2105017326385524461",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|911622659");
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

function export:OnEnter_box_ParticleSystem_v3_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|962538133");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_56_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104381271307197309",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_18()
    local params;
    params = {
        -- blendTime,
        [1] = 9,
        -- endTarget,
        [4] = "2103983269860104540",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103983198894578008",
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_35()
    local params;
    params = {
        -- Pawns,
        [0] = "2104380476597781346",
        -- SoundId,
        [1] = "471235639",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1011642961");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
                [3] = self.f_box_OutputOrder_v2_16_Out_3,
                [4] = self.f_box_OutputOrder_v2_16_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103499353999073660",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1047724581");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_29_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2104713060263400721",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_91()
    local params;
    DrawTextToScreen("Comment: Delay, so that the line doesn't start RIGHT after the father died", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Delay_v5')-- Comment: Delay, so that the line doesn't start RIGHT after the father died");
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_49()
    local params;
    params = {
        -- Pawns,
        [0] = "2104368674774230013",
        -- SoundId,
        [1] = "2786272169",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_54()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1122829940");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_1_Out,
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
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_48()
    local params;
    params = {
        -- Pawns,
        [0] = "2104368700686640133",
        -- SoundId,
        [1] = "2786272169",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_73()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_75()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1243047045");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_24_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103983198894578008",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_10()
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

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1274257371");
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

function export:OnEnter_box_DynamicLightModifier_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1277635321");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_31_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2104713060263400721",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_79()
    local params;
    DrawTextToScreen("Comment: Stacey, the guy - This is totally fucking crazy. What the fuck? Is he comin' back!?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Stacey, the guy - This is totally fucking crazy. What the fuck? Is he comin' back!?");
    params = {
        -- Group,
        [0] = "2101853841111661705",
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2467866744",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_50()
    local params;
    params = {
        -- Pawns,
        [0] = "2104368704667034633",
        -- SoundId,
        [1] = "2786272169",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1318171477");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_111_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_110;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1327923777");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_55_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104381267517643643",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_112()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105129479425781601",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1386388783");
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

function export:OnEnter_box_ParticleSystem_v3_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1436246380");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_81_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104327992349153654",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_88()
    local params;
    params = {
        -- EntityA,
        [1] = self.NPCOutofTheInvisibleWall,
        -- EntityB,
        [2] = "2105017326385524461",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_13()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_25()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 8,
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

function export:OnEnter_box_ActivityMiscInfoModifier_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1530563292");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_41_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_2()
    local params, l0;
    DrawTextToScreen("Comment: Activate Blocking Fog covering B12 spawns", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Activate Blocking Fog covering B12 spawns");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1541211748");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_2_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "36167440667521927",
        -- missionLayerId,
        [1] = "27160254428497337",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1543226890");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [2] = self.f_box_OutputOrder_v2_38_Out_2,
                [5] = self.f_box_OutputOrder_v2_38_Out_5,
                [6] = self.f_box_OutputOrder_v2_38_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_36()
    local params;
    params = {
        -- Pawns,
        [0] = "2104380487976928102",
        -- SoundId,
        [1] = "471235639",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_107()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_103()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1596706779");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_53_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104092871631051551",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1598424323");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_119_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_101()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 45,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_118()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "zombie",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_70()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.25,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_82()
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

function export:OnEnter_box_Music_Quest_v2_94()
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

function export:OnEnter_box_PostFx_v3_32()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "scopolaminemedium",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_84()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2105017368664108822",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.NPCOutofTheInvisibleWall,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_106()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1864982288");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_19_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104327992349153654",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1897391975");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
                [2] = self.f_box_OutputOrder_v2_46_Out_2,
                [4] = self.f_box_OutputOrder_v2_46_Out_4,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_9()
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

function export:OnEnter_box_GroupSizeListener_v5_105()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#D2CB9176",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_22()
    local params;
    params = {
        -- blendTime,
        [1] = 9,
        -- endTarget,
        [4] = "2103983269860104552",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103983198894578008",
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_45()
    local params;
    params = {
        -- Pawns,
        [0] = "2104380487976928102",
        -- SoundId,
        [1] = "2786272169",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|1955274643");
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

function export:OnEnter_box_MissionBlockLayer_27()
    local params, l0;
    DrawTextToScreen("Comment: Deactivate Fog", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Deactivate Fog");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|2041504699");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_27_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189038431774753",
        -- missionLayerId,
        [1] = "27160247036405807",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_85()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#0382900D",
        -- farZone,
        [2] = 15,
        -- id2,
        [3] = "2103606862063610020",
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_76()
    local params;
    params = {
        -- EntityA,
        [1] = self.NPCOutofTheInvisibleWall,
        -- EntityB,
        [2] = "2105017341533253361",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_77()
    local params;
    params = {
        -- EntityA,
        [1] = self.NPCOutofTheInvisibleWall,
        -- EntityB,
        [2] = "2105017341533253361",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|2114544909");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_33_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2105017341533253361",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FATHER_010_B12|2121116284");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_87_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2105017326385524461",
    };
    return params;
end;

function export:OnExit_box_CoopActivePlayers_65_OnePlayer()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_65;
    l1 = self.box_Boundaries_66;
    l1:GetLuaBox().ePlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_65_TwoPlayers()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_65;
    l1 = self.box_Boundaries_66;
    l1:GetLuaBox().ePlayer = l0:GetDataOutValue(0);
    l1 = self.box_Boundaries_68;
    l1:GetLuaBox().ePlayer = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayerGroup_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_119_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.DoweDoTheZombieOrNot = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_85_AllFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_85;
    self.NPCOutofTheInvisibleWall = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_85_AllNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_85;
    self.NPCOutofTheInvisibleWall = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_85_SomeoneFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_85;
    self.NPCOutofTheInvisibleWall = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_85_SomeoneNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_85;
    self.NPCOutofTheInvisibleWall = l0:GetDataOutValue(0);
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
