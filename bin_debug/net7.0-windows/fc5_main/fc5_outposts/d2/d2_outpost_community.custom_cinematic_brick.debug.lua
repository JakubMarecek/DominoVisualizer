LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/d2/d2_outpost_community.domino
-- User graph: Custom_Cinematic_Brick
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="TeleportDestination" Type="Nomad|entity{}" />
    <DataIn Name="CS_CINEMA_Outpost_Animals" Type="Nomad|entity{}" />
    <DataIn Name="bUseFadeInAtEnd" Type="Core|bool" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CancelAllExplosions.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/CorpseVisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ExtinguishAllFires.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupIter.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/IsPlayerInQTE.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayerInQTEListener.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayersVisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntitiesOutRange.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[818697629.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1575490763.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/D2/D2_Outpost_Community.Custom_Cinematic_Brick.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out_Cin1",
                delayed = false,
            },
            [1] = {
                name = "Out_Cin2",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bUseFadeInAtEnd",
                type = "bool",
            },
            [1] = {
                name = "CS_CINEMA_Outpost_Animals",
                type = "entity",
            },
            [2] = {
                name = "TeleportDestination",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "FadeIn",
            },
            [1] = {
                name = "FadeOut",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FadedIn",
                delayed = false,
            },
            [1] = {
                name = "FadedOut",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "HUD",
                type = "string",
            },
            [1] = {
                name = "PostFX",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/BroadcastMessage.lua")] = {
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
                name = "Message",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CancelAllExplosions.lua")] = {
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
    metadataTable[GetPathID("Domino/System/CorpseVisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetAllInvisible",
            },
            [1] = {
                name = "SetAllVisible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetAllInvisible",
                delayed = false,
            },
            [1] = {
                name = "OnSetAllVisible",
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
    metadataTable[GetPathID("Domino/System/GroupIter.lua")] = {
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
                name = "EndIter",
                delayed = true,
            },
            [1] = {
                name = "PawnIter",
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
                name = "entities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "entity",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Player/IsPlayerInQTE.lua")] = {
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
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/PlayerInQTEListener.lua")] = {
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
                name = "OnQTEEnd",
                delayed = true,
            },
            [3] = {
                name = "OnQTEStart",
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
                name = "player",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/PlayersVisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetAllInvisible",
            },
            [1] = {
                name = "SetAllVisible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetAllInvisible",
                delayed = false,
            },
            [1] = {
                name = "OnSetAllVisible",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ExcludeLocalPlayer",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Remove",
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
                name = "Range",
                type = "float",
            },
        },
        dataInCount = 1,
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
    self._name = "Custom_Cinematic_Brick";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick";
    self.Out_Cin1 = DummyFunction;
    self.Out_Cin2 = DummyFunction;
    self.eVehicle = nil;
    self.gPlayergroup = nil;
    self.MetaSequenceId = 0;
    self.ePlayer = nil;
    self.MetaSequenceID2 = 0;
    self.POST_FX_CELEBRATION = "blackscreenfx";
    self.box_VisibilityModifier_102 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|63482268");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_102_Disabled,
    });
    self.box_TeleportPawns_74 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|108089382");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_74_Out,
    });
    self.box_NarrativeFade_33 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|194109120");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_33_FadedIn,
    });
    self.box_OnceOnly_v3_8 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|230383534");
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
                [0] = self.f_box_OnceOnly_v3_8_Out_0,
            },
            count = 2,
        },
    });
    self.box_GroupIter_48 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|359916273");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_48_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_48_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_48_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_48_Stopped,
    });
    self.box_StartMetaSequence_44 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|390498841");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_44_Out,
    });
    self.box_CorpseVisibilityModifier_46 = cbox:CreateBox("Domino/System/CorpseVisibilityModifier.lua");
    l0 = self.box_CorpseVisibilityModifier_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CorpseVisibilityModifier_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|434772967");
    l0:SetConnections({
        -- OnSetAllVisible,
        [1] = self.f_box_CorpseVisibilityModifier_46_OnSetAllVisible,
    });
    self.box_OnceOnly_v3_36 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|491706803");
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
                [0] = self.f_box_OnceOnly_v3_36_Out_0,
            },
            count = 2,
        },
    });
    self.box_VisibilityModifier_59 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|522864722");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_59_Enabled,
    });
    self.box_PostWWiseEventSetState_7 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|546440239");
    l0:SetConnections({
        -- Set,
        [0] = self.f_box_PostWWiseEventSetState_7_Set,
    });
    self.box_VisibilityModifier_5 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|553611673");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_5_Enabled,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|604814966");
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
        [0] = self.f_box_MultipleOR_51_Out,
    });
    self.box_GroupIter_30 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|718613467");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_30_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_30_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_30_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_30_Stopped,
    });
    self.box_PlayerInQTEListener_13 = cbox:CreateBox("Domino/System/Player/PlayerInQTEListener.lua");
    l0 = self.box_PlayerInQTEListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerInQTEListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|784915289");
    l0:SetConnections({
        -- OnQTEEnd,
        [2] = self.f_box_PlayerInQTEListener_13_OnQTEEnd,
    });
    self.box_NarrativeFade_72 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|835045657");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_72_FadedOut,
    });
    self.box_VisibilityModifier_25 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|887205755");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_25_Disabled,
    });
    self.box_VisibilityModifier_101 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|920327758");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_101_Disabled,
    });
    self.box_EntityStatusListener_43 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|950515286");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_43_Loaded,
    });
    self.box_PostWWiseEventSetState_22 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|952876988");
    l0:SetConnections({
    });
    self.box_TeleportPawns_52 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|988572843");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_52_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_85 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|996990414");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_85_Out,
    });
    self.box_VisibilityModifier_79 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1102517994");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_79_Enabled,
    });
    self.box_VisibilityModifier_75 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1110804299");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_75_Disabled,
    });
    self.box_PlayersVisibilityModifier_97 = cbox:CreateBox("Domino/System/Player/PlayersVisibilityModifier.lua");
    l0 = self.box_PlayersVisibilityModifier_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayersVisibilityModifier_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1119645426");
    l0:SetConnections({
        -- OnSetAllVisible,
        [1] = self.f_box_PlayersVisibilityModifier_97_OnSetAllVisible,
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1153612265");
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
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1184789955");
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
    self.box_MultipleAND_v2_21 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1224251202");
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
        [0] = self.f_box_MultipleAND_v2_21_Out,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1248437779");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_StartMetaSequence_62 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1253330942");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_62_Out,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1318522499");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_PlayersVisibilityModifier_96 = cbox:CreateBox("Domino/System/Player/PlayersVisibilityModifier.lua");
    l0 = self.box_PlayersVisibilityModifier_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayersVisibilityModifier_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1461599069");
    l0:SetConnections({
        -- OnSetAllInvisible,
        [0] = self.f_box_PlayersVisibilityModifier_96_OnSetAllInvisible,
    });
    self.box_VisibilityModifier_4 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1484763728");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_4_Disabled,
    });
    self.box_MultipleAND_v2_104 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1496986539");
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
        [0] = self.f_box_MultipleAND_v2_104_Out,
    });
    self.box_PlaySequence_v8_60 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1512207667");
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
        [0] = self.f_box_PlaySequence_v8_60_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_60_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIN",
                    value = self.f_box_PlaySequence_v8_60_SPOut__FadeIN_,
                },
                [1] = {
                    string = "FadeOUT",
                    value = self.f_box_PlaySequence_v8_60_SPOut__FadeOUT_,
                },
            },
            count = 2,
        },
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_60_Stopped,
    });
    self.box_VisibilityModifier_81 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1533888221");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_81_Disabled,
    });
    self.box_RemoveEntity_v2_98 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1537072071");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_55 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1538928727");
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
    self.box_NarrativeFade_63 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1582535839");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_12 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1591651316");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_12_Disabled,
    });
    self.box_EntityStatusListener_93 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1597339985");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_93_Loaded,
    });
    self.box_CorpseVisibilityModifier_26 = cbox:CreateBox("Domino/System/CorpseVisibilityModifier.lua");
    l0 = self.box_CorpseVisibilityModifier_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CorpseVisibilityModifier_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1639607507");
    l0:SetConnections({
        -- OnSetAllInvisible,
        [0] = self.f_box_CorpseVisibilityModifier_26_OnSetAllInvisible,
    });
    self.box_VisibilityModifier_53 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1641192778");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_53_Disabled,
    });
    self.box_MultipleOR_66 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1719057218");
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
        [0] = self.f_box_MultipleOR_66_Out,
    });
    self.box_VisibilityModifier_41 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1739899308");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_41_Disabled,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_82 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1777844408");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_82_Out,
    });
    self.box_NarrativeSceneSetup_73 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1796836834");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_73_Out,
    });
    self.box_VisibilityModifier_80 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1819180265");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_80_Enabled,
    });
    self.box_PostFx_v3_70 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1837570015");
    l0:SetConnections({
    });
    self.box_PostFx_v3_99 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1958676322");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_92 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2002338743");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_92_Loaded,
    });
    self.box_OnceOnly_v3_38 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2024660405");
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
                [0] = self.f_box_OnceOnly_v3_38_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlaySequence_v8_19 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2032966540");
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
        [0] = self.f_box_PlaySequence_v8_19_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_19_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "STOP_POSTFX",
                    value = self.f_box_PlaySequence_v8_19_SPOut__STOP_POSTFX_,
                },
                [1] = {
                    string = "START_POSTFX",
                    value = self.f_box_PlaySequence_v8_19_SPOut__START_POSTFX_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_19_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_19_Stopped,
    });
    self.box_NarrativeFade_58 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2060357728");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_78 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2087890418");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_78_Disabled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_NarrativeSceneSetup_73();
    l0 = self.box_NarrativeSceneSetup_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1406409145", "1406409145", "Custom_Cinematic_Brick", "In", "box_NarrativeSceneSetup_73.BasicSetup", self, l0:GetLuaBox());
    -- BasicSetup
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_69_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentGroupModifier_3();
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1366806912", "1366806912", "Custom_Cinematic_Brick", "box_Simple_Node_69.Out", "box_AgentGroupModifier_3.AddGroup", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddGroup
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_47();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1269342434", "1269342434", "Custom_Cinematic_Brick", "box_Simple_Node_67.Out", "box_SetContextualStrategy_47.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_10_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_16();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1956907438", "1956907438", "Custom_Cinematic_Brick", "box_IsValueNil_v3_10.No", "box_SetContextualStrategy_16.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_102_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_104();
    l0 = self.box_VisibilityModifier_102;
    l1 = self.box_MultipleAND_v2_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1777367128", "1777367128", "Custom_Cinematic_Brick", "box_VisibilityModifier_102.Disabled", "box_MultipleAND_v2_104.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_MissionBlockLayer_61_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_56();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1690153092", "1690153092", "Custom_Cinematic_Brick", "box_MissionBlockLayer_61.Disabled", "box_MissionBlockLayer_56.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_82();
    l0 = self.box_TeleportPawns_74;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|544338904", "544338904", "Custom_Cinematic_Brick", "box_TeleportPawns_74.Out", "box_CHEAT_SetEnvironmentTimeScale_82.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_56_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_74();
    l0 = self.box_TeleportPawns_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|184724640", "184724640", "Custom_Cinematic_Brick", "box_MissionBlockLayer_56.Disabled", "box_TeleportPawns_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1838384556", "1838384556", "Custom_Cinematic_Brick", "box_Simple_Node_1.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NarrativeFade_33_FadedIn()
    local l0, l1;
    l0 = self.box_NarrativeFade_33;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|37164294", "37164294", "Custom_Cinematic_Brick", "box_NarrativeFade_33.FadedIn", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_23_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2090124464", "2090124464", "Custom_Cinematic_Brick", "box_GetPlayerGroup_v2_23.Out", "box_ActivityMiscInfoModifier_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_8_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_8;
    l1 = self.box_StartMetaSequence_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|95271799", "95271799", "Custom_Cinematic_Brick", "box_OnceOnly_v3_8.Out", "box_StartMetaSequence_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Compare_Boolean_24_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2088973114", "2088973114", "Custom_Cinematic_Brick", "box_Compare_Boolean_24.A_is_False", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_24_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_33();
    l0 = self.box_NarrativeFade_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1169151922", "1169151922", "Custom_Cinematic_Brick", "box_Compare_Boolean_24.A_is_True", "box_NarrativeFade_33.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_GroupIter_48_EndIter()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_GroupIter_48;
    l1 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|570890475", "570890475", "Custom_Cinematic_Brick", "box_GroupIter_48.EndIter", "box_MultipleAND_v2_21.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_GroupIter_48_PawnIter()
    self:OnExit_box_GroupIter_48_PawnIter();
end;

function export:f_box_GroupIter_48_Started()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_11();
    l0 = self.box_GroupIter_48;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1294351714", "1294351714", "Custom_Cinematic_Brick", "box_GroupIter_48.Started", "box_GetPawnVehicleInfo_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_44_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_44_Out();
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_StartMetaSequence_44;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|636930997", "636930997", "Custom_Cinematic_Brick", "box_StartMetaSequence_44.Out", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CorpseVisibilityModifier_46_OnSetAllVisible()
    local l0, l1;
    l0 = self.box_CorpseVisibilityModifier_46;
    l1 = self.box_OnceOnly_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|395520745", "395520745", "Custom_Cinematic_Brick", "box_CorpseVisibilityModifier_46.OnSetAllVisible", "box_OnceOnly_v3_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_36_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_54();
    l0 = self.box_OnceOnly_v3_36;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1671139271", "1671139271", "Custom_Cinematic_Brick", "box_OnceOnly_v3_36.Out", "box_BroadcastMessage_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_59_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_79();
    l0 = self.box_VisibilityModifier_59;
    l1 = self.box_VisibilityModifier_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1495366431", "1495366431", "Custom_Cinematic_Brick", "box_VisibilityModifier_59.Enabled", "box_VisibilityModifier_79.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_PostWWiseEventSetState_7_Set()
    local l0;
    l0 = self.box_PostWWiseEventSetState_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1969936948", "1969936948", "Custom_Cinematic_Brick", "box_PostWWiseEventSetState_7.Set", "Out_Cin1", l0:GetLuaBox(), self);
    self:Out_Cin1();
end;

function export:f_box_VisibilityModifier_5_Enabled()
    local l0, l1;
    l0 = self.box_VisibilityModifier_5;
    l1 = self.box_CorpseVisibilityModifier_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1923376033", "1923376033", "Custom_Cinematic_Brick", "box_VisibilityModifier_5.Enabled", "box_CorpseVisibilityModifier_46.SetAllVisible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAllVisible
    l1:Exec(1, {
    });
end;

function export:f_box_MultipleOR_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = self.box_MultipleOR_51;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|456191152", "456191152", "Custom_Cinematic_Brick", "box_MultipleOR_51.Out", "box_OutputOrder_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AgentGroupModifier_87_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|803653277", "803653277", "Custom_Cinematic_Brick", "box_AgentGroupModifier_87.Out", "box_OutputOrder_v2_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_69();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|895937940", "895937940", "Custom_Cinematic_Brick", "box_OutputOrder_v2_35.Out", "box_Simple_Node_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_37();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|228699754", "228699754", "Custom_Cinematic_Brick", "box_OutputOrder_v2_35.Out", "box_SoundMixing_37.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ExtinguishAllFires_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    local clone = l0;
    params = self:OnEnter_box_CancelAllExplosions_27();
    l0 = Boxes[GetPathID("Domino/System/CancelAllExplosions.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1010395796", "1010395796", "Custom_Cinematic_Brick", "box_ExtinguishAllFires_57.Out", "box_CancelAllExplosions_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupIter_30_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_30_PawnIter();
    params = self:OnEnter_box_IsPlayerInQTE_15();
    l0 = self.box_GroupIter_30;
    l1 = Boxes[GetPathID("Domino/System/Player/IsPlayerInQTE.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1960879267", "1960879267", "Custom_Cinematic_Brick", "box_GroupIter_30.PawnIter", "box_IsPlayerInQTE_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerInQTEListener_13_OnQTEEnd()
    local l0, l1;
    l0 = self.box_PlayerInQTEListener_13;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1439432625", "1439432625", "Custom_Cinematic_Brick", "box_PlayerInQTEListener_13.OnQTEEnd", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NarrativeFade_72_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_ExtinguishAllFires_94();
    l0 = self.box_NarrativeFade_72;
    l1 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1568221951", "1568221951", "Custom_Cinematic_Brick", "box_NarrativeFade_72.FadedOut", "box_ExtinguishAllFires_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_25_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_53();
    l0 = self.box_VisibilityModifier_25;
    l1 = self.box_VisibilityModifier_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1025557788", "1025557788", "Custom_Cinematic_Brick", "box_VisibilityModifier_25.Disabled", "box_VisibilityModifier_53.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_IsPlayerInQTE_15_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/IsPlayerInQTE.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1381333653", "1381333653", "Custom_Cinematic_Brick", "box_IsPlayerInQTE_15.False", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsPlayerInQTE_15_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/IsPlayerInQTE.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerInQTEListener_13();
    l0 = self.box_PlayerInQTEListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1545905908", "1545905908", "Custom_Cinematic_Brick", "box_IsPlayerInQTE_15.True", "box_PlayerInQTEListener_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostWWiseEventSetState_7();
    l0 = self.box_PostWWiseEventSetState_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1796510834", "1796510834", "Custom_Cinematic_Brick", "box_OutputOrder_v2_64.Out", "box_PostWWiseEventSetState_7.SetState", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetState
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v4_2();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1949090911", "1949090911", "Custom_Cinematic_Brick", "box_OutputOrder_v2_64.Out", "box_StopMetaSequence_v4_2.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ExtinguishAllFires_77_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    local clone = l0;
    params = self:OnEnter_box_CancelAllExplosions_76();
    l0 = Boxes[GetPathID("Domino/System/CancelAllExplosions.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|21451432", "21451432", "Custom_Cinematic_Brick", "box_ExtinguishAllFires_77.Out", "box_CancelAllExplosions_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_11_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_11_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_34();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|997330701", "997330701", "Custom_Cinematic_Brick", "box_GetPawnVehicleInfo_11.InVehicle", "box_Compare_Strings_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_11_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_11_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|870327689", "870327689", "Custom_Cinematic_Brick", "box_GetPawnVehicleInfo_11.NotInVehicle", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetPawnVehicleInfo_11_Out()
    self:OnExit_box_GetPawnVehicleInfo_11_Out();
end;

function export:f_box_VisibilityModifier_101_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_104();
    l0 = self.box_VisibilityModifier_101;
    l1 = self.box_MultipleAND_v2_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1184784977", "1184784977", "Custom_Cinematic_Brick", "box_VisibilityModifier_101.Disabled", "box_MultipleAND_v2_104.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_SoundMixing_37_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_48();
    l0 = self.box_GroupIter_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1775644546", "1775644546", "Custom_Cinematic_Brick", "box_SoundMixing_37.Out", "box_GroupIter_48.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_43_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntityOutRange_31();
    l0 = self.box_EntityStatusListener_43;
    l1 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|850915716", "850915716", "Custom_Cinematic_Brick", "box_EntityStatusListener_43.Loaded", "box_RemoveEntityOutRange_31.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_TeleportPawns_52;
    l1 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|542144332", "542144332", "Custom_Cinematic_Brick", "box_TeleportPawns_52.Out", "box_Delay_v5_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1214894060", "1214894060", "Custom_Cinematic_Brick", "box_CHEAT_SetEnvironmentTimeScale_85.Out", "box_OutputOrder_v2_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_63();
    l0 = self.box_NarrativeFade_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1430311225", "1430311225", "Custom_Cinematic_Brick", "box_OutputOrder_v2_71.Out", "box_NarrativeFade_63.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_70();
    l0 = self.box_PostFx_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1902316123", "1902316123", "Custom_Cinematic_Brick", "box_OutputOrder_v2_71.Out", "box_PostFx_v3_70.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_18_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_52();
    l0 = self.box_TeleportPawns_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|888831945", "888831945", "Custom_Cinematic_Brick", "box_GetPlayerGroup_v2_18.Out", "box_TeleportPawns_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_CancelAllExplosions_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CancelAllExplosions.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1487403057", "1487403057", "Custom_Cinematic_Brick", "box_CancelAllExplosions_27.Out", "box_OnceOnly_v3_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CancelAllExplosions_95_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CancelAllExplosions.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_23();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|188865787", "188865787", "Custom_Cinematic_Brick", "box_CancelAllExplosions_95.Out", "box_GetPlayerGroup_v2_23.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_81();
    l0 = self.box_VisibilityModifier_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1405361287", "1405361287", "Custom_Cinematic_Brick", "box_OutputOrder_v2_83.Out", "box_VisibilityModifier_81.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_25();
    l0 = self.box_VisibilityModifier_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|932850845", "932850845", "Custom_Cinematic_Brick", "box_OutputOrder_v2_83.Out", "box_VisibilityModifier_25.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_ActivityMiscInfoModifier_v2_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_30();
    l0 = self.box_GroupIter_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1279631192", "1279631192", "Custom_Cinematic_Brick", "box_ActivityMiscInfoModifier_v2_9.Out", "box_GroupIter_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_VisibilityModifier_79_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_80();
    l0 = self.box_VisibilityModifier_79;
    l1 = self.box_VisibilityModifier_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|256045935", "256045935", "Custom_Cinematic_Brick", "box_VisibilityModifier_79.Enabled", "box_VisibilityModifier_80.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_75_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_104();
    l0 = self.box_VisibilityModifier_75;
    l1 = self.box_MultipleAND_v2_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1041789526", "1041789526", "Custom_Cinematic_Brick", "box_VisibilityModifier_75.Disabled", "box_MultipleAND_v2_104.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_PlayersVisibilityModifier_97_OnSetAllVisible()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_5();
    l0 = self.box_PlayersVisibilityModifier_97;
    l1 = self.box_VisibilityModifier_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2630175", "2630175", "Custom_Cinematic_Brick", "box_PlayersVisibilityModifier_97.OnSetAllVisible", "box_VisibilityModifier_5.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_39_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_39;
    l1 = self.box_OnceOnly_v3_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1693143891", "1693143891", "Custom_Cinematic_Brick", "box_MultipleOR_39.Out", "box_OnceOnly_v3_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_MultipleOR_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|933737481", "933737481", "Custom_Cinematic_Brick", "box_MultipleOR_29.Out", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_43();
    l0 = self.box_MultipleAND_v2_21;
    l1 = self.box_EntityStatusListener_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|563808154", "563808154", "Custom_Cinematic_Brick", "box_MultipleAND_v2_21.Out", "box_EntityStatusListener_43.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_20;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1209601562", "1209601562", "Custom_Cinematic_Brick", "box_Delay_v5_20.TimeElapsed", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StartMetaSequence_62_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_62_Out();
    params = self:OnEnter_box_PlaySequence_v8_60();
    l0 = self.box_StartMetaSequence_62;
    l1 = self.box_PlaySequence_v8_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|146797750", "146797750", "Custom_Cinematic_Brick", "box_StartMetaSequence_62.Out", "box_PlaySequence_v8_60.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_MultipleOR_6;
    l1 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1308959801", "1308959801", "Custom_Cinematic_Brick", "box_MultipleOR_6.Out", "box_MultipleAND_v2_21.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_CancelAllExplosions_76_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CancelAllExplosions.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1287168255", "1287168255", "Custom_Cinematic_Brick", "box_CancelAllExplosions_76.Out", "box_StartMetaSequence_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_PlayersVisibilityModifier_96_OnSetAllInvisible()
    local l0, l1;
    l0 = self.box_PlayersVisibilityModifier_96;
    l1 = self.box_CorpseVisibilityModifier_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1995891164", "1995891164", "Custom_Cinematic_Brick", "box_PlayersVisibilityModifier_96.OnSetAllInvisible", "box_CorpseVisibilityModifier_26.SetAllInvisible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAllInvisible
    l1:Exec(0, {
    });
end;

function export:f_box_VisibilityModifier_4_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_78();
    l0 = self.box_VisibilityModifier_4;
    l1 = self.box_VisibilityModifier_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1810542242", "1810542242", "Custom_Cinematic_Brick", "box_VisibilityModifier_4.Disabled", "box_VisibilityModifier_78.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_59();
    l0 = self.box_MultipleAND_v2_104;
    l1 = self.box_VisibilityModifier_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1711818026", "1711818026", "Custom_Cinematic_Brick", "box_MultipleAND_v2_104.Out", "box_VisibilityModifier_59.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_60_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_60;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1643592522", "1643592522", "Custom_Cinematic_Brick", "box_PlaySequence_v8_60.Finished", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_60_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_60;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1779497040", "1779497040", "Custom_Cinematic_Brick", "box_PlaySequence_v8_60.Skipped", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_60_SPOut__FadeIN_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = self.box_PlaySequence_v8_60;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|218786187", "218786187", "Custom_Cinematic_Brick", "box_PlaySequence_v8_60.SPOut", "box_OutputOrder_v2_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_60_SPOut__FadeOUT_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_63();
    l0 = self.box_PlaySequence_v8_60;
    l1 = self.box_NarrativeFade_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2004913267", "2004913267", "Custom_Cinematic_Brick", "box_PlaySequence_v8_60.SPOut", "box_NarrativeFade_63.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_60_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_60;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|215101454", "215101454", "Custom_Cinematic_Brick", "box_PlaySequence_v8_60.Stopped", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_19();
    l0 = self.box_PlaySequence_v8_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|183202929", "183202929", "Custom_Cinematic_Brick", "box_OutputOrder_v2_49.Out", "box_PlaySequence_v8_19.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_28();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|311257516", "311257516", "Custom_Cinematic_Brick", "box_OutputOrder_v2_49.Out", "box_BroadcastMessage_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_81_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_98();
    l0 = self.box_VisibilityModifier_81;
    l1 = self.box_RemoveEntity_v2_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1091679105", "1091679105", "Custom_Cinematic_Brick", "box_VisibilityModifier_81.Disabled", "box_RemoveEntity_v2_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_55_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_OnceOnly_v3_55;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|111650103", "111650103", "Custom_Cinematic_Brick", "box_OnceOnly_v3_55.Out", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExtinguishAllFires_94_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    local clone = l0;
    params = self:OnEnter_box_CancelAllExplosions_95();
    l0 = Boxes[GetPathID("Domino/System/CancelAllExplosions.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|989985953", "989985953", "Custom_Cinematic_Brick", "box_ExtinguishAllFires_94.Out", "box_CancelAllExplosions_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_12_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayersVisibilityModifier_96();
    l0 = self.box_VisibilityModifier_12;
    l1 = self.box_PlayersVisibilityModifier_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|820220952", "820220952", "Custom_Cinematic_Brick", "box_VisibilityModifier_12.Disabled", "box_PlayersVisibilityModifier_96.SetAllInvisible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAllInvisible
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_93_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_88();
    l0 = self.box_EntityStatusListener_93;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|670282204", "670282204", "Custom_Cinematic_Brick", "box_EntityStatusListener_93.Loaded", "box_SetContextualStrategy_88.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_40_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_18();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|685796794", "685796794", "Custom_Cinematic_Brick", "box_IsValueNil_v3_40.No", "box_GetPlayerGroup_v2_18.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_40_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_1();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1469968138", "1469968138", "Custom_Cinematic_Brick", "box_IsValueNil_v3_40.Yes", "box_Simple_Node_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CorpseVisibilityModifier_26_OnSetAllInvisible()
    local params, l0, l1;
    params = self:OnEnter_box_ExtinguishAllFires_57();
    l0 = self.box_CorpseVisibilityModifier_26;
    l1 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2118934846", "2118934846", "Custom_Cinematic_Brick", "box_CorpseVisibilityModifier_26.OnSetAllInvisible", "box_ExtinguishAllFires_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_53_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_41();
    l0 = self.box_VisibilityModifier_53;
    l1 = self.box_VisibilityModifier_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1814560083", "1814560083", "Custom_Cinematic_Brick", "box_VisibilityModifier_53.Disabled", "box_VisibilityModifier_41.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_Compare_Strings_34_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_40();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|388811427", "388811427", "Custom_Cinematic_Brick", "box_Compare_Strings_34.A_eq_B", "box_IsValueNil_v3_40.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_34_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|931048404", "931048404", "Custom_Cinematic_Brick", "box_Compare_Strings_34.A_neq_B", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_BroadcastMessage_54_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2070994300", "2070994300", "Custom_Cinematic_Brick", "box_BroadcastMessage_54.Out", "Out_Cin2", clone:GetLuaBox(), self);
    self:Out_Cin2();
end;

function export:f_box_MultipleOR_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_65();
    l0 = self.box_MultipleOR_66;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1044254668", "1044254668", "Custom_Cinematic_Brick", "box_MultipleOR_66.Out", "box_StopMetaSequence_v4_65.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_41_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_4();
    l0 = self.box_VisibilityModifier_41;
    l1 = self.box_VisibilityModifier_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1948230036", "1948230036", "Custom_Cinematic_Brick", "box_VisibilityModifier_41.Disabled", "box_VisibilityModifier_4.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_AgentGroupModifier_3_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_10();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|710878269", "710878269", "Custom_Cinematic_Brick", "box_AgentGroupModifier_3.Out", "box_IsValueNil_v3_10.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_84();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_82;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1331283742", "1331283742", "Custom_Cinematic_Brick", "box_CHEAT_SetEnvironmentTimeScale_82.Out", "box_SetTimeOfDay_84.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_73_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_72();
    l0 = self.box_NarrativeSceneSetup_73;
    l1 = self.box_NarrativeFade_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2038913337", "2038913337", "Custom_Cinematic_Brick", "box_NarrativeSceneSetup_73.Out", "box_NarrativeFade_72.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_80_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_42();
    l0 = self.box_VisibilityModifier_80;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1164209086", "1164209086", "Custom_Cinematic_Brick", "box_VisibilityModifier_80.Enabled", "box_ActivityMiscInfoModifier_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundMixing_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayersVisibilityModifier_97();
    l0 = self.box_PlayersVisibilityModifier_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2044639967", "2044639967", "Custom_Cinematic_Brick", "box_SoundMixing_50.Out", "box_PlayersVisibilityModifier_97.SetAllVisible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAllVisible
    l0:Exec(1, params);
end;

function export:f_box_StopMetaSequence_v4_2_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_61();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|401112235", "401112235", "Custom_Cinematic_Brick", "box_StopMetaSequence_v4_2.Stopped", "box_MissionBlockLayer_61.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostWWiseEventSetState_22();
    l0 = self.box_PostWWiseEventSetState_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|786996571", "786996571", "Custom_Cinematic_Brick", "box_OutputOrder_v2_45.Out", "box_PostWWiseEventSetState_22.SetState", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetState
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1517041880", "1517041880", "Custom_Cinematic_Brick", "box_OutputOrder_v2_45.Out", "box_OutputOrder_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_50();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|188429105", "188429105", "Custom_Cinematic_Brick", "box_ActivityMiscInfoModifier_v2_42.Out", "box_SoundMixing_50.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntityOutRange_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1133261303", "1133261303", "Custom_Cinematic_Brick", "box_RemoveEntityOutRange_31.Out", "box_OutputOrder_v2_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v4_65_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_85();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|505362455", "505362455", "Custom_Cinematic_Brick", "box_StopMetaSequence_v4_65.Stopped", "box_CHEAT_SetEnvironmentTimeScale_85.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_100_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_99();
    l0 = self.box_PostFx_v3_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|272648143", "272648143", "Custom_Cinematic_Brick", "box_OutputOrder_v2_100.Out", "box_PostFx_v3_99.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_100_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_58();
    l0 = self.box_NarrativeFade_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1690621936", "1690621936", "Custom_Cinematic_Brick", "box_OutputOrder_v2_100.Out", "box_NarrativeFade_58.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_92_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_86();
    l0 = self.box_EntityStatusListener_92;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1265435625", "1265435625", "Custom_Cinematic_Brick", "box_EntityStatusListener_92.Loaded", "box_SetContextualStrategy_86.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_84_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExtinguishAllFires_77();
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|239982699", "239982699", "Custom_Cinematic_Brick", "box_SetTimeOfDay_84.Out", "box_ExtinguishAllFires_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_38_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_24();
    l0 = self.box_OnceOnly_v3_38;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1976813429", "1976813429", "Custom_Cinematic_Brick", "box_OnceOnly_v3_38.Out", "box_Compare_Boolean_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_19_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_19;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|194813525", "194813525", "Custom_Cinematic_Brick", "box_PlaySequence_v8_19.Finished", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_19_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_19;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1632798683", "1632798683", "Custom_Cinematic_Brick", "box_PlaySequence_v8_19.Skipped", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_19_SPOut__START_POSTFX_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_58();
    l0 = self.box_PlaySequence_v8_19;
    l1 = self.box_NarrativeFade_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1466918266", "1466918266", "Custom_Cinematic_Brick", "box_PlaySequence_v8_19.SPOut", "box_NarrativeFade_58.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_19_SPOut__STOP_POSTFX_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_100();
    l0 = self.box_PlaySequence_v8_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1166862454", "1166862454", "Custom_Cinematic_Brick", "box_PlaySequence_v8_19.SPOut", "box_OutputOrder_v2_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_19_Started()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_87();
    l0 = self.box_PlaySequence_v8_19;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|572899371", "572899371", "Custom_Cinematic_Brick", "box_PlaySequence_v8_19.Started", "box_AgentGroupModifier_87.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_19_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_19;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1564846424", "1564846424", "Custom_Cinematic_Brick", "box_PlaySequence_v8_19.Stopped", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_67();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1420137995", "1420137995", "Custom_Cinematic_Brick", "box_OutputOrder_v2_32.Out", "box_Simple_Node_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1919621247", "1919621247", "Custom_Cinematic_Brick", "box_OutputOrder_v2_32.Out", "box_OnceOnly_v3_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_32_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_91();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|518999641", "518999641", "Custom_Cinematic_Brick", "box_OutputOrder_v2_32.Out", "box_SetContextualStrategy_91.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_90();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|198226526", "198226526", "Custom_Cinematic_Brick", "box_OutputOrder_v2_32.Out", "box_SetContextualStrategy_90.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_78_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_12();
    l0 = self.box_VisibilityModifier_78;
    l1 = self.box_VisibilityModifier_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|817287895", "817287895", "Custom_Cinematic_Brick", "box_VisibilityModifier_78.Disabled", "box_VisibilityModifier_12.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_103_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_75();
    l0 = self.box_VisibilityModifier_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1737287271", "1737287271", "Custom_Cinematic_Brick", "box_OutputOrder_v2_103.Out", "box_VisibilityModifier_75.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_101();
    l0 = self.box_VisibilityModifier_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|976605104", "976605104", "Custom_Cinematic_Brick", "box_OutputOrder_v2_103.Out", "box_VisibilityModifier_101.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_103_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_102();
    l0 = self.box_VisibilityModifier_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|383839395", "383839395", "Custom_Cinematic_Brick", "box_OutputOrder_v2_103.Out", "box_VisibilityModifier_102.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_92();
    l0 = self.box_EntityStatusListener_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1930489698", "1930489698", "Custom_Cinematic_Brick", "box_OutputOrder_v2_89.Out", "box_EntityStatusListener_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_93();
    l0 = self.box_EntityStatusListener_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|766261969", "766261969", "Custom_Cinematic_Brick", "box_OutputOrder_v2_89.Out", "box_EntityStatusListener_93.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|@CheckAnimals");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_69_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|@FinishedSequence");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_67_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|19353300");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = self.CS_CINEMA_Outpost_Animals,
        -- Group,
        [1] = "#B40CC068",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|52082449");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_10_No,
    });
    params = {
        -- ent,
        [4] = self.CS_CINEMA_Outpost_Animals,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_102()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2105141225471350890",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|95122914");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_61_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160219244859610",
        -- missionLayerId,
        [1] = "27160222740130381",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_74()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2103080921134578424",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|147731706");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_56_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "18152949117150935",
        -- missionLayerId,
        [1] = "36167347626632923",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|185479257");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_33()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|206044755");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|354264666");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_24_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_24_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bUseFadeInAtEnd,
    };
    return params;
end;

function export:OnEnter_box_GroupIter_48()
    local params;
    params = {
        -- entities,
        [0] = self.gPlayergroup,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_59()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#C439C73D",
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_7()
    local params;
    params = {
        -- SoundId,
        [0] = "1575490763",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_5()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.gPlayergroup,
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|661710651");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_87_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#B4126FB5",
        -- PawnGroup,
        [1] = "#E8BB2100",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|677493829");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|693543179");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ExtinguishAllFires_57_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupIter_30()
    local params;
    params = {
        -- entities,
        [0] = self.gPlayergroup,
    };
    return params;
end;

function export:OnEnter_box_PlayerInQTEListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- player,
        [1] = self.ePlayer,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_72()
    local params;
    params = {
        -- PostFX,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|866954996");
    l0:SetConnections({
    });
    params = {
        -- Group,
        [1] = "#B4126FB5",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_25()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#C439C73D",
    };
    return params;
end;

function export:OnEnter_box_IsPlayerInQTE_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/IsPlayerInQTE.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPlayerInQTE_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|896171743");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsPlayerInQTE_15_False,
        -- True,
        [1] = self.f_box_IsPlayerInQTE_15_True,
    });
    params = {
        -- pawn,
        [0] = self.ePlayer,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|897213839");
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

function export:OnEnter_box_SetContextualStrategy_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|902876945");
    l0:SetConnections({
    });
    params = {
        -- Group,
        [1] = "#E8BB2100",
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|910471678");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ExtinguishAllFires_77_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|920228911");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_11_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_11_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_11_Out,
    });
    params = {
        -- pawn,
        [0] = self.ePlayer,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_101()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2105141220891170920",
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|923600708");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SoundMixing_37_Out,
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/CIN_Outpost_Reveal",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|946948870");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104867366549636266",
        -- Group,
        [1] = "#B4126FB5",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_43()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098243347157117823",
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_22()
    local params;
    params = {
        -- SoundId,
        [0] = "818697629",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = self.TeleportDestination,
        -- LoadingScreen,
        [2] = false,
        -- LoadSynch,
        [3] = false,
        -- Pawns,
        [4] = l0:GetDataOutValue(0),
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_85()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1007226586");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "OutpostStartingEndSequence",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1011155188");
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
                [0] = self.f_box_OutputOrder_v2_71_Out_0,
                [1] = self.f_box_OutputOrder_v2_71_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1044146690");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CancelAllExplosions_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CancelAllExplosions.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CancelAllExplosions_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1066156418");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CancelAllExplosions_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CancelAllExplosions_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CancelAllExplosions.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CancelAllExplosions_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1089491474");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CancelAllExplosions_95_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1095562502");
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
                [1] = self.f_box_OutputOrder_v2_83_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1099225045");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_9_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_79()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#00176903",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_75()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2101716863890251524",
    };
    return params;
end;

function export:OnEnter_box_PlayersVisibilityModifier_97()
    local params;
    params = {
        -- ExcludeLocalPlayer,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_21()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_CancelAllExplosions_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CancelAllExplosions.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CancelAllExplosions_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1407491157");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CancelAllExplosions_76_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayersVisibilityModifier_96()
    local params;
    params = {
        -- ExcludeLocalPlayer,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_4()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#00176903",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_104()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_60()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID2,
        -- SceneEntity,
        [3] = "2103080921134578424",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/cin_key02_001_spreadeagle/cin_key02_001_spreadeagle.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1525469985");
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

function export:OnEnter_box_VisibilityModifier_81()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2102417478614282408",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_98()
    local params;
    params = {
        -- Group,
        [0] = "2102417463349112860",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_63()
    local params;
    params = {
        -- PostFX,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1586577492");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ExtinguishAllFires_94_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_12()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#451A97C2",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_93()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104867366549636266",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1637669883");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_40_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_40_Yes,
    });
    params = {
        -- ent,
        [4] = self.TeleportDestination,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_53()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.gPlayergroup,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1673939945");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_34_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_34_A_neq_B,
    });
    params = {
        -- A,
        [0] = "Wingsuit Paraglider",
        -- B,
        [1] = self._sld_vehicleType_box_GetPawnVehicleInfo_11,
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1699073188");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104867373921125548",
        -- Group,
        [1] = "#E8BB2100",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1718095476");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_54_Out,
    });
    params = {
        -- Message,
        [0] = "outpost_cinematic_end",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_41()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#94F2046A",
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1752775434");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_3_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#B40CC068",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_82()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_73()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_80()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#1AB65959",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_70()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1851686808");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SoundMixing_50_Out,
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/CIN_Outpost_Reveal",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1871644562");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_2_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceId,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1885662038");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1922171718");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_42_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = true,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntityOutRange_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntityOutRange_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1943246033");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntityOutRange_31_Out,
    });
    params = {
        -- Range,
        [0] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|1957409557");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_65_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID2,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_99()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2000975753");
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
                [0] = self.f_box_OutputOrder_v2_100_Out_0,
                [1] = self.f_box_OutputOrder_v2_100_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_92()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104867373921125548",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2012299961");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_84_Out,
    });
    params = {
        -- Hour,
        [0] = 23,
        -- Minute,
        [1] = 55,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_19()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceId,
        -- SceneEntity,
        [3] = "2098243347157117823",
        -- SequenceFile,
        [4] = "sequences/zeta_main/cin_fallsendcelebration.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2041713828");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
                [2] = self.f_box_OutputOrder_v2_32_Out_2,
                [3] = self.f_box_OutputOrder_v2_32_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_58()
    local params;
    params = {
        -- PostFX,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_78()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#1AB65959",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2088659162");
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
                [0] = self.f_box_OutputOrder_v2_103_Out_0,
                [1] = self.f_box_OutputOrder_v2_103_Out_1,
                [2] = self.f_box_OutputOrder_v2_103_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2090279271");
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

function export:OnEnter_box_SetContextualStrategy_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@Custom_Cinematic_Brick|2130402634");
    l0:SetConnections({
    });
    params = {
        -- Group,
        [1] = "#B40CC068",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayergroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_48_PawnIter()
    local l0;
    l0 = self.box_GroupIter_48;
    self.ePlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_44_Out()
    local l0;
    l0 = self.box_StartMetaSequence_44;
    self.MetaSequenceId = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_30_PawnIter()
    local l0;
    l0 = self.box_GroupIter_30;
    self.ePlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_11_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicle = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_11 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_11_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicle = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_11 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicle = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_11 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPlayerGroup_v2_18_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_TeleportPawns_52;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_62_Out()
    local l0;
    l0 = self.box_StartMetaSequence_62;
    self.MetaSequenceID2 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out_Cin1()
    
end;
function export:Out_Cin2()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out_Cin1" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out_Cin2" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="bUseFadeInAtEnd" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="CS_CINEMA_Outpost_Animals" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="TeleportDestination" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
