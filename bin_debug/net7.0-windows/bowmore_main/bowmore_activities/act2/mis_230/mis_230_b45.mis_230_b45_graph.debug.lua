LUAC�> -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_230/mis_230_b45.domino
-- User graph: MIS_230_B45_graph
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Coop/AllPlayers/UnlimitedAmmo_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/ExtinguishFireWithinRange.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayerEdenPerksModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/SlowMotion.lua");
        cboxRes:RegisterBox("Domino/System/Player/WieldInventory_v5.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_BearIllusion.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_Reloaded.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SetTimeOfDay.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SwitchAmmoType.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B45.MIS_230_B45_Bonfires.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3887617476.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1208466061.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1959584094.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1666472216.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B45.MIS_230_B45_graph.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "PlayDialog",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FinishedOrInterrupted",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/InventoryItemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Refill",
            },
            [2] = {
                name = "RefillClip",
            },
            [3] = {
                name = "Remove",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [2] = {
                name = "players",
                type = "group",
            },
            [3] = {
                name = "quantity",
                type = "int",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/Player/ExtinguishFireWithinRange.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Extinguish",
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
                name = "players",
                type = "group",
            },
            [1] = {
                name = "Range",
                type = "float",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/PlayerEdenPerksModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ForceActivateChameleon",
            },
            [1] = {
                name = "ForceActivateWrath",
            },
            [2] = {
                name = "ForceDeactivateAllPerks",
            },
            [3] = {
                name = "ForceDeactivateChameleon",
            },
            [4] = {
                name = "ForceDeactivateWrath",
            },
        },
        controlInCount = 5,
        controlOut = {
            [0] = {
                name = "AllPerksForceDeactivated",
                delayed = false,
            },
            [1] = {
                name = "ChameleonForceActivated",
                delayed = false,
            },
            [2] = {
                name = "ChameleonForceDeactivated",
                delayed = false,
            },
            [3] = {
                name = "WrathForceActivated",
                delayed = false,
            },
            [4] = {
                name = "WrathForceDeactivated",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/SlowMotion.lua")] = {
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
                name = "Input",
                type = "float",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/WieldInventory_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LuaDraw",
            },
            [1] = {
                name = "LuaHolster",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Drawn",
                delayed = false,
            },
            [1] = {
                name = "Holstered",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "itemDescriptorId",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterId",
                type = "genericdb",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_BearIllusion.debug.lua")] = {
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
                name = "BearKilled",
                delayed = false,
            },
            [1] = {
                name = "Finished",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "InitialSpawnDelay",
                type = "float",
            },
            [1] = {
                name = "MaxDistanceSpawn",
                type = "float",
            },
            [2] = {
                name = "MinDistanceSpawn",
                type = "float",
            },
            [3] = {
                name = "RespawnDelay",
                type = "float",
            },
            [4] = {
                name = "TimeToParticle",
                type = "float",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_Reloaded.debug.lua")] = {
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
                name = "isDay",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SetTimeOfDay.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDay",
            },
            [1] = {
                name = "SetNight",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Finished",
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
                name = "Minute_Increment",
                type = "int",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SwitchAmmoType.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Fire",
            },
            [1] = {
                name = "Normal",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "out",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B45.MIS_230_B45_Bonfires.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "BoneFire_GRP",
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
    self._name = "MIS_230_B45_graph";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph";
    self.ePlayer = nil;
    self.iNumIllusionKilled = 0;
    self.iNumberOfIllusionKilled = 0;
    self.fParticleDelay = 1;
    self.gPlayers = nil;
    self.box_ManagePlayerInventory_45 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|130208237");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ManagePlayerInventory_45_Removed,
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|243842859");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|284922071");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|315957661");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_Custom_PlayDialog_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
    l0 = self.box_Custom_PlayDialog_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_PlayDialog_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|364065291");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Custom_PlayDialog_15_Started,
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|369340349");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_IgnoreSignal_v2_38 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|427475385");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_38_Enabled,
    });
    self.box_WieldInventory_v5_25 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|518158273");
    l0:SetConnections({
        -- Holstered,
        [1] = self.f_box_WieldInventory_v5_25_Holstered,
    });
    self.box_IgnoreSignal_v2_24 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|577448199");
    l0:SetConnections({
    });
    self.box_MIS_230_B45_Bonfires_8 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B45.MIS_230_B45_Bonfires.debug.lua");
    l0 = self.box_MIS_230_B45_Bonfires_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_B45_Bonfires_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|658137119");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_230_B45_Bonfires_8_Finished,
    });
    self.box_WieldInventory_v5_13 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|825298052");
    l0:SetConnections({
        -- Holstered,
        [1] = self.f_box_WieldInventory_v5_13_Holstered,
    });
    self.box_PlayerEdenPerksModifier_35 = cbox:CreateBox("Domino/System/Player/PlayerEdenPerksModifier.lua");
    l0 = self.box_PlayerEdenPerksModifier_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerEdenPerksModifier_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|835692541");
    l0:SetConnections({
        -- WrathForceActivated,
        [3] = self.f_box_PlayerEdenPerksModifier_35_WrathForceActivated,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|853563046");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_MIS_230_COMMON_BearIllusion_48 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_BearIllusion.debug.lua");
    l0 = self.box_MIS_230_COMMON_BearIllusion_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_COMMON_BearIllusion_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1011406964");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1032666080");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_UnlimitedAmmo_v2_39 = cbox:CreateBox("Domino/System/Coop/AllPlayers/UnlimitedAmmo_v2.lua");
    l0 = self.box_UnlimitedAmmo_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlimitedAmmo_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1078186767");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UnlimitedAmmo_v2_39_Enabled,
    });
    self.box_MIS_230_COMMON_SetTimeOfDay_18 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SetTimeOfDay.debug.lua");
    l0 = self.box_MIS_230_COMMON_SetTimeOfDay_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_COMMON_SetTimeOfDay_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1241134740");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_230_COMMON_SetTimeOfDay_18_Finished,
    });
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1274590514");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1282112212");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_MIS_230_COMMON_SwitchAmmoType_44 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SwitchAmmoType.debug.lua");
    l0 = self.box_MIS_230_COMMON_SwitchAmmoType_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_COMMON_SwitchAmmoType_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1491630756");
    l0:SetConnections({
        -- out,
        [0] = self.f_box_MIS_230_COMMON_SwitchAmmoType_44_out,
    });
    self.box_PlayerEdenPerksModifier_23 = cbox:CreateBox("Domino/System/Player/PlayerEdenPerksModifier.lua");
    l0 = self.box_PlayerEdenPerksModifier_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerEdenPerksModifier_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1492090954");
    l0:SetConnections({
        -- WrathForceActivated,
        [3] = self.f_box_PlayerEdenPerksModifier_23_WrathForceActivated,
    });
    self.box_ManagePlayerInventory_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1611908683");
    l0:SetConnections({
        -- Cleared,
        [0] = self.f_box_ManagePlayerInventory_14_Cleared,
    });
    self.box_ManagePlayerInventory_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1693848214");
    l0:SetConnections({
        -- Restricted,
        [2] = self.f_box_ManagePlayerInventory_20_Restricted,
    });
    self.box_CoopActivePlayers_19 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1716145646");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_19_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_19_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_19_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_19_TwoPlayers,
    });
    self.box_GunsForHireSystemModifier_26 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1724485462");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_26_Disabled,
    });
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1757235663");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_Music_Quest_v2_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1781387608");
    l0:SetConnections({
    });
    self.box_MIS_230_COMMON_Reloaded_47 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_Reloaded.debug.lua");
    l0 = self.box_MIS_230_COMMON_Reloaded_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_COMMON_Reloaded_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1966275131");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_230_COMMON_Reloaded_47_Out,
    });
    self.box_Custom_PlayDialog_34 = cbox:CreateBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
    l0 = self.box_Custom_PlayDialog_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_PlayDialog_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|2012858294");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Custom_PlayDialog_34_Started,
    });
    self.box_InventoryItemModifier_9 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|2082754318");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_9_Out,
    });
    self.box_InventoryItemModifier_22 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|2138457054");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_22_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1167613712", "1167613712", "MIS_230_B45_graph", "In", "box_ActivityAcknowledgeGate_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_49_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Custom_PlayDialog_34();
    l0 = self.box_Custom_PlayDialog_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|711361385", "711361385", "MIS_230_B45_graph", "box_Simple_Node_49.Out", "box_Custom_PlayDialog_34.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|849382409", "849382409", "MIS_230_B45_graph", "box_Simple_Node_49.Out", "box_Delay_v5_11.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ManagePlayerInventory_45_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_ManagePlayerInventory_14();
    l0 = self.box_ManagePlayerInventory_45;
    l1 = self.box_ManagePlayerInventory_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|2048534647", "2048534647", "MIS_230_B45_graph", "box_ManagePlayerInventory_45.Removed", "box_ManagePlayerInventory_14.ClearRestriction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ClearRestriction
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SlowMotion_42();
    l0 = self.box_Delay_v5_41;
    l1 = Boxes[GetPathID("Domino/System/Player/SlowMotion.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|2121633976", "2121633976", "MIS_230_B45_graph", "box_Delay_v5_41.TimeElapsed", "box_SlowMotion_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1936303314", "1936303314", "MIS_230_B45_graph", "box_MultipleOR_4.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SlowMotion_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/SlowMotion.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1934194109", "1934194109", "MIS_230_B45_graph", "box_SlowMotion_42.Out", "box_ActivityEnd_7.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ManagePlayerInventory_45();
    l0 = self.box_Delay_v5_10;
    l1 = self.box_ManagePlayerInventory_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1647496083", "1647496083", "MIS_230_B45_graph", "box_Delay_v5_10.TimeElapsed", "box_ManagePlayerInventory_45.RemoveItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveItems
    l1:Exec(2, params);
end;

function export:f_box_Custom_PlayDialog_15_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_Custom_PlayDialog_15;
    l1 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1190652110", "1190652110", "MIS_230_B45_graph", "box_Custom_PlayDialog_15.Started", "box_Delay_v5_17.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_Delay_v5_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1520463853", "1520463853", "MIS_230_B45_graph", "box_Delay_v5_16.TimeElapsed", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_38_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_IgnoreSignal_v2_38;
    l1 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|648530379", "648530379", "MIS_230_B45_graph", "box_IgnoreSignal_v2_38.Enabled", "box_Delay_v5_41.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_WieldInventory_v5_25_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_22();
    l0 = self.box_WieldInventory_v5_25;
    l1 = self.box_InventoryItemModifier_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1551365515", "1551365515", "MIS_230_B45_graph", "box_WieldInventory_v5_25.Holstered", "box_InventoryItemModifier_22.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_MIS_230_B45_Bonfires_8_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_MIS_230_B45_Bonfires_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|342844173", "342844173", "MIS_230_B45_graph", "box_MIS_230_B45_Bonfires_8.Finished", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_5_Out()
    local l0;
    self:OnExit_box_GetLocalPlayer_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    l0 = self.box_UnlimitedAmmo_v2_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1476406231", "1476406231", "MIS_230_B45_graph", "box_GetLocalPlayer_v2_5.Out", "box_UnlimitedAmmo_v2_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_WieldInventory_v5_13_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_9();
    l0 = self.box_WieldInventory_v5_13;
    l1 = self.box_InventoryItemModifier_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|198760541", "198760541", "MIS_230_B45_graph", "box_WieldInventory_v5_13.Holstered", "box_InventoryItemModifier_9.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_PlayerEdenPerksModifier_35_WrathForceActivated()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_38();
    l0 = self.box_PlayerEdenPerksModifier_35;
    l1 = self.box_IgnoreSignal_v2_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1421234980", "1421234980", "MIS_230_B45_graph", "box_PlayerEdenPerksModifier_35.WrathForceActivated", "box_IgnoreSignal_v2_38.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_2();
    l0 = self.box_ActivityInitialized_1;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|431954174", "431954174", "MIS_230_B45_graph", "box_ActivityInitialized_1.Out", "box_GetPlayerGroup_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|594265866", "594265866", "MIS_230_B45_graph", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_230_COMMON_Reloaded_47();
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MIS_230_COMMON_Reloaded_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|427592553", "427592553", "MIS_230_B45_graph", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MIS_230_COMMON_Reloaded_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UnlimitedAmmo_v2_39_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_26();
    l0 = self.box_UnlimitedAmmo_v2_39;
    l1 = self.box_GunsForHireSystemModifier_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1509489302", "1509489302", "MIS_230_B45_graph", "box_UnlimitedAmmo_v2_39.Enabled", "box_GunsForHireSystemModifier_26.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_MIS_230_COMMON_SetTimeOfDay_18_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_MIS_230_COMMON_SetTimeOfDay_18;
    l1 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1881074821", "1881074821", "MIS_230_B45_graph", "box_MIS_230_COMMON_SetTimeOfDay_18.Finished", "box_Delay_v5_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ExtinguishFireWithinRange_27();
    l0 = self.box_Delay_v5_11;
    l1 = Boxes[GetPathID("Domino/System/Player/ExtinguishFireWithinRange.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|86777390", "86777390", "MIS_230_B45_graph", "box_Delay_v5_11.TimeElapsed", "box_ExtinguishFireWithinRange_27.Extinguish", l0:GetLuaBox(), l1:GetLuaBox());
    -- Extinguish
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SlowMotion_36();
    l0 = self.box_Delay_v5_17;
    l1 = Boxes[GetPathID("Domino/System/Player/SlowMotion.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|347368321", "347368321", "MIS_230_B45_graph", "box_Delay_v5_17.TimeElapsed", "box_SlowMotion_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_2_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|681961763", "681961763", "MIS_230_B45_graph", "box_GetPlayerGroup_v2_2.Out", "box_GetLocalPlayer_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_230_COMMON_BearIllusion_48();
    l0 = self.box_MIS_230_COMMON_BearIllusion_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|209510925", "209510925", "MIS_230_B45_graph", "box_OutputOrder_v2_32.Out", "box_MIS_230_COMMON_BearIllusion_48.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1460056216", "1460056216", "MIS_230_B45_graph", "box_OutputOrder_v2_32.Out", "box_Delay_v5_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_230_COMMON_SwitchAmmoType_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|382315237", "382315237", "MIS_230_B45_graph", "box_OutputOrder_v2_30.Out", "box_MIS_230_COMMON_SwitchAmmoType_44.Fire", clone:GetLuaBox(), l0:GetLuaBox());
    -- Fire
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_230_COMMON_BearIllusion_48();
    l0 = self.box_MIS_230_COMMON_BearIllusion_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1070449234", "1070449234", "MIS_230_B45_graph", "box_OutputOrder_v2_30.Out", "box_MIS_230_COMMON_BearIllusion_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_12();
    l0 = self.box_Music_Quest_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|494301242", "494301242", "MIS_230_B45_graph", "box_OutputOrder_v2_30.Out", "box_Music_Quest_v2_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MIS_230_COMMON_SwitchAmmoType_44_out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_37();
    l0 = self.box_MIS_230_COMMON_SwitchAmmoType_44;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|571703497", "571703497", "MIS_230_B45_graph", "box_MIS_230_COMMON_SwitchAmmoType_44.out", "box_Simple_Node_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerEdenPerksModifier_23_WrathForceActivated()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_24();
    l0 = self.box_PlayerEdenPerksModifier_23;
    l1 = self.box_IgnoreSignal_v2_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1232325006", "1232325006", "MIS_230_B45_graph", "box_PlayerEdenPerksModifier_23.WrathForceActivated", "box_IgnoreSignal_v2_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ManagePlayerInventory_14_Cleared()
    local params, l0, l1;
    params = self:OnEnter_box_ManagePlayerInventory_20();
    l0 = self.box_ManagePlayerInventory_14;
    l1 = self.box_ManagePlayerInventory_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1394089224", "1394089224", "MIS_230_B45_graph", "box_ManagePlayerInventory_14.Cleared", "box_ManagePlayerInventory_20.RestrictItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- RestrictItems
    l1:Exec(3, params);
end;

function export:f_box_ManagePlayerInventory_20_Restricted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_ManagePlayerInventory_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1088864123", "1088864123", "MIS_230_B45_graph", "box_ManagePlayerInventory_20.Restricted", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_19_PlayerAdded()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_19_PlayerAdded();
    params = self:OnEnter_box_WieldInventory_v5_25();
    l0 = self.box_CoopActivePlayers_19;
    l1 = self.box_WieldInventory_v5_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|335670353", "335670353", "MIS_230_B45_graph", "box_CoopActivePlayers_19.PlayerAdded", "box_WieldInventory_v5_25.LuaHolster", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaHolster
    l1:Exec(1, params);
end;

function export:f_box_CoopActivePlayers_19_PlayerRemoved()
    self:OnExit_box_CoopActivePlayers_19_PlayerRemoved();
end;

function export:f_box_SlowMotion_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/SlowMotion.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerEdenPerksModifier_35();
    l0 = self.box_PlayerEdenPerksModifier_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1349612419", "1349612419", "MIS_230_B45_graph", "box_SlowMotion_36.Out", "box_PlayerEdenPerksModifier_35.ForceActivateWrath", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceActivateWrath
    l0:Exec(1, params);
end;

function export:f_box_GunsForHireSystemModifier_26_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_49();
    l0 = self.box_GunsForHireSystemModifier_26;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1353075728", "1353075728", "MIS_230_B45_graph", "box_GunsForHireSystemModifier_26.Disabled", "box_Simple_Node_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_13();
    l0 = self.box_WieldInventory_v5_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|2097493436", "2097493436", "MIS_230_B45_graph", "box_OutputOrder_v2_21.Out", "box_WieldInventory_v5_13.LuaHolster", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaHolster
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1170974866", "1170974866", "MIS_230_B45_graph", "box_OutputOrder_v2_21.Out", "box_CoopActivePlayers_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_PlayDialog_15();
    l0 = self.box_Delay_v5_43;
    l1 = self.box_Custom_PlayDialog_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|361123651", "361123651", "MIS_230_B45_graph", "box_Delay_v5_43.TimeElapsed", "box_Custom_PlayDialog_15.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_37_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_230_B45_Bonfires_8();
    l0 = self.box_MIS_230_B45_Bonfires_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1226764290", "1226764290", "MIS_230_B45_graph", "box_Simple_Node_37.Out", "box_MIS_230_B45_Bonfires_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_MIS_230_COMMON_Reloaded_47_Out()
    local l0, l1;
    l0 = self.box_MIS_230_COMMON_Reloaded_47;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|488394676", "488394676", "MIS_230_B45_graph", "box_MIS_230_COMMON_Reloaded_47.Out", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Custom_PlayDialog_34_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_Custom_PlayDialog_34;
    l1 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1231160266", "1231160266", "MIS_230_B45_graph", "box_Custom_PlayDialog_34.Started", "box_Delay_v5_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_InventoryItemModifier_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_230_COMMON_SetTimeOfDay_18();
    l0 = self.box_InventoryItemModifier_9;
    l1 = self.box_MIS_230_COMMON_SetTimeOfDay_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|420824611", "420824611", "MIS_230_B45_graph", "box_InventoryItemModifier_9.Out", "box_MIS_230_COMMON_SetTimeOfDay_18.SetDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDay
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerEdenPerksModifier_23();
    l0 = self.box_InventoryItemModifier_22;
    l1 = self.box_PlayerEdenPerksModifier_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|361399021", "361399021", "MIS_230_B45_graph", "box_InventoryItemModifier_22.Out", "box_PlayerEdenPerksModifier_23.ForceActivateWrath", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceActivateWrath
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|@beat_start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_49_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_45()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015355054638551",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_SlowMotion_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/SlowMotion.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SlowMotion_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|309760549");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SlowMotion_42_Out,
    });
    params = {
        -- Input,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Custom_PlayDialog_15()
    local params;
    params = {
        -- Group,
        [0] = self.gPlayers,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1959584094",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|382990468");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_38()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "toggle_edens_wrath",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_25()
    local params, l0;
    l0 = self.box_CoopActivePlayers_19;
    params = {
        -- itemDescriptorId,
        [0] = "9015351296631242",
        -- pawns,
        [2] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_24()
    local params, l0;
    l0 = self.box_CoopActivePlayers_19;
    params = {
        -- pawns,
        [0] = l0:GetDataOutValue(2),
        -- signal,
        [1] = "toggle_edens_wrath",
    };
    return params;
end;

function export:OnEnter_box_MIS_230_B45_Bonfires_8()
    local params;
    params = {
        -- BoneFire_GRP,
        [0] = "#8B1165D7",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|697330034");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_13()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015351296631242",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayerEdenPerksModifier_35()
    local params;
    params = {
        -- players,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ExtinguishFireWithinRange_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ExtinguishFireWithinRange.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishFireWithinRange_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|890307251");
    l0:SetConnections({
    });
    params = {
        -- players,
        [0] = "#ED455357",
        -- Range,
        [1] = 50,
    };
    return params;
end;

function export:OnEnter_box_MIS_230_COMMON_BearIllusion_48()
    local params;
    params = {
        -- InitialSpawnDelay,
        [0] = 2,
        -- MaxDistanceSpawn,
        [1] = 20,
        -- MinDistanceSpawn,
        [2] = 5,
        -- RespawnDelay,
        [3] = 5,
        -- TimeToParticle,
        [4] = 0,
    };
    return params;
end;

function export:OnEnter_box_MIS_230_COMMON_SetTimeOfDay_18()
    local params;
    params = {
        -- Minute_Increment,
        [0] = 8,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1294515904");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1319127259");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1445418488");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
                [5] = self.f_box_OutputOrder_v2_30_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayerEdenPerksModifier_23()
    local params, l0;
    l0 = self.box_CoopActivePlayers_19;
    params = {
        -- players,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_14()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015349424257715",
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_20()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015268885567900",
    };
    return params;
end;

function export:OnEnter_box_SlowMotion_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/SlowMotion.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SlowMotion_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1720427254");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SlowMotion_36_Out,
    });
    params = {
        -- Input,
        [0] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_26()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1746121545");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_43()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_12()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 4,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1666472216",
        -- StopEvent,
        [7] = "1208466061",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_graph|1820801294");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_230_COMMON_Reloaded_47()
    local params;
    params = {
        -- isDay,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Custom_PlayDialog_34()
    local params;
    DrawTextToScreen("Comment: DLG : The Fire will cleanse the soul.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_PlayDialog')-- Comment: DLG : The Fire will cleanse the soul.");
    params = {
        -- Group,
        [0] = self.gPlayers,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3887617476",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_9()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015351296631242",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_22()
    local params, l0;
    l0 = self.box_CoopActivePlayers_19;
    params = {
        -- itemDescriptorID,
        [0] = "9015351296631242",
        -- players,
        [2] = l0:GetDataOutValue(2),
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.ePlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_19_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_19;
    l1 = self.box_PlayerEdenPerksModifier_23;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_IgnoreSignal_v2_24;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(2);
    l1 = self.box_InventoryItemModifier_22;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_WieldInventory_v5_25;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_19_PlayerRemoved()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_19;
    l1 = self.box_PlayerEdenPerksModifier_23;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_IgnoreSignal_v2_24;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(2);
    l1 = self.box_InventoryItemModifier_22;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_WieldInventory_v5_25;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(2);
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
