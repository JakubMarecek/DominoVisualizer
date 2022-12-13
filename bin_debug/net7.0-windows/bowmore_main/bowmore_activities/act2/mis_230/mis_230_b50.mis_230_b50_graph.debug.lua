LUAC�d -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_230/mis_230_b50.domino
-- User graph: MIS_230_B50_graph
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/ColorRemapTextureModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputPriorityModifier_v4.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayerEdenPerksModifier.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_FindBestSpawner.debug.lua");
        cboxRes:RegisterBox("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_Reloaded.debug.lua");
        cboxRes:RegisterBox("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B50.MIS_230_B50_EPICBEARFIGHT.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2886336094.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1208466061.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1217280976.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1666472216.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2241612633.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B50.MIS_230_B50_graph.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ColorRemapTextureModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Remove",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "colorRemapSettings",
                type = "genericdb",
            },
            [1] = {
                name = "playerGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_FindBestSpawner.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "SpawnerFound",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "MaxDistanceSpawn",
                type = "float",
            },
            [1] = {
                name = "MinDistanceSpawn",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Spawner",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_Reloaded.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B50.MIS_230_B50_EPICBEARFIGHT.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "DeathOver",
                delayed = false,
            },
            [1] = {
                name = "PhaseTransition",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "eBearSpawner",
                type = "entity",
            },
            [1] = {
                name = "SpawnRemoveHP",
                type = "int",
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
    self._name = "MIS_230_B50_graph";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph";
    self.Players = nil;
    self.ePlayer = nil;
    self.gPlayers = nil;
    self.BearKilled_Current = 0;
    self.box_SoundModifier_v2_27 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|101507535");
    l0:SetConnections({
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|328005848");
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
    self.box_InputPriorityModifier_v4_17 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|336959277");
    l0:SetConnections({
        -- OnSet,
        [1] = self.f_box_InputPriorityModifier_v4_17_OnSet,
    });
    self.box_BaseMissionBlock_v2_11 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|400945085");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_BaseMissionBlock_v2_11_Disabled,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|711769346");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_Custom_PlayDialog_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
    l0 = self.box_Custom_PlayDialog_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_PlayDialog_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|751573335");
    l0:SetConnections({
        -- FinishedOrInterrupted,
        [0] = self.f_box_Custom_PlayDialog_12_FinishedOrInterrupted,
    });
    self.box_MIS_230_B50_EPICBEARFIGHT_19 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B50.MIS_230_B50_EPICBEARFIGHT.debug.lua");
    l0 = self.box_MIS_230_B50_EPICBEARFIGHT_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_B50_EPICBEARFIGHT_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|800583267");
    l0:SetConnections({
        -- DeathOver,
        [0] = self.f_box_MIS_230_B50_EPICBEARFIGHT_19_DeathOver,
    });
    self.box_Music_Quest_v2_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|921739275");
    l0:SetConnections({
    });
    self.box_MIS_230_B50_EPICBEARFIGHT_37 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B50.MIS_230_B50_EPICBEARFIGHT.debug.lua");
    l0 = self.box_MIS_230_B50_EPICBEARFIGHT_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_B50_EPICBEARFIGHT_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1001178628");
    l0:SetConnections({
        -- DeathOver,
        [0] = self.f_box_MIS_230_B50_EPICBEARFIGHT_37_DeathOver,
    });
    self.box_Music_Quest_v2_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1036595233");
    l0:SetConnections({
    });
    self.box_MIS_230_COMMON_FindBestSpawner_32 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_FindBestSpawner.debug.lua");
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_COMMON_FindBestSpawner_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1052167960");
    l0:SetConnections({
        -- SpawnerFound,
        [0] = self.f_box_MIS_230_COMMON_FindBestSpawner_32_SpawnerFound,
    });
    self.box_StartCelebration_13 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1133868766");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_13_Ended,
        -- Started,
        [1] = self.f_box_StartCelebration_13_Started,
    });
    self.box_PlayerEdenPerksModifier_1 = cbox:CreateBox("Domino/System/Player/PlayerEdenPerksModifier.lua");
    l0 = self.box_PlayerEdenPerksModifier_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerEdenPerksModifier_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1157693430");
    l0:SetConnections({
        -- WrathForceActivated,
        [3] = self.f_box_PlayerEdenPerksModifier_1_WrathForceActivated,
    });
    self.box_MIS_230_B50_EPICBEARFIGHT_16 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B50.MIS_230_B50_EPICBEARFIGHT.debug.lua");
    l0 = self.box_MIS_230_B50_EPICBEARFIGHT_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_B50_EPICBEARFIGHT_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1186545247");
    l0:SetConnections({
        -- DeathOver,
        [0] = self.f_box_MIS_230_B50_EPICBEARFIGHT_16_DeathOver,
    });
    self.box_NarrativeFade_28 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1216232478");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_28_FadedOut,
    });
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1245614774");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1506908931");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_TeleportPawns_29 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1528243416");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_29_Out,
    });
    self.box_IgnoreSignal_v2_2 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1552145088");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_2_Enabled,
    });
    self.box_ManagePlayerInventory_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1607095947");
    l0:SetConnections({
        -- Restricted,
        [2] = self.f_box_ManagePlayerInventory_24_Restricted,
    });
    self.box_GunsForHireSystemModifier_31 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1623986282");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_31_Disabled,
    });
    self.box_ColorRemapTextureModifier_v3_30 = cbox:CreateBox("Domino/System/ColorRemapTextureModifier_v3.lua");
    l0 = self.box_ColorRemapTextureModifier_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ColorRemapTextureModifier_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1814272249");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ColorRemapTextureModifier_v3_30_Removed,
    });
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1826741701");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_MIS_230_B50_EPICBEARFIGHT_23 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B50.MIS_230_B50_EPICBEARFIGHT.debug.lua");
    l0 = self.box_MIS_230_B50_EPICBEARFIGHT_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_B50_EPICBEARFIGHT_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1881655009");
    l0:SetConnections({
        -- DeathOver,
        [0] = self.f_box_MIS_230_B50_EPICBEARFIGHT_23_DeathOver,
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1927271490");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_MIS_230_COMMON_FindBestSpawner_15 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_FindBestSpawner.debug.lua");
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_COMMON_FindBestSpawner_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1946535046");
    l0:SetConnections({
        -- SpawnerFound,
        [0] = self.f_box_MIS_230_COMMON_FindBestSpawner_15_SpawnerFound,
    });
    self.box_MIS_230_COMMON_Reloaded_33 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_Reloaded.debug.lua");
    l0 = self.box_MIS_230_COMMON_Reloaded_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_COMMON_Reloaded_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1960772260");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_230_COMMON_Reloaded_33_Out,
    });
    self.box_NarrativeSceneSetup_45 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1974998230");
    l0:SetConnections({
    });
    self.box_MIS_230_COMMON_FindBestSpawner_35 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_FindBestSpawner.debug.lua");
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_COMMON_FindBestSpawner_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|2022903754");
    l0:SetConnections({
        -- SpawnerFound,
        [0] = self.f_box_MIS_230_COMMON_FindBestSpawner_35_SpawnerFound,
    });
    self.box_MIS_230_COMMON_FindBestSpawner_39 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_FindBestSpawner.debug.lua");
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_COMMON_FindBestSpawner_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|2034462565");
    l0:SetConnections({
        -- SpawnerFound,
        [0] = self.f_box_MIS_230_COMMON_FindBestSpawner_39_SpawnerFound,
    });
    self.box_SoundModifier_v2_34 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|2060545717");
    l0:SetConnections({
    });
    self.box_PlayerEdenPerksModifier_38 = cbox:CreateBox("Domino/System/Player/PlayerEdenPerksModifier.lua");
    l0 = self.box_PlayerEdenPerksModifier_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerEdenPerksModifier_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|2060768407");
    l0:SetConnections({
        -- WrathForceDeactivated,
        [4] = self.f_box_PlayerEdenPerksModifier_38_WrathForceDeactivated,
    });
    self.box_InventoryItemModifier_10 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|2100209481");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_10_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|242143198", "242143198", "MIS_230_B50_graph", "In", "box_ActivityAcknowledgeGate_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_GetPlayerGroup_v2_21_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Custom_PlayDialog_12();
    l0 = self.box_Custom_PlayDialog_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|557938568", "557938568", "MIS_230_B50_graph", "box_GetPlayerGroup_v2_21.Out", "box_Custom_PlayDialog_12.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_73_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_73_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_6();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|135036856", "135036856", "MIS_230_B50_graph", "box_GetLocalPlayer_v2_73.Out", "box_GetPlayerGroup_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1710818513", "1710818513", "MIS_230_B50_graph", "box_MultipleOR_4.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_InputPriorityModifier_v4_17_OnSet()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_InputPriorityModifier_v4_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1833857368", "1833857368", "MIS_230_B50_graph", "box_InputPriorityModifier_v4_17.OnSet", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_34();
    l0 = self.box_SoundModifier_v2_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1132445212", "1132445212", "MIS_230_B50_graph", "box_OutputOrder_v2_42.Out", "box_SoundModifier_v2_34.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_41();
    l0 = self.box_Music_Quest_v2_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1384726061", "1384726061", "MIS_230_B50_graph", "box_OutputOrder_v2_42.Out", "box_Music_Quest_v2_41.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_BaseMissionBlock_v2_11_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_BaseMissionBlock_v2_11;
    l1 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1146510566", "1146510566", "MIS_230_B50_graph", "box_BaseMissionBlock_v2_11.Disabled", "box_Delay_v5_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_21();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|76044106", "76044106", "MIS_230_B50_graph", "box_OutputOrder_v2_22.Out", "box_GetPlayerGroup_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_27();
    l0 = self.box_SoundModifier_v2_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1232876744", "1232876744", "MIS_230_B50_graph", "box_OutputOrder_v2_22.Out", "box_SoundModifier_v2_27.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_17();
    l0 = self.box_Delay_v5_18;
    l1 = self.box_InputPriorityModifier_v4_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|82021915", "82021915", "MIS_230_B50_graph", "box_Delay_v5_18.TimeElapsed", "box_InputPriorityModifier_v4_17.Set", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set
    l1:Exec(1, params);
end;

function export:f_box_Custom_PlayDialog_12_FinishedOrInterrupted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_Custom_PlayDialog_12;
    l1 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1907554201", "1907554201", "MIS_230_B50_graph", "box_Custom_PlayDialog_12.FinishedOrInterrupted", "box_Delay_v5_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MIS_230_B50_EPICBEARFIGHT_19_DeathOver()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_230_COMMON_FindBestSpawner_35();
    l0 = self.box_MIS_230_B50_EPICBEARFIGHT_19;
    l1 = self.box_MIS_230_COMMON_FindBestSpawner_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1277377298", "1277377298", "MIS_230_B50_graph", "box_MIS_230_B50_EPICBEARFIGHT_19.DeathOver", "box_MIS_230_COMMON_FindBestSpawner_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_40_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_13();
    l0 = self.box_StartCelebration_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1978459338", "1978459338", "MIS_230_B50_graph", "box_ParticleSystem_v3_40.Stopped", "box_StartCelebration_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_28();
    l0 = self.box_NarrativeFade_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1359050331", "1359050331", "MIS_230_B50_graph", "box_OutputOrder_v2_46.Out", "box_NarrativeFade_28.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneSetup_45();
    l0 = self.box_NarrativeSceneSetup_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|109582681", "109582681", "MIS_230_B50_graph", "box_OutputOrder_v2_46.Out", "box_NarrativeSceneSetup_45.HolsterWeapon", clone:GetLuaBox(), l0:GetLuaBox());
    -- HolsterWeapon
    l0:Exec(1, params);
end;

function export:f_box_MIS_230_B50_EPICBEARFIGHT_37_DeathOver()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_40();
    l0 = self.box_MIS_230_B50_EPICBEARFIGHT_37;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|804282755", "804282755", "MIS_230_B50_graph", "box_MIS_230_B50_EPICBEARFIGHT_37.DeathOver", "box_ParticleSystem_v3_40.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_36();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1927573912", "1927573912", "MIS_230_B50_graph", "box_OutputOrder_v2_9.Out", "box_AddActivityObjective_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_230_COMMON_FindBestSpawner_39();
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1142550421", "1142550421", "MIS_230_B50_graph", "box_OutputOrder_v2_9.Out", "box_MIS_230_COMMON_FindBestSpawner_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_5();
    l0 = self.box_Music_Quest_v2_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1190842315", "1190842315", "MIS_230_B50_graph", "box_OutputOrder_v2_9.Out", "box_Music_Quest_v2_5.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MIS_230_COMMON_FindBestSpawner_32_SpawnerFound()
    local params, l0, l1;
    self:OnExit_box_MIS_230_COMMON_FindBestSpawner_32_SpawnerFound();
    params = self:OnEnter_box_MIS_230_B50_EPICBEARFIGHT_16();
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_32;
    l1 = self.box_MIS_230_B50_EPICBEARFIGHT_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1262206504", "1262206504", "MIS_230_B50_graph", "box_MIS_230_COMMON_FindBestSpawner_32.SpawnerFound", "box_MIS_230_B50_EPICBEARFIGHT_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_StartCelebration_13_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = self.box_StartCelebration_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|247803441", "247803441", "MIS_230_B50_graph", "box_StartCelebration_13.Ended", "box_OutputOrder_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_13_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_StartCelebration_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|156709917", "156709917", "MIS_230_B50_graph", "box_StartCelebration_13.Started", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerEdenPerksModifier_1_WrathForceActivated()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_2();
    l0 = self.box_PlayerEdenPerksModifier_1;
    l1 = self.box_IgnoreSignal_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|460255235", "460255235", "MIS_230_B50_graph", "box_PlayerEdenPerksModifier_1.WrathForceActivated", "box_IgnoreSignal_v2_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MIS_230_B50_EPICBEARFIGHT_16_DeathOver()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_230_COMMON_FindBestSpawner_15();
    l0 = self.box_MIS_230_B50_EPICBEARFIGHT_16;
    l1 = self.box_MIS_230_COMMON_FindBestSpawner_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1195579399", "1195579399", "MIS_230_B50_graph", "box_MIS_230_B50_EPICBEARFIGHT_16.DeathOver", "box_MIS_230_COMMON_FindBestSpawner_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_NarrativeFade_28_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_NarrativeFade_28;
    l1 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1508371743", "1508371743", "MIS_230_B50_graph", "box_NarrativeFade_28.FadedOut", "box_Delay_v5_44.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_30();
    l0 = self.box_Delay_v5_26;
    l1 = self.box_ColorRemapTextureModifier_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|566955088", "566955088", "MIS_230_B50_graph", "box_Delay_v5_26.TimeElapsed", "box_ColorRemapTextureModifier_v3_30.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_73();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1218484798", "1218484798", "MIS_230_B50_graph", "box_ActivityInitialized_3.Out", "box_GetLocalPlayer_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_20();
    l0 = self.box_TeleportPawns_29;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1429444506", "1429444506", "MIS_230_B50_graph", "box_TeleportPawns_29.Out", "box_ActivityEnd_20.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_2_Enabled()
    local l0, l1;
    l0 = self.box_IgnoreSignal_v2_2;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1249083574", "1249083574", "MIS_230_B50_graph", "box_IgnoreSignal_v2_2.Enabled", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ManagePlayerInventory_24_Restricted()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_10();
    l0 = self.box_ManagePlayerInventory_24;
    l1 = self.box_InventoryItemModifier_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1865702091", "1865702091", "MIS_230_B50_graph", "box_ManagePlayerInventory_24.Restricted", "box_InventoryItemModifier_10.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_GunsForHireSystemModifier_31_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_GunsForHireSystemModifier_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1033655376", "1033655376", "MIS_230_B50_graph", "box_GunsForHireSystemModifier_31.Disabled", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ColorRemapTextureModifier_v3_30_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_29();
    l0 = self.box_ColorRemapTextureModifier_v3_30;
    l1 = self.box_TeleportPawns_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|2097397225", "2097397225", "MIS_230_B50_graph", "box_ColorRemapTextureModifier_v3_30.Removed", "box_TeleportPawns_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_43();
    l0 = self.box_Delay_v5_44;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1078876631", "1078876631", "MIS_230_B50_graph", "box_Delay_v5_44.TimeElapsed", "box_SoundMixing_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundMixing_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerEdenPerksModifier_38();
    l0 = self.box_PlayerEdenPerksModifier_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|217171177", "217171177", "MIS_230_B50_graph", "box_SoundMixing_43.Out", "box_PlayerEdenPerksModifier_38.ForceDeactivateWrath", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceDeactivateWrath
    l0:Exec(4, params);
end;

function export:f_box_MIS_230_B50_EPICBEARFIGHT_23_DeathOver()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_230_COMMON_FindBestSpawner_32();
    l0 = self.box_MIS_230_B50_EPICBEARFIGHT_23;
    l1 = self.box_MIS_230_COMMON_FindBestSpawner_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|2064490249", "2064490249", "MIS_230_B50_graph", "box_MIS_230_B50_EPICBEARFIGHT_23.DeathOver", "box_MIS_230_COMMON_FindBestSpawner_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_6_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_31();
    l0 = self.box_GunsForHireSystemModifier_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|443644495", "443644495", "MIS_230_B50_graph", "box_GetPlayerGroup_v2_6.Out", "box_GunsForHireSystemModifier_31.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1528093134", "1528093134", "MIS_230_B50_graph", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_230_COMMON_Reloaded_33();
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MIS_230_COMMON_Reloaded_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1804144129", "1804144129", "MIS_230_B50_graph", "box_ActivityAcknowledgeGate_7.Reloaded", "box_MIS_230_COMMON_Reloaded_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_230_COMMON_FindBestSpawner_15_SpawnerFound()
    local params, l0, l1;
    self:OnExit_box_MIS_230_COMMON_FindBestSpawner_15_SpawnerFound();
    params = self:OnEnter_box_MIS_230_B50_EPICBEARFIGHT_19();
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_15;
    l1 = self.box_MIS_230_B50_EPICBEARFIGHT_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1779538646", "1779538646", "MIS_230_B50_graph", "box_MIS_230_COMMON_FindBestSpawner_15.SpawnerFound", "box_MIS_230_B50_EPICBEARFIGHT_19.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_MIS_230_COMMON_Reloaded_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ManagePlayerInventory_24();
    l0 = self.box_MIS_230_COMMON_Reloaded_33;
    l1 = self.box_ManagePlayerInventory_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1694679134", "1694679134", "MIS_230_B50_graph", "box_MIS_230_COMMON_Reloaded_33.Out", "box_ManagePlayerInventory_24.RestrictItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- RestrictItems
    l1:Exec(3, params);
end;

function export:f_box_MIS_230_COMMON_FindBestSpawner_35_SpawnerFound()
    local params, l0, l1;
    self:OnExit_box_MIS_230_COMMON_FindBestSpawner_35_SpawnerFound();
    params = self:OnEnter_box_MIS_230_B50_EPICBEARFIGHT_37();
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_35;
    l1 = self.box_MIS_230_B50_EPICBEARFIGHT_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|2029234765", "2029234765", "MIS_230_B50_graph", "box_MIS_230_COMMON_FindBestSpawner_35.SpawnerFound", "box_MIS_230_B50_EPICBEARFIGHT_37.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_MIS_230_COMMON_FindBestSpawner_39_SpawnerFound()
    local params, l0, l1;
    self:OnExit_box_MIS_230_COMMON_FindBestSpawner_39_SpawnerFound();
    params = self:OnEnter_box_MIS_230_B50_EPICBEARFIGHT_23();
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_39;
    l1 = self.box_MIS_230_B50_EPICBEARFIGHT_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|14389435", "14389435", "MIS_230_B50_graph", "box_MIS_230_COMMON_FindBestSpawner_39.SpawnerFound", "box_MIS_230_B50_EPICBEARFIGHT_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_PlayerEdenPerksModifier_38_WrathForceDeactivated()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_11();
    l0 = self.box_PlayerEdenPerksModifier_38;
    l1 = self.box_BaseMissionBlock_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|674441879", "674441879", "MIS_230_B50_graph", "box_PlayerEdenPerksModifier_38.WrathForceDeactivated", "box_BaseMissionBlock_v2_11.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
end;

function export:f_box_InventoryItemModifier_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerEdenPerksModifier_1();
    l0 = self.box_InventoryItemModifier_10;
    l1 = self.box_PlayerEdenPerksModifier_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|701261105", "701261105", "MIS_230_B50_graph", "box_InventoryItemModifier_10.Out", "box_PlayerEdenPerksModifier_1.ForceActivateWrath", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceActivateWrath
    l1:Exec(1, params);
end;

function export:OnEnter_box_GetPlayerGroup_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|96741272");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_27()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2241612633",
        -- SoundType,
        [2] = 20,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|201456710");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_73_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_17()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|361917284");
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

function export:OnEnter_box_BaseMissionBlock_v2_11()
    local params;
    params = {
        -- missionBlockId,
        [0] = "54181912161901477",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|402349130");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|682471897");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Custom_PlayDialog_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2886336094",
    };
    return params;
end;

function export:OnEnter_box_MIS_230_B50_EPICBEARFIGHT_19()
    local params, l0;
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_15;
    params = {
        -- eBearSpawner,
        [0] = l0:GetDataOutValue(0),
        -- SpawnRemoveHP,
        [1] = 33599,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|901944726");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_40_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "#8B1165D7",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_41()
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

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|939894294");
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

function export:OnEnter_box_MIS_230_B50_EPICBEARFIGHT_37()
    local params, l0;
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_35;
    params = {
        -- eBearSpawner,
        [0] = l0:GetDataOutValue(0),
        -- SpawnRemoveHP,
        [1] = 33599,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1024983202");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_5()
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

function export:OnEnter_box_MIS_230_COMMON_FindBestSpawner_32()
    local params;
    params = {
        -- MaxDistanceSpawn,
        [0] = 20,
        -- MinDistanceSpawn,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_13()
    local params;
    params = {
        -- Preset,
        [0] = "9015206464378271",
    };
    return params;
end;

function export:OnEnter_box_PlayerEdenPerksModifier_1()
    local params;
    params = {
        -- players,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MIS_230_B50_EPICBEARFIGHT_16()
    local params, l0;
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_32;
    params = {
        -- eBearSpawner,
        [0] = l0:GetDataOutValue(0),
        -- SpawnRemoveHP,
        [1] = 33599,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_28()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_26()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1508138323");
    l0:SetConnections({
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_230_B25_OBJ",
            id = "1002198",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_29()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2108047024111756273",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_2()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "toggle_edens_wrath",
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_24()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015268885567900",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_31()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ColorRemapTextureModifier_v3_30()
    local params;
    params = {
        -- colorRemapSettings,
        [0] = "9015289570518836",
        -- playerGroup,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1835050505");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SoundMixing_43_Out,
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_MIS_230_B50_EPICBEARFIGHT_23()
    local params, l0;
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_39;
    params = {
        -- eBearSpawner,
        [0] = l0:GetDataOutValue(0),
        -- SpawnRemoveHP,
        [1] = 33599,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B50.domino|@MIS_230_B50_graph|1914783690");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_230_COMMON_FindBestSpawner_15()
    local params;
    params = {
        -- MaxDistanceSpawn,
        [0] = 20,
        -- MinDistanceSpawn,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_MIS_230_COMMON_Reloaded_33()
    local params;
    params = {
        -- isDay,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_45()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_230_COMMON_FindBestSpawner_35()
    local params;
    params = {
        -- MaxDistanceSpawn,
        [0] = 20,
        -- MinDistanceSpawn,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_MIS_230_COMMON_FindBestSpawner_39()
    local params;
    params = {
        -- MaxDistanceSpawn,
        [0] = 20,
        -- MinDistanceSpawn,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_34()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1217280976",
        -- SoundType,
        [2] = 20,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayerEdenPerksModifier_38()
    local params;
    params = {
        -- players,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_10()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015351296639748",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_21_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_Custom_PlayDialog_12;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_73_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.ePlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_230_COMMON_FindBestSpawner_32_SpawnerFound()
    local l0, l1;
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_32;
    l1 = self.box_MIS_230_B50_EPICBEARFIGHT_16;
    l1:GetLuaBox().eBearSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_230_COMMON_FindBestSpawner_15_SpawnerFound()
    local l0, l1;
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_15;
    l1 = self.box_MIS_230_B50_EPICBEARFIGHT_19;
    l1:GetLuaBox().eBearSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_230_COMMON_FindBestSpawner_35_SpawnerFound()
    local l0, l1;
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_35;
    l1 = self.box_MIS_230_B50_EPICBEARFIGHT_37;
    l1:GetLuaBox().eBearSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_230_COMMON_FindBestSpawner_39_SpawnerFound()
    local l0, l1;
    l0 = self.box_MIS_230_COMMON_FindBestSpawner_39;
    l1 = self.box_MIS_230_B50_EPICBEARFIGHT_23;
    l1:GetLuaBox().eBearSpawner = l0:GetDataOutValue(0);
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
