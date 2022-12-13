LUAC4� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_010/key01_010_b10_new.domino
-- User graph: KEY01_010_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Encounter_Toolbox.PlayerParticipation_NPC.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/BulletTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayRandomDialog.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B10_NEW.Helico_Wreck_Visibility.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3384712208.bnk]], "CSoundResource");
        cboxRes:LoadResource([[95861292.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3957149411.bnk]], "CSoundResource");
        cboxRes:LoadResource([[58879253.bnk]], "CSoundResource");
        cboxRes:LoadResource([[165827368.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4099445599.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3893500322.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2442269885.bnk]], "CSoundResource");
        cboxRes:LoadResource([[965053434.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3738301453.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2394963216.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2172909661.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3993972990.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2284761984.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B10_NEW.KEY01_010_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Encounter_Toolbox.PlayerParticipation_NPC.debug.lua")] = {
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
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "NPCGroup",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "CallForceNormalEnd",
            },
            [1] = {
                name = "CallInterrupt",
            },
            [2] = {
                name = "Disable",
            },
            [3] = {
                name = "Enable",
            },
            [4] = {
                name = "Use",
            },
        },
        controlInCount = 5,
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
                name = "ForceNormalEndCalled",
                delayed = false,
            },
            [3] = {
                name = "InterruptCalled",
                delayed = false,
            },
            [4] = {
                name = "UseCalled",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "Entity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/BulletTriggerListener.lua")] = {
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
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "triggerId",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua")] = {
        stateless = false,
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
            [3] = {
                name = "Enable",
            },
        },
        controlInCount = 4,
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
            [3] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
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
    metadataTable[GetPathID("Domino/System/PlayRandomDialog.lua")] = {
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
                name = "AllDone",
                delayed = true,
            },
            [1] = {
                name = "PlayOut",
                delayed = false,
            },
            [2] = {
                name = "StopOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "maxTime",
                type = "float",
            },
            [2] = {
                name = "minTime",
                type = "float",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
                dynamicType = 1,
            },
            [4] = {
                name = "TargetEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B10_NEW.Helico_Wreck_Visibility.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Hide",
            },
            [1] = {
                name = "Unhide",
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
    self._name = "KEY01_010_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10";
    self.Out = DummyFunction;
    self.gFriendlyPlayer = nil;
    self.eNickRye = nil;
    self.iNumberAttackerAlive = 0;
    self.iMetaSequenceId = 0;
    self.PlayerParticipated = false;
    self.cin_playing = 0;
    self.IsAborted = false;
    self.LocalPlayer = nil;
    self.box_OnceOnly_v3_328 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_328;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_328");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|20263703");
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
                [0] = self.f_box_OnceOnly_v3_328_Out_0,
            },
            count = 1,
        },
    });
    self.box_SpawnAI_465 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_465;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_465");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|47070724");
    l0:SetConnections({
    });
    self.box_MultipleOR_409 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_409;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_409");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|98564583");
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
        [0] = self.f_box_MultipleOR_409_Out,
    });
    self.box_RemoveEntity_v2_469 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_469;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_469");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|105249426");
    l0:SetConnections({
    });
    self.box_MultipleOR_463 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_463;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_463");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|108630666");
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
        [0] = self.f_box_MultipleOR_463_Out,
    });
    self.box_StartMetaSequence_323 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_323;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_323");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|109456353");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_323_Out,
    });
    self.box_EntityStatusListener_330 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_330;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_330");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|137259217");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_330_Loaded,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|189689993");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_EntityStatusListener_402 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_402;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_402");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|194985442");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_402_Loaded,
    });
    self.box_ProximityTrigger_v2_449 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_449;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_449");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|244991687");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_449_Enter,
    });
    self.box_Gate_v3_397 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_397;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_397");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|245068963");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_397_Out,
    });
    self.box_EntityStatusListener_385 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_385;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_385");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|254976202");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_385_Loaded,
    });
    self.box_BaseMissionBlock_v2_12 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|333300366");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_BaseMissionBlock_v2_12_Deactivated,
    });
    self.box_Helico_Wreck_Visibility_452 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B10_NEW.Helico_Wreck_Visibility.debug.lua");
    l0 = self.box_Helico_Wreck_Visibility_452;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Helico_Wreck_Visibility_452");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|349902218");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_10 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|352370174");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_10_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_10_SomeoneNear,
    });
    self.box_EntityStatusListener_309 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_309;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_309");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|373516448");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_309_Loaded,
    });
    self.box_ConsoleCommand_v3_417 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_417;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_417");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|388078781");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_417_Execute,
    });
    self.box_Delay_v5_391 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_391;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_391");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|397700348");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_391_TimeElapsed,
    });
    self.box_MultipleAND_v2_365 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_365;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_365");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|461079640");
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
        [0] = self.f_box_MultipleAND_v2_365_Out,
    });
    self.box_EntityStatusListener_315 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_315;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_315");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|492217707");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_315_Loaded,
    });
    self.box_Gate_v3_308 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_308;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_308");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|501694315");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_308_Out,
    });
    self.box_ProximityTrigger_v2_394 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_394;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_394");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|548166879");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_394_Enter,
    });
    self.box_EntityStatusListener_398 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_398;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_398");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|561364877");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_398_Enabled,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_398_Unloaded,
    });
    self.box_BaseMissionBlock_v2_11 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|604179172");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_BaseMissionBlock_v2_11_Activated,
        -- Enabled,
        [3] = self.f_box_BaseMissionBlock_v2_11_Enabled,
    });
    self.box_RemoveEntity_v2_372 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_372;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_372");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|605057410");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_376 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_376;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_376");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|606712723");
    l0:SetConnections({
    });
    self.box_MultipleOR_371 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_371;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_371");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|606854613");
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
        [0] = self.f_box_MultipleOR_371_Out,
    });
    self.box_Gate_v3_337 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_337;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_337");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|619947121");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_337_Out,
    });
    self.box_EntityStatusListener_466 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_466;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_466");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|625185902");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_466_Enabled,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_466_Unloaded,
    });
    self.box_EntityStatusListener_439 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_439;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_439");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|676319910");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_439_Loaded,
    });
    self.box_EntityStatusListener_390 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_390;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_390");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|683393183");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_390_Loaded,
    });
    self.box_EntityStatusListener_446 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_446;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_446");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|704499412");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_446_Loaded,
    });
    self.box_ProximityRadiusListener_v3_369 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_369;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_369");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|711825555");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_369_SomeoneNear,
    });
    self.box_EntityStatusListener_16 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|717105786");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_16_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_16_Loaded,
    });
    self.box_PlaySequence_v8_438 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_438;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_438");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|717256718");
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
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Started",
                },
                [1] = {
                    string = "End",
                    value = self.f_box_PlaySequence_v8_438_SPOut__End_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_438_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_438_Stopped,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|758615916");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_RemoveEntity_v2_336 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_336;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_336");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|774299675");
    l0:SetConnections({
    });
    self.box_MultipleOR_382 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_382;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_382");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|779736135");
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
        [0] = self.f_box_MultipleOR_382_Out,
    });
    self.box_SpawnAI_344 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_344;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_344");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|790702678");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_344_Spawned,
    });
    self.box_OnceOnly_v3_419 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_419;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_419");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|795338685");
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
                [0] = self.f_box_OnceOnly_v3_419_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayerParticipation_NPC_406 = cbox:CreateBox("Domino/Library/Sp/Lib_Encounter_Toolbox.PlayerParticipation_NPC.debug.lua");
    l0 = self.box_PlayerParticipation_NPC_406;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerParticipation_NPC_406");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|819617309");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_PlayerParticipation_NPC_406_True,
    });
    self.box_LookAtTrigger_v2_4 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|829023117");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_4_EnterFOV,
        -- LeaveFOV,
        [3] = self.f_box_LookAtTrigger_v2_4_LeaveFOV,
    });
    self.box_EntityStatusListener_15 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|843516214");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_15_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_15_Loaded,
    });
    self.box_MultipleOR_470 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_470;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_470");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|844262992");
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
        [0] = self.f_box_MultipleOR_470_Out,
    });
    self.box_PlayRandomDialog_1 = cbox:CreateBox("Domino/System/PlayRandomDialog.lua");
    l0 = self.box_PlayRandomDialog_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayRandomDialog_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|860356404");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
        },
        dataIn = {
            [3] = 12,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
    });
    self.box_SpawnAI_415 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_415;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_415");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|870544835");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_415_Spawned,
    });
    self.box_MultipleOR_352 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_352;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_352");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|897768909");
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
        [0] = self.f_box_MultipleOR_352_Out,
    });
    self.box_EntityStatusListener_362 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_362;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_362");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|925785003");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_362_Loaded,
    });
    self.box_Delay_v5_310 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_310;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_310");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|935882091");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_310_TimeElapsed,
    });
    self.box_SoundModifier_v2_332 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_332;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_332");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|936112852");
    l0:SetConnections({
    });
    self.box_VehicleDamageListener_v2_450 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_450;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_450");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|936258378");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_450_Destroyed,
    });
    self.box_ProximityRadiusListener_v3_411 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_411;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_411");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|937221303");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_411_SomeoneNear,
    });
    self.box_EntityStatusListener_314 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_314;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_314");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|968530029");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_314_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_314_Unloaded,
    });
    self.box_EntityStatusListener_341 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_341;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_341");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1018092866");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_341_Loaded,
    });
    self.box_MultipleOR_374 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_374;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_374");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1027177932");
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
        [0] = self.f_box_MultipleOR_374_Out,
    });
    self.box_MultipleOR_388 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_388;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_388");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1055044607");
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
        [0] = self.f_box_MultipleOR_388_Out,
    });
    self.box_RemoveEntity_v2_198 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1074957516");
    l0:SetConnections({
    });
    self.box_MultipleOR_343 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_343;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_343");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1083794281");
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
        [0] = self.f_box_MultipleOR_343_Out,
    });
    self.box_EntityStatusListener_396 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_396;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_396");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1201575042");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_396_Enabled,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_396_Unloaded,
    });
    self.box_MultipleAND_v2_393 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_393;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_393");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1219560179");
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
        [0] = self.f_box_MultipleAND_v2_393_Out,
    });
    self.box_Switch_346 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_346;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_346");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1253954440");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 5,
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
                [0] = self.f_box_Switch_346_Output_0,
                [1] = self.f_box_Switch_346_Output_1,
                [2] = self.f_box_Switch_346_Output_2,
                [3] = self.f_box_Switch_346_Output_3,
                [4] = self.f_box_Switch_346_Output_4,
            },
            count = 5,
        },
    });
    self.box_RemoveEntity_v2_423 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_423;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_423");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1258755373");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_313 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_313;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_313");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1348306089");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_400 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_400;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_400");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1364453258");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_400_Loaded,
    });
    self.box_Gate_v3_338 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_338;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_338");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1369328511");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_338_Out,
    });
    self.box_PlaySequence_v8_345 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_345;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_345");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1406209223");
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
        [0] = self.f_box_PlaySequence_v8_345_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_345_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Unhide_Debris",
                    value = self.f_box_PlaySequence_v8_345_SPOut__Unhide_Debris_,
                },
            },
            count = 1,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_345_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_345_Stopped,
    });
    self.box_ProximityRadiusListener_v3_410 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_410;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_410");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1421392269");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_410_SomeoneNear,
    });
    self.box_Helico_Wreck_Visibility_349 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B10_NEW.Helico_Wreck_Visibility.debug.lua");
    l0 = self.box_Helico_Wreck_Visibility_349;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Helico_Wreck_Visibility_349");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1430529601");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_413 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_413;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_413");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1436797013");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_413_Enabled,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_413_Unloaded,
    });
    self.box_MultipleOR_354 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_354;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_354");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1537305804");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 6,
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
        [0] = self.f_box_MultipleOR_354_Out,
    });
    self.box_MultipleAND_v2_408 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_408;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_408");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1555558196");
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
        [0] = self.f_box_MultipleAND_v2_408_Out,
    });
    self.box_ConsoleCommand_v3_429 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_429;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_429");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1569837334");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_429_Execute,
    });
    self.box_MultipleAND_v2_322 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_322;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_322");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1585410226");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 6,
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
        [0] = self.f_box_MultipleAND_v2_322_Out,
    });
    self.box_MultipleOR_368 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_368;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_368");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1602137311");
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
        [0] = self.f_box_MultipleOR_368_Out,
    });
    self.box_EntityStatusListener_358 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_358;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_358");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1615286849");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_358_Loaded,
    });
    self.box_GroupSizeListener_v5_462 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_462;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_462");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1679591662");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_462_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_462_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_462_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_462_MemberRemoved,
    });
    self.box_EntityStatusListener_333 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_333;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_333");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1688359472");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_333_Disabled,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_333_Unloaded,
    });
    self.box_EntityStatusListener_431 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_431;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_431");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1735672373");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_431_Loaded,
    });
    self.box_MultipleOR_353 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_353;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_353");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1750978182");
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
        [0] = self.f_box_MultipleOR_353_Out,
    });
    self.box_BulletTriggerListener_401 = cbox:CreateBox("Domino/System/BulletTriggerListener.lua");
    l0 = self.box_BulletTriggerListener_401;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BulletTriggerListener_401");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1876456882");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_BulletTriggerListener_401_Enter,
    });
    self.box_RemoveEntity_v2_461 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_461;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_461");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1877427878");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_381 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_381;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_381");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1880324990");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_381_Enabled,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_381_Unloaded,
    });
    self.box_EntityStatusListener_389 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_389;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_389");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1967676044");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_389_Loaded,
    });
    self.box_MultipleOR_375 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_375;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_375");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1976688123");
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
        [0] = self.f_box_MultipleOR_375_Out,
    });
    self.box_SpawnAI_426 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_426;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_426");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1987188872");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_392 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_392;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_392");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1998563432");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_392_Enabled,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_392_Unloaded,
    });
    self.box_PlaySequence_v8_436 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_436;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_436");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2017627232");
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
        [0] = self.f_box_PlaySequence_v8_436_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_436_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_436_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_436_Stopped,
    });
    self.box_SpawnAI_348 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_348;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_348");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2034717457");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_348_Spawned,
    });
    self.box_ProximityRadiusListener_v3_383 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_383;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_383");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2073458574");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_383_SomeoneFar,
    });
    self.box_CharacterLoadedIdListener_435 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_435;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_435");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2102559301");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_435_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_435_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_435_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_435_LoadedIdReceived,
    });
    self.box_RemoveEntity_v2_360 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_360;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_360");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2122174176");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_11();
    l0 = self.box_BaseMissionBlock_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|217860030", "217860030", "KEY01_010_B10", "In", "box_BaseMissionBlock_v2_11.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_196_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_428();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2075397661", "2075397661", "KEY01_010_B10", "box_Simple_Node_196.Out", "box_Compare_Integers_428.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Compare_Integers_357();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1153544810", "1153544810", "KEY01_010_B10", "box_Simple_Node_196.Out", "box_Compare_Integers_357.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_MultipleAND_v2_408();
    l0 = self.box_MultipleAND_v2_408;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1137888932", "1137888932", "KEY01_010_B10", "box_Simple_Node_196.Out", "box_MultipleAND_v2_408.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    params = self:OnEnter_box_Compare_Integers_454();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1273977817", "1273977817", "KEY01_010_B10", "box_Simple_Node_196.Out", "box_Compare_Integers_454.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_457();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|394337868", "394337868", "KEY01_010_B10", "box_Simple_Node_196.Out", "box_OutputOrder_v2_457.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Compare_Integers_350();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|256617654", "256617654", "KEY01_010_B10", "box_Simple_Node_196.Out", "box_Compare_Integers_350.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_296_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_463;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1575592531", "1575592531", "KEY01_010_B10", "box_Simple_Node_296.Out", "box_MultipleOR_463.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_298_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_374;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|400006273", "400006273", "KEY01_010_B10", "box_Simple_Node_298.Out", "box_MultipleOR_374.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_Gate_v3_338();
    l0 = self.box_Gate_v3_338;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|452293549", "452293549", "KEY01_010_B10", "box_Simple_Node_298.Out", "box_Gate_v3_338.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_297_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_371;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|401543694", "401543694", "KEY01_010_B10", "box_Simple_Node_297.Out", "box_MultipleOR_371.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_OnceOnly_v3_419;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|611372881", "611372881", "KEY01_010_B10", "box_Simple_Node_297.Out", "box_OnceOnly_v3_419.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
    params = self:OnEnter_box_Gate_v3_337();
    l0 = self.box_Gate_v3_337;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1697234515", "1697234515", "KEY01_010_B10", "box_Simple_Node_297.Out", "box_Gate_v3_337.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_MultipleAND_v2_408();
    l0 = self.box_MultipleAND_v2_408;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|893933300", "893933300", "KEY01_010_B10", "box_Simple_Node_297.Out", "box_MultipleAND_v2_408.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
    params = self:OnEnter_box_MultipleAND_v2_393();
    l0 = self.box_MultipleAND_v2_393;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|900970762", "900970762", "KEY01_010_B10", "box_Simple_Node_297.Out", "box_MultipleAND_v2_393.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
    l0 = self.box_OnceOnly_v3_328;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1290462183", "1290462183", "KEY01_010_B10", "box_Simple_Node_297.Out", "box_OnceOnly_v3_328.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
    params = self:OnEnter_box_MultipleAND_v2_322();
    l0 = self.box_MultipleAND_v2_322;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|966981437", "966981437", "KEY01_010_B10", "box_Simple_Node_297.Out", "box_MultipleAND_v2_322.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_397();
    l0 = self.box_Gate_v3_397;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|65551808", "65551808", "KEY01_010_B10", "box_Simple_Node_297.Out", "box_Gate_v3_397.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_393();
    l0 = self.box_MultipleAND_v2_393;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1712914487", "1712914487", "KEY01_010_B10", "box_Simple_Node_61.Out", "box_MultipleAND_v2_393.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    l0 = self.box_OnceOnly_v3_419;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1727776077", "1727776077", "KEY01_010_B10", "box_Simple_Node_61.Out", "box_OnceOnly_v3_419.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_171_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_465();
    l0 = self.box_SpawnAI_465;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1017210177", "1017210177", "KEY01_010_B10", "box_Simple_Node_171.Out", "box_SpawnAI_465.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_308();
    l0 = self.box_Gate_v3_308;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1150410328", "1150410328", "KEY01_010_B10", "box_Simple_Node_171.Out", "box_Gate_v3_308.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_110_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_365();
    l0 = self.box_MultipleAND_v2_365;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1640280929", "1640280929", "KEY01_010_B10", "box_Simple_Node_110.Out", "box_MultipleAND_v2_365.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OnceOnly_v3_328_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_367();
    l0 = self.box_OnceOnly_v3_328;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|500851648", "500851648", "KEY01_010_B10", "box_OnceOnly_v3_328.Out", "box_OutputOrder_v2_367.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_334_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_312();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|436455299", "436455299", "KEY01_010_B10", "box_OutputOrder_v2_334.Out", "box_SetInteger_v2_312.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_334_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Helico_Wreck_Visibility_349;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|912197798", "912197798", "KEY01_010_B10", "box_OutputOrder_v2_334.Out", "box_Helico_Wreck_Visibility_349.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_334_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConsoleCommand_v3_417();
    l0 = self.box_ConsoleCommand_v3_417;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|38620452", "38620452", "KEY01_010_B10", "box_OutputOrder_v2_334.Out", "box_ConsoleCommand_v3_417.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_334_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConsoleCommand_v3_429();
    l0 = self.box_ConsoleCommand_v3_429;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1311509989", "1311509989", "KEY01_010_B10", "box_OutputOrder_v2_334.Out", "box_ConsoleCommand_v3_429.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_418_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Helico_Wreck_Visibility_452;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1368202346", "1368202346", "KEY01_010_B10", "box_OutputOrder_v2_418.Out", "box_Helico_Wreck_Visibility_452.Unhide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unhide
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_418_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_451();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|392979833", "392979833", "KEY01_010_B10", "box_OutputOrder_v2_418.Out", "box_MissionBlockLayer_451.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_409_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_403();
    l0 = self.box_MultipleOR_409;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1840274787", "1840274787", "KEY01_010_B10", "box_MultipleOR_409.Out", "box_SetInteger_v2_403.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_463_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_363();
    l0 = self.box_MultipleOR_463;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|531898914", "531898914", "KEY01_010_B10", "box_MultipleOR_463.Out", "box_OutputOrder_v2_363.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_323_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_323_Out();
    l0 = self.box_StartMetaSequence_323;
    l1 = self.box_MultipleOR_371;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1230621838", "1230621838", "KEY01_010_B10", "box_StartMetaSequence_323.Out", "box_MultipleOR_371.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_330_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_344();
    l0 = self.box_EntityStatusListener_330;
    l1 = self.box_SpawnAI_344;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1359822525", "1359822525", "KEY01_010_B10", "box_EntityStatusListener_330.Loaded", "box_SpawnAI_344.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_335_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_375;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|28588901", "28588901", "KEY01_010_B10", "box_MissionBlockLayer_335.Activated", "box_MultipleOR_375.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_448_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_316();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1099041057", "1099041057", "KEY01_010_B10", "box_MissionBlockLayer_448.Disabled", "box_Compare_Integers_316.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_4();
    l0 = self.box_MultipleOR_5;
    l1 = self.box_LookAtTrigger_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1650905272", "1650905272", "KEY01_010_B10", "box_MultipleOR_5.Out", "box_LookAtTrigger_v2_4.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_402_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_413();
    l0 = self.box_EntityStatusListener_402;
    l1 = self.box_EntityStatusListener_413;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1733081871", "1733081871", "KEY01_010_B10", "box_EntityStatusListener_402.Loaded", "box_EntityStatusListener_413.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_306_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_61();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|837200035", "837200035", "KEY01_010_B10", "box_OutputOrder_v2_306.Out", "box_Simple_Node_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_306_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_340();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|785057951", "785057951", "KEY01_010_B10", "box_OutputOrder_v2_306.Out", "box_Print_v2_340.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_403_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_403_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_438();
    l0 = self.box_PlaySequence_v8_438;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1985462247", "1985462247", "KEY01_010_B10", "box_SetInteger_v2_403.Out", "box_PlaySequence_v8_438.PlayFromStart", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayFromStart
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_384_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_410();
    l0 = self.box_ProximityRadiusListener_v3_410;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|790934164", "790934164", "KEY01_010_B10", "box_OutputOrder_v2_384.Out", "box_ProximityRadiusListener_v3_410.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_384_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BulletTriggerListener_401();
    l0 = self.box_BulletTriggerListener_401;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1645140886", "1645140886", "KEY01_010_B10", "box_OutputOrder_v2_384.Out", "box_BulletTriggerListener_401.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_384_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_450();
    l0 = self.box_VehicleDamageListener_v2_450;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1481590767", "1481590767", "KEY01_010_B10", "box_OutputOrder_v2_384.Out", "box_VehicleDamageListener_v2_450.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_384_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_4();
    l0 = self.box_LookAtTrigger_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1472959495", "1472959495", "KEY01_010_B10", "box_OutputOrder_v2_384.Out", "box_LookAtTrigger_v2_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_449_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_305();
    l0 = self.box_ProximityTrigger_v2_449;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|237469169", "237469169", "KEY01_010_B10", "box_ProximityTrigger_v2_449.Enter", "box_OutputOrder_v2_305.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_397_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_397;
    l1 = self.box_MultipleOR_374;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|9476608", "9476608", "KEY01_010_B10", "box_Gate_v3_397.Out", "box_MultipleOR_374.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_EntityStatusListener_385_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_392();
    l0 = self.box_EntityStatusListener_385;
    l1 = self.box_EntityStatusListener_392;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1620315230", "1620315230", "KEY01_010_B10", "box_EntityStatusListener_385.Loaded", "box_EntityStatusListener_392.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_456_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_436();
    l0 = self.box_PlaySequence_v8_436;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1311020994", "1311020994", "KEY01_010_B10", "box_OutputOrder_v2_456.Out", "box_PlaySequence_v8_436.PlayFromStart", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayFromStart
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_456_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_395();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|232752485", "232752485", "KEY01_010_B10", "box_OutputOrder_v2_456.Out", "box_Print_v2_395.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_329_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_329_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_15();
    l0 = self.box_EntityStatusListener_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1569886377", "1569886377", "KEY01_010_B10", "box_GetPlayerGroup_v2_329.Out", "box_EntityStatusListener_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_357_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_436();
    l0 = self.box_PlaySequence_v8_436;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1959591263", "1959591263", "KEY01_010_B10", "box_Compare_Integers_357.A_eq_B", "box_PlaySequence_v8_436.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
end;

function export:f_box_OutputOrder_v2_319_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_390();
    l0 = self.box_EntityStatusListener_390;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|775174887", "775174887", "KEY01_010_B10", "box_OutputOrder_v2_319.Out", "box_EntityStatusListener_390.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_319_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_110();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|847187734", "847187734", "KEY01_010_B10", "box_OutputOrder_v2_319.Out", "box_Simple_Node_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_319_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_426();
    l0 = self.box_SpawnAI_426;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2033361504", "2033361504", "KEY01_010_B10", "box_OutputOrder_v2_319.Out", "box_SpawnAI_426.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_BaseMissionBlock_v2_12_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_387();
    l0 = self.box_BaseMissionBlock_v2_12;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|633739083", "633739083", "KEY01_010_B10", "box_BaseMissionBlock_v2_12.Deactivated", "box_ActivityEnd_387.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_440_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_298();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|870560651", "870560651", "KEY01_010_B10", "box_OutputOrder_v2_440.Out", "box_Simple_Node_298.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_440_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_356();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|144202065", "144202065", "KEY01_010_B10", "box_OutputOrder_v2_440.Out", "box_Print_v2_356.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_10_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_PlayRandomDialog_1();
    l0 = self.box_ProximityRadiusListener_v3_10;
    l1 = self.box_PlayRandomDialog_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2095166301", "2095166301", "KEY01_010_B10", "box_ProximityRadiusListener_v3_10.SomeoneFar", "box_PlayRandomDialog_1.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_10_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_PlayRandomDialog_1();
    l0 = self.box_ProximityRadiusListener_v3_10;
    l1 = self.box_PlayRandomDialog_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|814190347", "814190347", "KEY01_010_B10", "box_ProximityRadiusListener_v3_10.SomeoneNear", "box_PlayRandomDialog_1.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_471_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_12();
    l0 = self.box_BaseMissionBlock_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|311608871", "311608871", "KEY01_010_B10", "box_UseContextualActionModifier_v3_471.Disabled", "box_BaseMissionBlock_v2_12.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_309_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_411();
    l0 = self.box_EntityStatusListener_309;
    l1 = self.box_ProximityRadiusListener_v3_411;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1771645654", "1771645654", "KEY01_010_B10", "box_EntityStatusListener_309.Loaded", "box_ProximityRadiusListener_v3_411.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_417_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_346();
    l0 = self.box_ConsoleCommand_v3_417;
    l1 = self.box_Switch_346;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1742160547", "1742160547", "KEY01_010_B10", "box_ConsoleCommand_v3_417.Execute", "box_Switch_346.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_391_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_338();
    l0 = self.box_Delay_v5_391;
    l1 = self.box_Gate_v3_338;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1834780742", "1834780742", "KEY01_010_B10", "box_Delay_v5_391.TimeElapsed", "box_Gate_v3_338.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_365_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_462();
    l0 = self.box_MultipleAND_v2_365;
    l1 = self.box_GroupSizeListener_v5_462;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1492519698", "1492519698", "KEY01_010_B10", "box_MultipleAND_v2_365.Out", "box_GroupSizeListener_v5_462.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_315_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_348();
    l0 = self.box_EntityStatusListener_315;
    l1 = self.box_SpawnAI_348;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|248162737", "248162737", "KEY01_010_B10", "box_EntityStatusListener_315.Loaded", "box_SpawnAI_348.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_308_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_465();
    l0 = self.box_Gate_v3_308;
    l1 = self.box_SpawnAI_465;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|304412493", "304412493", "KEY01_010_B10", "box_Gate_v3_308.Out", "box_SpawnAI_465.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_441_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_330();
    l0 = self.box_EntityStatusListener_330;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1505855551", "1505855551", "KEY01_010_B10", "box_OutputOrder_v2_441.Out", "box_EntityStatusListener_330.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_441_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_368;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1515959709", "1515959709", "KEY01_010_B10", "box_OutputOrder_v2_441.Out", "box_MultipleOR_368.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_454_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_374;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2029556085", "2029556085", "KEY01_010_B10", "box_Compare_Integers_454.A_eq_B", "box_MultipleOR_374.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_351_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_413();
    l0 = self.box_EntityStatusListener_413;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|216077229", "216077229", "KEY01_010_B10", "box_OutputOrder_v2_351.Out", "box_EntityStatusListener_413.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_351_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_392();
    l0 = self.box_EntityStatusListener_392;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1702566782", "1702566782", "KEY01_010_B10", "box_OutputOrder_v2_351.Out", "box_EntityStatusListener_392.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_351_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_381();
    l0 = self.box_EntityStatusListener_381;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1989722104", "1989722104", "KEY01_010_B10", "box_OutputOrder_v2_351.Out", "box_EntityStatusListener_381.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_351_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_466();
    l0 = self.box_EntityStatusListener_466;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|715744287", "715744287", "KEY01_010_B10", "box_OutputOrder_v2_351.Out", "box_EntityStatusListener_466.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_351_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_396();
    l0 = self.box_EntityStatusListener_396;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|6823077", "6823077", "KEY01_010_B10", "box_OutputOrder_v2_351.Out", "box_EntityStatusListener_396.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_351_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_398();
    l0 = self.box_EntityStatusListener_398;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1011891680", "1011891680", "KEY01_010_B10", "box_OutputOrder_v2_351.Out", "box_EntityStatusListener_398.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_325_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_402();
    l0 = self.box_EntityStatusListener_402;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|677917580", "677917580", "KEY01_010_B10", "box_OutputOrder_v2_325.Out", "box_EntityStatusListener_402.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_325_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_385();
    l0 = self.box_EntityStatusListener_385;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1082204640", "1082204640", "KEY01_010_B10", "box_OutputOrder_v2_325.Out", "box_EntityStatusListener_385.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_325_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_358();
    l0 = self.box_EntityStatusListener_358;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1212629950", "1212629950", "KEY01_010_B10", "box_OutputOrder_v2_325.Out", "box_EntityStatusListener_358.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_325_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_389();
    l0 = self.box_EntityStatusListener_389;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1290843143", "1290843143", "KEY01_010_B10", "box_OutputOrder_v2_325.Out", "box_EntityStatusListener_389.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_325_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_431();
    l0 = self.box_EntityStatusListener_431;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|158004986", "158004986", "KEY01_010_B10", "box_OutputOrder_v2_325.Out", "box_EntityStatusListener_431.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_325_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_400();
    l0 = self.box_EntityStatusListener_400;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|154892313", "154892313", "KEY01_010_B10", "box_OutputOrder_v2_325.Out", "box_EntityStatusListener_400.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VehicleModifier_v2_3_OnSetAsDestructible()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_345();
    l0 = self.box_PlaySequence_v8_345;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1274328731", "1274328731", "KEY01_010_B10", "box_VehicleModifier_v2_3.OnSetAsDestructible", "box_PlaySequence_v8_345.PlayFromStart", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayFromStart
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_355_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_449();
    l0 = self.box_ProximityTrigger_v2_449;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|951499992", "951499992", "KEY01_010_B10", "box_OutputOrder_v2_355.Out", "box_ProximityTrigger_v2_449.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_394_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_441();
    l0 = self.box_ProximityTrigger_v2_394;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|743597214", "743597214", "KEY01_010_B10", "box_ProximityTrigger_v2_394.Enter", "box_OutputOrder_v2_441.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_398_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_322();
    l0 = self.box_EntityStatusListener_398;
    l1 = self.box_MultipleAND_v2_322;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|337681493", "337681493", "KEY01_010_B10", "box_EntityStatusListener_398.Enabled", "box_MultipleAND_v2_322.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 5);
end;

function export:f_box_EntityStatusListener_398_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_398;
    l1 = self.box_MultipleOR_354;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|578107526", "578107526", "KEY01_010_B10", "box_EntityStatusListener_398.Unloaded", "box_MultipleOR_354.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_373_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v4_364();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1991548918", "1991548918", "KEY01_010_B10", "box_OutputOrder_v2_373.Out", "box_StopMetaSequence_v4_364.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_373_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_424();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1865691602", "1865691602", "KEY01_010_B10", "box_OutputOrder_v2_373.Out", "box_Print_v2_424.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_342_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_314();
    l0 = self.box_EntityStatusListener_314;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|963026773", "963026773", "KEY01_010_B10", "box_OutputOrder_v2_342.Out", "box_EntityStatusListener_314.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_342_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_171();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1557716302", "1557716302", "KEY01_010_B10", "box_OutputOrder_v2_342.Out", "box_Simple_Node_171.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BaseMissionBlock_v2_11_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_329();
    l0 = self.box_BaseMissionBlock_v2_11;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|466326261", "466326261", "KEY01_010_B10", "box_BaseMissionBlock_v2_11.Activated", "box_GetPlayerGroup_v2_329.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BaseMissionBlock_v2_11_Enabled()
    local params, l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_11();
    l0 = self.box_BaseMissionBlock_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1969692408", "1969692408", "KEY01_010_B10", "box_BaseMissionBlock_v2_11.Enabled", "box_BaseMissionBlock_v2_11.Activate", l0:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_SetInteger_v2_312_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_312_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_325();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1534177345", "1534177345", "KEY01_010_B10", "box_SetInteger_v2_312.Out", "box_OutputOrder_v2_325.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_371_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_334();
    l0 = self.box_MultipleOR_371;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1197754569", "1197754569", "KEY01_010_B10", "box_MultipleOR_371.Out", "box_OutputOrder_v2_334.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v4_364_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_331();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1634183025", "1634183025", "KEY01_010_B10", "box_StopMetaSequence_v4_364.Stopped", "box_Simple_Node_331.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_337_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_456();
    l0 = self.box_Gate_v3_337;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|672193968", "672193968", "KEY01_010_B10", "box_Gate_v3_337.Out", "box_OutputOrder_v2_456.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_466_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_322();
    l0 = self.box_EntityStatusListener_466;
    l1 = self.box_MultipleAND_v2_322;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1352720573", "1352720573", "KEY01_010_B10", "box_EntityStatusListener_466.Enabled", "box_MultipleAND_v2_322.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 3);
end;

function export:f_box_EntityStatusListener_466_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_466;
    l1 = self.box_MultipleOR_354;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1337415513", "1337415513", "KEY01_010_B10", "box_EntityStatusListener_466.Unloaded", "box_MultipleOR_354.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Compare_Boolean_304_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_317();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1206635923", "1206635923", "KEY01_010_B10", "box_Compare_Boolean_304.A_is_True", "box_GetActivityFact_317.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_439_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_434();
    l0 = self.box_EntityStatusListener_439;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2110098334", "2110098334", "KEY01_010_B10", "box_EntityStatusListener_439.Loaded", "box_OutputOrder_v2_434.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_390_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_308();
    l0 = self.box_EntityStatusListener_390;
    l1 = self.box_Gate_v3_308;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|220812384", "220812384", "KEY01_010_B10", "box_EntityStatusListener_390.Loaded", "box_Gate_v3_308.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_446_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_394();
    l0 = self.box_EntityStatusListener_446;
    l1 = self.box_ProximityTrigger_v2_394;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2122493142", "2122493142", "KEY01_010_B10", "box_EntityStatusListener_446.Loaded", "box_ProximityTrigger_v2_394.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_369_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_332();
    l0 = self.box_ProximityRadiusListener_v3_369;
    l1 = self.box_SoundModifier_v2_332;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|112253872", "112253872", "KEY01_010_B10", "box_ProximityRadiusListener_v3_369.SomeoneNear", "box_SoundModifier_v2_332.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_16_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_467();
    l0 = self.box_EntityStatusListener_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|757485303", "757485303", "KEY01_010_B10", "box_EntityStatusListener_16.Enabled", "box_OutputOrder_v2_467.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_16_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_13();
    l0 = self.box_EntityStatusListener_16;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|872453248", "872453248", "KEY01_010_B10", "box_EntityStatusListener_16.Loaded", "box_PawnInvincibleState_v2_13.SetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetInvincible
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_438_SPOut__End_()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_397();
    l0 = self.box_PlaySequence_v8_438;
    l1 = self.box_Gate_v3_397;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|593288164", "593288164", "KEY01_010_B10", "box_PlaySequence_v8_438.SPOut", "box_Gate_v3_397.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_438_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_384();
    l0 = self.box_PlaySequence_v8_438;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1989272168", "1989272168", "KEY01_010_B10", "box_PlaySequence_v8_438.Started", "box_OutputOrder_v2_384.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_438_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_320();
    l0 = self.box_PlaySequence_v8_438;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1639852500", "1639852500", "KEY01_010_B10", "box_PlaySequence_v8_438.Stopped", "box_OutputOrder_v2_320.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_Delay_v5_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|32987168", "32987168", "KEY01_010_B10", "box_Delay_v5_6.TimeElapsed", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_382_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_423();
    l0 = self.box_MultipleOR_382;
    l1 = self.box_RemoveEntity_v2_423;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1784520377", "1784520377", "KEY01_010_B10", "box_MultipleOR_382.Out", "box_RemoveEntity_v2_423.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_344_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_355();
    l0 = self.box_SpawnAI_344;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1105074520", "1105074520", "KEY01_010_B10", "box_SpawnAI_344.Spawned", "box_OutputOrder_v2_355.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_419_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_397();
    l0 = self.box_OnceOnly_v3_419;
    l1 = self.box_Gate_v3_397;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|389799839", "389799839", "KEY01_010_B10", "box_OnceOnly_v3_419.Out", "box_Gate_v3_397.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_PlayerParticipation_NPC_406_True()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_339();
    l0 = self.box_PlayerParticipation_NPC_406;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|467624090", "467624090", "KEY01_010_B10", "box_PlayerParticipation_NPC_406.True", "box_SetBoolean_v2_339.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_4_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_LookAtTrigger_v2_4;
    l1 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1156835380", "1156835380", "KEY01_010_B10", "box_LookAtTrigger_v2_4.EnterFOV", "box_Delay_v5_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_LookAtTrigger_v2_4_LeaveFOV()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_LookAtTrigger_v2_4;
    l1 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1636852743", "1636852743", "KEY01_010_B10", "box_LookAtTrigger_v2_4.LeaveFOV", "box_Delay_v5_6.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_EntityStatusListener_15_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_16();
    l0 = self.box_EntityStatusListener_15;
    l1 = self.box_EntityStatusListener_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1242190442", "1242190442", "KEY01_010_B10", "box_EntityStatusListener_15.Enabled", "box_EntityStatusListener_16.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_15_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_14();
    l0 = self.box_EntityStatusListener_15;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|598695819", "598695819", "KEY01_010_B10", "box_EntityStatusListener_15.Loaded", "box_VehicleModifier_v2_14.SetAsIndestructable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsIndestructable
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_470_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BulletTriggerListener_401();
    l0 = self.box_MultipleOR_470;
    l1 = self.box_BulletTriggerListener_401;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|122106550", "122106550", "KEY01_010_B10", "box_MultipleOR_470.Out", "box_BulletTriggerListener_401.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_61();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|847422733", "847422733", "KEY01_010_B10", "box_OutputOrder_v2_7.Out", "box_Simple_Node_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1289559857", "1289559857", "KEY01_010_B10", "box_OutputOrder_v2_7.Out", "box_Print_v2_8.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_415_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_370();
    l0 = self.box_SpawnAI_415;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1486021719", "1486021719", "KEY01_010_B10", "box_SpawnAI_415.Spawned", "box_OutputOrder_v2_370.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_352_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_432();
    l0 = self.box_MultipleOR_352;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|811631801", "811631801", "KEY01_010_B10", "box_MultipleOR_352.Out", "box_Compare_Integers_432.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_362_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_449();
    l0 = self.box_EntityStatusListener_362;
    l1 = self.box_ProximityTrigger_v2_449;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|414345543", "414345543", "KEY01_010_B10", "box_EntityStatusListener_362.Loaded", "box_ProximityTrigger_v2_449.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_310_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_471();
    l0 = self.box_Delay_v5_310;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|976872973", "976872973", "KEY01_010_B10", "box_Delay_v5_310.TimeElapsed", "box_UseContextualActionModifier_v3_471.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_450_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_440();
    l0 = self.box_VehicleDamageListener_v2_450;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|404757477", "404757477", "KEY01_010_B10", "box_VehicleDamageListener_v2_450.Destroyed", "box_OutputOrder_v2_440.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_411_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_319();
    l0 = self.box_ProximityRadiusListener_v3_411;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|677823622", "677823622", "KEY01_010_B10", "box_ProximityRadiusListener_v3_411.SomeoneNear", "box_OutputOrder_v2_319.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_314_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_314;
    l1 = self.box_MultipleOR_375;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1378591846", "1378591846", "KEY01_010_B10", "box_EntityStatusListener_314.Loaded", "box_MultipleOR_375.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_314_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_335();
    l0 = self.box_EntityStatusListener_314;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|183709270", "183709270", "KEY01_010_B10", "box_EntityStatusListener_314.Unloaded", "box_MissionBlockLayer_335.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_9_OnSetAsIndestructible()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_398();
    l0 = self.box_EntityStatusListener_398;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1113293404", "1113293404", "KEY01_010_B10", "box_VehicleModifier_v2_9.OnSetAsIndestructible", "box_EntityStatusListener_398.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_341_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_415();
    l0 = self.box_EntityStatusListener_341;
    l1 = self.box_SpawnAI_415;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1064400654", "1064400654", "KEY01_010_B10", "box_EntityStatusListener_341.Loaded", "box_SpawnAI_415.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_374_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_438();
    l0 = self.box_MultipleOR_374;
    l1 = self.box_PlaySequence_v8_438;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1885796607", "1885796607", "KEY01_010_B10", "box_MultipleOR_374.Out", "box_PlaySequence_v8_438.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_MultipleOR_388_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_373();
    l0 = self.box_MultipleOR_388;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|234176983", "234176983", "KEY01_010_B10", "box_MultipleOR_388.Out", "box_OutputOrder_v2_373.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_399_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_297();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1521533730", "1521533730", "KEY01_010_B10", "box_MissionBlockLayer_399.Activated", "box_Simple_Node_297.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_363_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_360();
    l0 = self.box_RemoveEntity_v2_360;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|512777641", "512777641", "KEY01_010_B10", "box_OutputOrder_v2_363.Out", "box_RemoveEntity_v2_360.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_363_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_198();
    l0 = self.box_RemoveEntity_v2_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2085032750", "2085032750", "KEY01_010_B10", "box_OutputOrder_v2_363.Out", "box_RemoveEntity_v2_198.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_363_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_448();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1828367953", "1828367953", "KEY01_010_B10", "box_OutputOrder_v2_363.Out", "box_MissionBlockLayer_448.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_343_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_410();
    l0 = self.box_MultipleOR_343;
    l1 = self.box_ProximityRadiusListener_v3_410;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|131307166", "131307166", "KEY01_010_B10", "box_MultipleOR_343.Out", "box_ProximityRadiusListener_v3_410.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_316_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_391();
    l0 = self.box_Delay_v5_391;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1148171151", "1148171151", "KEY01_010_B10", "box_Compare_Integers_316.A_lt_B", "box_Delay_v5_391.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_331_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_453();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1399129027", "1399129027", "KEY01_010_B10", "box_Simple_Node_331.Out", "box_MissionBlockLayer_453.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_396_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_322();
    l0 = self.box_EntityStatusListener_396;
    l1 = self.box_MultipleAND_v2_322;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|114324785", "114324785", "KEY01_010_B10", "box_EntityStatusListener_396.Enabled", "box_MultipleAND_v2_322.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 4);
end;

function export:f_box_EntityStatusListener_396_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_396;
    l1 = self.box_MultipleOR_354;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|909370299", "909370299", "KEY01_010_B10", "box_EntityStatusListener_396.Unloaded", "box_MultipleOR_354.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_MultipleAND_v2_393_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_3();
    l0 = self.box_MultipleAND_v2_393;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|285930273", "285930273", "KEY01_010_B10", "box_MultipleAND_v2_393.Out", "box_VehicleModifier_v2_3.SetAsDestructable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsDestructable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_346_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_336();
    l0 = self.box_Switch_346;
    l1 = self.box_RemoveEntity_v2_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2026163017", "2026163017", "KEY01_010_B10", "box_Switch_346.Output", "box_RemoveEntity_v2_336.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_346_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_469();
    l0 = self.box_Switch_346;
    l1 = self.box_RemoveEntity_v2_469;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1665192393", "1665192393", "KEY01_010_B10", "box_Switch_346.Output", "box_RemoveEntity_v2_469.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_346_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_461();
    l0 = self.box_Switch_346;
    l1 = self.box_RemoveEntity_v2_461;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|673273936", "673273936", "KEY01_010_B10", "box_Switch_346.Output", "box_RemoveEntity_v2_461.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_346_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_376();
    l0 = self.box_Switch_346;
    l1 = self.box_RemoveEntity_v2_376;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1915497623", "1915497623", "KEY01_010_B10", "box_Switch_346.Output", "box_RemoveEntity_v2_376.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_346_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_372();
    l0 = self.box_Switch_346;
    l1 = self.box_RemoveEntity_v2_372;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1097752819", "1097752819", "KEY01_010_B10", "box_Switch_346.Output", "box_RemoveEntity_v2_372.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_350_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_463;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|121521764", "121521764", "KEY01_010_B10", "box_Compare_Integers_350.A_eq_B", "box_MultipleOR_463.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_432_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_342();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|613866208", "613866208", "KEY01_010_B10", "box_Compare_Integers_432.A_le_B", "box_OutputOrder_v2_342.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_339_Out()
    self:OnExit_box_SetBoolean_v2_339_Out();
end;

function export:f_box_OutputOrder_v2_434_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_383();
    l0 = self.box_ProximityRadiusListener_v3_383;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1202046108", "1202046108", "KEY01_010_B10", "box_OutputOrder_v2_434.Out", "box_ProximityRadiusListener_v3_383.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_434_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_333();
    l0 = self.box_EntityStatusListener_333;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1318856431", "1318856431", "KEY01_010_B10", "box_OutputOrder_v2_434.Out", "box_EntityStatusListener_333.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_400_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_9();
    l0 = self.box_EntityStatusListener_400;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1485601868", "1485601868", "KEY01_010_B10", "box_EntityStatusListener_400.Loaded", "box_VehicleModifier_v2_9.SetAsIndestructable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsIndestructable
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_338_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_399();
    l0 = self.box_Gate_v3_338;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|921434538", "921434538", "KEY01_010_B10", "box_Gate_v3_338.Out", "box_MissionBlockLayer_399.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_345_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_345;
    l1 = self.box_MultipleOR_388;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2138724563", "2138724563", "KEY01_010_B10", "box_PlaySequence_v8_345.Finished", "box_MultipleOR_388.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_345_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_345;
    l1 = self.box_MultipleOR_388;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1988595654", "1988595654", "KEY01_010_B10", "box_PlaySequence_v8_345.Skipped", "box_MultipleOR_388.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_345_SPOut__Unhide_Debris_()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_407();
    l0 = self.box_PlaySequence_v8_345;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2128023560", "2128023560", "KEY01_010_B10", "box_PlaySequence_v8_345.SPOut", "box_SetInteger_v2_407.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_345_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_464();
    l0 = self.box_PlaySequence_v8_345;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|61176023", "61176023", "KEY01_010_B10", "box_PlaySequence_v8_345.Started", "box_SetInteger_v2_464.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_345_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_296();
    l0 = self.box_PlaySequence_v8_345;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|578625833", "578625833", "KEY01_010_B10", "box_PlaySequence_v8_345.Stopped", "box_Simple_Node_296.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_410_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_347();
    l0 = self.box_ProximityRadiusListener_v3_410;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1619588797", "1619588797", "KEY01_010_B10", "box_ProximityRadiusListener_v3_410.SomeoneNear", "box_OutputOrder_v2_347.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_413_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_322();
    l0 = self.box_EntityStatusListener_413;
    l1 = self.box_MultipleAND_v2_322;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1112880774", "1112880774", "KEY01_010_B10", "box_EntityStatusListener_413.Enabled", "box_MultipleAND_v2_322.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_EntityStatusListener_413_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_413;
    l1 = self.box_MultipleOR_354;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|108930675", "108930675", "KEY01_010_B10", "box_EntityStatusListener_413.Unloaded", "box_MultipleOR_354.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_354_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_354;
    l1 = self.box_OnceOnly_v3_328;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1596906205", "1596906205", "KEY01_010_B10", "box_MultipleOR_354.Out", "box_OnceOnly_v3_328.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_370_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_394();
    l0 = self.box_ProximityTrigger_v2_394;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1280403816", "1280403816", "KEY01_010_B10", "box_OutputOrder_v2_370.Out", "box_ProximityTrigger_v2_394.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_408_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_296();
    l0 = self.box_MultipleAND_v2_408;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1014841145", "1014841145", "KEY01_010_B10", "box_MultipleAND_v2_408.Out", "box_Simple_Node_296.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_367_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_337();
    l0 = self.box_Gate_v3_337;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|654650271", "654650271", "KEY01_010_B10", "box_OutputOrder_v2_367.Out", "box_Gate_v3_337.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_367_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_430();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1814806061", "1814806061", "KEY01_010_B10", "box_OutputOrder_v2_367.Out", "box_Simple_Node_430.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_367_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_196();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1990139340", "1990139340", "KEY01_010_B10", "box_OutputOrder_v2_367.Out", "box_Simple_Node_196.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_367_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_414();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1492721544", "1492721544", "KEY01_010_B10", "box_OutputOrder_v2_367.Out", "box_Print_v2_414.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_367_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_422();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1149109755", "1149109755", "KEY01_010_B10", "box_OutputOrder_v2_367.Out", "box_Simple_Node_422.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_347_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_61();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1782368585", "1782368585", "KEY01_010_B10", "box_OutputOrder_v2_347.Out", "box_Simple_Node_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_347_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_445();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|738740143", "738740143", "KEY01_010_B10", "box_OutputOrder_v2_347.Out", "box_Print_v2_445.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_429_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_437();
    l0 = self.box_ConsoleCommand_v3_429;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|720488653", "720488653", "KEY01_010_B10", "box_ConsoleCommand_v3_429.Execute", "box_VehicleModifier_v2_437.SetExplosion", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExplosion
    l1:Exec(17, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_305_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_341();
    l0 = self.box_EntityStatusListener_341;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1845055045", "1845055045", "KEY01_010_B10", "box_OutputOrder_v2_305.Out", "box_EntityStatusListener_341.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_305_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_368;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|974555716", "974555716", "KEY01_010_B10", "box_OutputOrder_v2_305.Out", "box_MultipleOR_368.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_322_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_337();
    l0 = self.box_MultipleAND_v2_322;
    l1 = self.box_Gate_v3_337;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|771255516", "771255516", "KEY01_010_B10", "box_MultipleAND_v2_322.Out", "box_Gate_v3_337.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_368_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_110();
    l0 = self.box_MultipleOR_368;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|260610578", "260610578", "KEY01_010_B10", "box_MultipleOR_368.Out", "box_Simple_Node_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_416_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_362();
    l0 = self.box_EntityStatusListener_362;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|244070112", "244070112", "KEY01_010_B10", "box_OutputOrder_v2_416.Out", "box_EntityStatusListener_362.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_416_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_446();
    l0 = self.box_EntityStatusListener_446;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1286283610", "1286283610", "KEY01_010_B10", "box_OutputOrder_v2_416.Out", "box_EntityStatusListener_446.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_358_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_381();
    l0 = self.box_EntityStatusListener_358;
    l1 = self.box_EntityStatusListener_381;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|263896804", "263896804", "KEY01_010_B10", "box_EntityStatusListener_358.Loaded", "box_EntityStatusListener_381.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_467_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_315();
    l0 = self.box_EntityStatusListener_315;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1279035470", "1279035470", "KEY01_010_B10", "box_OutputOrder_v2_467.Out", "box_EntityStatusListener_315.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_467_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_435();
    l0 = self.box_CharacterLoadedIdListener_435;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|773392619", "773392619", "KEY01_010_B10", "box_OutputOrder_v2_467.Out", "box_CharacterLoadedIdListener_435.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_467_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_460();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2064678969", "2064678969", "KEY01_010_B10", "box_OutputOrder_v2_467.Out", "box_GetActivityFact_460.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_467_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_439();
    l0 = self.box_EntityStatusListener_439;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1623598301", "1623598301", "KEY01_010_B10", "box_OutputOrder_v2_467.Out", "box_EntityStatusListener_439.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_467_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_455();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|542266966", "542266966", "KEY01_010_B10", "box_OutputOrder_v2_467.Out", "box_OutputOrder_v2_455.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_462_Enabled()
    self:OnExit_box_GroupSizeListener_v5_462_Enabled();
end;

function export:f_box_GroupSizeListener_v5_462_MemberAdded()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_462_MemberAdded();
    l0 = self.box_GroupSizeListener_v5_462;
    l1 = self.box_MultipleOR_352;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1447722780", "1447722780", "KEY01_010_B10", "box_GroupSizeListener_v5_462.MemberAdded", "box_MultipleOR_352.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_462_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_462_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_462;
    l1 = self.box_MultipleOR_352;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1850404090", "1850404090", "KEY01_010_B10", "box_GroupSizeListener_v5_462.MemberRemoved", "box_MultipleOR_352.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetInteger_v2_407_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_407_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_418();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|559952918", "559952918", "KEY01_010_B10", "box_SetInteger_v2_407.Out", "box_OutputOrder_v2_418.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_333_Disabled()
    local l0, l1;
    l0 = self.box_EntityStatusListener_333;
    l1 = self.box_MultipleOR_382;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1965021739", "1965021739", "KEY01_010_B10", "box_EntityStatusListener_333.Disabled", "box_MultipleOR_382.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_333_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_333;
    l1 = self.box_MultipleOR_382;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1838102674", "1838102674", "KEY01_010_B10", "box_EntityStatusListener_333.Unloaded", "box_MultipleOR_382.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_455_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_323;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1128889070", "1128889070", "KEY01_010_B10", "box_OutputOrder_v2_455.Out", "box_StartMetaSequence_323.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_455_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_416();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1117148655", "1117148655", "KEY01_010_B10", "box_OutputOrder_v2_455.Out", "box_OutputOrder_v2_416.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_455_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_309();
    l0 = self.box_EntityStatusListener_309;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|991706948", "991706948", "KEY01_010_B10", "box_OutputOrder_v2_455.Out", "box_EntityStatusListener_309.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_431_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_396();
    l0 = self.box_EntityStatusListener_431;
    l1 = self.box_EntityStatusListener_396;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1131332320", "1131332320", "KEY01_010_B10", "box_EntityStatusListener_431.Loaded", "box_EntityStatusListener_396.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_353_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_450();
    l0 = self.box_MultipleOR_353;
    l1 = self.box_VehicleDamageListener_v2_450;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|727988351", "727988351", "KEY01_010_B10", "box_MultipleOR_353.Out", "box_VehicleDamageListener_v2_450.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_422_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_404();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|579236654", "579236654", "KEY01_010_B10", "box_Simple_Node_422.Out", "box_Simple_Node_404.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_380_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_380_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_442();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1123403074", "1123403074", "KEY01_010_B10", "box_SetInteger_v2_380.Out", "box_Print_v2_442.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_320_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_343;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1740978365", "1740978365", "KEY01_010_B10", "box_OutputOrder_v2_320.Out", "box_MultipleOR_343.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_320_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_470;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1638039987", "1638039987", "KEY01_010_B10", "box_OutputOrder_v2_320.Out", "box_MultipleOR_470.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_320_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_353;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|161620049", "161620049", "KEY01_010_B10", "box_OutputOrder_v2_320.Out", "box_MultipleOR_353.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_320_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_408();
    l0 = self.box_MultipleAND_v2_408;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1328642472", "1328642472", "KEY01_010_B10", "box_OutputOrder_v2_320.Out", "box_MultipleAND_v2_408.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_320_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_393();
    l0 = self.box_MultipleAND_v2_393;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1754894809", "1754894809", "KEY01_010_B10", "box_OutputOrder_v2_320.Out", "box_MultipleAND_v2_393.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_320_Out_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|646888", "646888", "KEY01_010_B10", "box_OutputOrder_v2_320.Out", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityFact_317_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_313();
    l0 = self.box_SoundModifier_v2_313;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1113394737", "1113394737", "KEY01_010_B10", "box_GetActivityFact_317.FactSet", "box_SoundModifier_v2_313.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_BulletTriggerListener_401_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_306();
    l0 = self.box_BulletTriggerListener_401;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|665062859", "665062859", "KEY01_010_B10", "box_BulletTriggerListener_401.Enter", "box_OutputOrder_v2_306.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_381_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_322();
    l0 = self.box_EntityStatusListener_381;
    l1 = self.box_MultipleAND_v2_322;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|213884364", "213884364", "KEY01_010_B10", "box_EntityStatusListener_381.Enabled", "box_MultipleAND_v2_322.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_EntityStatusListener_381_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_381;
    l1 = self.box_MultipleOR_354;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|161813177", "161813177", "KEY01_010_B10", "box_EntityStatusListener_381.Unloaded", "box_MultipleOR_354.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_EntityStatusListener_389_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_466();
    l0 = self.box_EntityStatusListener_389;
    l1 = self.box_EntityStatusListener_466;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1813446720", "1813446720", "KEY01_010_B10", "box_EntityStatusListener_389.Loaded", "box_EntityStatusListener_466.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_324_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_351();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|220137662", "220137662", "KEY01_010_B10", "box_Simple_Node_324.Out", "box_OutputOrder_v2_351.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_375_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_366();
    l0 = self.box_MultipleOR_375;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1856518827", "1856518827", "KEY01_010_B10", "box_MultipleOR_375.Out", "box_OutputOrder_v2_366.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_404_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_324();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2027488742", "2027488742", "KEY01_010_B10", "box_Simple_Node_404.Out", "box_Simple_Node_324.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_2_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_10();
    l0 = self.box_ProximityRadiusListener_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1080856843", "1080856843", "KEY01_010_B10", "box_GetLocalPlayer_v2_2.Out", "box_ProximityRadiusListener_v3_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_392_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_322();
    l0 = self.box_EntityStatusListener_392;
    l1 = self.box_MultipleAND_v2_322;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|331721600", "331721600", "KEY01_010_B10", "box_EntityStatusListener_392.Enabled", "box_MultipleAND_v2_322.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_EntityStatusListener_392_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_392;
    l1 = self.box_MultipleOR_354;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|889083298", "889083298", "KEY01_010_B10", "box_EntityStatusListener_392.Unloaded", "box_MultipleOR_354.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_436_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_436;
    l1 = self.box_MultipleOR_409;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1811620777", "1811620777", "KEY01_010_B10", "box_PlaySequence_v8_436.Finished", "box_MultipleOR_409.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_436_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_436;
    l1 = self.box_MultipleOR_409;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|434569096", "434569096", "KEY01_010_B10", "box_PlaySequence_v8_436.Skipped", "box_MultipleOR_409.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_436_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_380();
    l0 = self.box_PlaySequence_v8_436;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1424068309", "1424068309", "KEY01_010_B10", "box_PlaySequence_v8_436.Started", "box_SetInteger_v2_380.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_436_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_296();
    l0 = self.box_PlaySequence_v8_436;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1429303198", "1429303198", "KEY01_010_B10", "box_PlaySequence_v8_436.Stopped", "box_Simple_Node_296.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_444_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_365();
    l0 = self.box_MultipleAND_v2_365;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|998181777", "998181777", "KEY01_010_B10", "box_OutputOrder_v2_444.Out", "box_MultipleAND_v2_365.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_444_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerParticipation_NPC_406();
    l0 = self.box_PlayerParticipation_NPC_406;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1164765357", "1164765357", "KEY01_010_B10", "box_OutputOrder_v2_444.Out", "box_PlayerParticipation_NPC_406.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_348_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_444();
    l0 = self.box_SpawnAI_348;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1429575580", "1429575580", "KEY01_010_B10", "box_SpawnAI_348.Spawned", "box_OutputOrder_v2_444.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_457_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_343;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|490430893", "490430893", "KEY01_010_B10", "box_OutputOrder_v2_457.Out", "box_MultipleOR_343.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_457_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_470;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1863334780", "1863334780", "KEY01_010_B10", "box_OutputOrder_v2_457.Out", "box_MultipleOR_470.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_457_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_353;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|592553625", "592553625", "KEY01_010_B10", "box_OutputOrder_v2_457.Out", "box_MultipleOR_353.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_457_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1784861397", "1784861397", "KEY01_010_B10", "box_OutputOrder_v2_457.Out", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityFact_460_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_369();
    l0 = self.box_ProximityRadiusListener_v3_369;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|513772201", "513772201", "KEY01_010_B10", "box_GetActivityFact_460.FactSet", "box_ProximityRadiusListener_v3_369.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_366_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_304();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|383530961", "383530961", "KEY01_010_B10", "box_OutputOrder_v2_366.Out", "box_Compare_Boolean_304.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_366_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_314();
    l0 = self.box_EntityStatusListener_314;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2020043263", "2020043263", "KEY01_010_B10", "box_OutputOrder_v2_366.Out", "box_EntityStatusListener_314.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_366_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_310();
    l0 = self.box_Delay_v5_310;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|785835000", "785835000", "KEY01_010_B10", "box_OutputOrder_v2_366.Out", "box_Delay_v5_310.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetInteger_v2_464_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_464_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_458();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1934071842", "1934071842", "KEY01_010_B10", "box_SetInteger_v2_464.Out", "box_Print_v2_458.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_428_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_345();
    l0 = self.box_PlaySequence_v8_345;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1250524746", "1250524746", "KEY01_010_B10", "box_Compare_Integers_428.A_eq_B", "box_PlaySequence_v8_345.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
end;

function export:f_box_ProximityRadiusListener_v3_383_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_333();
    l0 = self.box_ProximityRadiusListener_v3_383;
    l1 = self.box_EntityStatusListener_333;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1122893116", "1122893116", "KEY01_010_B10", "box_ProximityRadiusListener_v3_383.SomeoneFar", "box_EntityStatusListener_333.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_CharacterLoadedIdListener_435_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_435_LoadedIdReceived();
    params = self:OnEnter_box_GetLocalPlayer_v2_2();
    l0 = self.box_CharacterLoadedIdListener_435;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1827637167", "1827637167", "KEY01_010_B10", "box_CharacterLoadedIdListener_435.LoadedIdReceived", "box_GetLocalPlayer_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|@Abort");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_196_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_296()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_296");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|@Aborted");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_296_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_298()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_298");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|@DESTROYED");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_298_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_297()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_297");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|@RESET");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_297_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|@StopSequence");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|@StopTruckSpawn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_171_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|@TruckSpawned");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_110_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_465()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101671268819462636",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_334()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_334");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|74878542");
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
                [0] = self.f_box_OutputOrder_v2_334_Out_0,
                [1] = self.f_box_OutputOrder_v2_334_Out_1,
                [2] = self.f_box_OutputOrder_v2_334_Out_2,
                [3] = self.f_box_OutputOrder_v2_334_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_418()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_418");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|79610671");
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
                [0] = self.f_box_OutputOrder_v2_418_Out_0,
                [1] = self.f_box_OutputOrder_v2_418_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_469()
    local params;
    params = {
        -- Group,
        [0] = "2098674292924391869",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_330()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101671268819462636",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_335()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_335");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|144181433");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_335_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "18152975301422325",
        -- missionLayerId,
        [1] = "27160174556163318",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_387()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_387");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|149160157");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_448()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_448");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|175111843");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_448_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "18152973884472462",
        -- missionLayerId,
        [1] = "27160228978041616",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_402()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098674292924391869",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_306()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_306");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|210843138");
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
                [0] = self.f_box_OutputOrder_v2_306_Out_0,
                [1] = self.f_box_OutputOrder_v2_306_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_403()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_403");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|225225740");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_403_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_384()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_384");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|233887899");
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
                [0] = self.f_box_OutputOrder_v2_384_Out_0,
                [1] = self.f_box_OutputOrder_v2_384_Out_1,
                [2] = self.f_box_OutputOrder_v2_384_Out_2,
                [4] = self.f_box_OutputOrder_v2_384_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_449()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101671109440104324",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_397()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_385()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098674465727619551",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_456()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_456");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|267384268");
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
                [0] = self.f_box_OutputOrder_v2_456_Out_0,
                [1] = self.f_box_OutputOrder_v2_456_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_329()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_329");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|283300967");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_329_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_357()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_357");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|292026578");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_357_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.cin_playing,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_319()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_319");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|319413706");
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
                [0] = self.f_box_OutputOrder_v2_319_Out_0,
                [1] = self.f_box_OutputOrder_v2_319_Out_1,
                [2] = self.f_box_OutputOrder_v2_319_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_12()
    local params;
    params = {
        -- missionBlockId,
        [0] = "18152973884472462",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_440()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_440");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|334167895");
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
                [0] = self.f_box_OutputOrder_v2_440_Out_0,
                [1] = self.f_box_OutputOrder_v2_440_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_10()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "#ED455357",
        -- farZone,
        [2] = 25,
        -- id2,
        [3] = self.eNickRye,
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_471()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_471");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|367632539");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_471_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100955660230332282",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_309()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098477432416796537",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_417()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "test_unload",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_391()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_365()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_315()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098476584376744638",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_308()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_441()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_441");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|513482177");
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
                [0] = self.f_box_OutputOrder_v2_441_Out_0,
                [1] = self.f_box_OutputOrder_v2_441_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_454()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_454");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|514927323");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_454_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.cin_playing,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_351()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_351");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|523440454");
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
                [0] = self.f_box_OutputOrder_v2_351_Out_0,
                [1] = self.f_box_OutputOrder_v2_351_Out_1,
                [2] = self.f_box_OutputOrder_v2_351_Out_2,
                [3] = self.f_box_OutputOrder_v2_351_Out_3,
                [4] = self.f_box_OutputOrder_v2_351_Out_4,
                [5] = self.f_box_OutputOrder_v2_351_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_325()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_325");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|530686110");
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
                [0] = self.f_box_OutputOrder_v2_325_Out_0,
                [1] = self.f_box_OutputOrder_v2_325_Out_1,
                [2] = self.f_box_OutputOrder_v2_325_Out_2,
                [3] = self.f_box_OutputOrder_v2_325_Out_3,
                [4] = self.f_box_OutputOrder_v2_325_Out_4,
                [5] = self.f_box_OutputOrder_v2_325_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|533776702");
    l0:SetConnections({
        -- OnSetAsDestructible,
        [3] = self.f_box_VehicleModifier_v2_3_OnSetAsDestructible,
    });
    params = {
        -- targets,
        [0] = "2098477301707603699",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_355()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_355");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|541534031");
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
                [1] = self.f_box_OutputOrder_v2_355_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_394()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101671118942300061",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_442()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_442");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|560853680");
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
        [8] = "Helo loop started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_398()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098477301707603699",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_373()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_373");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|566324330");
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
                [0] = self.f_box_OutputOrder_v2_373_Out_0,
                [1] = self.f_box_OutputOrder_v2_373_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_342()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_342");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|588767324");
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
                [0] = self.f_box_OutputOrder_v2_342_Out_0,
                [1] = self.f_box_OutputOrder_v2_342_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_11()
    local params;
    params = {
        -- missionBlockId,
        [0] = "18152973884472462",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_312()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_312");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|604471224");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_312_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_372()
    local params;
    params = {
        -- Group,
        [0] = "2098674483855401440",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_376()
    local params;
    params = {
        -- Group,
        [0] = "2098674495542829540",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_364()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_364");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|611646189");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_364_Stopped,
    });
    params = {
        -- ID,
        [1] = self.iMetaSequenceId,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_337()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_466()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098674495542829540",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_304()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_304");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|673765027");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_304_A_is_True,
    });
    params = {
        -- A,
        [0] = self.PlayerParticipated,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_439()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098477432416796537",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_390()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101671268819462636",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_446()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101671118942300061",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_369()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gFriendlyPlayer,
        -- id2,
        [3] = "2098810045127992152",
        -- nearZone,
        [4] = 80,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_16()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098477024476675297",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_438()
    local params;
    DrawTextToScreen("Comment: HELICO LOOP", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlaySequence_v8')-- Comment: HELICO LOOP");
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.iMetaSequenceId,
        -- SceneEntity,
        [3] = "2098674292924391869",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/scr_key01_010_helicocrash/scr_key01_010_helicocrash_loop.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_336()
    local params;
    params = {
        -- Group,
        [0] = "2098477301707603699",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_344()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101671268819462636",
    };
    return params;
end;

function export:OnEnter_box_PlayerParticipation_NPC_406()
    local params;
    params = {
        -- NPCGroup,
        [0] = "#3E379C33",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_451()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_451");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|822951158");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160229595419241",
        -- missionLayerId,
        [1] = "36167428850160234",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2103597326714026995",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_15()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098477017702874302",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|854882332");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayRandomDialog_1()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- maxTime,
        [1] = 15,
        -- minTime,
        [2] = 5,
        -- SoundId,
        [3] = {
            connections = {
                [0] = "4099445599",
                [1] = "3893500322",
                [2] = "3957149411",
                [3] = "95861292",
                [4] = "58879253",
                [5] = "2442269885",
                [6] = "3738301453",
                [7] = "965053434",
                [8] = "2394963216",
                [9] = "3384712208",
                [10] = "2284761984",
                [11] = "165827368",
            },
            count = 12,
        },
        -- TargetEntity,
        [4] = self.LocalPlayer,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_356()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_356");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|860822232");
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
        [8] = "Helicopter got destroyed",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_415()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101671218821261397",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_362()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101671109440104324",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_310()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_332()
    local params;
    params = {
        -- Pawns,
        [0] = "2098810045127992152",
        -- SoundId,
        [1] = "2172909661",
        -- SoundType,
        [2] = 17,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_450()
    local params;
    params = {
        -- Vehicle,
        [0] = "2098477301707603699",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_411()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gFriendlyPlayer,
        -- id2,
        [3] = "2098477432416796537",
        -- nearZone,
        [4] = 60,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_314()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098477432416796537",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1000370314");
    l0:SetConnections({
    });
    params = {
        -- Pawn,
        [0] = "2098477024476675297",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1017508148");
    l0:SetConnections({
        -- OnSetAsIndestructible,
        [4] = self.f_box_VehicleModifier_v2_9_OnSetAsIndestructible,
    });
    params = {
        -- targets,
        [0] = "2098477301707603699",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_341()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101671218821261397",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_399()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_399");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1061591356");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_399_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "18152973884472462",
        -- missionLayerId,
        [1] = "27160228978041616",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_363()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_363");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1074815120");
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
                [0] = self.f_box_OutputOrder_v2_363_Out_0,
                [1] = self.f_box_OutputOrder_v2_363_Out_1,
                [2] = self.f_box_OutputOrder_v2_363_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_198()
    local params;
    params = {
        -- Group,
        [0] = "2098674292924391869",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_316()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_316");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1111891335");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_316_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.cin_playing,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_445()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_445");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1128529129");
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
        [8] = "Player near cinematic stop loop",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_331()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_331");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1193628202");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_331_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_396()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098714735554874380",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_393()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_458()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_458");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1242302630");
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
        [8] = "Chopped loop stops, helo must crash now",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Switch_346()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_423()
    local params;
    params = {
        -- Group,
        [0] = "#384A0BE6",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_350()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_350");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1261197078");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_350_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.cin_playing,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_437()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_437");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1271060265");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2098477301707603699",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_453()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_453");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1311007693");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "18152973884472462",
        -- missionLayerId,
        [1] = "27160228978041616",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_432()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_432");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1323891163");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_432_A_le_B,
    });
    params = {
        -- A,
        [0] = self.iNumberAttackerAlive,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_339()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_339");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1324317440");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_339_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_434()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_434");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1334195029");
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
                [0] = self.f_box_OutputOrder_v2_434_Out_0,
                [1] = self.f_box_OutputOrder_v2_434_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_313()
    local params;
    params = {
        -- Pawns,
        [0] = "2098810045127992152",
        -- SoundId,
        [1] = "3993972990",
        -- SoundType,
        [2] = 17,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_400()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098477301707603699",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_338()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_345()
    local params;
    DrawTextToScreen("Comment: HELICO CRASH", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlaySequence_v8')-- Comment: HELICO CRASH");
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.iMetaSequenceId,
        -- SceneEntity,
        [3] = "2098674292924391869",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/scr_key01_010_helicocrash/scr_key01_010_helicocrash.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1414752727");
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
        [8] = "Player looked at cinematic for 3 seconds",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_410()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gFriendlyPlayer,
        -- id2,
        [3] = "2098715718708137360",
        -- nearZone,
        [4] = 145,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_413()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098674292924391869",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_370()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_370");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1542660535");
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
                [1] = self.f_box_OutputOrder_v2_370_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_408()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_367()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_367");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1562822346");
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
                [0] = self.f_box_OutputOrder_v2_367_Out_0,
                [1] = self.f_box_OutputOrder_v2_367_Out_1,
                [2] = self.f_box_OutputOrder_v2_367_Out_2,
                [3] = self.f_box_OutputOrder_v2_367_Out_3,
                [4] = self.f_box_OutputOrder_v2_367_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_347()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_347");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1565762409");
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
                [0] = self.f_box_OutputOrder_v2_347_Out_0,
                [1] = self.f_box_OutputOrder_v2_347_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_429()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "test_destroy",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_305()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_305");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1573252148");
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
                [0] = self.f_box_OutputOrder_v2_305_Out_0,
                [1] = self.f_box_OutputOrder_v2_305_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_322()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_416()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_416");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1607918687");
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
                [0] = self.f_box_OutputOrder_v2_416_Out_0,
                [1] = self.f_box_OutputOrder_v2_416_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_358()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098674483855401440",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_467()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_467");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1665748690");
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
                [0] = self.f_box_OutputOrder_v2_467_Out_0,
                [1] = self.f_box_OutputOrder_v2_467_Out_1,
                [2] = self.f_box_OutputOrder_v2_467_Out_2,
                [3] = self.f_box_OutputOrder_v2_467_Out_3,
                [4] = self.f_box_OutputOrder_v2_467_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_462()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#3E379C33",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_407()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_407");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1681909762");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_407_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_333()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098477432416796537",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_455()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_455");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1689586556");
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
                [0] = self.f_box_OutputOrder_v2_455_Out_0,
                [1] = self.f_box_OutputOrder_v2_455_Out_1,
                [2] = self.f_box_OutputOrder_v2_455_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_430()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_430");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1704518551");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_431()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098714735554874380",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_422()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_422");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1767269298");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_422_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_340()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_340");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1776114751");
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
        [8] = "Player shot at cinematic",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_380()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_380");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1790023972");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_380_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_320()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_320");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1835673533");
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
                [0] = self.f_box_OutputOrder_v2_320_Out_0,
                [1] = self.f_box_OutputOrder_v2_320_Out_1,
                [2] = self.f_box_OutputOrder_v2_320_Out_2,
                [3] = self.f_box_OutputOrder_v2_320_Out_3,
                [4] = self.f_box_OutputOrder_v2_320_Out_4,
                [5] = self.f_box_OutputOrder_v2_320_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_317()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_317");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1855937236");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_317_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015223508254300",
        -- Fact,
        [1] = "E3_Demo_Started",
    };
    return params;
end;

function export:OnEnter_box_BulletTriggerListener_401()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2101177829627539738",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_461()
    local params;
    params = {
        -- Group,
        [0] = "2098714735554874380",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_381()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098674483855401440",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_395()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_395");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1881208665");
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
        [8] = "All Assets are loaded",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_424()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_424");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1891913512");
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
        [8] = "helo crash cin is finished or skipped",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1896192253");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2098477017702874302",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_414()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_414");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1944882594");
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
        [8] = "Shits unloaded yo - RELOADING",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_389()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098674495542829540",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_324()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_324");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1967842525");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_324_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_404()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_404");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1979077681");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_404_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_426()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102209865041584016",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|1998492011");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_392()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098674465727619551",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_436()
    local params;
    DrawTextToScreen("Comment: HELICO START", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlaySequence_v8')-- Comment: HELICO START");
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.iMetaSequenceId,
        -- SceneEntity,
        [3] = "2098674292924391869",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/scr_key01_010_helicocrash/scr_key01_010_helicocrash_start.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_444()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_444");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2026345603");
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
                [0] = self.f_box_OutputOrder_v2_444_Out_0,
                [1] = self.f_box_OutputOrder_v2_444_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_348()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2098476584376744638",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_457()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_457");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2034828428");
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
                [0] = self.f_box_OutputOrder_v2_457_Out_0,
                [1] = self.f_box_OutputOrder_v2_457_Out_1,
                [2] = self.f_box_OutputOrder_v2_457_Out_2,
                [3] = self.f_box_OutputOrder_v2_457_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_460()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_460");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2035241761");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_460_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015223508254300",
        -- Fact,
        [1] = "E3_Demo_Started",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_366()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_366");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2054865556");
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
                [0] = self.f_box_OutputOrder_v2_366_Out_0,
                [1] = self.f_box_OutputOrder_v2_366_Out_1,
                [2] = self.f_box_OutputOrder_v2_366_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_464()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_464");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2063530562");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_464_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_428()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_428");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@KEY01_010_B10|2065796210");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_428_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.cin_playing,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_383()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "2098477024476675297",
        -- farZone,
        [2] = 360,
        -- id2,
        [3] = "2098477432416796537",
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_435()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015184054185563",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_360()
    local params;
    params = {
        -- Group,
        [0] = "2098477301707603699",
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_323_Out()
    local l0;
    l0 = self.box_StartMetaSequence_323;
    self.iMetaSequenceId = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_403_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.cin_playing = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_329_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_312_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.cin_playing = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_339_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.PlayerParticipated = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_462_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_462;
    self.iNumberAttackerAlive = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_462_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_462;
    self.iNumberAttackerAlive = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_462_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_462;
    self.iNumberAttackerAlive = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetInteger_v2_407_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.cin_playing = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_380_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.cin_playing = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.LocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_464_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.cin_playing = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_435_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_435;
    self.eNickRye = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
