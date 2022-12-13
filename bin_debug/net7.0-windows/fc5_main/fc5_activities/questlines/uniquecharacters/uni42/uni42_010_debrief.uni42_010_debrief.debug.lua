LUAC�/ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni42/uni42_010_debrief.domino
-- User graph: UNI42_010_DEBRIEF
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AddGunsForHire.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2457031445.bnk]], "CSoundResource");
        cboxRes:LoadResource([[503435706.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3847448858.bnk]], "CSoundResource");
        cboxRes:LoadResource([[532941296.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2128148481.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1441557454.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3668632515.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3203605406.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1294209985.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3014338084.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3000939643.bnk]], "CSoundResource");
        cboxRes:LoadResource([[882677497.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI42/UNI42_010_DEBRIEF.UNI42_010_DEBRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Aborted",
                delayed = true,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "Finished",
                delayed = true,
            },
            [3] = {
                name = "Paused",
                delayed = true,
            },
            [4] = {
                name = "Resumed",
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
                name = "eNPC",
                type = "entity",
            },
            [1] = {
                name = "eQCA_STP",
                type = "entity",
            },
            [2] = {
                name = "oObjective",
                type = "oasis",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/AddGunsForHire.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "RequestAdd",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "RequestFail",
                delayed = false,
            },
            [1] = {
                name = "RequestSuccess",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Player",
                type = "entity",
            },
            [1] = {
                name = "targetGFHEntity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "User",
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
    metadataTable[GetPathID("Domino/System/FastTravelModifier_v2.lua")] = {
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
        },
        dataInCount = 0,
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
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
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
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/RadioModifier_v3.lua")] = {
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
                name = "Enable",
                type = "bool",
            },
            [1] = {
                name = "ImmediateOverride",
                type = "bool",
            },
            [2] = {
                name = "LockOnOff",
                type = "bool",
            },
            [3] = {
                name = "LockStationSwitching",
                type = "bool",
            },
            [4] = {
                name = "StationOverride",
                type = "genericdb",
            },
            [5] = {
                name = "TargetRadio",
                type = "entity",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Lock",
            },
            [1] = {
                name = "Unlock",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Locked",
                delayed = false,
            },
            [1] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "IsAI",
                type = "bool",
            },
            [1] = {
                name = "IsPlayer",
                type = "bool",
            },
            [2] = {
                name = "SeatIndex",
                type = "int",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI42_010_DEBRIEF";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF";
    self.eSenior_NPC = nil;
    self.player = nil;
    self.Junior = nil;
    self.HurkCar = nil;
    self.VehicleState = 7;
    self.Hurk = nil;
    self.box_Gate_v3_69 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|17600740");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_69_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_69_Out,
    });
    self.box_Switch_41 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|43839816");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 10,
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
                [0] = self.f_box_Switch_41_Output_0,
                [1] = self.f_box_Switch_41_Output_1,
                [2] = self.f_box_Switch_41_Output_2,
                [3] = self.f_box_Switch_41_Output_3,
                [4] = self.f_box_Switch_41_Output_4,
                [5] = self.f_box_Switch_41_Output_5,
                [6] = self.f_box_Switch_41_Output_6,
                [7] = self.f_box_Switch_41_Output_7,
                [8] = self.f_box_Switch_41_Output_8,
                [9] = self.f_box_Switch_41_Output_9,
            },
            count = 10,
        },
    });
    self.box_PlayDialog_v6_71 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|77021907");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_71_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_71_FinishedInterrupted,
    });
    self.box_RemoveEntity_v2_84 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|129561785");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_84_Out,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|250124633");
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
    self.box_Switch_61 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|271085459");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 11,
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
                [0] = self.f_box_Switch_61_Output_0,
                [1] = self.f_box_Switch_61_Output_1,
                [2] = self.f_box_Switch_61_Output_2,
                [3] = self.f_box_Switch_61_Output_3,
                [4] = self.f_box_Switch_61_Output_4,
                [5] = self.f_box_Switch_61_Output_5,
                [6] = self.f_box_Switch_61_Output_6,
                [7] = self.f_box_Switch_61_Output_7,
                [8] = self.f_box_Switch_61_Output_8,
                [9] = self.f_box_Switch_61_Output_9,
                [10] = self.f_box_Switch_61_Output_10,
            },
            count = 11,
        },
    });
    self.box_SpawnAI_49 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|291022878");
    l0:SetConnections({
    });
    self.box_VehicleDamageListener_v2_27 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|306352207");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_27_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_27_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_27_Disabled,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|393094914");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|538603772");
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|569154018");
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
        [0] = self.f_box_MultipleOR_53_Out,
    });
    self.box_PlayDialog_v6_65 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|573609139");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_65_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_65_FinishedInterrupted,
    });
    self.box_OnceOnly_v3_55 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|615615790");
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
    self.box_RemoveEntity_v2_86 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|633653412");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_86_Out,
    });
    self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|674805287");
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
    self.box_PlayDialog_v6_72 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|674850955");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_72_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_72_FinishedInterrupted,
    });
    self.box_HealthListener_v6_58 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|679508282");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_58_Damaged,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|891959918");
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
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|933645814");
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
        [0] = self.f_box_MultipleOR_70_Out,
    });
    self.box_Delay_v5_79 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1204694588");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_79_TimeElapsed,
    });
    self.box_PlayDialog_v6_64 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1240661107");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_64_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_64_FinishedInterrupted,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1302042834");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_CharacterLoadedIdListener_15 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1338851398");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_15_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_15_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_15_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_15_LoadedIdReceived,
    });
    self.box_StartCelebration_4 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1344401541");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_4_Ended,
        -- Started,
        [1] = self.f_box_StartCelebration_4_Started,
    });
    self.box_MultipleOR_76 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1362815248");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 11,
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
    self.box_CharacterLoadedIdListener_16 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1380409867");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_16_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_16_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_16_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_16_LoadedIdReceived,
    });
    self.box_PlayDialog_v6_68 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1380932072");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_68_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_68_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_66 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1387231396");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_66_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_66_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_62 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1399881833");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_62_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_62_FinishedInterrupted,
    });
    self.box_CharacterLoadedIdListener_40 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1421429579");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_40_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_40_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_40_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_40_LoadedIdReceived,
    });
    self.box_PlayDialog_v6_67 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1434916877");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_67_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_67_FinishedInterrupted,
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1445278650");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1445733408");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_Delay_v5_63 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1480234531");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_63_TimeElapsed,
    });
    self.box_MultipleOR_77 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1501775987");
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
        [0] = self.f_box_MultipleOR_77_Out,
    });
    self.box_ContextualActionListener_9 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1516167203");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_9_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_9_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_9_Interrupt,
        -- Select,
        [7] = self.f_box_ContextualActionListener_9_Select,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1634440952");
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
        [0] = self.f_box_MultipleOR_43_Out,
    });
    self.box_EntityStatusListener_52 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1670594018");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_52_Loaded,
    });
    self.box_Brick_NarrativeQuickCinema_V3_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1717944261");
    l0:SetConnections({
        -- Aborted,
        [0] = self.f_box_Brick_NarrativeQuickCinema_V3_10_Aborted,
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V3_10_Finished,
        -- Started,
        [5] = self.f_box_Brick_NarrativeQuickCinema_V3_10_Started,
    });
    self.box_RemoveEntity_v2_82 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1722420253");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_82_Out,
    });
    self.box_PlayDialog_v6_74 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1779271529");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_74_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_74_FinishedInterrupted,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_74_Started,
    });
    self.box_HealthListener_v6_57 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1806432103");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_57_Damaged,
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1838089792");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_EntityStatusListener_23 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1907435747");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_23_Loaded,
    });
    self.box_RemoveEntity_v2_83 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1958220710");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_83_Out,
    });
    self.box_Music_Quest_v2_37 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2000913229");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_Music_Quest_v2_37_Stopped,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2007619280");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_PlayDialog_v6_73 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2049346913");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_73_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_73_FinishedInterrupted,
    });
    self.box_MultipleOR_75 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2091114416");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 10,
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
        [0] = self.f_box_MultipleOR_75_Out,
    });
    self.box_EntityStatusListener_50 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2096927731");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_50_Loaded,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2114343868");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1225604135", "1225604135", "UNI42_010_DEBRIEF", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|969020253", "969020253", "UNI42_010_DEBRIEF", "OnLeaveZone", "box_ActivityRetry_6.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_69_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_41();
    l0 = self.box_Gate_v3_69;
    l1 = self.box_Switch_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1497062193", "1497062193", "UNI42_010_DEBRIEF", "box_Gate_v3_69.Closed", "box_Switch_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_63();
    l0 = self.box_Gate_v3_69;
    l1 = self.box_Delay_v5_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2040355089", "2040355089", "UNI42_010_DEBRIEF", "box_Gate_v3_69.Out", "box_Delay_v5_63.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_101_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_74();
    l0 = self.box_PlayDialog_v6_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1010271378", "1010271378", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_101.True", "box_PlayDialog_v6_74.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_88_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_90();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2134338824", "2134338824", "UNI42_010_DEBRIEF", "box_VehicleSeatModifier_v2_88.Unlocked", "box_VehicleSeatModifier_v2_90.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_41_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_102();
    l0 = self.box_Switch_41;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|278252126", "278252126", "UNI42_010_DEBRIEF", "box_Switch_41.Output", "box_IsEntityLoaded_v3_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_41_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_106();
    l0 = self.box_Switch_41;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1535064963", "1535064963", "UNI42_010_DEBRIEF", "box_Switch_41.Output", "box_IsEntityLoaded_v3_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_41_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_103();
    l0 = self.box_Switch_41;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|374606893", "374606893", "UNI42_010_DEBRIEF", "box_Switch_41.Output", "box_IsEntityLoaded_v3_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_41_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_107();
    l0 = self.box_Switch_41;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|488721264", "488721264", "UNI42_010_DEBRIEF", "box_Switch_41.Output", "box_IsEntityLoaded_v3_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_41_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_108();
    l0 = self.box_Switch_41;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1707559951", "1707559951", "UNI42_010_DEBRIEF", "box_Switch_41.Output", "box_IsEntityLoaded_v3_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_41_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_109();
    l0 = self.box_Switch_41;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|9395741", "9395741", "UNI42_010_DEBRIEF", "box_Switch_41.Output", "box_IsEntityLoaded_v3_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_41_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_110();
    l0 = self.box_Switch_41;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|287256845", "287256845", "UNI42_010_DEBRIEF", "box_Switch_41.Output", "box_IsEntityLoaded_v3_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_41_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_111();
    l0 = self.box_Switch_41;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1212459783", "1212459783", "UNI42_010_DEBRIEF", "box_Switch_41.Output", "box_IsEntityLoaded_v3_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_41_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_112();
    l0 = self.box_Switch_41;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1483497217", "1483497217", "UNI42_010_DEBRIEF", "box_Switch_41.Output", "box_IsEntityLoaded_v3_112.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_41_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_113();
    l0 = self.box_Switch_41;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|23299545", "23299545", "UNI42_010_DEBRIEF", "box_Switch_41.Output", "box_IsEntityLoaded_v3_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_71_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_71;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|826020846", "826020846", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_71.Finished", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_PlayDialog_v6_71_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_71;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1741274930", "1741274930", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_71.FinishedInterrupted", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_IsEntityLoaded_v3_92_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_64();
    l0 = self.box_PlayDialog_v6_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1028632512", "1028632512", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_92.True", "box_PlayDialog_v6_64.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_86();
    l0 = self.box_RemoveEntity_v2_84;
    l1 = self.box_RemoveEntity_v2_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1431486819", "1431486819", "UNI42_010_DEBRIEF", "box_RemoveEntity_v2_84.Out", "box_RemoveEntity_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_111_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_71();
    l0 = self.box_PlayDialog_v6_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|723452669", "723452669", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_111.True", "box_PlayDialog_v6_71.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_VehicleSeatModifier_v2_90_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_87();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1630091591", "1630091591", "UNI42_010_DEBRIEF", "box_VehicleSeatModifier_v2_90.Unlocked", "box_VehicleSeatModifier_v2_87.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|922856401", "922856401", "UNI42_010_DEBRIEF", "box_MultipleOR_5.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Switch_61_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_91();
    l0 = self.box_Switch_61;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|438503093", "438503093", "UNI42_010_DEBRIEF", "box_Switch_61.Output", "box_IsEntityLoaded_v3_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_61_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_92();
    l0 = self.box_Switch_61;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2111952482", "2111952482", "UNI42_010_DEBRIEF", "box_Switch_61.Output", "box_IsEntityLoaded_v3_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_61_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_93();
    l0 = self.box_Switch_61;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|198141987", "198141987", "UNI42_010_DEBRIEF", "box_Switch_61.Output", "box_IsEntityLoaded_v3_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_61_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_98();
    l0 = self.box_Switch_61;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|510328330", "510328330", "UNI42_010_DEBRIEF", "box_Switch_61.Output", "box_IsEntityLoaded_v3_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_61_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_94();
    l0 = self.box_Switch_61;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1522286416", "1522286416", "UNI42_010_DEBRIEF", "box_Switch_61.Output", "box_IsEntityLoaded_v3_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_61_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_99();
    l0 = self.box_Switch_61;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1692059199", "1692059199", "UNI42_010_DEBRIEF", "box_Switch_61.Output", "box_IsEntityLoaded_v3_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_61_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_95();
    l0 = self.box_Switch_61;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|780913210", "780913210", "UNI42_010_DEBRIEF", "box_Switch_61.Output", "box_IsEntityLoaded_v3_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_61_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_100();
    l0 = self.box_Switch_61;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1547065780", "1547065780", "UNI42_010_DEBRIEF", "box_Switch_61.Output", "box_IsEntityLoaded_v3_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_61_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_96();
    l0 = self.box_Switch_61;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1284309079", "1284309079", "UNI42_010_DEBRIEF", "box_Switch_61.Output", "box_IsEntityLoaded_v3_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_61_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_101();
    l0 = self.box_Switch_61;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|638635366", "638635366", "UNI42_010_DEBRIEF", "box_Switch_61.Output", "box_IsEntityLoaded_v3_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_61_Output_10()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_97();
    l0 = self.box_Switch_61;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|239558159", "239558159", "UNI42_010_DEBRIEF", "box_Switch_61.Output", "box_IsEntityLoaded_v3_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_110_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_73();
    l0 = self.box_PlayDialog_v6_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|695356200", "695356200", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_110.True", "box_PlayDialog_v6_73.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_VehicleDamageListener_v2_27_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_27;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|473685716", "473685716", "UNI42_010_DEBRIEF", "box_VehicleDamageListener_v2_27.Broken", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_27_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_26();
    l0 = self.box_VehicleDamageListener_v2_27;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1659972555", "1659972555", "UNI42_010_DEBRIEF", "box_VehicleDamageListener_v2_27.Destroyed", "box_ActivityRetry_26.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_27_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_27;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|89789759", "89789759", "UNI42_010_DEBRIEF", "box_VehicleDamageListener_v2_27.Disabled", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_98_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_66();
    l0 = self.box_PlayDialog_v6_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|153932437", "153932437", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_98.True", "box_PlayDialog_v6_66.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_22();
    l0 = self.box_MultipleOR_25;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|288592678", "288592678", "UNI42_010_DEBRIEF", "box_MultipleOR_25.Out", "box_VehicleModifier_v2_22.SetExplosion", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExplosion
    l1:Exec(17, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_56_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_47();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1976292435", "1976292435", "UNI42_010_DEBRIEF", "box_IsValueNil_v3_56.No", "box_SetContextualStrategy_47.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_99_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_67();
    l0 = self.box_PlayDialog_v6_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|273616135", "273616135", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_99.True", "box_PlayDialog_v6_67.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_4();
    l0 = self.box_MultipleOR_33;
    l1 = self.box_StartCelebration_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1615298832", "1615298832", "UNI42_010_DEBRIEF", "box_MultipleOR_33.Out", "box_StartCelebration_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_53_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_53;
    l1 = self.box_OnceOnly_v3_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|769499810", "769499810", "UNI42_010_DEBRIEF", "box_MultipleOR_53.Out", "box_OnceOnly_v3_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_65_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_65;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1331593595", "1331593595", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_65.Finished", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_PlayDialog_v6_65_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_65;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|106454965", "106454965", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_65.FinishedInterrupted", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_IsEntityLoaded_v3_103_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1868142724", "1868142724", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_103.True", "box_PlayDialog_v6_65.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_55_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_27();
    l0 = self.box_OnceOnly_v3_55;
    l1 = self.box_VehicleDamageListener_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1998604189", "1998604189", "UNI42_010_DEBRIEF", "box_OnceOnly_v3_55.Out", "box_VehicleDamageListener_v2_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_94_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_68();
    l0 = self.box_PlayDialog_v6_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1135459860", "1135459860", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_94.True", "box_PlayDialog_v6_68.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_86_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleSeatModifier_v2_89();
    l0 = self.box_RemoveEntity_v2_86;
    l1 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|10244482", "10244482", "UNI42_010_DEBRIEF", "box_RemoveEntity_v2_86.Out", "box_VehicleSeatModifier_v2_89.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_44_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_20();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|643940882", "643940882", "UNI42_010_DEBRIEF", "box_IsValueNil_v3_44.No", "box_UseContextualActionModifier_v3_20.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_44_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1123466664", "1123466664", "UNI42_010_DEBRIEF", "box_IsValueNil_v3_44.Yes", "box_MultipleOR_45.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_59();
    l0 = self.box_MultipleOR_60;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1128031507", "1128031507", "UNI42_010_DEBRIEF", "box_MultipleOR_60.Out", "box_UseContextualActionModifier_v3_59.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_72_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_72;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1167176620", "1167176620", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_72.Finished", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_PlayDialog_v6_72_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_72;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|47343732", "47343732", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_72.FinishedInterrupted", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_HealthListener_v6_58_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_58;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|828506832", "828506832", "UNI42_010_DEBRIEF", "box_HealthListener_v6_58.Damaged", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_24_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2110209874", "2110209874", "UNI42_010_DEBRIEF", "box_SetEntity_v2_24.Out", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_97_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_78();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1196299588", "1196299588", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_97.True", "box_UseContextualActionModifier_v3_78.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_91_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_62();
    l0 = self.box_PlayDialog_v6_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|262288021", "262288021", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_91.True", "box_PlayDialog_v6_62.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_112_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_72();
    l0 = self.box_PlayDialog_v6_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|940887823", "940887823", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_112.True", "box_PlayDialog_v6_72.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_104_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1425640327", "1425640327", "UNI42_010_DEBRIEF", "box_Simple_Node_104.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_107_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_66();
    l0 = self.box_PlayDialog_v6_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1950768179", "1950768179", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_107.True", "box_PlayDialog_v6_66.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_69();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_Gate_v3_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2134822274", "2134822274", "UNI42_010_DEBRIEF", "box_MultipleOR_7.Out", "box_Gate_v3_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_85_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_38();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|724572312", "724572312", "UNI42_010_DEBRIEF", "box_UseContextualActionModifier_v3_85.Disabled", "box_UseContextualActionModifier_v3_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_70_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_70;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|257485233", "257485233", "UNI42_010_DEBRIEF", "box_MultipleOR_70.Out", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_46_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_35();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1852774510", "1852774510", "UNI42_010_DEBRIEF", "box_UseContextualActionModifier_v3_46.Disabled", "box_FastTravelModifier_v2_35.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_108_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_68();
    l0 = self.box_PlayDialog_v6_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|918884408", "918884408", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_108.True", "box_PlayDialog_v6_68.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_79();
    l0 = self.box_Delay_v5_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|342060740", "342060740", "UNI42_010_DEBRIEF", "box_SetContextualStrategy_47.Out", "box_Delay_v5_79.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_20_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1492462443", "1492462443", "UNI42_010_DEBRIEF", "box_UseContextualActionModifier_v3_20.ForceNormalEndCalled", "box_Delay_v5_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_81_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_82();
    l0 = self.box_RemoveEntity_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|700802174", "700802174", "UNI42_010_DEBRIEF", "box_UseContextualActionModifier_v3_81.Disabled", "box_RemoveEntity_v2_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_59_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_18();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1211916527", "1211916527", "UNI42_010_DEBRIEF", "box_UseContextualActionModifier_v3_59.Disabled", "box_UseContextualActionModifier_v3_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_109_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_67();
    l0 = self.box_PlayDialog_v6_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1218285574", "1218285574", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_109.True", "box_PlayDialog_v6_67.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|681294229", "681294229", "UNI42_010_DEBRIEF", "box_OutputOrder_v2_28.Out", "box_OutputOrder_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_14();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|360204025", "360204025", "UNI42_010_DEBRIEF", "box_OutputOrder_v2_28.Out", "box_GetPlayerGroup_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_80_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_81();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|614128998", "614128998", "UNI42_010_DEBRIEF", "box_UseContextualActionModifier_v3_80.Disabled", "box_UseContextualActionModifier_v3_81.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_93_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1331098488", "1331098488", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_93.True", "box_PlayDialog_v6_65.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_79_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_85();
    l0 = self.box_Delay_v5_79;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2038767887", "2038767887", "UNI42_010_DEBRIEF", "box_Delay_v5_79.TimeElapsed", "box_UseContextualActionModifier_v3_85.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_64_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_64;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1222322104", "1222322104", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_64.Finished", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_64_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_64;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|648223794", "648223794", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_64.FinishedInterrupted", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_VehicleSeatModifier_v2_89_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_88();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1624058911", "1624058911", "UNI42_010_DEBRIEF", "box_VehicleSeatModifier_v2_89.Unlocked", "box_VehicleSeatModifier_v2_88.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_96_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_72();
    l0 = self.box_PlayDialog_v6_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1213399749", "1213399749", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_96.True", "box_PlayDialog_v6_72.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|567717030", "567717030", "UNI42_010_DEBRIEF", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1139766186", "1139766186", "UNI42_010_DEBRIEF", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_FastTravelModifier_v2_34_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|261750667", "261750667", "UNI42_010_DEBRIEF", "box_FastTravelModifier_v2_34.Disabled", "box_Delay_v5_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_113_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_74();
    l0 = self.box_PlayDialog_v6_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|639943453", "639943453", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_113.True", "box_PlayDialog_v6_74.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_CharacterLoadedIdListener_15_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_15_LoadedIdReceived();
    params = self:OnEnter_box_FastTravelModifier_v2_34();
    l0 = self.box_CharacterLoadedIdListener_15;
    l1 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1998653073", "1998653073", "UNI42_010_DEBRIEF", "box_CharacterLoadedIdListener_15.LoadedIdReceived", "box_FastTravelModifier_v2_34.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_4_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_44();
    l0 = self.box_StartCelebration_4;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|479000180", "479000180", "UNI42_010_DEBRIEF", "box_StartCelebration_4.Ended", "box_IsValueNil_v3_44.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_4_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_37();
    l0 = self.box_StartCelebration_4;
    l1 = self.box_Music_Quest_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|714759590", "714759590", "UNI42_010_DEBRIEF", "box_StartCelebration_4.Started", "box_Music_Quest_v2_37.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_76_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_76;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1794827635", "1794827635", "UNI42_010_DEBRIEF", "box_MultipleOR_76.Out", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CharacterLoadedIdListener_16_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_16_LoadedIdReceived();
    params = self:OnEnter_box_CharacterLoadedIdListener_40();
    l0 = self.box_CharacterLoadedIdListener_16;
    l1 = self.box_CharacterLoadedIdListener_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1989203582", "1989203582", "UNI42_010_DEBRIEF", "box_CharacterLoadedIdListener_16.LoadedIdReceived", "box_CharacterLoadedIdListener_40.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_68_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_68;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1350749888", "1350749888", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_68.Finished", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_PlayDialog_v6_68_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_68;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1488385111", "1488385111", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_68.FinishedInterrupted", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_PlayDialog_v6_66_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_66;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|602553012", "602553012", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_66.Finished", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_PlayDialog_v6_66_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_66;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1105741992", "1105741992", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_66.FinishedInterrupted", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_PlayDialog_v6_62_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_62;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|928735930", "928735930", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_62.Finished", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_62_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_62;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1656718260", "1656718260", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_62.FinishedInterrupted", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_57();
    l0 = self.box_HealthListener_v6_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1069026354", "1069026354", "UNI42_010_DEBRIEF", "box_OutputOrder_v2_42.Out", "box_HealthListener_v6_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_58();
    l0 = self.box_HealthListener_v6_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2137401440", "2137401440", "UNI42_010_DEBRIEF", "box_OutputOrder_v2_42.Out", "box_HealthListener_v6_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_40_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_40_LoadedIdReceived();
    params = self:OnEnter_box_EntityStatusListener_52();
    l0 = self.box_CharacterLoadedIdListener_40;
    l1 = self.box_EntityStatusListener_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|759040950", "759040950", "UNI42_010_DEBRIEF", "box_CharacterLoadedIdListener_40.LoadedIdReceived", "box_EntityStatusListener_52.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_13_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddGunsForHire_32();
    l0 = Boxes[GetPathID("Domino/System/AddGunsForHire.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|247084529", "247084529", "UNI42_010_DEBRIEF", "box_UseContextualActionModifier_v3_13.Disabled", "box_AddGunsForHire_32.RequestAdd", clone:GetLuaBox(), l0:GetLuaBox());
    -- RequestAdd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_67_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_67;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1848697178", "1848697178", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_67.Finished", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_67_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_67;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|400832129", "400832129", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_67.FinishedInterrupted", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_21;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1306772669", "1306772669", "UNI42_010_DEBRIEF", "box_Delay_v5_21.TimeElapsed", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_46();
    l0 = self.box_MultipleOR_45;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1538518252", "1538518252", "UNI42_010_DEBRIEF", "box_MultipleOR_45.Out", "box_UseContextualActionModifier_v3_46.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_18_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1330078695", "1330078695", "UNI42_010_DEBRIEF", "box_UseContextualActionModifier_v3_18.Enabled", "box_Delay_v5_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_63_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_61();
    l0 = self.box_Delay_v5_63;
    l1 = self.box_Switch_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|865131052", "865131052", "UNI42_010_DEBRIEF", "box_Delay_v5_63.TimeElapsed", "box_Switch_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_104();
    l0 = self.box_MultipleOR_77;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|53659035", "53659035", "UNI42_010_DEBRIEF", "box_MultipleOR_77.Out", "box_Simple_Node_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_38();
    l0 = self.box_ContextualActionListener_9;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|345639531", "345639531", "UNI42_010_DEBRIEF", "box_ContextualActionListener_9.Enabled", "box_UseContextualActionModifier_v3_38.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_9_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_9;
    l1 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|323433396", "323433396", "UNI42_010_DEBRIEF", "box_ContextualActionListener_9.End", "box_MultipleOR_60.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_9_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_9;
    l1 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1944889153", "1944889153", "UNI42_010_DEBRIEF", "box_ContextualActionListener_9.Interrupt", "box_MultipleOR_60.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_9_Select()
    local l0, l1;
    l0 = self.box_ContextualActionListener_9;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1793706247", "1793706247", "UNI42_010_DEBRIEF", "box_ContextualActionListener_9.Select", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_102_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_62();
    l0 = self.box_PlayDialog_v6_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1222928195", "1222928195", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_102.True", "box_PlayDialog_v6_62.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_106_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_64();
    l0 = self.box_PlayDialog_v6_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|68043621", "68043621", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_106.True", "box_PlayDialog_v6_64.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1523640764", "1523640764", "UNI42_010_DEBRIEF", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_48();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|495537843", "495537843", "UNI42_010_DEBRIEF", "box_OutputOrder_v2_3.Out", "box_IsEntityLoaded_v3_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_16();
    l0 = self.box_CharacterLoadedIdListener_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|392299032", "392299032", "UNI42_010_DEBRIEF", "box_OutputOrder_v2_3.Out", "box_CharacterLoadedIdListener_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_69();
    l0 = self.box_MultipleOR_43;
    l1 = self.box_Gate_v3_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1288256874", "1288256874", "UNI42_010_DEBRIEF", "box_MultipleOR_43.Out", "box_Gate_v3_69.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_FastTravelModifier_v2_35_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_80();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1730045712", "1730045712", "UNI42_010_DEBRIEF", "box_FastTravelModifier_v2_35.Enabled", "box_UseContextualActionModifier_v3_80.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_87_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|158886812", "158886812", "UNI42_010_DEBRIEF", "box_VehicleSeatModifier_v2_87.Unlocked", "box_ActivityEnd_8.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_52_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_56();
    l0 = self.box_EntityStatusListener_52;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1870512479", "1870512479", "UNI42_010_DEBRIEF", "box_EntityStatusListener_52.Loaded", "box_IsValueNil_v3_56.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_23();
    l0 = self.box_EntityStatusListener_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|797656653", "797656653", "UNI42_010_DEBRIEF", "box_OutputOrder_v2_51.Out", "box_EntityStatusListener_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_50();
    l0 = self.box_EntityStatusListener_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|328864085", "328864085", "UNI42_010_DEBRIEF", "box_OutputOrder_v2_51.Out", "box_EntityStatusListener_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_10_Aborted()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_11();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_10;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|387504957", "387504957", "UNI42_010_DEBRIEF", "box_Brick_NarrativeQuickCinema_V3_10.Aborted", "box_ActivityRetry_11.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_10_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_13();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_10;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|917216212", "917216212", "UNI42_010_DEBRIEF", "box_Brick_NarrativeQuickCinema_V3_10.Finished", "box_UseContextualActionModifier_v3_13.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_10_Started()
    local l0, l1;
    l0 = self.box_Brick_NarrativeQuickCinema_V3_10;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|510780469", "510780469", "UNI42_010_DEBRIEF", "box_Brick_NarrativeQuickCinema_V3_10.Started", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RemoveEntity_v2_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_83();
    l0 = self.box_RemoveEntity_v2_82;
    l1 = self.box_RemoveEntity_v2_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1739192777", "1739192777", "UNI42_010_DEBRIEF", "box_RemoveEntity_v2_82.Out", "box_RemoveEntity_v2_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_100_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_71();
    l0 = self.box_PlayDialog_v6_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1234273738", "1234273738", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_100.True", "box_PlayDialog_v6_71.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_38_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_9();
    l0 = self.box_ContextualActionListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1353075744", "1353075744", "UNI42_010_DEBRIEF", "box_UseContextualActionModifier_v3_38.Enabled", "box_ContextualActionListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_38_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|573838672", "573838672", "UNI42_010_DEBRIEF", "box_UseContextualActionModifier_v3_38.UseCalled", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_74_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_74;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2071957070", "2071957070", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_74.Finished", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_PlayDialog_v6_74_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_74;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1603164502", "1603164502", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_74.FinishedInterrupted", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 10);
end;

function export:f_box_PlayDialog_v6_74_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_74;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|298176366", "298176366", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_74.Started", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_HealthListener_v6_57_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_57;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|368921703", "368921703", "UNI42_010_DEBRIEF", "box_HealthListener_v6_57.Damaged", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V3_10();
    l0 = self.box_Delay_v5_12;
    l1 = self.box_Brick_NarrativeQuickCinema_V3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|309012541", "309012541", "UNI42_010_DEBRIEF", "box_Delay_v5_12.TimeElapsed", "box_Brick_NarrativeQuickCinema_V3_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_48_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_49();
    l0 = self.box_SpawnAI_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1416888446", "1416888446", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_48.False", "box_SpawnAI_49.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_95_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_73();
    l0 = self.box_PlayDialog_v6_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1262829391", "1262829391", "UNI42_010_DEBRIEF", "box_IsEntityLoaded_v3_95.True", "box_PlayDialog_v6_73.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_23_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_24();
    l0 = self.box_EntityStatusListener_23;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|930000611", "930000611", "UNI42_010_DEBRIEF", "box_EntityStatusListener_23.Loaded", "box_SetEntity_v2_24.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_54_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_54_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|259674107", "259674107", "UNI42_010_DEBRIEF", "box_SetEntity_v2_54.Out", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RemoveEntity_v2_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_84();
    l0 = self.box_RemoveEntity_v2_83;
    l1 = self.box_RemoveEntity_v2_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1703738112", "1703738112", "UNI42_010_DEBRIEF", "box_RemoveEntity_v2_83.Out", "box_RemoveEntity_v2_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Music_Quest_v2_37_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_RadioModifier_v3_36();
    l0 = self.box_Music_Quest_v2_37;
    l1 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|478636176", "478636176", "UNI42_010_DEBRIEF", "box_Music_Quest_v2_37.Stopped", "box_RadioModifier_v3_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|409840556", "409840556", "UNI42_010_DEBRIEF", "box_ActivityInitialized_2.Out", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_14_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_15();
    l0 = self.box_CharacterLoadedIdListener_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1295736381", "1295736381", "UNI42_010_DEBRIEF", "box_GetPlayerGroup_v2_14.Out", "box_CharacterLoadedIdListener_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_73_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_73;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1210780471", "1210780471", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_73.Finished", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_73_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_73;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|629591228", "629591228", "UNI42_010_DEBRIEF", "box_PlayDialog_v6_73.FinishedInterrupted", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleOR_75_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_75;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1360748317", "1360748317", "UNI42_010_DEBRIEF", "box_MultipleOR_75.Out", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_50_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_54();
    l0 = self.box_EntityStatusListener_50;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|255570986", "255570986", "UNI42_010_DEBRIEF", "box_EntityStatusListener_50.Loaded", "box_SetEntity_v2_54.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_17();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|612043341", "612043341", "UNI42_010_DEBRIEF", "box_Delay_v5_19.TimeElapsed", "box_UseContextualActionModifier_v3_17.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddGunsForHire_32_RequestFail()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AddGunsForHire.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|902597523", "902597523", "UNI42_010_DEBRIEF", "box_AddGunsForHire_32.RequestFail", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddGunsForHire_32_RequestSuccess()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AddGunsForHire.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1309131700", "1309131700", "UNI42_010_DEBRIEF", "box_AddGunsForHire_32.RequestSuccess", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Gate_v3_69()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|24647393");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2105238256474928721",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|27773524");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_101_True,
    });
    params = {
        -- entityId,
        [0] = self.eSenior_NPC,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|31713120");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_88_Unlocked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = false,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = self.HurkCar,
    };
    return params;
end;

function export:OnEnter_box_Switch_41()
    local params;
    DrawTextToScreen("Comment: Stop Junior Senior Dialogue", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Switch')-- Comment: Stop Junior Senior Dialogue");
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_71()
    local params;
    DrawTextToScreen("Comment: Hurk Sr.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Hurk Sr.");
    params = {
        -- Group,
        [0] = self.eSenior_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2457031445",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|127827557");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_92_True,
    });
    params = {
        -- entityId,
        [0] = self.eSenior_NPC,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_84()
    local params;
    params = {
        -- Group,
        [0] = "2104368554485795593",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|186918302");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_111_True,
    });
    params = {
        -- entityId,
        [0] = self.eSenior_NPC,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|245444560");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_90_Unlocked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = false,
        -- SeatIndex,
        [2] = 1,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = self.HurkCar,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|247761942");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Switch_61()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_49()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105103826466914602",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|297693932");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_110_True,
    });
    params = {
        -- entityId,
        [0] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_27()
    local params;
    params = {
        -- Vehicle,
        [0] = self.HurkCar,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|333209767");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_98_True,
    });
    params = {
        -- entityId,
        [0] = self.eSenior_NPC,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|483074035");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_56_No,
    });
    params = {
        -- ent,
        [4] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|535769151");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_99_True,
    });
    params = {
        -- entityId,
        [0] = self.eSenior_NPC,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_65()
    local params;
    DrawTextToScreen("Comment: Hurk Jr.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Hurk Jr.");
    params = {
        -- Group,
        [0] = self.Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1294209985",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|591044168");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_103_True,
    });
    params = {
        -- entityId,
        [0] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|629363384");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_94_True,
    });
    params = {
        -- entityId,
        [0] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_86()
    local params;
    params = {
        -- Group,
        [0] = "2105238256474928721",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|664422691");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_44_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_44_Yes,
    });
    params = {
        -- ent,
        [4] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_72()
    local params;
    DrawTextToScreen("Comment: Hurk Jr.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Hurk Jr.");
    params = {
        -- Group,
        [0] = self.Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3847448858",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_58()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eSenior_NPC,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|711685850");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_24_Out,
    });
    params = {
        -- Entity,
        [0] = "2099919886133236970",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|720209198");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_97_True,
    });
    params = {
        -- entityId,
        [0] = "2105238256474928721",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|738848394");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_91_True,
    });
    params = {
        -- entityId,
        [0] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|870017606");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_112_True,
    });
    params = {
        -- entityId,
        [0] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|888322198");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_104_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|889842226");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_107_True,
    });
    params = {
        -- entityId,
        [0] = self.eSenior_NPC,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|927700069");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_85_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103942106451031945",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|948991646");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_46_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103942106451031945",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|951149259");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_108_True,
    });
    params = {
        -- entityId,
        [0] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|996100615");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_47_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105061951720713416",
        -- Group,
        [1] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1019139141");
    l0:SetConnections({
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_20_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103942106451031945",
        -- Entity,
        [1] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1082275053");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1104194365");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_81_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101538497321135200",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1106107956");
    l0:SetConnections({
    });
    params = {
        -- Enable,
        [0] = true,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1108122907");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = self.HurkCar,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1113702414");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_59_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105238256474928721",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1124987512");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_109_True,
    });
    params = {
        -- entityId,
        [0] = self.eSenior_NPC,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1150867088");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1151734961");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1167221772");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_80_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104368551790955048",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1191663597");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_93_True,
    });
    params = {
        -- entityId,
        [0] = self.Junior,
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

function export:OnEnter_box_PlayDialog_v6_64()
    local params;
    DrawTextToScreen("Comment: Hurk Sr.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Hurk Sr.");
    params = {
        -- Group,
        [0] = self.eSenior_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "882677497",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1255455107");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_89_Unlocked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = false,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 2,
        -- vehicleEntity,
        [4] = self.HurkCar,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1269305774");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_96_True,
    });
    params = {
        -- entityId,
        [0] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1322155580");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_34_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1334565114");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_113_True,
    });
    params = {
        -- entityId,
        [0] = self.eSenior_NPC,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015206726903599",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_4()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_16()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015206727351417",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_68()
    local params;
    DrawTextToScreen("Comment: Hurk Jr.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Hurk Jr.");
    params = {
        -- Group,
        [0] = self.Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3668632515",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_66()
    local params;
    DrawTextToScreen("Comment: Hurk Sr.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Hurk Sr.");
    params = {
        -- Group,
        [0] = self.eSenior_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1441557454",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_62()
    local params;
    DrawTextToScreen("Comment: Hurk Jr.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Hurk Jr.");
    params = {
        -- Group,
        [0] = self.Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3203605406",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1420398245");
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

function export:OnEnter_box_CharacterLoadedIdListener_40()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015206726903599",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1423813450");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_13_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099921002520660270",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_67()
    local params;
    DrawTextToScreen("Comment: Hurk Sr.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Hurk Sr.");
    params = {
        -- Group,
        [0] = self.eSenior_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3000939643",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1459284798");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_18_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103942106451031945",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_63()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_9()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2105238256474928721",
        -- UserFilter,
        [1] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1569325659");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_102_True,
    });
    params = {
        -- entityId,
        [0] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1572636134");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_106_True,
    });
    params = {
        -- entityId,
        [0] = self.eSenior_NPC,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1606965081");
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

function export:OnEnter_box_FastTravelModifier_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1653679242");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_FastTravelModifier_v2_35_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1663005041");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_87_Unlocked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = false,
        -- SeatIndex,
        [2] = 2,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = self.HurkCar,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_52()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2105061951720713416",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1671412693");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleDestroyed",
            id = "432249",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1673557541");
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

function export:OnEnter_box_Brick_NarrativeQuickCinema_V3_10()
    local params;
    params = {
        -- eNPC,
        [0] = self.eSenior_NPC,
        -- eQCA_STP,
        [1] = "2099921002520660270",
        -- oObjective,
        [2] = {
            section = "Objectives",
            item = "UNI42_010_BRIEF_TalkToSenior",
            id = "550386",
        },
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_82()
    local params;
    params = {
        -- Group,
        [0] = "2104368551790955048",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1749545483");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_100_True,
    });
    params = {
        -- entityId,
        [0] = self.eSenior_NPC,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1762605491");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_38_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_38_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105238256474928721",
        -- Entity,
        [1] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_74()
    local params;
    DrawTextToScreen("Comment: Hurk Sr.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Hurk Sr.");
    params = {
        -- Group,
        [0] = self.eSenior_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3014338084",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_57()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1874417443");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_48_False,
    });
    params = {
        -- entityId,
        [0] = "2099919886133236970",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1890747669");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_95_True,
    });
    params = {
        -- entityId,
        [0] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099919886133236970",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|1916688160");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_54_Out,
    });
    params = {
        -- Entity,
        [0] = "2105103826502566194",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_83()
    local params;
    params = {
        -- Group,
        [0] = "2101538497321135200",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_37()
    local params;
    params = {
        -- EntityId,
        [0] = self.HurkCar,
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 0,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 30,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "503435706",
        -- StopEvent,
        [7] = "2128148481",
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

function export:OnEnter_box_GetPlayerGroup_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2007990732");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2038754972");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2103942106451031945",
        -- Entity,
        [1] = self.Junior,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_73()
    local params;
    DrawTextToScreen("Comment: Hurk Jr.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Hurk Jr.");
    params = {
        -- Group,
        [0] = self.Junior,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "532941296",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_50()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2105103826502566194",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_AddGunsForHire_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AddGunsForHire.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddGunsForHire_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_010_DEBRIEF.domino|@UNI42_010_DEBRIEF|2138503598");
    l0:SetConnections({
        -- RequestFail,
        [0] = self.f_box_AddGunsForHire_32_RequestFail,
        -- RequestSuccess,
        [1] = self.f_box_AddGunsForHire_32_RequestSuccess,
    });
    params = {
        -- targetGFHEntity,
        [1] = self.Junior,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.HurkCar = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_15_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_15;
    self.eSenior_NPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_16_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_16;
    self.Junior = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_40_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_40;
    self.eSenior_NPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_54_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.HurkCar = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.player = l0:GetDataOutValue(0);
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
