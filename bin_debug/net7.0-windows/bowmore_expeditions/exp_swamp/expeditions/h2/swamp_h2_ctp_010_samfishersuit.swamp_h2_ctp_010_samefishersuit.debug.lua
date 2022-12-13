LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/h2/swamp_h2_ctp_010_samfishersuit.domino
-- User graph: Swamp_H2_CTP_010_SameFisherSuit
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
        cboxRes:RegisterBox("Domino/System/BinkPlayer_v6.lua");
        cboxRes:RegisterBox("Domino/System/BinkPlayerListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/PickupState_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1145800246.bnk]], "CSoundResource");
        cboxRes:LoadResource([[376427751.bnk]], "CSoundResource");
        cboxRes:LoadResource([[ui\singleplayer\video\Expedition_Swamp_h2_SplinterCellEgg.bik]], "CBinkResource");
        cboxRes:LoadResource([[204946029.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2372961566.bnk]], "CSoundResource");
        cboxRes:LoadResource([[674366986.bnk]], "CSoundResource");
        cboxRes:LoadResource([[ui\singleplayer\video\Expedition_Swamp_h2_SplinterCellEggGlitch.bik]], "CBinkResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/H2/Swamp_H2_CTP_010_SamFisherSuit.Swamp_H2_CTP_010_SameFisherSuit.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/PhysicsModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
            },
            [2] = {
                name = "StartPhysics",
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
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/PickupState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsNotPickable",
            },
            [1] = {
                name = "SetAsPickable",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetAsNotPickable",
                delayed = false,
            },
            [1] = {
                name = "OnSetAsPickable",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pickup",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetNumberOfItems",
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
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "numItems",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/StimsEmitter_v2.lua")] = {
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
                name = "StimsEmitter",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    self._name = "Swamp_H2_CTP_010_SameFisherSuit";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit";
    self.Trigger_SMI = "2109368685100573579";
    self.gAllPlayers = nil;
    self.SMIScreen = "2109367823045245323";
    self.GlassDoor = "2108981951795833304";
    self.GlassDoor_EndPOs = "2109366246462994825";
    self.PickupItem_SamFisherSuit = "2108594473735819564";
    self.SuitObjects = "#5DD8F362";
    self.bHasSamFisherSuitOwned = false;
    self.box_ShimmerModifier_v2_45 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|161218272");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_45_Enabled,
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|164394433");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_Delay_v5_22 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|222463121");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_22_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_22_TimeElapsed,
    });
    self.box_PhysicsModifier_14 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|353668024");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_14_Disabled,
    });
    self.box_SoundModifier_v2_10 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|373966043");
    l0:SetConnections({
    });
    self.box_ShimmerModifier_v2_43 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|449758193");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_43_Disabled,
    });
    self.box_MultipleAND_v2_6 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|465998854");
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
        [0] = self.f_box_MultipleAND_v2_6_Out,
    });
    self.box_SoundModifier_v2_46 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|472662222");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_46_Started,
    });
    self.box_SoundModifier_v2_12 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|498734444");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_12_Started,
    });
    self.box_VisibilityModifier_57 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|644329177");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_57_Disabled,
    });
    self.box_VisibilityModifier_34 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|651838570");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_34_Enabled,
    });
    self.box_VisibilityModifier_35 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|679411075");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_35_Disabled,
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|719825723");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_Delay_v5_53 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|870471349");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_53_TimeElapsed,
    });
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|894848021");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_BinkPlayer_v6_11 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|897179858");
    l0:SetConnections({
        -- Played,
        [0] = self.f_box_BinkPlayer_v6_11_Played,
    });
    self.box_ProximityTrigger_v3_25 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|984806371");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_25_Disabled,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_25_Use,
    });
    self.box_EntityStatusListener_36 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1055322882");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_36_Loaded,
    });
    self.box_VisibilityModifier_52 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1108787624");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_52_Disabled,
    });
    self.box_Delay_v5_50 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1124943041");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_50_TimeElapsed,
    });
    self.box_BinkPlayerListener_v3_9 = cbox:CreateBox("Domino/System/BinkPlayerListener_v3.lua");
    l0 = self.box_BinkPlayerListener_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayerListener_v3_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1173521566");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_BinkPlayerListener_v3_9_Enabled,
        -- End,
        [2] = self.f_box_BinkPlayerListener_v3_9_End,
    });
    self.box_SoundModifier_v2_19 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1226266391");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_19_Started,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1228745717");
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
        [0] = self.f_box_MultipleOR_31_Out,
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1393607612");
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
    self.box_PhysicsModifier_33 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1410747398");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhysicsModifier_33_Enabled,
    });
    self.box_PositionModifier_v2_13 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1453082686");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_13_Done,
    });
    self.box_SoundModifier_v2_15 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1497552233");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_15_Started,
    });
    self.box_EntityStatusListener_5 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1522557304");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_5_Loaded,
    });
    self.box_VisibilityModifier_48 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1793331848");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_48_Enabled,
    });
    self.box_EntityStatusListener_21 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1860028807");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_21_Loaded,
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1922540232");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_BinkPlayer_v6_47 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1969948477");
    l0:SetConnections({
        -- Played,
        [0] = self.f_box_BinkPlayer_v6_47_Played,
    });
    self.box_ProximityTrigger_v3_2 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|2053655252");
    l0:SetConnections({
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_2_Use,
    });
    self.box_PhysicsModifier_49 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|2102190585");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhysicsModifier_49_Enabled,
    });
    self.box_PhysicsModifier_54 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|2123494561");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_54_Disabled,
    });
    self.box_BinkPlayerListener_v3_23 = cbox:CreateBox("Domino/System/BinkPlayerListener_v3.lua");
    l0 = self.box_BinkPlayerListener_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayerListener_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|2135049947");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_BinkPlayerListener_v3_23_Enabled,
        -- End,
        [2] = self.f_box_BinkPlayerListener_v3_23_End,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1897331221", "1897331221", "Swamp_H2_CTP_010_SameFisherSuit", "In", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_GetLocalPlayer_v2_42_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_42_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetInventoryItemQuantity_28();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1325372216", "1325372216", "Swamp_H2_CTP_010_SameFisherSuit", "box_GetLocalPlayer_v2_42.Out", "box_GetInventoryItemQuantity_28.GetNumberOfItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetNumberOfItems
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_45_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PickupState_v2_56();
    l0 = self.box_ShimmerModifier_v2_45;
    l1 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1109423259", "1109423259", "Swamp_H2_CTP_010_SameFisherSuit", "box_ShimmerModifier_v2_45.Enabled", "box_PickupState_v2_56.SetAsPickable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsPickable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_13();
    l0 = self.box_Delay_v5_16;
    l1 = self.box_PositionModifier_v2_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1455032590", "1455032590", "Swamp_H2_CTP_010_SameFisherSuit", "box_Delay_v5_16.TimeElapsed", "box_PositionModifier_v2_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_26_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1831362189", "1831362189", "Swamp_H2_CTP_010_SameFisherSuit", "box_Compare_Boolean_26.A_is_False", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_26_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|238880031", "238880031", "Swamp_H2_CTP_010_SameFisherSuit", "box_Compare_Boolean_26.A_is_True", "box_Delay_v5_22.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_35();
    l0 = self.box_VisibilityModifier_35;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1920634880", "1920634880", "Swamp_H2_CTP_010_SameFisherSuit", "box_OutputOrder_v2_20.Out", "box_VisibilityModifier_35.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_27();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1016549792", "1016549792", "Swamp_H2_CTP_010_SameFisherSuit", "box_OutputOrder_v2_20.Out", "box_Compare_Boolean_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1809282851", "1809282851", "Swamp_H2_CTP_010_SameFisherSuit", "box_OutputOrder_v2_20.Out", "box_Delay_v5_41.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BinkPlayerListener_v3_9();
    l0 = self.box_BinkPlayerListener_v3_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|380677043", "380677043", "Swamp_H2_CTP_010_SameFisherSuit", "box_OutputOrder_v2_7.Out", "box_BinkPlayerListener_v3_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_3();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|498475554", "498475554", "Swamp_H2_CTP_010_SameFisherSuit", "box_OutputOrder_v2_7.Out", "box_TriggerState_v2_3.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_22_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_22;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1199250983", "1199250983", "Swamp_H2_CTP_010_SameFisherSuit", "box_Delay_v5_22.Started", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_22_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_59();
    l0 = self.box_Delay_v5_22;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|45969485", "45969485", "Swamp_H2_CTP_010_SameFisherSuit", "box_Delay_v5_22.TimeElapsed", "box_MissionBlockLayer_59.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_29_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_37();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1914413397", "1914413397", "Swamp_H2_CTP_010_SameFisherSuit", "box_Compare_Integers_29.A_eq_B", "box_SetBoolean_v2_37.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_29_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_37();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|530534858", "530534858", "Swamp_H2_CTP_010_SameFisherSuit", "box_Compare_Integers_29.A_gt_B", "box_SetBoolean_v2_37.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhysicsModifier_14_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_39();
    l0 = self.box_PhysicsModifier_14;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1686814962", "1686814962", "Swamp_H2_CTP_010_SameFisherSuit", "box_PhysicsModifier_14.Disabled", "box_StimsEmitter_v2_39.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_43_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_57();
    l0 = self.box_ShimmerModifier_v2_43;
    l1 = self.box_VisibilityModifier_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1328864970", "1328864970", "Swamp_H2_CTP_010_SameFisherSuit", "box_ShimmerModifier_v2_43.Disabled", "box_VisibilityModifier_57.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_26();
    l0 = self.box_MultipleAND_v2_6;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1018707786", "1018707786", "Swamp_H2_CTP_010_SameFisherSuit", "box_MultipleAND_v2_6.Out", "box_Compare_Boolean_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_46_Started()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_51();
    l0 = self.box_SoundModifier_v2_46;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|889116956", "889116956", "Swamp_H2_CTP_010_SameFisherSuit", "box_SoundModifier_v2_46.Started", "box_StimsEmitter_v2_51.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_12_Started()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_38();
    l0 = self.box_SoundModifier_v2_12;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1068321811", "1068321811", "Swamp_H2_CTP_010_SameFisherSuit", "box_SoundModifier_v2_12.Started", "box_StimsEmitter_v2_38.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PickupState_v2_18_OnSetAsNotPickable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_3();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|254694024", "254694024", "Swamp_H2_CTP_010_SameFisherSuit", "box_PickupState_v2_18.OnSetAsNotPickable", "box_TriggerState_v2_3.SetAsUsable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUsable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_57_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PickupState_v2_18();
    l0 = self.box_VisibilityModifier_57;
    l1 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|780688459", "780688459", "Swamp_H2_CTP_010_SameFisherSuit", "box_VisibilityModifier_57.Disabled", "box_PickupState_v2_18.SetAsNotPickable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsNotPickable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_8();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1866331713", "1866331713", "Swamp_H2_CTP_010_SameFisherSuit", "box_OutputOrder_v2_4.Out", "box_GetPlayerGroup_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1032483951", "1032483951", "Swamp_H2_CTP_010_SameFisherSuit", "box_OutputOrder_v2_4.Out", "box_Print_v2_1.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_34_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_33();
    l0 = self.box_VisibilityModifier_34;
    l1 = self.box_PhysicsModifier_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|282715749", "282715749", "Swamp_H2_CTP_010_SameFisherSuit", "box_VisibilityModifier_34.Enabled", "box_PhysicsModifier_33.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_8_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_42();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|923195794", "923195794", "Swamp_H2_CTP_010_SameFisherSuit", "box_GetPlayerGroup_v2_8.Out", "box_GetLocalPlayer_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_35_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_14();
    l0 = self.box_VisibilityModifier_35;
    l1 = self.box_PhysicsModifier_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|972581221", "972581221", "Swamp_H2_CTP_010_SameFisherSuit", "box_VisibilityModifier_35.Disabled", "box_PhysicsModifier_14.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_34();
    l0 = self.box_Delay_v5_40;
    l1 = self.box_VisibilityModifier_34;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|2072316408", "2072316408", "Swamp_H2_CTP_010_SameFisherSuit", "box_Delay_v5_40.TimeElapsed", "box_VisibilityModifier_34.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_GetInventoryItemQuantity_28_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_28_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_29();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1147792446", "1147792446", "Swamp_H2_CTP_010_SameFisherSuit", "box_GetInventoryItemQuantity_28.Out", "box_Compare_Integers_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_53_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_53;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1585178497", "1585178497", "Swamp_H2_CTP_010_SameFisherSuit", "box_Delay_v5_53.TimeElapsed", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_15();
    l0 = self.box_Delay_v5_44;
    l1 = self.box_SoundModifier_v2_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|812706024", "812706024", "Swamp_H2_CTP_010_SameFisherSuit", "box_Delay_v5_44.TimeElapsed", "box_SoundModifier_v2_15.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_BinkPlayer_v6_11_Played()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_12();
    l0 = self.box_BinkPlayer_v6_11;
    l1 = self.box_SoundModifier_v2_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|901551709", "901551709", "Swamp_H2_CTP_010_SameFisherSuit", "box_BinkPlayer_v6_11.Played", "box_SoundModifier_v2_12.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_17_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_19();
    l0 = self.box_SoundModifier_v2_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|2086783559", "2086783559", "Swamp_H2_CTP_010_SameFisherSuit", "box_MissionBlockLayer_17.Activated", "box_SoundModifier_v2_19.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_25_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayerListener_v3_23();
    l0 = self.box_ProximityTrigger_v3_25;
    l1 = self.box_BinkPlayerListener_v3_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1128482733", "1128482733", "Swamp_H2_CTP_010_SameFisherSuit", "box_ProximityTrigger_v3_25.Disabled", "box_BinkPlayerListener_v3_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_25_Use()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_24();
    l0 = self.box_ProximityTrigger_v3_25;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|604259105", "604259105", "Swamp_H2_CTP_010_SameFisherSuit", "box_ProximityTrigger_v3_25.Use", "box_TriggerState_v2_24.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_36_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_6();
    l0 = self.box_EntityStatusListener_36;
    l1 = self.box_MultipleAND_v2_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|805760149", "805760149", "Swamp_H2_CTP_010_SameFisherSuit", "box_EntityStatusListener_36.Loaded", "box_MultipleAND_v2_6.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_VisibilityModifier_52_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_54();
    l0 = self.box_VisibilityModifier_52;
    l1 = self.box_PhysicsModifier_54;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1939949457", "1939949457", "Swamp_H2_CTP_010_SameFisherSuit", "box_VisibilityModifier_52.Disabled", "box_PhysicsModifier_54.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_50_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_48();
    l0 = self.box_Delay_v5_50;
    l1 = self.box_VisibilityModifier_48;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1278370074", "1278370074", "Swamp_H2_CTP_010_SameFisherSuit", "box_Delay_v5_50.TimeElapsed", "box_VisibilityModifier_48.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_BinkPlayerListener_v3_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_BinkPlayerListener_v3_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1195567025", "1195567025", "Swamp_H2_CTP_010_SameFisherSuit", "box_BinkPlayerListener_v3_9.Enabled", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BinkPlayerListener_v3_9_End()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_BinkPlayerListener_v3_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1168584569", "1168584569", "Swamp_H2_CTP_010_SameFisherSuit", "box_BinkPlayerListener_v3_9.End", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_19_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_45();
    l0 = self.box_SoundModifier_v2_19;
    l1 = self.box_ShimmerModifier_v2_45;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|982297985", "982297985", "Swamp_H2_CTP_010_SameFisherSuit", "box_SoundModifier_v2_19.Started", "box_ShimmerModifier_v2_45.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_43();
    l0 = self.box_MultipleOR_31;
    l1 = self.box_ShimmerModifier_v2_43;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1335787790", "1335787790", "Swamp_H2_CTP_010_SameFisherSuit", "box_MultipleOR_31.Out", "box_ShimmerModifier_v2_43.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_TriggerState_v2_3_OnSetUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_2();
    l0 = self.box_ProximityTrigger_v3_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1763349960", "1763349960", "Swamp_H2_CTP_010_SameFisherSuit", "box_TriggerState_v2_3.OnSetUnusable", "box_ProximityTrigger_v3_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_TriggerState_v2_3_OnSetUsable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_2();
    l0 = self.box_ProximityTrigger_v3_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|508592298", "508592298", "Swamp_H2_CTP_010_SameFisherSuit", "box_TriggerState_v2_3.OnSetUsable", "box_ProximityTrigger_v3_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_TriggerState_v2_24_OnSetUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_25();
    l0 = self.box_ProximityTrigger_v3_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|2082282196", "2082282196", "Swamp_H2_CTP_010_SameFisherSuit", "box_TriggerState_v2_24.OnSetUnusable", "box_ProximityTrigger_v3_25.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_TriggerState_v2_24_OnSetUsable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_25();
    l0 = self.box_ProximityTrigger_v3_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1795738307", "1795738307", "Swamp_H2_CTP_010_SameFisherSuit", "box_TriggerState_v2_24.OnSetUsable", "box_ProximityTrigger_v3_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_5();
    l0 = self.box_EntityStatusListener_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|2131803396", "2131803396", "Swamp_H2_CTP_010_SameFisherSuit", "box_OutputOrder_v2_32.Out", "box_EntityStatusListener_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_21();
    l0 = self.box_EntityStatusListener_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1347019848", "1347019848", "Swamp_H2_CTP_010_SameFisherSuit", "box_OutputOrder_v2_32.Out", "box_EntityStatusListener_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_36();
    l0 = self.box_EntityStatusListener_36;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1811030281", "1811030281", "Swamp_H2_CTP_010_SameFisherSuit", "box_OutputOrder_v2_32.Out", "box_EntityStatusListener_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_24();
    l0 = self.box_MultipleOR_58;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|138536807", "138536807", "Swamp_H2_CTP_010_SameFisherSuit", "box_MultipleOR_58.Out", "box_TriggerState_v2_24.SetAsUsable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUsable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhysicsModifier_33_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayer_v6_11();
    l0 = self.box_PhysicsModifier_33;
    l1 = self.box_BinkPlayer_v6_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|451579159", "451579159", "Swamp_H2_CTP_010_SameFisherSuit", "box_PhysicsModifier_33.Enabled", "box_BinkPlayer_v6_11.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_13_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_17();
    l0 = self.box_PositionModifier_v2_13;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1085295396", "1085295396", "Swamp_H2_CTP_010_SameFisherSuit", "box_PositionModifier_v2_13.Done", "box_MissionBlockLayer_17.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_15_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_SoundModifier_v2_15;
    l1 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1520413579", "1520413579", "Swamp_H2_CTP_010_SameFisherSuit", "box_SoundModifier_v2_15.Started", "box_Delay_v5_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_5_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_6();
    l0 = self.box_EntityStatusListener_5;
    l1 = self.box_MultipleAND_v2_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1665008796", "1665008796", "Swamp_H2_CTP_010_SameFisherSuit", "box_EntityStatusListener_5.Loaded", "box_MultipleAND_v2_6.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Compare_Boolean_27_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|2072900509", "2072900509", "Swamp_H2_CTP_010_SameFisherSuit", "box_Compare_Boolean_27.A_is_False", "box_Delay_v5_44.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_10();
    l0 = self.box_SoundModifier_v2_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|315490701", "315490701", "Swamp_H2_CTP_010_SameFisherSuit", "box_OutputOrder_v2_30.Out", "box_SoundModifier_v2_10.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|515011755", "515011755", "Swamp_H2_CTP_010_SameFisherSuit", "box_OutputOrder_v2_30.Out", "box_Delay_v5_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_VisibilityModifier_48_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_49();
    l0 = self.box_VisibilityModifier_48;
    l1 = self.box_PhysicsModifier_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1792625432", "1792625432", "Swamp_H2_CTP_010_SameFisherSuit", "box_VisibilityModifier_48.Enabled", "box_PhysicsModifier_49.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_37_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_37_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1668099373", "1668099373", "Swamp_H2_CTP_010_SameFisherSuit", "box_SetBoolean_v2_37.Out", "box_OutputOrder_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_21_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_6();
    l0 = self.box_EntityStatusListener_21;
    l1 = self.box_MultipleAND_v2_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|2121854542", "2121854542", "Swamp_H2_CTP_010_SameFisherSuit", "box_EntityStatusListener_21.Loaded", "box_MultipleAND_v2_6.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_StimsEmitter_v2_55_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_53();
    l0 = self.box_Delay_v5_53;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|961763338", "961763338", "Swamp_H2_CTP_010_SameFisherSuit", "box_StimsEmitter_v2_55.Disabled", "box_Delay_v5_53.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_41;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1042235721", "1042235721", "Swamp_H2_CTP_010_SameFisherSuit", "box_Delay_v5_41.TimeElapsed", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BinkPlayer_v6_47_Played()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_46();
    l0 = self.box_BinkPlayer_v6_47;
    l1 = self.box_SoundModifier_v2_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1593647268", "1593647268", "Swamp_H2_CTP_010_SameFisherSuit", "box_BinkPlayer_v6_47.Played", "box_SoundModifier_v2_46.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_2_Use()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_ProximityTrigger_v3_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1024825788", "1024825788", "Swamp_H2_CTP_010_SameFisherSuit", "box_ProximityTrigger_v3_2.Use", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhysicsModifier_49_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayer_v6_47();
    l0 = self.box_PhysicsModifier_49;
    l1 = self.box_BinkPlayer_v6_47;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1612896931", "1612896931", "Swamp_H2_CTP_010_SameFisherSuit", "box_PhysicsModifier_49.Enabled", "box_BinkPlayer_v6_47.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PhysicsModifier_54_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_55();
    l0 = self.box_PhysicsModifier_54;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|829542538", "829542538", "Swamp_H2_CTP_010_SameFisherSuit", "box_PhysicsModifier_54.Disabled", "box_StimsEmitter_v2_55.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BinkPlayerListener_v3_23_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_50();
    l0 = self.box_BinkPlayerListener_v3_23;
    l1 = self.box_Delay_v5_50;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1355556412", "1355556412", "Swamp_H2_CTP_010_SameFisherSuit", "box_BinkPlayerListener_v3_23.Enabled", "box_Delay_v5_50.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_BinkPlayerListener_v3_23_End()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_52();
    l0 = self.box_BinkPlayerListener_v3_23;
    l1 = self.box_VisibilityModifier_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|486684338", "486684338", "Swamp_H2_CTP_010_SameFisherSuit", "box_BinkPlayerListener_v3_23.End", "box_VisibilityModifier_52.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:OnEnter_box_GetLocalPlayer_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|147298847");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_45()
    local params;
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "#5DD8F362",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.8,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|194241352");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_26_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_26_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bHasSamFisherSuitOwned,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|194640253");
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

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|216330049");
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

function export:OnEnter_box_Delay_v5_22()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|246584482");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = self.SMIScreen,
    };
    return params;
end;

function export:OnEnter_box_PickupState_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupState_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|247603342");
    l0:SetConnections({
    });
    params = {
        -- Pickup,
        [0] = self.PickupItem_SamFisherSuit,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|316403192");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_29_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_29_A_gt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_28,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_14()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.SMIScreen,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_10()
    local params;
    params = {
        -- Pawns,
        [0] = "2109368704950117263",
        -- SoundId,
        [1] = "1145800246",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|416626885");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = self.SMIScreen,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_43()
    local params;
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = self.SuitObjects,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_6()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_46()
    local params;
    params = {
        -- Pawns,
        [0] = self.SMIScreen,
        -- SoundId,
        [1] = "376427751",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_12()
    local params;
    params = {
        -- Pawns,
        [0] = self.SMIScreen,
        -- SoundId,
        [1] = "674366986",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PickupState_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupState_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|618315953");
    l0:SetConnections({
        -- OnSetAsNotPickable,
        [0] = self.f_box_PickupState_v2_18_OnSetAsNotPickable,
    });
    params = {
        -- Pickup,
        [0] = self.PickupItem_SamFisherSuit,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_57()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.SMIScreen,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|647458176");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_34()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.SMIScreen,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|674244591");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_35()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.SMIScreen,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|759483060");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_28_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015340703878293",
        -- players,
        [2] = self._sld_LocalPlayer_box_GetLocalPlayer_v2_42,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_53()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_BinkPlayer_v6_11()
    local params;
    params = {
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\Expedition_Swamp_h2_SplinterCellEgg.bik]],
        -- BinkSoundFade,
        [6] = 0,
        -- BinkVolumePercent,
        [8] = 1,
        -- Loop,
        [9] = false,
        -- MaterialName,
        [10] = "C147b_Screen_BinkInvisible",
        -- ScreenEntity,
        [11] = self.SMIScreen,
        -- TCR_Music,
        [12] = false,
        -- WaitAvailableBinding,
        [13] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|920113897");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_17_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160315046935951",
        -- missionLayerId,
        [1] = "27160315606261865",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.gAllPlayers,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = self.Trigger_SMI,
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
        [2] = self.SMIScreen,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_52()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.SMIScreen,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_50()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_BinkPlayerListener_v3_9()
    local params;
    params = {
        -- BinkPathIDFilter,
        [0] = [[ui\singleplayer\video\Expedition_Swamp_h2_SplinterCellEgg.bik]],
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_19()
    local params;
    params = {
        -- Pawns,
        [0] = self.PickupItem_SamFisherSuit,
        -- SoundId,
        [1] = "2372961566",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1295192684");
    l0:SetConnections({
        -- OnSetUnusable,
        [2] = self.f_box_TriggerState_v2_3_OnSetUnusable,
        -- OnSetUsable,
        [3] = self.f_box_TriggerState_v2_3_OnSetUsable,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = self.Trigger_SMI,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1320383727");
    l0:SetConnections({
        -- OnSetUnusable,
        [2] = self.f_box_TriggerState_v2_24_OnSetUnusable,
        -- OnSetUsable,
        [3] = self.f_box_TriggerState_v2_24_OnSetUsable,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = self.Trigger_SMI,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1361275468");
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

function export:OnEnter_box_MissionBlockLayer_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1405510917");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160315046935951",
        -- missionLayerId,
        [1] = "27160324980110403",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_33()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.SMIScreen,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_13()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = self.GlassDoor_EndPOs,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.GlassDoor,
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1496517174");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = self.SMIScreen,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_15()
    local params;
    params = {
        -- Pawns,
        [0] = self.GlassDoor,
        -- SoundId,
        [1] = "204946029",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.Trigger_SMI,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1647692404");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_27_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bHasSamFisherSuitOwned,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1692446420");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_48()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.SMIScreen,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1816614576");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.PickupItem_SamFisherSuit,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1910793146");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_55_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = self.SMIScreen,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_SamFisherSuit.domino|@Swamp_H2_CTP_010_SameFisherSuit|1944055231");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "SWAMP_H2_SamFisherSuit Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_BinkPlayer_v6_47()
    local params;
    params = {
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\Expedition_Swamp_h2_SplinterCellEggGlitch.bik]],
        -- BinkSoundFade,
        [6] = 0,
        -- BinkVolumePercent,
        [8] = 1,
        -- Loop,
        [9] = false,
        -- MaterialName,
        [10] = "C147b_Screen_BinkInvisible",
        -- ScreenEntity,
        [11] = self.SMIScreen,
        -- TCR_Music,
        [12] = false,
        -- WaitAvailableBinding,
        [13] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.gAllPlayers,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = self.Trigger_SMI,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_49()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.SMIScreen,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_54()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.SMIScreen,
    };
    return params;
end;

function export:OnEnter_box_BinkPlayerListener_v3_23()
    local params;
    params = {
        -- BinkPathIDFilter,
        [0] = [[ui\singleplayer\video\Expedition_Swamp_h2_SplinterCellEggGlitch.bik]],
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_42_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self._sld_LocalPlayer_box_GetLocalPlayer_v2_42 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gAllPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_28 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bHasSamFisherSuitOwned = l0:GetDataOutValue(0);
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
