LUACT* -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_050/key01_050_debrief.domino
-- User graph: KEY01_050_DEBRIEF
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/BinkPlayer_v6.lua");
        cboxRes:RegisterBox("Domino/System/BinkPlayerListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ExtinguishAllFires.lua");
        cboxRes:RegisterBox("Domino/System/ForceExitVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[264881612.bnk]], "CSoundResource");
        cboxRes:LoadResource([[ui\singleplayer\video\07_room_loadingscreen_concept_v001.bik]], "CBinkResource");
        cboxRes:LoadResource([[354942044.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2806627700.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1856814043.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1455224898.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3287598536.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_DEBRIEF.KEY01_050_DEBRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua")] = {
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
                name = "KeepBlackBars",
                type = "bool",
            },
            [1] = {
                name = "KeepGodMode",
                type = "bool",
            },
            [2] = {
                name = "KeepHUDMode",
                type = "bool",
            },
            [3] = {
                name = "KeepWeaponHolstered",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "BasicSetup",
            },
            [1] = {
                name = "HolsterWeapon",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Holstered",
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
                name = "Enable_Blackbars",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/AI/AgentGroupModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "AddGroup",
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
                name = "AnimalGroup",
                type = "group",
            },
            [1] = {
                name = "PawnGroup",
                type = "group",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/BinkPlayer_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Preload",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Played",
                delayed = false,
            },
            [1] = {
                name = "Preloaded",
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
                name = "BinkAudio",
                type = "Sound",
            },
            [1] = {
                name = "BinkAudioType",
                type = "SoundType",
            },
            [2] = {
                name = "BinkPathID",
                type = "Video",
            },
            [3] = {
                name = "BinkSound",
                type = "Sound",
            },
            [4] = {
                name = "BinkSoundEnd",
                type = "Sound",
            },
            [5] = {
                name = "BinkSoundEndType",
                type = "SoundType",
            },
            [6] = {
                name = "BinkSoundFade",
                type = "float",
            },
            [7] = {
                name = "BinkSoundType",
                type = "SoundType",
            },
            [8] = {
                name = "BinkVolumePercent",
                type = "float",
            },
            [9] = {
                name = "Loop",
                type = "bool",
            },
            [10] = {
                name = "MaterialName",
                type = "string",
            },
            [11] = {
                name = "ScreenEntity",
                type = "entity",
            },
            [12] = {
                name = "TCR_Music",
                type = "bool",
            },
            [13] = {
                name = "WaitAvailableBinding",
                type = "bool",
            },
        },
        dataInCount = 14,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/BinkPlayerListener_v3.lua")] = {
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
                name = "End",
                delayed = true,
            },
            [3] = {
                name = "Initialized",
                delayed = true,
            },
            [4] = {
                name = "Loaded",
                delayed = true,
            },
            [5] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "BinkPathIDFilter",
                type = "Video",
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
    metadataTable[GetPathID("Domino/System/ExtinguishAllFires.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ForceExitVehicle_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ForceExit",
            },
            [1] = {
                name = "TryExit",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "ForceExitted",
                delayed = false,
            },
            [1] = {
                name = "TryExitted",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "noFail",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "vehicle",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Interrupt",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Interrupted",
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
                name = "ContextFlags",
                type = "list",
            },
            [1] = {
                name = "ID",
                type = "int",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/PostWWiseEventSetState.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetState",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Set",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "SoundId",
                type = "Sound",
            },
            [1] = {
                name = "SoundType",
                type = "SoundType",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/SoundMixing.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "SoundMixing",
                type = "SoundMixing",
            },
        },
        dataInCount = 1,
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
    self._name = "KEY01_050_DEBRIEF";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF";
    self.gFriendlyPlayer = nil;
    self.Vehicle = nil;
    self.eNickRye = nil;
    self.eMarker = nil;
    self.eKimRye = nil;
    self.MetaSequenceID = 0;
    self.box_PlaySequence_v8_17 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|96710714");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_17_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_17_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_17_SPOut__FadeIn_,
                },
                [1] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_17_SPOut__FadeOut_,
                },
            },
            count = 2,
        },
    });
    self.box_RemoveEntity_v2_18 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|117519985");
    l0:SetConnections({
    });
    self.box_PostFx_v3_60 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|149288707");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_60_Disabled,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|230338602");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_PostFx_v3_20 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|295448933");
    l0:SetConnections({
    });
    self.box_PostFx_v3_56 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|318319584");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_56_Disabled,
    });
    self.box_PostFx_v3_47 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|402603918");
    l0:SetConnections({
    });
    self.box_SpawnAI_31 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|411865150");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_31_Spawned,
    });
    self.box_EntityStatusListener_32 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|478075654");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_32_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_32_Loaded,
    });
    self.box_PostFx_v3_55 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|492685163");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_55_Enabled,
    });
    self.box_RemoveEntity_v2_49 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|555537307");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_49_Out,
    });
    self.box_PostWWiseEventSetState_24 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|572745249");
    l0:SetConnections({
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|585610989");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|601101183");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_RemoveEntity_v2_66 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|656593197");
    l0:SetConnections({
    });
    self.box_NarrativeSceneCleanUp_19 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|659232304");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_19_Out,
    });
    self.box_SoundMusicTriggerBox_30 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|853156492");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_30_Started,
    });
    self.box_BinkPlayer_v6_68 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|939725571");
    l0:SetConnections({
    });
    self.box_BinkPlayerListener_v3_69 = cbox:CreateBox("Domino/System/BinkPlayerListener_v3.lua");
    l0 = self.box_BinkPlayerListener_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayerListener_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|972055052");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_BinkPlayerListener_v3_69_Enabled,
        -- End,
        [2] = self.f_box_BinkPlayerListener_v3_69_End,
    });
    self.box_PostWWiseEventSetState_9 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1006762452");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_36 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1040926158");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_36_Loaded,
    });
    self.box_RemoveEntity_v2_51 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1142488659");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_51_Out,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1302815357");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1309849266");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_GunsForHireSystemModifier_25 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1355352494");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GunsForHireSystemModifier_25_Enabled,
    });
    self.box_RemoveEntity_v2_48 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1361272957");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_48_Out,
    });
    self.box_MultipleAND_v2_33 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1431810437");
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
        [0] = self.f_box_MultipleAND_v2_33_Out,
    });
    self.box_SpawnAI_39 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1436859868");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_39_Out,
    });
    self.box_RemoveEntity_v2_50 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1442896068");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_50_Out,
    });
    self.box_VehicleDamageListener_v2_22 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1495117265");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_22_Destroyed,
        -- Enabled,
        [4] = self.f_box_VehicleDamageListener_v2_22_Enabled,
    });
    self.box_Delay_v5_38 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1526706408");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_38_TimeElapsed,
    });
    self.box_StartCelebration_8 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1538951616");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_8_Ended,
    });
    self.box_NarrativeSceneSetup_23 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1611843461");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_23_Holstered,
    });
    self.box_MultipleAND_v2_28 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1620573610");
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
        [0] = self.f_box_MultipleAND_v2_28_Out,
    });
    self.box_MultipleAND_v2_44 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1671639483");
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
        [0] = self.f_box_MultipleAND_v2_44_Out,
    });
    self.box_EntityStatusListener_35 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1871290117");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_35_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_35_Loaded,
    });
    self.box_PostFx_v3_53 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1894835050");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_63 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1944329821");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_7 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1959095634");
    l0:SetConnections({
    });
    self.box_PostWWiseEventSetState_10 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1969536563");
    l0:SetConnections({
    });
    self.box_Delay_v5_73 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1982031009");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_73_TimeElapsed,
    });
    self.box_RemoveEntity_v2_65 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1995957901");
    l0:SetConnections({
    });
    self.box_Delay_v5_59 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|2073847112");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_59_TimeElapsed,
    });
    self.box_TeleportPawns_34 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|2074361427");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_34_Out,
    });
    self.box_StartMetaSequence_71 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|2087414889");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_71_Out,
    });
    self.box_RemoveEntity_v2_64 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|2110766646");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1681369383", "1681369383", "KEY01_050_DEBRIEF", "In", "box_ActivityAcknowledgeGate_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_61();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|231716031", "231716031", "KEY01_050_DEBRIEF", "box_Simple_Node_62.Out", "box_SoundMixing_61.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_30();
    l0 = self.box_SoundMusicTriggerBox_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|231969037", "231969037", "KEY01_050_DEBRIEF", "box_Simple_Node_27.Out", "box_SoundMusicTriggerBox_30.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_ForceExitVehicle_v2_54_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_48();
    l0 = self.box_RemoveEntity_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1941414", "1941414", "KEY01_050_DEBRIEF", "box_ForceExitVehicle_v2_54.ForceExitted", "box_RemoveEntity_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_17_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_17;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1973159213", "1973159213", "KEY01_050_DEBRIEF", "box_PlaySequence_v8_17.Finished", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_17_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_PlaySequence_v8_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1387364200", "1387364200", "KEY01_050_DEBRIEF", "box_PlaySequence_v8_17.Skipped", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_17_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = self.box_PlaySequence_v8_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1634824340", "1634824340", "KEY01_050_DEBRIEF", "box_PlaySequence_v8_17.SPOut", "box_OutputOrder_v2_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_17_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_47();
    l0 = self.box_PlaySequence_v8_17;
    l1 = self.box_PostFx_v3_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1327015866", "1327015866", "KEY01_050_DEBRIEF", "box_PlaySequence_v8_17.SPOut", "box_PostFx_v3_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PostFx_v3_60_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_PostFx_v3_60;
    l1 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|600724650", "600724650", "KEY01_050_DEBRIEF", "box_PostFx_v3_60.Disabled", "box_Delay_v5_21.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StopMetaSequence_v4_72_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_39();
    l0 = self.box_SpawnAI_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|827819473", "827819473", "KEY01_050_DEBRIEF", "box_StopMetaSequence_v4_72.Stopped", "box_SpawnAI_39.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_8();
    l0 = self.box_StartCelebration_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|948759703", "948759703", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_14.Out", "box_StartCelebration_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_27();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1254098432", "1254098432", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_14.Out", "box_Simple_Node_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_62();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1876584000", "1876584000", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_14.Out", "box_Simple_Node_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|815813039", "815813039", "KEY01_050_DEBRIEF", "box_SetContextualStrategy_12.Out", "box_MultipleAND_v2_28.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_72();
    l0 = self.box_MultipleOR_16;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1640892999", "1640892999", "KEY01_050_DEBRIEF", "box_MultipleOR_16.Out", "box_StopMetaSequence_v4_72.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_56_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_60();
    l0 = self.box_PostFx_v3_56;
    l1 = self.box_PostFx_v3_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1586888064", "1586888064", "KEY01_050_DEBRIEF", "box_PostFx_v3_56.Disabled", "box_PostFx_v3_60.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_31_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_32();
    l0 = self.box_SpawnAI_31;
    l1 = self.box_EntityStatusListener_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|277076798", "277076798", "KEY01_050_DEBRIEF", "box_SpawnAI_31.Spawned", "box_EntityStatusListener_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_53();
    l0 = self.box_PostFx_v3_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|285174100", "285174100", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_58.Out", "box_PostFx_v3_53.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_20();
    l0 = self.box_PostFx_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|44358782", "44358782", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_58.Out", "box_PostFx_v3_20.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_32_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_35();
    l0 = self.box_EntityStatusListener_32;
    l1 = self.box_EntityStatusListener_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1174924682", "1174924682", "KEY01_050_DEBRIEF", "box_EntityStatusListener_32.Enabled", "box_EntityStatusListener_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_32_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_37();
    l0 = self.box_EntityStatusListener_32;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1697190193", "1697190193", "KEY01_050_DEBRIEF", "box_EntityStatusListener_32.Loaded", "box_VehicleModifier_v2_37.SetAsIndestructable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsIndestructable
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_55_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_38();
    l0 = self.box_PostFx_v3_55;
    l1 = self.box_Delay_v5_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|888470065", "888470065", "KEY01_050_DEBRIEF", "box_PostFx_v3_55.Enabled", "box_Delay_v5_38.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_6();
    l0 = self.box_RemoveEntity_v2_49;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|2052518006", "2052518006", "KEY01_050_DEBRIEF", "box_RemoveEntity_v2_49.Out", "box_ActivityEnd_6.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_19();
    l0 = self.box_Delay_v5_21;
    l1 = self.box_NarrativeSceneCleanUp_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|61181709", "61181709", "KEY01_050_DEBRIEF", "box_Delay_v5_21.TimeElapsed", "box_NarrativeSceneCleanUp_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_5();
    l0 = self.box_ActivityInitialized_4;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|611729674", "611729674", "KEY01_050_DEBRIEF", "box_ActivityInitialized_4.Out", "box_GetPlayerGroup_v2_5.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = self.box_NarrativeSceneCleanUp_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1781350164", "1781350164", "KEY01_050_DEBRIEF", "box_NarrativeSceneCleanUp_19.Out", "box_OutputOrder_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_12();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|245958739", "245958739", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_42.Out", "box_SetContextualStrategy_12.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_41();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|979727814", "979727814", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_42.Out", "box_SetContextualStrategy_41.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AgentGroupModifier_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|960218376", "960218376", "KEY01_050_DEBRIEF", "box_AgentGroupModifier_40.Out", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundMusicTriggerBox_30_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_9();
    l0 = self.box_SoundMusicTriggerBox_30;
    l1 = self.box_PostWWiseEventSetState_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1314003020", "1314003020", "KEY01_050_DEBRIEF", "box_SoundMusicTriggerBox_30.Started", "box_PostWWiseEventSetState_9.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_44();
    l0 = self.box_MultipleAND_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|697592432", "697592432", "KEY01_050_DEBRIEF", "box_SetContextualStrategy_45.Out", "box_MultipleAND_v2_44.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetContextualStrategy_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|322328018", "322328018", "KEY01_050_DEBRIEF", "box_SetContextualStrategy_41.Out", "box_MultipleAND_v2_28.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_VehicleModifier_v2_37_OnSetAsIndestructible()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_37();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|896686366", "896686366", "KEY01_050_DEBRIEF", "box_VehicleModifier_v2_37.OnSetAsIndestructible", "box_VehicleModifier_v2_37.SetCommandeerDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetCommandeerDisabled
    l0:Exec(9, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_37_OnSetCommandeerDisabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_33();
    l0 = self.box_MultipleAND_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|2060914095", "2060914095", "KEY01_050_DEBRIEF", "box_VehicleModifier_v2_37.OnSetCommandeerDisabled", "box_MultipleAND_v2_33.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1329426473", "1329426473", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_11.Out", "box_StartMetaSequence_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostWWiseEventSetState_10();
    l0 = self.box_PostWWiseEventSetState_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|2015610473", "2015610473", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_11.Out", "box_PostWWiseEventSetState_10.SetState", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetState
    l0:Exec(0, params);
end;

function export:f_box_BinkPlayerListener_v3_69_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayer_v6_68();
    l0 = self.box_BinkPlayerListener_v3_69;
    l1 = self.box_BinkPlayer_v6_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|32014974", "32014974", "KEY01_050_DEBRIEF", "box_BinkPlayerListener_v3_69.Enabled", "box_BinkPlayer_v6_68.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_BinkPlayerListener_v3_69_End()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_BinkPlayerListener_v3_69;
    l1 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1439161317", "1439161317", "KEY01_050_DEBRIEF", "box_BinkPlayerListener_v3_69.End", "box_Delay_v5_73.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_36_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_33();
    l0 = self.box_EntityStatusListener_36;
    l1 = self.box_MultipleAND_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1456227808", "1456227808", "KEY01_050_DEBRIEF", "box_EntityStatusListener_36.Loaded", "box_MultipleAND_v2_33.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_GetPlayerGroup_v2_5_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_13();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|578010565", "578010565", "KEY01_050_DEBRIEF", "box_GetPlayerGroup_v2_5.Out", "box_GetPawnVehicleInfo_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_13_InVehicle()
    self:OnExit_box_GetPawnVehicleInfo_13_InVehicle();
end;

function export:f_box_GetPawnVehicleInfo_13_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_13_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_13_Out()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_13_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentGroupModifier_40();
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1534751994", "1534751994", "KEY01_050_DEBRIEF", "box_GetPawnVehicleInfo_13.Out", "box_AgentGroupModifier_40.AddGroup", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddGroup
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_49();
    l0 = self.box_RemoveEntity_v2_51;
    l1 = self.box_RemoveEntity_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|150932395", "150932395", "KEY01_050_DEBRIEF", "box_RemoveEntity_v2_51.Out", "box_RemoveEntity_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_7();
    l0 = self.box_RemoveEntity_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|582603268", "582603268", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_67.Out", "box_RemoveEntity_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_63();
    l0 = self.box_RemoveEntity_v2_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|622023682", "622023682", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_67.Out", "box_RemoveEntity_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_67_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_18();
    l0 = self.box_RemoveEntity_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|818453300", "818453300", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_67.Out", "box_RemoveEntity_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_67_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_64();
    l0 = self.box_RemoveEntity_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|237264057", "237264057", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_67.Out", "box_RemoveEntity_v2_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_67_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_66();
    l0 = self.box_RemoveEntity_v2_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1578765111", "1578765111", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_67.Out", "box_RemoveEntity_v2_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_67_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_65();
    l0 = self.box_RemoveEntity_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|152172861", "152172861", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_67.Out", "box_RemoveEntity_v2_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|913652861", "913652861", "KEY01_050_DEBRIEF", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1648713943", "1648713943", "KEY01_050_DEBRIEF", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1827182800", "1827182800", "KEY01_050_DEBRIEF", "box_MultipleOR_3.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_GunsForHireSystemModifier_25_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_GunsForHireSystemModifier_25;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1225576182", "1225576182", "KEY01_050_DEBRIEF", "box_GunsForHireSystemModifier_25.Enabled", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ExtinguishAllFires_15();
    l0 = self.box_RemoveEntity_v2_48;
    l1 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1432268770", "1432268770", "KEY01_050_DEBRIEF", "box_RemoveEntity_v2_48.Out", "box_ExtinguishAllFires_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_56();
    l0 = self.box_MultipleAND_v2_33;
    l1 = self.box_PostFx_v3_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1584929687", "1584929687", "KEY01_050_DEBRIEF", "box_MultipleAND_v2_33.Out", "box_PostFx_v3_56.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_34();
    l0 = self.box_SpawnAI_39;
    l1 = self.box_TeleportPawns_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|752845550", "752845550", "KEY01_050_DEBRIEF", "box_SpawnAI_39.Out", "box_TeleportPawns_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_51();
    l0 = self.box_RemoveEntity_v2_50;
    l1 = self.box_RemoveEntity_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1630790699", "1630790699", "KEY01_050_DEBRIEF", "box_RemoveEntity_v2_50.Out", "box_RemoveEntity_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1285126656", "1285126656", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_26.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostWWiseEventSetState_24();
    l0 = self.box_PostWWiseEventSetState_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1184611097", "1184611097", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_26.Out", "box_PostWWiseEventSetState_24.SetState", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetState
    l0:Exec(0, params);
end;

function export:f_box_VehicleDamageListener_v2_22_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_52();
    l0 = self.box_VehicleDamageListener_v2_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|442415459", "442415459", "KEY01_050_DEBRIEF", "box_VehicleDamageListener_v2_22.Destroyed", "box_ActivityRetry_52.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_22_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ForceExitVehicle_v2_54();
    l0 = self.box_VehicleDamageListener_v2_22;
    l1 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|631348955", "631348955", "KEY01_050_DEBRIEF", "box_VehicleDamageListener_v2_22.Enabled", "box_ForceExitVehicle_v2_54.ForceExit", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceExit
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_38_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = self.box_Delay_v5_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|433859363", "433859363", "KEY01_050_DEBRIEF", "box_Delay_v5_38.TimeElapsed", "box_OutputOrder_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_8_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_50();
    l0 = self.box_StartCelebration_8;
    l1 = self.box_RemoveEntity_v2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|702966916", "702966916", "KEY01_050_DEBRIEF", "box_StartCelebration_8.Ended", "box_RemoveEntity_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_NarrativeSceneSetup_23_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_55();
    l0 = self.box_NarrativeSceneSetup_23;
    l1 = self.box_PostFx_v3_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|42040210", "42040210", "KEY01_050_DEBRIEF", "box_NarrativeSceneSetup_23.Holstered", "box_PostFx_v3_55.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_MultipleAND_v2_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|466089748", "466089748", "KEY01_050_DEBRIEF", "box_MultipleAND_v2_28.Out", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_25();
    l0 = self.box_MultipleAND_v2_44;
    l1 = self.box_GunsForHireSystemModifier_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|685912523", "685912523", "KEY01_050_DEBRIEF", "box_MultipleAND_v2_44.Out", "box_GunsForHireSystemModifier_25.EnableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableGFHSystem
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_44();
    l0 = self.box_MultipleAND_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|461096885", "461096885", "KEY01_050_DEBRIEF", "box_SetContextualStrategy_43.Out", "box_MultipleAND_v2_44.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_70();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1599039994", "1599039994", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_57.Out", "box_GetLocalPlayer_v2_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_59();
    l0 = self.box_Delay_v5_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|157312976", "157312976", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_57.Out", "box_Delay_v5_59.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_57_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_61();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1895078640", "1895078640", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_57.Out", "box_SoundMixing_61.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|962388466", "962388466", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_57.Out", "box_OutputOrder_v2_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_35_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_36();
    l0 = self.box_EntityStatusListener_35;
    l1 = self.box_EntityStatusListener_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|90714572", "90714572", "KEY01_050_DEBRIEF", "box_EntityStatusListener_35.Enabled", "box_EntityStatusListener_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_35_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_33();
    l0 = self.box_EntityStatusListener_35;
    l1 = self.box_MultipleAND_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1821613452", "1821613452", "KEY01_050_DEBRIEF", "box_EntityStatusListener_35.Loaded", "box_MultipleAND_v2_33.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_73_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_Delay_v5_73;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1523194260", "1523194260", "KEY01_050_DEBRIEF", "box_Delay_v5_73.TimeElapsed", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneSetup_23();
    l0 = self.box_NarrativeSceneSetup_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|276701488", "276701488", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_29.Out", "box_NarrativeSceneSetup_23.HolsterWeapon", clone:GetLuaBox(), l0:GetLuaBox());
    -- HolsterWeapon
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_30();
    l0 = self.box_SoundMusicTriggerBox_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|2041930022", "2041930022", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_29.Out", "box_SoundMusicTriggerBox_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_70_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_70_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BinkPlayerListener_v3_69();
    l0 = self.box_BinkPlayerListener_v3_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|592989671", "592989671", "KEY01_050_DEBRIEF", "box_GetLocalPlayer_v2_70.Out", "box_BinkPlayerListener_v3_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_59_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_22();
    l0 = self.box_Delay_v5_59;
    l1 = self.box_VehicleDamageListener_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1229318148", "1229318148", "KEY01_050_DEBRIEF", "box_Delay_v5_59.TimeElapsed", "box_VehicleDamageListener_v2_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_TeleportPawns_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_31();
    l0 = self.box_TeleportPawns_34;
    l1 = self.box_SpawnAI_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|2098358139", "2098358139", "KEY01_050_DEBRIEF", "box_TeleportPawns_34.Out", "box_SpawnAI_31.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_StartMetaSequence_71_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_71_Out();
    params = self:OnEnter_box_PlaySequence_v8_17();
    l0 = self.box_StartMetaSequence_71;
    l1 = self.box_PlaySequence_v8_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|2019887207", "2019887207", "KEY01_050_DEBRIEF", "box_StartMetaSequence_71.Out", "box_PlaySequence_v8_17.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_43();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|138072624", "138072624", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_46.Out", "box_SetContextualStrategy_43.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_45();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1042209057", "1042209057", "KEY01_050_DEBRIEF", "box_OutputOrder_v2_46.Out", "box_SetContextualStrategy_45.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|@RemoveMixPresetMuteVehicles");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_62_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|@Stop KEY01_050 Music");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|26774773");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_54_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- vehicle,
        [2] = self.Vehicle,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_17()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2100942501792724062",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_KEY01_050_EndCin_Baby/cin_key01_050_endcin_baby.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_18()
    local params;
    params = {
        -- Group,
        [0] = "2103884578063128898",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_60()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|165782845");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_72_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|178231775");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
                [2] = self.f_box_OutputOrder_v2_14_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|197031437");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_12_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103942151548205492",
        -- Group,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_20()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_56()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_47()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_31()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104519570025915214",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|460380494");
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

function export:OnEnter_box_EntityStatusListener_32()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104519570046886746",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_55()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_49()
    local params;
    params = {
        -- Group,
        [0] = "2103746780830160946",
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_24()
    local params;
    params = {
        -- SoundId,
        [0] = "264881612",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_66()
    local params;
    params = {
        -- Group,
        [0] = "2104519526897984067",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_19()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGodMode,
        [1] = false,
        -- KeepHUDMode,
        [2] = false,
        -- KeepWeaponHolstered,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|672392742");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_MIS_KEY01_050_Mute_Vehicles",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|723727580");
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

function export:OnEnter_box_ExtinguishAllFires_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|757720607");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|825355427");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_40_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A8D86C48",
        -- PawnGroup,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_30()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- Priority,
        [2] = 0,
        -- SoundType,
        [3] = 17,
        -- Stackable,
        [4] = false,
        -- StartEvent,
        [5] = "3287598536",
        -- StopEvent,
        [6] = "1455224898",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|870335817");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_45_Out,
    });
    params = {
        -- Group,
        [1] = "#A8D86C48",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|883139125");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_41_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103942151078443441",
        -- Group,
        [1] = "#A8D86C48",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|914765018");
    l0:SetConnections({
        -- OnSetAsIndestructible,
        [4] = self.f_box_VehicleModifier_v2_37_OnSetAsIndestructible,
        -- OnSetCommandeerDisabled,
        [9] = self.f_box_VehicleModifier_v2_37_OnSetCommandeerDisabled,
    });
    params = {
        -- targets,
        [0] = "2104519570046886746",
    };
    return params;
end;

function export:OnEnter_box_BinkPlayer_v6_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    params = {
        -- BinkAudio,
        [0] = "354942044",
        -- BinkAudioType,
        [1] = 12,
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\07_room_loadingscreen_concept_v001.bik]],
        -- BinkSoundFade,
        [6] = 0,
        -- BinkVolumePercent,
        [8] = 1,
        -- Loop,
        [9] = false,
        -- MaterialName,
        [10] = "Null",
        -- ScreenEntity,
        [11] = l0:GetDataOutValue(0),
        -- TCR_Music,
        [12] = false,
        -- WaitAvailableBinding,
        [13] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|962734680");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BinkPlayerListener_v3_69()
    local params;
    params = {
        -- BinkPathIDFilter,
        [0] = [[ui\singleplayer\video\07_room_loadingscreen_concept_v001.bik]],
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_9()
    local params;
    params = {
        -- SoundId,
        [0] = "2806627700",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_36()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104519570051081054",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1051813156");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1131337067");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_13_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_13_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_51()
    local params;
    params = {
        -- Group,
        [0] = "2103746769104984113",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1256164075");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1279363945");
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
                [0] = self.f_box_OutputOrder_v2_67_Out_0,
                [1] = self.f_box_OutputOrder_v2_67_Out_1,
                [2] = self.f_box_OutputOrder_v2_67_Out_2,
                [3] = self.f_box_OutputOrder_v2_67_Out_3,
                [4] = self.f_box_OutputOrder_v2_67_Out_4,
                [5] = self.f_box_OutputOrder_v2_67_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_25()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_48()
    local params;
    params = {
        -- Group,
        [0] = self.Vehicle,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1430191040");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_33()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_39()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103773828466383935",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_50()
    local params;
    params = {
        -- Group,
        [0] = "2101286706457104223",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1481667267");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_22()
    local params;
    params = {
        -- Vehicle,
        [0] = self.Vehicle,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_38()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_8()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_23()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_28()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_44()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1741733362");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_43_Out,
    });
    params = {
        -- Group,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|1839391559");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
                [2] = self.f_box_OutputOrder_v2_57_Out_2,
                [3] = self.f_box_OutputOrder_v2_57_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_35()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104519570048983900",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_53()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_63()
    local params;
    params = {
        -- Group,
        [0] = "2104519269562753138",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_7()
    local params;
    params = {
        -- Group,
        [0] = "2104519269566947444",
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_10()
    local params;
    params = {
        -- SoundId,
        [0] = "1856814043",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_73()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_65()
    local params;
    params = {
        -- Group,
        [0] = "2104519526902178373",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|2047080001");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|2055375022");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_70_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_59()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_34()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2103288298158972212",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_64()
    local params;
    params = {
        -- Group,
        [0] = "2103677762106616400",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_DEBRIEF.domino|@KEY01_050_DEBRIEF|2141748089");
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

function export:OnExit_box_GetPlayerGroup_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_13_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.Vehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_13_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.Vehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.Vehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetLocalPlayer_v2_70_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_BinkPlayer_v6_68;
    l1:GetLuaBox().ScreenEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_71_Out()
    local l0;
    l0 = self.box_StartMetaSequence_71;
    self.MetaSequenceID = l0:GetDataOutValue(0);
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
