LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/gfh/mis_570/mis_570_b10.domino
-- User graph: _FadeToBlack_Activate
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eTeleportDestination" Type="Nomad|entity{}" />
    <DataIn Name="eLookAtTarget" Type="Nomad|entity{}" />
    <DataIn Name="Load_MissionBlockID" Type="Nomad|missionblock" />
    <DataIn Name="Load_MissionLayerID" Type="Nomad|missionblocklayer" />
    <DataIn Name="Unload_MissionLayerID" Type="Nomad|missionblocklayer" />
    <DataIn Name="Unload_MissionLayerID_Instant" Type="Core|bool" />
    <DataIn Name="Player_CantMove" Type="Core|bool" />
    <DataIn Name="eVehicleTrigger" Type="Nomad|entity{}" />
    <DataIn Name="eTeleportDestination_Client" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeGetVehiclesInTrigger.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeHideVehicles.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Coop/AllPlayers/UnlimitedAmmo_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/JoinInProgresModifier.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputPriorityModifier_v4.lua");
        cboxRes:RegisterBox("Domino/System/Player/IsPlayerInQTE.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayerInQTEListener.lua");
        cboxRes:RegisterBox("Domino/System/PlayerLookAtModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._FadeToBlack_Activate.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "End",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "eLookAtTarget",
                type = "entity",
            },
            [1] = {
                name = "eTeleportDestination",
                type = "entity",
            },
            [2] = {
                name = "eTeleportDestination_Client",
                type = "entity",
            },
            [3] = {
                name = "eVehicleTrigger",
                type = "entity",
            },
            [4] = {
                name = "Load_MissionBlockID",
                type = "missionblock",
            },
            [5] = {
                name = "Load_MissionLayerID",
                type = "missionblocklayer",
            },
            [6] = {
                name = "Player_CantMove",
                type = "bool",
            },
            [7] = {
                name = "Unload_MissionLayerID",
                type = "missionblocklayer",
            },
            [8] = {
                name = "Unload_MissionLayerID_Instant",
                type = "bool",
            },
        },
        dataInCount = 9,
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeGetVehiclesInTrigger.debug.lua")] = {
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
                name = "Trigger",
                type = "entity",
            },
            [1] = {
                name = "Vehicles",
                type = "list",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeHideVehicles.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Hide",
            },
            [1] = {
                name = "Remove",
            },
            [2] = {
                name = "Unhide",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Hidden",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
            [2] = {
                name = "Unhidden",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Vehicles",
                type = "list",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ClearRestriction",
            },
            [1] = {
                name = "DisableListeners",
            },
            [2] = {
                name = "RemoveItems",
            },
            [3] = {
                name = "RestrictItems",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Cleared",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
            [2] = {
                name = "Restricted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "ItemFilterDBID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Coop/AllPlayers/UnlimitedAmmo_v2.lua")] = {
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
        },
        dataInCount = 0,
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
    metadataTable[GetPathID("Domino/System/Coop/JoinInProgresModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LockSession",
            },
            [1] = {
                name = "UnlockSession",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnLockSession",
                delayed = false,
            },
            [1] = {
                name = "OnUnlockSession",
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
    metadataTable[GetPathID("Domino/System/Player/IgnoreSignal_v2.lua")] = {
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
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "signal",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/InputPriorityModifier_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Release",
            },
            [1] = {
                name = "Set",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnRelease",
                delayed = false,
            },
            [1] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "InputPriority",
                type = "string",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/PlayerLookAtModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LookAtEntity",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Done",
                delayed = true,
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
                name = "blendOutTime",
                type = "float",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "lockPlayer",
                type = "bool",
            },
            [3] = {
                name = "lockTime",
                type = "float",
            },
            [4] = {
                name = "lookTarget",
                type = "entity",
            },
            [5] = {
                name = "Pawns",
                type = "group",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/SetFloat_v2.lua")] = {
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
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "Target",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "AreaMessage",
            },
            [1] = {
                name = "Cinematic",
            },
            [2] = {
                name = "Compass",
            },
            [3] = {
                name = "DetectionMeter",
            },
            [4] = {
                name = "EnergyGauge",
            },
            [5] = {
                name = "Health",
            },
            [6] = {
                name = "HelmetMask",
            },
            [7] = {
                name = "Hiring",
            },
            [8] = {
                name = "HudActivityStatus",
            },
            [9] = {
                name = "HudAutodriveStatus",
            },
            [10] = {
                name = "HudChallenge",
            },
            [11] = {
                name = "HudDiscovery",
            },
            [12] = {
                name = "HudGunsForHire",
            },
            [13] = {
                name = "HudHint",
            },
            [14] = {
                name = "HudLocationDiscovery",
            },
            [15] = {
                name = "HudNewCharacterDiscovery",
            },
            [16] = {
                name = "HudNotifGFH",
            },
            [17] = {
                name = "HudNotificationsQueue",
            },
            [18] = {
                name = "HudNotificationsQueueCenterMessage",
            },
            [19] = {
                name = "HudNotificationsQueueDiscovery",
            },
            [20] = {
                name = "HudNotificationsQueueGMS",
            },
            [21] = {
                name = "HudNotificationsQueuePlayerPoints",
            },
            [22] = {
                name = "HudNotificationsQueueWarning",
            },
            [23] = {
                name = "HudObjective",
            },
            [24] = {
                name = "HudObjectiveRewards",
            },
            [25] = {
                name = "HudOpenWorld",
            },
            [26] = {
                name = "HudOutpostSuccess",
            },
            [27] = {
                name = "HudPerkPoints",
            },
            [28] = {
                name = "HudSurvivalInstinct",
            },
            [29] = {
                name = "Interaction",
            },
            [30] = {
                name = "Looting",
            },
            [31] = {
                name = "MissionGiver",
            },
            [32] = {
                name = "ObjectiveProgress",
            },
            [33] = {
                name = "ObjectiveTracked",
            },
            [34] = {
                name = "PlayerBuffs",
            },
            [35] = {
                name = "RepairBar",
            },
            [36] = {
                name = "Reputation",
            },
            [37] = {
                name = "Reticle",
            },
            [38] = {
                name = "Tag",
            },
            [39] = {
                name = "TopCenterTimer",
            },
            [40] = {
                name = "TrackedMaterials",
            },
            [41] = {
                name = "Tutorial",
            },
        },
        controlInCount = 42,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "disableUI",
                type = "bool",
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
    self._name = "_FadeToBlack_Activate";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate";
    self.End = DummyFunction;
    self.iVehiclesinTrigger = {
    };
    self.ePlayerAddedOrRemoved = nil;
    self.ePlayer2 = nil;
    self.ePlayer = nil;
    self.eNana = nil;
    self.fDelay = 0.5;
    self.box_OnceOnly_v3_38 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|30534047");
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
    self.box_PlayerSpeedModifier_v3_37 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|80549188");
    l0:SetConnections({
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|142160414");
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
        [0] = self.f_box_MultipleOR_58_Out,
    });
    self.box_InputPriorityModifier_v4_59 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|183260836");
    l0:SetConnections({
        -- OnSet,
        [1] = self.f_box_InputPriorityModifier_v4_59_OnSet,
    });
    self.box_PlayerInQTEListener_51 = cbox:CreateBox("Domino/System/Player/PlayerInQTEListener.lua");
    l0 = self.box_PlayerInQTEListener_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerInQTEListener_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|257315573");
    l0:SetConnections({
        -- OnQTEEnd,
        [2] = self.f_box_PlayerInQTEListener_51_OnQTEEnd,
    });
    self.box_TeleportPawns_23 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|264915906");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_23_Out,
    });
    self.box_PlayerLookAtModifier_v3_33 = cbox:CreateBox("Domino/System/PlayerLookAtModifier_v3.lua");
    l0 = self.box_PlayerLookAtModifier_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerLookAtModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|405707687");
    l0:SetConnections({
        -- Done,
        [0] = self.f_box_PlayerLookAtModifier_v3_33_Done,
    });
    self.box_ManagePlayerInventory_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|435519267");
    l0:SetConnections({
    });
    self.box_IgnoreSignal_v2_2 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|455926727");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_2_Enabled,
    });
    self.box_MultipleOR_55 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|528035850");
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
        [0] = self.f_box_MultipleOR_55_Out,
    });
    self.box_OnceOnly_v3_7 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|533573684");
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
                [0] = self.f_box_OnceOnly_v3_7_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_39 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|603236024");
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
                [0] = self.f_box_OnceOnly_v3_39_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|650836873");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_UnlimitedAmmo_v2_36 = cbox:CreateBox("Domino/System/Coop/AllPlayers/UnlimitedAmmo_v2.lua");
    l0 = self.box_UnlimitedAmmo_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlimitedAmmo_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|697929520");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UnlimitedAmmo_v2_36_Enabled,
    });
    self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|753347508");
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
        [0] = self.f_box_MultipleOR_41_Out,
    });
    self.box_JoinInProgressModifier_46 = cbox:CreateBox("Domino/System/Coop/JoinInProgresModifier.lua");
    l0 = self.box_JoinInProgressModifier_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_JoinInProgressModifier_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|779640559");
    l0:SetConnections({
    });
    self.box_InputPriorityModifier_v4_60 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|872277516");
    l0:SetConnections({
        -- OnRelease,
        [0] = self.f_box_InputPriorityModifier_v4_60_OnRelease,
    });
    self.box_EntityStatusListener_19 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|883726935");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_19_Loaded,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1169124574");
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
        [0] = self.f_box_MultipleOR_31_Out,
    });
    self.box_OnceOnly_v3_6 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1225242473");
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
                [0] = self.f_box_OnceOnly_v3_6_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_24 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1292519446");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_24_TimeElapsed,
    });
    self.box_PlayerInQTEListener_53 = cbox:CreateBox("Domino/System/Player/PlayerInQTEListener.lua");
    l0 = self.box_PlayerInQTEListener_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerInQTEListener_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1328401808");
    l0:SetConnections({
        -- OnQTEEnd,
        [2] = self.f_box_PlayerInQTEListener_53_OnQTEEnd,
    });
    self.box_IgnoreSignal_v2_44 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1339311282");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_44_Enabled,
    });
    self.box_CharacterLoadedIdListener_v2_61 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1345874740");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_61_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_61_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_61_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_61_LoadedIdReceived,
    });
    self.box_IgnoreSignal_v2_45 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1497963775");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_45_Enabled,
    });
    self.box_Delay_v5_57 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1573101133");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_57_TimeElapsed,
    });
    self.box_MultipleAND_v2_29 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1576088324");
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
        [0] = self.f_box_MultipleAND_v2_29_Out,
    });
    self.box_CoopActivePlayers_54 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1606912567");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_54_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_54_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_54_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_54_TwoPlayers,
    });
    self.box_TeleportPawns_48 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1668643916");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_48_Out,
    });
    self.box_NarrativeGetVehiclesInTrigger_17 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeGetVehiclesInTrigger.debug.lua");
    l0 = self.box_NarrativeGetVehiclesInTrigger_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeGetVehiclesInTrigger_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1673599241");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_NarrativeGetVehiclesInTrigger_17_Enabled,
    });
    self.box_IgnoreSignal_v2_42 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1706700473");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_42_Enabled,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1706871544");
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
    self.box_OnceOnly_v3_12 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1908958166");
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
                [0] = self.f_box_OnceOnly_v3_12_Out_0,
            },
            count = 2,
        },
    });
    self.box_NarrativeFade_26 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|2015721263");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_26_FadedIn,
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_26_FadedOut,
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|2029434992");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_ManagePlayerInventory_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|2049731870");
    l0:SetConnections({
    });
    self.box_NarrativeHideVehicles_16 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeHideVehicles.debug.lua");
    l0 = self.box_NarrativeHideVehicles_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeHideVehicles_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|2125688253");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_NarrativeHideVehicles_16_Removed,
    });
end;

function export:Start()
    local params, l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_61();
    l0 = self.box_CharacterLoadedIdListener_v2_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|346776621", "346776621", "_FadeToBlack_Activate", "Start", "box_CharacterLoadedIdListener_v2_61.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_38_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_28();
    l0 = self.box_OnceOnly_v3_38;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1747251061", "1747251061", "_FadeToBlack_Activate", "box_OnceOnly_v3_38.Out", "box_MissionBlockLayer_28.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_MultipleOR_58;
    l1 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|910618330", "910618330", "_FadeToBlack_Activate", "box_MultipleOR_58.Out", "box_Delay_v5_57.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_37();
    l0 = self.box_PlayerSpeedModifier_v3_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|594462857", "594462857", "_FadeToBlack_Activate", "box_OutputOrder_v2_43.Out", "box_PlayerSpeedModifier_v3_37.ApplySpeedFactor", clone:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_UnlimitedAmmo_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1191636526", "1191636526", "_FadeToBlack_Activate", "box_OutputOrder_v2_43.Out", "box_UnlimitedAmmo_v2_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_43_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_42();
    l0 = self.box_IgnoreSignal_v2_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|571194982", "571194982", "_FadeToBlack_Activate", "box_OutputOrder_v2_43.Out", "box_IgnoreSignal_v2_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_InputPriorityModifier_v4_59_OnSet()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_62();
    l0 = self.box_InputPriorityModifier_v4_59;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1797736667", "1797736667", "_FadeToBlack_Activate", "box_InputPriorityModifier_v4_59.OnSet", "box_HealthModifier_v2_62.RemoveCritical", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveCritical
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_47_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_48();
    l0 = self.box_TeleportPawns_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|837086549", "837086549", "_FadeToBlack_Activate", "box_IsValueNil_v3_47.No", "box_TeleportPawns_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_IsValueNil_v3_47_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_23();
    l0 = self.box_TeleportPawns_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1746090265", "1746090265", "_FadeToBlack_Activate", "box_IsValueNil_v3_47.Yes", "box_TeleportPawns_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_PlayerInQTEListener_51_OnQTEEnd()
    local l0, l1;
    l0 = self.box_PlayerInQTEListener_51;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|940874807", "940874807", "_FadeToBlack_Activate", "box_PlayerInQTEListener_51.OnQTEEnd", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|2055515310", "2055515310", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.Compass", clone:GetLuaBox(), l0:GetLuaBox());
    -- Compass
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|44559058", "44559058", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.Tag", clone:GetLuaBox(), l0:GetLuaBox());
    -- Tag
    l0:Exec(38, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1302195282", "1302195282", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.Health", clone:GetLuaBox(), l0:GetLuaBox());
    -- Health
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|367735330", "367735330", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.Reticle", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reticle
    l0:Exec(37, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1764710380", "1764710380", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudActivityStatus", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudActivityStatus
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1907537718", "1907537718", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudHint", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudHint
    l0:Exec(13, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1443937265", "1443937265", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudLocationDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudLocationDiscovery
    l0:Exec(14, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|495631673", "495631673", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudNewCharacterDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNewCharacterDiscovery
    l0:Exec(15, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|99815366", "99815366", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudDiscovery
    l0:Exec(11, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1664210952", "1664210952", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudNotificationsQueue", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotificationsQueue
    l0:Exec(17, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1544891457", "1544891457", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudNotificationsQueueCenterMessage", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotificationsQueueCenterMessage
    l0:Exec(18, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|214783311", "214783311", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudNotificationsQueueGMS", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotificationsQueueGMS
    l0:Exec(20, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1352931927", "1352931927", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudNotificationsQueuePlayerPoints", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotificationsQueuePlayerPoints
    l0:Exec(21, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|620093708", "620093708", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudNotificationsQueueDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotificationsQueueDiscovery
    l0:Exec(19, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1226689612", "1226689612", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudNotificationsQueueWarning", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotificationsQueueWarning
    l0:Exec(22, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|60513490", "60513490", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudObjective", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudObjective
    l0:Exec(23, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|196249895", "196249895", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudObjectiveRewards", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudObjectiveRewards
    l0:Exec(24, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1566282794", "1566282794", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudOpenWorld", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudOpenWorld
    l0:Exec(25, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1757834050", "1757834050", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.Interaction", clone:GetLuaBox(), l0:GetLuaBox());
    -- Interaction
    l0:Exec(29, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|2132545671", "2132545671", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.Cinematic", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cinematic
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|240454150", "240454150", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.AreaMessage", clone:GetLuaBox(), l0:GetLuaBox());
    -- AreaMessage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|495678163", "495678163", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudAutodriveStatus", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudAutodriveStatus
    l0:Exec(9, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1633826779", "1633826779", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.EnergyGauge", clone:GetLuaBox(), l0:GetLuaBox());
    -- EnergyGauge
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|863466964", "863466964", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HelmetMask", clone:GetLuaBox(), l0:GetLuaBox());
    -- HelmetMask
    l0:Exec(6, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1081337494", "1081337494", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.Hiring", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hiring
    l0:Exec(7, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|259274217", "259274217", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudGunsForHire", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudGunsForHire
    l0:Exec(12, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|327394589", "327394589", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudNotifGFH", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotifGFH
    l0:Exec(16, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1301611181", "1301611181", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.Reputation", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reputation
    l0:Exec(36, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|531251366", "531251366", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.Looting", clone:GetLuaBox(), l0:GetLuaBox());
    -- Looting
    l0:Exec(30, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|247831734", "247831734", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudChallenge", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudChallenge
    l0:Exec(10, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1624955566", "1624955566", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudPerkPoints", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudPerkPoints
    l0:Exec(27, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|2060528513", "2060528513", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudOutpostSuccess", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudOutpostSuccess
    l0:Exec(26, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|100484733", "100484733", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.HudSurvivalInstinct", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudSurvivalInstinct
    l0:Exec(28, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1784367927", "1784367927", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.Tutorial", clone:GetLuaBox(), l0:GetLuaBox());
    -- Tutorial
    l0:Exec(41, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1995147524", "1995147524", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.MissionGiver", clone:GetLuaBox(), l0:GetLuaBox());
    -- MissionGiver
    l0:Exec(31, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1496428632", "1496428632", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.DetectionMeter", clone:GetLuaBox(), l0:GetLuaBox());
    -- DetectionMeter
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|899326818", "899326818", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.RepairBar", clone:GetLuaBox(), l0:GetLuaBox());
    -- RepairBar
    l0:Exec(35, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1857294613", "1857294613", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.PlayerBuffs", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayerBuffs
    l0:Exec(34, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_3();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1812850197", "1812850197", "_FadeToBlack_Activate", "box_OutputOrder_v2_5.Out", "box_OverrideDisabledLogicId_3.TopCenterTimer", clone:GetLuaBox(), l0:GetLuaBox());
    -- TopCenterTimer
    l0:Exec(39, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_23_Out()
    local l0, l1;
    l0 = self.box_TeleportPawns_23;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|503501889", "503501889", "_FadeToBlack_Activate", "box_TeleportPawns_23.Out", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_32_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_32();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|108603719", "108603719", "_FadeToBlack_Activate", "box_MissionBlockLayer_32.Deactivated", "box_MissionBlockLayer_32.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_32_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1338531994", "1338531994", "_FadeToBlack_Activate", "box_MissionBlockLayer_32.Disabled", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetFloat_v2_63_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_63_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPlayerInQTE_49();
    l0 = Boxes[GetPathID("Domino/System/Player/IsPlayerInQTE.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|21845585", "21845585", "_FadeToBlack_Activate", "box_SetFloat_v2_63.Out", "box_IsPlayerInQTE_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_4_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|388005043", "388005043", "_FadeToBlack_Activate", "box_Simple_Node_4.Out", "box_OutputOrder_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayerLookAtModifier_v3_33_Done()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_60();
    l0 = self.box_PlayerLookAtModifier_v3_33;
    l1 = self.box_InputPriorityModifier_v4_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1158100305", "1158100305", "_FadeToBlack_Activate", "box_PlayerLookAtModifier_v3_33.Done", "box_InputPriorityModifier_v4_60.Release", l0:GetLuaBox(), l1:GetLuaBox());
    -- Release
    l1:Exec(0, params);
end;

function export:f_box_IsPlayerInQTE_56_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/IsPlayerInQTE.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|253071178", "253071178", "_FadeToBlack_Activate", "box_IsPlayerInQTE_56.False", "box_MultipleOR_58.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsPlayerInQTE_56_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/IsPlayerInQTE.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerInQTEListener_51();
    l0 = self.box_PlayerInQTEListener_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1024842486", "1024842486", "_FadeToBlack_Activate", "box_IsPlayerInQTE_56.True", "box_PlayerInQTEListener_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_2_Enabled()
    local l0, l1;
    l0 = self.box_IgnoreSignal_v2_2;
    l1 = self.box_OnceOnly_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1451213979", "1451213979", "_FadeToBlack_Activate", "box_IgnoreSignal_v2_2.Enabled", "box_OnceOnly_v3_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsPlayerInQTE_56();
    l0 = self.box_MultipleOR_55;
    l1 = Boxes[GetPathID("Domino/System/Player/IsPlayerInQTE.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1935640957", "1935640957", "_FadeToBlack_Activate", "box_MultipleOR_55.Out", "box_IsPlayerInQTE_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_7_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_9();
    l0 = self.box_OnceOnly_v3_7;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|387011800", "387011800", "_FadeToBlack_Activate", "box_OnceOnly_v3_7.Out", "box_Simple_Node_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1030607563", "1030607563", "_FadeToBlack_Activate", "box_Simple_Node_9.Out", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_39_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_29();
    l0 = self.box_OnceOnly_v3_39;
    l1 = self.box_MultipleAND_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1508174841", "1508174841", "_FadeToBlack_Activate", "box_OnceOnly_v3_39.Out", "box_MultipleAND_v2_29.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_Delay_v5_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|156422579", "156422579", "_FadeToBlack_Activate", "box_Delay_v5_30.TimeElapsed", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UnlimitedAmmo_v2_36_Enabled()
    local l0, l1;
    l0 = self.box_UnlimitedAmmo_v2_36;
    l1 = self.box_JoinInProgressModifier_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1222304439", "1222304439", "_FadeToBlack_Activate", "box_UnlimitedAmmo_v2_36.Enabled", "box_JoinInProgressModifier_46.LockSession", l0:GetLuaBox(), l1:GetLuaBox());
    -- LockSession
    l1:Exec(0, {
    });
end;

function export:f_box_SetFloat_v2_64_Out()
    local l0;
    self:OnExit_box_SetFloat_v2_64_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|994568548", "994568548", "_FadeToBlack_Activate", "box_SetFloat_v2_64.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_41_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_41;
    l1 = self.box_OnceOnly_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|114179335", "114179335", "_FadeToBlack_Activate", "box_MultipleOR_41.Out", "box_OnceOnly_v3_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InputPriorityModifier_v4_60_OnRelease()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_26();
    l0 = self.box_InputPriorityModifier_v4_60;
    l1 = self.box_NarrativeFade_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1572736679", "1572736679", "_FadeToBlack_Activate", "box_InputPriorityModifier_v4_60.OnRelease", "box_NarrativeFade_26.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_19_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeGetVehiclesInTrigger_17();
    l0 = self.box_EntityStatusListener_19;
    l1 = self.box_NarrativeGetVehiclesInTrigger_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|583829039", "583829039", "_FadeToBlack_Activate", "box_EntityStatusListener_19.Loaded", "box_NarrativeGetVehiclesInTrigger_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1136792684", "1136792684", "_FadeToBlack_Activate", "box_OutputOrder_v2_35.Out", "box_OnceOnly_v3_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_34();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1258060572", "1258060572", "_FadeToBlack_Activate", "box_OutputOrder_v2_35.Out", "box_IsValueNil_v3_34.MissionBlockLayer", clone:GetLuaBox(), l0:GetLuaBox());
    -- MissionBlockLayer
    l0:Exec(10, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_25();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1305699135", "1305699135", "_FadeToBlack_Activate", "box_OutputOrder_v2_35.Out", "box_Compare_Boolean_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_22();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1031560724", "1031560724", "_FadeToBlack_Activate", "box_OutputOrder_v2_35.Out", "box_IsValueNil_v3_22.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_20_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1201431409", "1201431409", "_FadeToBlack_Activate", "box_Compare_Boolean_20.A_is_False", "box_Delay_v5_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_20_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_32();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|6527467", "6527467", "_FadeToBlack_Activate", "box_Compare_Boolean_20.A_is_True", "box_MissionBlockLayer_32.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1925740412", "1925740412", "_FadeToBlack_Activate", "box_OutputOrder_v2_11.Out", "box_OnceOnly_v3_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1345503285", "1345503285", "_FadeToBlack_Activate", "box_OutputOrder_v2_11.Out", "End", clone:GetLuaBox(), self);
    self:End();
end;

function export:f_box_MultipleOR_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerLookAtModifier_v3_33();
    l0 = self.box_MultipleOR_31;
    l1 = self.box_PlayerLookAtModifier_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|343790145", "343790145", "_FadeToBlack_Activate", "box_MultipleOR_31.Out", "box_PlayerLookAtModifier_v3_33.LookAtEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- LookAtEntity
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_6_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_4();
    l0 = self.box_OnceOnly_v3_6;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1429099250", "1429099250", "_FadeToBlack_Activate", "box_OnceOnly_v3_6.Out", "box_Simple_Node_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeGetVehiclesInTrigger_17();
    l0 = self.box_NarrativeGetVehiclesInTrigger_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1661989898", "1661989898", "_FadeToBlack_Activate", "box_OutputOrder_v2_40.Out", "box_NarrativeGetVehiclesInTrigger_17.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1542796202", "1542796202", "_FadeToBlack_Activate", "box_OutputOrder_v2_40.Out", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_24_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_27();
    l0 = self.box_Delay_v5_24;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|417478890", "417478890", "_FadeToBlack_Activate", "box_Delay_v5_24.TimeElapsed", "box_MissionBlockLayer_27.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerInQTEListener_53_OnQTEEnd()
    local l0, l1;
    l0 = self.box_PlayerInQTEListener_53;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|505473064", "505473064", "_FadeToBlack_Activate", "box_PlayerInQTEListener_53.OnQTEEnd", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IgnoreSignal_v2_44_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_45();
    l0 = self.box_IgnoreSignal_v2_44;
    l1 = self.box_IgnoreSignal_v2_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|307582748", "307582748", "_FadeToBlack_Activate", "box_IgnoreSignal_v2_44.Enabled", "box_IgnoreSignal_v2_45.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_61_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_61_LoadedIdReceived();
    params = self:OnEnter_box_NarrativeFade_26();
    l0 = self.box_CharacterLoadedIdListener_v2_61;
    l1 = self.box_NarrativeFade_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|250964969", "250964969", "_FadeToBlack_Activate", "box_CharacterLoadedIdListener_v2_61.LoadedIdReceived", "box_NarrativeFade_26.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ManagePlayerInventory_13();
    l0 = self.box_ManagePlayerInventory_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|52618546", "52618546", "_FadeToBlack_Activate", "box_OutputOrder_v2_15.Out", "box_ManagePlayerInventory_13.RestrictItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- RestrictItems
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ManagePlayerInventory_14();
    l0 = self.box_ManagePlayerInventory_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|4965010", "4965010", "_FadeToBlack_Activate", "box_OutputOrder_v2_15.Out", "box_ManagePlayerInventory_14.RestrictItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- RestrictItems
    l0:Exec(3, params);
end;

function export:f_box_IgnoreSignal_v2_45_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_2();
    l0 = self.box_IgnoreSignal_v2_45;
    l1 = self.box_IgnoreSignal_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|156519042", "156519042", "_FadeToBlack_Activate", "box_IgnoreSignal_v2_45.Enabled", "box_IgnoreSignal_v2_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_22_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_19();
    l0 = self.box_EntityStatusListener_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|876499913", "876499913", "_FadeToBlack_Activate", "box_IsValueNil_v3_22.No", "box_EntityStatusListener_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_22_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1055562107", "1055562107", "_FadeToBlack_Activate", "box_IsValueNil_v3_22.Yes", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthModifier_v2_62_OnRemoveCritical()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1797904780", "1797904780", "_FadeToBlack_Activate", "box_HealthModifier_v2_62.OnRemoveCritical", "box_Delay_v5_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_57_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_21();
    l0 = self.box_Delay_v5_57;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1653118752", "1653118752", "_FadeToBlack_Activate", "box_Delay_v5_57.TimeElapsed", "box_IsValueNil_v3_21.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_29_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_29;
    l1 = self.box_CoopActivePlayers_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|216004346", "216004346", "_FadeToBlack_Activate", "box_MultipleAND_v2_29.Out", "box_CoopActivePlayers_54.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_CoopActivePlayers_54_OnePlayer()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_54_OnePlayer();
    params = self:OnEnter_box_SetFloat_v2_64();
    l0 = self.box_CoopActivePlayers_54;
    l1 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1207464651", "1207464651", "_FadeToBlack_Activate", "box_CoopActivePlayers_54.OnePlayer", "box_SetFloat_v2_64.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_54_PlayerAdded()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_54_PlayerAdded();
    l0 = self.box_CoopActivePlayers_54;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|622646140", "622646140", "_FadeToBlack_Activate", "box_CoopActivePlayers_54.PlayerAdded", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_54_PlayerRemoved()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_54_PlayerRemoved();
    l0 = self.box_CoopActivePlayers_54;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1532998283", "1532998283", "_FadeToBlack_Activate", "box_CoopActivePlayers_54.PlayerRemoved", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CoopActivePlayers_54_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_54_TwoPlayers();
    params = self:OnEnter_box_SetFloat_v2_63();
    l0 = self.box_CoopActivePlayers_54;
    l1 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1808008487", "1808008487", "_FadeToBlack_Activate", "box_CoopActivePlayers_54.TwoPlayers", "box_SetFloat_v2_63.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_48_Out()
    local l0, l1;
    l0 = self.box_TeleportPawns_48;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|2009898840", "2009898840", "_FadeToBlack_Activate", "box_TeleportPawns_48.Out", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_19();
    l0 = self.box_EntityStatusListener_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|468468260", "468468260", "_FadeToBlack_Activate", "box_OutputOrder_v2_18.Out", "box_EntityStatusListener_19.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeHideVehicles_16();
    l0 = self.box_NarrativeHideVehicles_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1759321073", "1759321073", "_FadeToBlack_Activate", "box_OutputOrder_v2_18.Out", "box_NarrativeHideVehicles_16.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
end;

function export:f_box_NarrativeGetVehiclesInTrigger_17_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_NarrativeGetVehiclesInTrigger_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1268897406", "1268897406", "_FadeToBlack_Activate", "box_NarrativeGetVehiclesInTrigger_17.Enabled", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_42_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_44();
    l0 = self.box_IgnoreSignal_v2_42;
    l1 = self.box_IgnoreSignal_v2_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|812406124", "812406124", "_FadeToBlack_Activate", "box_IgnoreSignal_v2_42.Enabled", "box_IgnoreSignal_v2_44.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_OnceOnly_v3_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|40028137", "40028137", "_FadeToBlack_Activate", "box_MultipleOR_1.Out", "box_OnceOnly_v3_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_34_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_20();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|202388433", "202388433", "_FadeToBlack_Activate", "box_IsValueNil_v3_34.No", "box_Compare_Boolean_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_34_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|610045325", "610045325", "_FadeToBlack_Activate", "box_IsValueNil_v3_34.Yes", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_28_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_29();
    l0 = self.box_MultipleAND_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1394245761", "1394245761", "_FadeToBlack_Activate", "box_MissionBlockLayer_28.Activated", "box_MultipleAND_v2_29.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_IsValueNil_v3_21_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_47();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1373781801", "1373781801", "_FadeToBlack_Activate", "box_IsValueNil_v3_21.No", "box_IsValueNil_v3_47.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_21_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|387540868", "387540868", "_FadeToBlack_Activate", "box_IsValueNil_v3_21.Yes", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|2090335247", "2090335247", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.Compass", clone:GetLuaBox(), l0:GetLuaBox());
    -- Compass
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1276430899", "1276430899", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.Tag", clone:GetLuaBox(), l0:GetLuaBox());
    -- Tag
    l0:Exec(38, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1734118826", "1734118826", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.Health", clone:GetLuaBox(), l0:GetLuaBox());
    -- Health
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1765414480", "1765414480", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.Reticle", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reticle
    l0:Exec(37, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|272327685", "272327685", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudActivityStatus", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudActivityStatus
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1889629019", "1889629019", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudHint", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudHint
    l0:Exec(13, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1980125132", "1980125132", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudLocationDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudLocationDiscovery
    l0:Exec(14, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|229337094", "229337094", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudNewCharacterDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNewCharacterDiscovery
    l0:Exec(15, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|999865022", "999865022", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudDiscovery
    l0:Exec(11, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1609960101", "1609960101", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudNotificationsQueue", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotificationsQueue
    l0:Exec(17, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|509334534", "509334534", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudNotificationsQueueCenterMessage", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotificationsQueueCenterMessage
    l0:Exec(18, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|53027325", "53027325", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudNotificationsQueueGMS", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotificationsQueueGMS
    l0:Exec(20, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1830527627", "1830527627", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudNotificationsQueuePlayerPoints", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotificationsQueuePlayerPoints
    l0:Exec(21, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|145120642", "145120642", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudNotificationsQueueDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotificationsQueueDiscovery
    l0:Exec(19, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|464261593", "464261593", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudNotificationsQueueWarning", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotificationsQueueWarning
    l0:Exec(22, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1906650295", "1906650295", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudObjective", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudObjective
    l0:Exec(23, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1695610894", "1695610894", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudObjectiveRewards", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudObjectiveRewards
    l0:Exec(24, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|414797955", "414797955", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudOpenWorld", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudOpenWorld
    l0:Exec(25, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|486260035", "486260035", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.Interaction", clone:GetLuaBox(), l0:GetLuaBox());
    -- Interaction
    l0:Exec(29, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|9923055", "9923055", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.Cinematic", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cinematic
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|570533497", "570533497", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.AreaMessage", clone:GetLuaBox(), l0:GetLuaBox());
    -- AreaMessage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|780603647", "780603647", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudAutodriveStatus", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudAutodriveStatus
    l0:Exec(9, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|410676828", "410676828", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.EnergyGauge", clone:GetLuaBox(), l0:GetLuaBox());
    -- EnergyGauge
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|802555152", "802555152", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HelmetMask", clone:GetLuaBox(), l0:GetLuaBox());
    -- HelmetMask
    l0:Exec(6, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1028925956", "1028925956", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.Hiring", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hiring
    l0:Exec(7, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1868398701", "1868398701", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudGunsForHire", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudGunsForHire
    l0:Exec(12, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|2065895689", "2065895689", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudNotifGFH", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotifGFH
    l0:Exec(16, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1947504659", "1947504659", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.Reputation", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reputation
    l0:Exec(36, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1879394206", "1879394206", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.Looting", clone:GetLuaBox(), l0:GetLuaBox());
    -- Looting
    l0:Exec(30, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|80684617", "80684617", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudChallenge", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudChallenge
    l0:Exec(10, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1108046126", "1108046126", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudPerkPoints", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudPerkPoints
    l0:Exec(27, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|892791636", "892791636", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudOutpostSuccess", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudOutpostSuccess
    l0:Exec(26, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|909044954", "909044954", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.HudSurvivalInstinct", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudSurvivalInstinct
    l0:Exec(28, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|29831275", "29831275", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.Tutorial", clone:GetLuaBox(), l0:GetLuaBox());
    -- Tutorial
    l0:Exec(41, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|530353873", "530353873", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.MissionGiver", clone:GetLuaBox(), l0:GetLuaBox());
    -- MissionGiver
    l0:Exec(31, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|921223582", "921223582", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.DetectionMeter", clone:GetLuaBox(), l0:GetLuaBox());
    -- DetectionMeter
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1116201047", "1116201047", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.RepairBar", clone:GetLuaBox(), l0:GetLuaBox());
    -- RepairBar
    l0:Exec(35, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|226577246", "226577246", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.PlayerBuffs", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayerBuffs
    l0:Exec(34, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_10();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|611562299", "611562299", "_FadeToBlack_Activate", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_10.TopCenterTimer", clone:GetLuaBox(), l0:GetLuaBox());
    -- TopCenterTimer
    l0:Exec(39, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_12_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_OnceOnly_v3_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|2011245508", "2011245508", "_FadeToBlack_Activate", "box_OnceOnly_v3_12.Out", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_25_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1632079944", "1632079944", "_FadeToBlack_Activate", "box_Compare_Boolean_25.A_is_True", "box_OutputOrder_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_26_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_NarrativeFade_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1620424647", "1620424647", "_FadeToBlack_Activate", "box_NarrativeFade_26.FadedIn", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_26_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_59();
    l0 = self.box_NarrativeFade_26;
    l1 = self.box_InputPriorityModifier_v4_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|12405992", "12405992", "_FadeToBlack_Activate", "box_NarrativeFade_26.FadedOut", "box_InputPriorityModifier_v4_59.Set", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_50();
    l0 = self.box_MultipleOR_52;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1439846612", "1439846612", "_FadeToBlack_Activate", "box_MultipleOR_52.Out", "box_Simple_Node_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_27_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_27();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|590109196", "590109196", "_FadeToBlack_Activate", "box_MissionBlockLayer_27.Deactivated", "box_MissionBlockLayer_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_27_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|2050433640", "2050433640", "_FadeToBlack_Activate", "box_MissionBlockLayer_27.Disabled", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IsPlayerInQTE_49_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/IsPlayerInQTE.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|445482590", "445482590", "_FadeToBlack_Activate", "box_IsPlayerInQTE_49.False", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsPlayerInQTE_49_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/IsPlayerInQTE.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerInQTEListener_53();
    l0 = self.box_PlayerInQTEListener_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|661346084", "661346084", "_FadeToBlack_Activate", "box_IsPlayerInQTE_49.True", "box_PlayerInQTEListener_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_NarrativeHideVehicles_16_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_NarrativeHideVehicles_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|932905556", "932905556", "_FadeToBlack_Activate", "box_NarrativeHideVehicles_16.Removed", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_37()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|175306820");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
                [2] = self.f_box_OutputOrder_v2_43_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_59()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|213202983");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_47_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_47_Yes,
    });
    params = {
        -- ent,
        [4] = self.eTeleportDestination_Client,
    };
    return params;
end;

function export:OnEnter_box_PlayerInQTEListener_51()
    local params;
    DrawTextToScreen("Comment: PLAYER 1 QTE LISTENER", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayerInQTEListener')-- Comment: PLAYER 1 QTE LISTENER");
    params = {
        -- autoDisable,
        [0] = true,
        -- player,
        [1] = self.ePlayer,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|259403554");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 41,
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
                [12] = self.f_box_OutputOrder_v2_5_Out_12,
                [13] = self.f_box_OutputOrder_v2_5_Out_13,
                [14] = self.f_box_OutputOrder_v2_5_Out_14,
                [15] = self.f_box_OutputOrder_v2_5_Out_15,
                [16] = self.f_box_OutputOrder_v2_5_Out_16,
                [17] = self.f_box_OutputOrder_v2_5_Out_17,
                [18] = self.f_box_OutputOrder_v2_5_Out_18,
                [19] = self.f_box_OutputOrder_v2_5_Out_19,
                [20] = self.f_box_OutputOrder_v2_5_Out_20,
                [21] = self.f_box_OutputOrder_v2_5_Out_21,
                [22] = self.f_box_OutputOrder_v2_5_Out_22,
                [23] = self.f_box_OutputOrder_v2_5_Out_23,
                [24] = self.f_box_OutputOrder_v2_5_Out_24,
                [25] = self.f_box_OutputOrder_v2_5_Out_25,
                [26] = self.f_box_OutputOrder_v2_5_Out_26,
                [27] = self.f_box_OutputOrder_v2_5_Out_27,
                [28] = self.f_box_OutputOrder_v2_5_Out_28,
                [29] = self.f_box_OutputOrder_v2_5_Out_29,
                [30] = self.f_box_OutputOrder_v2_5_Out_30,
                [31] = self.f_box_OutputOrder_v2_5_Out_31,
                [32] = self.f_box_OutputOrder_v2_5_Out_32,
                [33] = self.f_box_OutputOrder_v2_5_Out_33,
                [34] = self.f_box_OutputOrder_v2_5_Out_34,
                [37] = self.f_box_OutputOrder_v2_5_Out_37,
                [38] = self.f_box_OutputOrder_v2_5_Out_38,
                [39] = self.f_box_OutputOrder_v2_5_Out_39,
                [40] = self.f_box_OutputOrder_v2_5_Out_40,
            },
            count = 41,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_23()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = self.eTeleportDestination,
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|299289531");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|366061976");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_32_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_32_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = self.Load_MissionBlockID,
        -- missionLayerId,
        [1] = self.Unload_MissionLayerID,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|367165408");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_63_Out,
    });
    params = {
        -- Float,
        [0] = 2,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|370722588");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayerLookAtModifier_v3_33()
    local params;
    params = {
        -- blendOutTime,
        [0] = 0.1,
        -- blendTime,
        [1] = 0.1,
        -- lockPlayer,
        [2] = true,
        -- lockTime,
        [3] = 2,
        -- lookTarget,
        [4] = self.eLookAtTarget,
        -- Pawns,
        [5] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_14()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015271283550565",
    };
    return params;
end;

function export:OnEnter_box_IsPlayerInQTE_56()
    local params, l0;
    DrawTextToScreen("Comment: IS PLAYER 1 IN QTE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'IsPlayerInQTE')-- Comment: IS PLAYER 1 IN QTE");
    l0 = Boxes[GetPathID("Domino/System/Player/IsPlayerInQTE.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPlayerInQTE_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|442545841");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsPlayerInQTE_56_False,
        -- True,
        [1] = self.f_box_IsPlayerInQTE_56_True,
    });
    params = {
        -- pawn,
        [0] = self.ePlayer,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_2()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "vault",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|520094626");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|542757319");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|743123961");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_64_Out,
    });
    params = {
        -- Float,
        [0] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_60()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_19()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eVehicleTrigger,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|960596202");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
                [2] = self.f_box_OutputOrder_v2_35_Out_2,
                [3] = self.f_box_OutputOrder_v2_35_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|995801874");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_20_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_20_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Unload_MissionLayerID_Instant,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1155212484");
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

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1242833861");
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

function export:OnEnter_box_Delay_v5_24()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_PlayerInQTEListener_53()
    local params;
    DrawTextToScreen("Comment: PLAYER 2 QTE LISTENER", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayerInQTEListener')-- Comment: PLAYER 2 QTE LISTENER");
    params = {
        -- autoDisable,
        [0] = true,
        -- player,
        [1] = self.ePlayer2,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_44()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_61()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870702481",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1429574265");
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

function export:OnEnter_box_IgnoreSignal_v2_45()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "slide",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1569581492");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_22_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_22_Yes,
    });
    params = {
        -- ent,
        [4] = self.eVehicleTrigger,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_62()
    local params, l0;
    DrawTextToScreen("Comment: Heal Nana", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'HealthModifier_v2')-- Comment: Heal Nana");
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1572488553");
    l0:SetConnections({
        -- OnRemoveCritical,
        [2] = self.f_box_HealthModifier_v2_62_OnRemoveCritical,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self.eNana,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_57()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.fDelay,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_29()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_48()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = self.eTeleportDestination_Client,
        -- Destination,
        [1] = self.eTeleportDestination,
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1671852061");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeGetVehiclesInTrigger_17()
    local params;
    params = {
        -- Trigger,
        [0] = self.eVehicleTrigger,
        -- Vehicles,
        [1] = self.iVehiclesinTrigger,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_42()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "crouch_click",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1781831290");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_34_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_34_Yes,
    });
    params = {
        -- missionBlockLayerId,
        [10] = self.Unload_MissionLayerID,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1806338975");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1843384113");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_28_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = self.Load_MissionBlockID,
        -- missionLayerId,
        [1] = self.Load_MissionLayerID,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1855334654");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_21_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_21_Yes,
    });
    params = {
        -- ent,
        [4] = self.eTeleportDestination,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|1857895452");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 41,
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
                [3] = self.f_box_OutputOrder_v2_8_Out_3,
                [4] = self.f_box_OutputOrder_v2_8_Out_4,
                [5] = self.f_box_OutputOrder_v2_8_Out_5,
                [6] = self.f_box_OutputOrder_v2_8_Out_6,
                [7] = self.f_box_OutputOrder_v2_8_Out_7,
                [8] = self.f_box_OutputOrder_v2_8_Out_8,
                [9] = self.f_box_OutputOrder_v2_8_Out_9,
                [10] = self.f_box_OutputOrder_v2_8_Out_10,
                [11] = self.f_box_OutputOrder_v2_8_Out_11,
                [12] = self.f_box_OutputOrder_v2_8_Out_12,
                [13] = self.f_box_OutputOrder_v2_8_Out_13,
                [14] = self.f_box_OutputOrder_v2_8_Out_14,
                [15] = self.f_box_OutputOrder_v2_8_Out_15,
                [16] = self.f_box_OutputOrder_v2_8_Out_16,
                [17] = self.f_box_OutputOrder_v2_8_Out_17,
                [18] = self.f_box_OutputOrder_v2_8_Out_18,
                [19] = self.f_box_OutputOrder_v2_8_Out_19,
                [20] = self.f_box_OutputOrder_v2_8_Out_20,
                [21] = self.f_box_OutputOrder_v2_8_Out_21,
                [22] = self.f_box_OutputOrder_v2_8_Out_22,
                [23] = self.f_box_OutputOrder_v2_8_Out_23,
                [24] = self.f_box_OutputOrder_v2_8_Out_24,
                [25] = self.f_box_OutputOrder_v2_8_Out_25,
                [26] = self.f_box_OutputOrder_v2_8_Out_26,
                [27] = self.f_box_OutputOrder_v2_8_Out_27,
                [28] = self.f_box_OutputOrder_v2_8_Out_28,
                [29] = self.f_box_OutputOrder_v2_8_Out_29,
                [30] = self.f_box_OutputOrder_v2_8_Out_30,
                [31] = self.f_box_OutputOrder_v2_8_Out_31,
                [32] = self.f_box_OutputOrder_v2_8_Out_32,
                [33] = self.f_box_OutputOrder_v2_8_Out_33,
                [34] = self.f_box_OutputOrder_v2_8_Out_34,
                [37] = self.f_box_OutputOrder_v2_8_Out_37,
                [38] = self.f_box_OutputOrder_v2_8_Out_38,
                [39] = self.f_box_OutputOrder_v2_8_Out_39,
                [40] = self.f_box_OutputOrder_v2_8_Out_40,
            },
            count = 41,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|2006691866");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_25_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Player_CantMove,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_26()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|2039010764");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_27_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_27_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = self.Load_MissionBlockID,
        -- missionLayerId,
        [1] = self.Unload_MissionLayerID,
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_13()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015271178428520",
    };
    return params;
end;

function export:OnEnter_box_IsPlayerInQTE_49()
    local params, l0;
    DrawTextToScreen("Comment: IS PLAYER 2 IN QTE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'IsPlayerInQTE')-- Comment: IS PLAYER 2 IN QTE");
    l0 = Boxes[GetPathID("Domino/System/Player/IsPlayerInQTE.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPlayerInQTE_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_FadeToBlack_Activate|2092170089");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsPlayerInQTE_49_False,
        -- True,
        [1] = self.f_box_IsPlayerInQTE_49_True,
    });
    params = {
        -- pawn,
        [0] = self.ePlayer2,
    };
    return params;
end;

function export:OnEnter_box_NarrativeHideVehicles_16()
    local params;
    params = {
        -- Vehicles,
        [0] = self.iVehiclesinTrigger,
    };
    return params;
end;

function export:OnExit_box_SetFloat_v2_63_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.fDelay = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_64_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.fDelay = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_61_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_61;
    self.eNana = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_54_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_54;
    self.ePlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_54_PlayerAdded()
    local l0;
    l0 = self.box_CoopActivePlayers_54;
    self.ePlayerAddedOrRemoved = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_54_PlayerRemoved()
    local l0;
    l0 = self.box_CoopActivePlayers_54;
    self.ePlayerAddedOrRemoved = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_54_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_54;
    self.ePlayer = l0:GetDataOutValue(0);
    self.ePlayer2 = l0:GetDataOutValue(1);
end;

-- Empty out anchor definitions
function export:End()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="End" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eLookAtTarget" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eTeleportDestination" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eTeleportDestination_Client" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eVehicleTrigger" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Load_MissionBlockID" AnchorDynType="0" DataTypeID="missionblock" />
		<DataIn Name="Load_MissionLayerID" AnchorDynType="0" DataTypeID="missionblocklayer" />
		<DataIn Name="Player_CantMove" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="Unload_MissionLayerID" AnchorDynType="0" DataTypeID="missionblocklayer" />
		<DataIn Name="Unload_MissionLayerID_Instant" AnchorDynType="0" DataTypeID="bool" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
