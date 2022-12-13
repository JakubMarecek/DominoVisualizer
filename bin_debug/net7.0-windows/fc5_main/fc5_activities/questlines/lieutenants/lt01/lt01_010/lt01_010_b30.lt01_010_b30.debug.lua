LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_010/lt01_010_b30.domino
-- User graph: LT01_010_B30
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DiplayTextModifier_v6.lua");
        cboxRes:RegisterBox("Domino/System/DisplayCinematicPrompt.lua");
        cboxRes:RegisterBox("Domino/System/FlashlightModifier.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/SetHudMode_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayerInCapturedOnChairStateModifier.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_010/LT01_010_B30.CIN_Confession_Capture.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1775149796.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2102059229.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1790631716.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2806627700.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3757802645.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2768662478.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4013606668.bnk]], "CSoundResource");
        cboxRes:LoadResource([[264881612.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1692792558.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_010/LT01_010_B30.LT01_010_B30.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua")] = {
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
                name = "KeepGFHDisabled",
                type = "bool",
            },
            [2] = {
                name = "KeepGodMode",
                type = "bool",
            },
            [3] = {
                name = "KeepHUDMode",
                type = "bool",
            },
            [4] = {
                name = "KeepWeaponHolstered",
                type = "bool",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityFact.lua")] = {
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
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/DiplayTextModifier_v6.lua")] = {
        stateless = true,
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
                name = "displayOverCinematic",
                type = "bool",
            },
            [1] = {
                name = "displayTimer",
                type = "float",
            },
            [2] = {
                name = "forceInstantDisplay",
                type = "bool",
            },
            [3] = {
                name = "isKarmaEvent",
                type = "bool",
            },
            [4] = {
                name = "textId",
                type = "oasis",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/DisplayCinematicPrompt.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "DisplayPrompt",
            },
            [1] = {
                name = "HidePrompt",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "PromptDisplayed",
                delayed = false,
            },
            [1] = {
                name = "PromptHidden",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "textId1",
                type = "oasis",
            },
            [1] = {
                name = "textId2",
                type = "oasis",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/FlashlightModifier.lua")] = {
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
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/InputListener_v3.lua")] = {
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
                name = "SignalReceived",
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
                name = "player",
                type = "entity",
            },
            [2] = {
                name = "signal",
                type = "string",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "numAxis",
                type = "int",
            },
            [1] = {
                name = "xAxis",
                type = "float",
            },
            [2] = {
                name = "yAxis",
                type = "float",
            },
            [3] = {
                name = "zAxis",
                type = "float",
            },
        },
        dataOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/Player/SetHudMode_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CinematicMode",
            },
            [1] = {
                name = "NormalMode",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetCinematicMode",
                delayed = false,
            },
            [1] = {
                name = "OnSetNormalMode",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Players",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayerInCapturedOnChairStateModifier.lua")] = {
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
                name = "CameraTargetEntity",
                type = "entity",
            },
            [1] = {
                name = "ChairId",
                type = "entity",
            },
            [2] = {
                name = "FollowPath",
                type = "entity",
            },
            [3] = {
                name = "FollowPathBackwardSpeedFactor",
                type = "float",
            },
            [4] = {
                name = "FollowPathForwardSpeedFactor",
                type = "float",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")] = {
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
        },
        dataInCount = 0,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_010/LT01_010_B30.CIN_Confession_Capture.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT01_010_B30";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30";
    self.Player1 = nil;
    self.PlayerGroup = nil;
    self.MetaSequenceID = 0;
    self.didPlayerSayYes = false;
    self.MetaSequenceID2 = 0;
    self.chairDistance = 0;
    self.StartValue = 0;
    self.didNoPlay = false;
    self.isPromptDisplayed = false;
    self.box_NarrativeSceneCleanUp_V2_45 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|24533334");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_45_Out,
    });
    self.box_InputListener_v3_31 = cbox:CreateBox("Domino/System/Player/InputListener_v3.lua");
    l0 = self.box_InputListener_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputListener_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|45845873");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_InputListener_v3_31_Disabled,
        -- Enabled,
        [1] = self.f_box_InputListener_v3_31_Enabled,
        -- SignalReceived,
        [2] = self.f_box_InputListener_v3_31_SignalReceived,
    });
    self.box_PositionModifier_v2_55 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|61481171");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_55_Done,
    });
    self.box_NarrativeFade_24 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|98294619");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_24_FadedIn,
    });
    self.box_VisibilityModifier_36 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|122377980");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_36_Disabled,
    });
    self.box_SoundMusicTriggerBox_78 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|142504638");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_78_Started,
    });
    self.box_PlaySequence_v8_10 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|169073455");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 2,
        },
        controlOut = {
            [3] = 13,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_10_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_10_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_10_SPOut__FadeIn_,
                },
                [1] = {
                    string = "ListenInput",
                    value = self.f_box_PlaySequence_v8_10_SPOut__ListenInput_,
                },
                [2] = {
                    string = "SayYes1",
                    value = self.f_box_PlaySequence_v8_10_SPOut__SayYes1_,
                },
                [3] = {
                    string = "SayYes2",
                    value = self.f_box_PlaySequence_v8_10_SPOut__SayYes2_,
                },
                [4] = {
                    string = "SayYes3",
                    value = self.f_box_PlaySequence_v8_10_SPOut__SayYes3_,
                },
                [5] = {
                    string = "SayYes4",
                    value = self.f_box_PlaySequence_v8_10_SPOut__SayYes4_,
                },
                [6] = {
                    string = "SayYes5",
                    value = self.f_box_PlaySequence_v8_10_SPOut__SayYes5_,
                },
                [7] = {
                    string = "SayYes6",
                    value = self.f_box_PlaySequence_v8_10_SPOut__SayYes6_,
                },
                [8] = {
                    string = "SayYes7",
                    value = self.f_box_PlaySequence_v8_10_SPOut__SayYes7_,
                },
                [9] = {
                    string = "didNoPlay",
                    value = self.f_box_PlaySequence_v8_10_SPOut__didNoPlay_,
                },
                [10] = {
                    string = "CheckifNoPlayed",
                    value = self.f_box_PlaySequence_v8_10_SPOut__CheckifNoPlayed_,
                },
                [11] = {
                    string = "Out",
                },
                [12] = {
                    string = "FadeOUT",
                    value = self.f_box_PlaySequence_v8_10_SPOut__FadeOUT_,
                },
            },
            count = 13,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_10_Started,
    });
    self.box_PostWWiseEventSetState_82 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|169446505");
    l0:SetConnections({
    });
    self.box_RequestTutorial_v3_30 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|173850191");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_14 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|235946150");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_14_Enter,
    });
    self.box_SoundModifier_v2_93 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|255236727");
    l0:SetConnections({
    });
    self.box_FlashlightModifier_7 = cbox:CreateBox("Domino/System/FlashlightModifier.lua");
    l0 = self.box_FlashlightModifier_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FlashlightModifier_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|356416822");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FlashlightModifier_7_Disabled,
    });
    self.box_PlaySequence_v8_60 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|438532026");
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
                },
                [1] = {
                    string = "FadeOUT",
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_60_Started,
    });
    self.box_NarrativeFade_15 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|485303454");
    l0:SetConnections({
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|488960501");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_InventoryItemModifier_63 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|527367836");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_63_Out,
    });
    self.box_ProximityTrigger_v2_32 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|541316252");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_32_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_32_Enter,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|550048956");
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
    self.box_PostFx_v3_18 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|556880913");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_59 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|640721685");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_59_Enter,
    });
    self.box_MultipleOR_35 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|731144079");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 7,
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
        [0] = self.f_box_MultipleOR_35_Out,
    });
    self.box_PlayerInCapturedOnChairStateModifier_9 = cbox:CreateBox("Domino/System/PlayerInCapturedOnChairStateModifier.lua");
    l0 = self.box_PlayerInCapturedOnChairStateModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerInCapturedOnChairStateModifier_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|758490167");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PlayerInCapturedOnChairStateModifier_9_Disabled,
        -- Enabled,
        [1] = self.f_box_PlayerInCapturedOnChairStateModifier_9_Enabled,
    });
    self.box_InventoryItemModifier_64 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|767917045");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_64_Out,
    });
    self.box_SetHUDMode_v2_48 = cbox:CreateBox("Domino/System/Player/SetHudMode_v2.lua");
    l0 = self.box_SetHUDMode_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetHUDMode_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|782999829");
    l0:SetConnections({
    });
    self.box_CIN_Confession_Capture_13 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_010/LT01_010_B30.CIN_Confession_Capture.debug.lua");
    l0 = self.box_CIN_Confession_Capture_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CIN_Confession_Capture_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|814878868");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CIN_Confession_Capture_13_Out,
    });
    self.box_PostFx_v3_51 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|927563105");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_57 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|931005848");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_57_Out,
    });
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|936752253");
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
        [0] = self.f_box_MultipleOR_22_Out,
    });
    self.box_OnceOnly_v3_16 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|991145523");
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
                [0] = self.f_box_OnceOnly_v3_16_Out_0,
            },
            count = 1,
        },
    });
    self.box_GunsForHireSystemModifier_65 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1057245064");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_65_Disabled,
    });
    self.box_NarrativeSceneSetup_92 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1111375403");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_92_Holstered,
    });
    self.box_SoundMusicTriggerBox_83 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1120628328");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_83_Started,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1141661786");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_InventoryItemModifier_77 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1163605574");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_77_Out,
    });
    self.box_PostWWiseEventSetState_84 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1255539338");
    l0:SetConnections({
    });
    self.box_InventoryItemModifier_75 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1302458076");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_75_Out,
    });
    self.box_PostWWiseEventSetState_87 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1323498561");
    l0:SetConnections({
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1325580946");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_InventoryItemModifier_88 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1395854597");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_88_Out,
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1411498332");
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
    self.box_InventoryItemModifier_29 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1455785942");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_29_Out,
    });
    self.box_PositionModifier_v2_61 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1482620422");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_61_Done,
    });
    self.box_InventoryItemModifier_66 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1483488665");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_66_Out,
    });
    self.box_MultipleOR_97 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1486118583");
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
        [0] = self.f_box_MultipleOR_97_Out,
    });
    self.box_PostWWiseEventSetState_79 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1498523784");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_42 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1510200627");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_42_Out,
    });
    self.box_InventoryItemModifier_69 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1514386074");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_69_Out,
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1535062202");
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
        [0] = self.f_box_MultipleOR_27_Out,
    });
    self.box_Music_Quest_v2_52 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1567087838");
    l0:SetConnections({
    });
    self.box_NarrativeFade_26 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1600913475");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_50 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1607087747");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_50_Enter,
    });
    self.box_NarrativeSceneCleanUp_V2_53 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1663597397");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_53_Out,
    });
    self.box_PositionModifier_v2_70 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1664560629");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_39 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1692588515");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_39_Out,
    });
    self.box_PostWWiseEventSetState_80 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1717517772");
    l0:SetConnections({
    });
    self.box_InventoryItemModifier_76 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1736006805");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_76_Out,
    });
    self.box_SoundModifier_v2_99 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1738150624");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1755420770");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_StartMetaSequence_54 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1763488190");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_54_Out,
    });
    self.box_StartMetaSequence_11 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1915548680");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_11_Out,
    });
    self.box_SoundModifier_v2_101 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2043413394");
    l0:SetConnections({
    });
    self.box_SoundMusicTriggerBox_81 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2053818088");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_81_Started,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1154251694", "1154251694", "LT01_010_B30", "In", "box_OutputOrder_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_52();
    l0 = self.box_Music_Quest_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|520854088", "520854088", "LT01_010_B30", "box_Simple_Node_62.Out", "box_Music_Quest_v2_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
    params = self:OnEnter_box_PlaySequence_v8_10();
    l0 = self.box_PlaySequence_v8_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|37187814", "37187814", "LT01_010_B30", "box_Simple_Node_62.Out", "box_PlaySequence_v8_10.SPIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- SPIn
    l0:ExecDynString(4, params, "SayYes");
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_24();
    l0 = self.box_NarrativeFade_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1557789963", "1557789963", "LT01_010_B30", "box_OutputOrder_v2_71.Out", "box_NarrativeFade_24.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_51();
    l0 = self.box_PostFx_v3_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1795021866", "1795021866", "LT01_010_B30", "box_OutputOrder_v2_71.Out", "box_PostFx_v3_51.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_NarrativeSceneCleanUp_V2_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = self.box_NarrativeSceneCleanUp_V2_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1639226371", "1639226371", "LT01_010_B30", "box_NarrativeSceneCleanUp_V2_45.Out", "box_OutputOrder_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_47_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerInCapturedOnChairStateModifier_9();
    l0 = self.box_PlayerInCapturedOnChairStateModifier_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1819344199", "1819344199", "LT01_010_B30", "box_ActivityForceAndLockTracking_47.Enabled", "box_PlayerInCapturedOnChairStateModifier_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_InputListener_v3_31_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_21();
    l0 = self.box_InputListener_v3_31;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1261811322", "1261811322", "LT01_010_B30", "box_InputListener_v3_31.Disabled", "box_SetBoolean_v2_21.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InputListener_v3_31_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_21();
    l0 = self.box_InputListener_v3_31;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|594354092", "594354092", "LT01_010_B30", "box_InputListener_v3_31.Enabled", "box_SetBoolean_v2_21.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InputListener_v3_31_SignalReceived()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_94();
    l0 = self.box_InputListener_v3_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1332528705", "1332528705", "LT01_010_B30", "box_InputListener_v3_31.SignalReceived", "box_OutputOrder_v2_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_55_Done()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_59();
    l0 = self.box_PositionModifier_v2_55;
    l1 = self.box_ProximityTrigger_v2_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1657462613", "1657462613", "LT01_010_B30", "box_PositionModifier_v2_55.Done", "box_ProximityTrigger_v2_59.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_NarrativeFade_24_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_SetHUDMode_v2_48();
    l0 = self.box_NarrativeFade_24;
    l1 = self.box_SetHUDMode_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|720021997", "720021997", "LT01_010_B30", "box_NarrativeFade_24.FadedIn", "box_SetHUDMode_v2_48.NormalMode", l0:GetLuaBox(), l1:GetLuaBox());
    -- NormalMode
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_36_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_53();
    l0 = self.box_VisibilityModifier_36;
    l1 = self.box_NarrativeSceneCleanUp_V2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1711163039", "1711163039", "LT01_010_B30", "box_VisibilityModifier_36.Disabled", "box_NarrativeSceneCleanUp_V2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SoundMusicTriggerBox_78_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_79();
    l0 = self.box_SoundMusicTriggerBox_78;
    l1 = self.box_PostWWiseEventSetState_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1552630403", "1552630403", "LT01_010_B30", "box_SoundMusicTriggerBox_78.Started", "box_PostWWiseEventSetState_79.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_10_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_23();
    l0 = self.box_PlaySequence_v8_10;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|794484657", "794484657", "LT01_010_B30", "box_PlaySequence_v8_10.Finished", "box_Simple_Node_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_10_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_19();
    l0 = self.box_PlaySequence_v8_10;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|219668238", "219668238", "LT01_010_B30", "box_PlaySequence_v8_10.Skipped", "box_Compare_Boolean_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_10_SPOut__CheckifNoPlayed_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_96();
    l0 = self.box_PlaySequence_v8_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1101281650", "1101281650", "LT01_010_B30", "box_PlaySequence_v8_10.SPOut", "box_OutputOrder_v2_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_10_SPOut__didNoPlay_()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_91();
    l0 = self.box_PlaySequence_v8_10;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1191872947", "1191872947", "LT01_010_B30", "box_PlaySequence_v8_10.SPOut", "box_SetBoolean_v2_91.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_10_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_PlaySequence_v8_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|468174794", "468174794", "LT01_010_B30", "box_PlaySequence_v8_10.SPOut", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_10_SPOut__FadeOUT_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_26();
    l0 = self.box_PlaySequence_v8_10;
    l1 = self.box_NarrativeFade_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1179637013", "1179637013", "LT01_010_B30", "box_PlaySequence_v8_10.SPOut", "box_NarrativeFade_26.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_10_SPOut__ListenInput_()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCinematicPrompt_49();
    l0 = self.box_PlaySequence_v8_10;
    l1 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1315044024", "1315044024", "LT01_010_B30", "box_PlaySequence_v8_10.SPOut", "box_DisplayCinematicPrompt_49.DisplayPrompt", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisplayPrompt
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_10_SPOut__SayYes1_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_10;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|229693034", "229693034", "LT01_010_B30", "box_PlaySequence_v8_10.SPOut", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_10_SPOut__SayYes2_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_10;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1018368577", "1018368577", "LT01_010_B30", "box_PlaySequence_v8_10.SPOut", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_10_SPOut__SayYes3_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_10;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1739259974", "1739259974", "LT01_010_B30", "box_PlaySequence_v8_10.SPOut", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_10_SPOut__SayYes4_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_10;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1928598659", "1928598659", "LT01_010_B30", "box_PlaySequence_v8_10.SPOut", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PlaySequence_v8_10_SPOut__SayYes5_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_10;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1714335803", "1714335803", "LT01_010_B30", "box_PlaySequence_v8_10.SPOut", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_PlaySequence_v8_10_SPOut__SayYes6_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_10;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|48768337", "48768337", "LT01_010_B30", "box_PlaySequence_v8_10.SPOut", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_PlaySequence_v8_10_SPOut__SayYes7_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_PlaySequence_v8_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1486043045", "1486043045", "LT01_010_B30", "box_PlaySequence_v8_10.SPOut", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_10_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMusicTriggerBox_78();
    l0 = self.box_PlaySequence_v8_10;
    l1 = self.box_SoundMusicTriggerBox_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1885339541", "1885339541", "LT01_010_B30", "box_PlaySequence_v8_10.Started", "box_SoundMusicTriggerBox_78.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_33();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|653456191", "653456191", "LT01_010_B30", "box_OutputOrder_v2_94.Out", "box_SetBoolean_v2_33.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_94_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_93();
    l0 = self.box_SoundModifier_v2_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|90169555", "90169555", "LT01_010_B30", "box_OutputOrder_v2_94.Out", "box_SoundModifier_v2_93.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_14_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_55();
    l0 = self.box_ProximityTrigger_v2_14;
    l1 = self.box_PositionModifier_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1704894287", "1704894287", "LT01_010_B30", "box_ProximityTrigger_v2_14.Enter", "box_PositionModifier_v2_55.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_15();
    l0 = self.box_NarrativeFade_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1864830443", "1864830443", "LT01_010_B30", "box_OutputOrder_v2_17.Out", "box_NarrativeFade_15.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_18();
    l0 = self.box_PostFx_v3_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2101521040", "2101521040", "LT01_010_B30", "box_OutputOrder_v2_17.Out", "box_PostFx_v3_18.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_85_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2079195679", "2079195679", "LT01_010_B30", "box_OutputOrder_v2_85.Out", "box_MultipleOR_58.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_85_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostWWiseEventSetState_84();
    l0 = self.box_PostWWiseEventSetState_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1153845092", "1153845092", "LT01_010_B30", "box_OutputOrder_v2_85.Out", "box_PostWWiseEventSetState_84.SetState", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetState
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_47();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1015982451", "1015982451", "LT01_010_B30", "box_OutputOrder_v2_68.Out", "box_ActivityForceAndLockTracking_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_67();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1655180669", "1655180669", "LT01_010_B30", "box_OutputOrder_v2_68.Out", "box_SetActivityFact_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_81();
    l0 = self.box_SoundMusicTriggerBox_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|163102775", "163102775", "LT01_010_B30", "box_OutputOrder_v2_68.Out", "box_SoundMusicTriggerBox_81.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_FlashlightModifier_7_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_65();
    l0 = self.box_FlashlightModifier_7;
    l1 = self.box_GunsForHireSystemModifier_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|710191870", "710191870", "LT01_010_B30", "box_FlashlightModifier_7.Disabled", "box_GunsForHireSystemModifier_65.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_StopMetaSequence_v4_12_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_42();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1301992300", "1301992300", "LT01_010_B30", "box_StopMetaSequence_v4_12.Stopped", "box_CHEAT_SetEnvironmentTimeScale_42.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_StopMetaSequence_v4_56_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_36();
    l0 = self.box_VisibilityModifier_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|181533456", "181533456", "LT01_010_B30", "box_StopMetaSequence_v4_56.Stopped", "box_VisibilityModifier_36.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_60_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_60;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1527217562", "1527217562", "LT01_010_B30", "box_PlaySequence_v8_60.Finished", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_60_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_85();
    l0 = self.box_PlaySequence_v8_60;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1922123038", "1922123038", "LT01_010_B30", "box_PlaySequence_v8_60.Skipped", "box_OutputOrder_v2_85.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_60_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMusicTriggerBox_83();
    l0 = self.box_PlaySequence_v8_60;
    l1 = self.box_SoundMusicTriggerBox_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1767007126", "1767007126", "LT01_010_B30", "box_PlaySequence_v8_60.Started", "box_SoundMusicTriggerBox_83.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_98_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_8();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|897828997", "897828997", "LT01_010_B30", "box_OutputOrder_v2_98.Out", "box_GetPlayerGroup_v2_8.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_98_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CIN_Confession_Capture_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1075041059", "1075041059", "LT01_010_B30", "box_OutputOrder_v2_98.Out", "box_CIN_Confession_Capture_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_57();
    l0 = self.box_Delay_v5_37;
    l1 = self.box_NarrativeSceneSetup_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1093608012", "1093608012", "LT01_010_B30", "box_Delay_v5_37.TimeElapsed", "box_NarrativeSceneSetup_57.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_95_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_10();
    l0 = self.box_PlaySequence_v8_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|357535211", "357535211", "LT01_010_B30", "box_Compare_Boolean_95.A_is_True", "box_PlaySequence_v8_10.SPIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- SPIn
    l0:ExecDynString(4, params, "Out");
end;

function export:f_box_InventoryItemModifier_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_66();
    l0 = self.box_InventoryItemModifier_63;
    l1 = self.box_InventoryItemModifier_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1250040099", "1250040099", "LT01_010_B30", "box_InventoryItemModifier_63.Out", "box_InventoryItemModifier_66.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v2_32_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_ProximityTrigger_v2_32;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2105434851", "2105434851", "LT01_010_B30", "box_ProximityTrigger_v2_32.Enabled", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_32_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerInCapturedOnChairStateModifier_9();
    l0 = self.box_ProximityTrigger_v2_32;
    l1 = self.box_PlayerInCapturedOnChairStateModifier_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1622476089", "1622476089", "LT01_010_B30", "box_ProximityTrigger_v2_32.Enter", "box_PlayerInCapturedOnChairStateModifier_9.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_21_Out()
    self:OnExit_box_SetBoolean_v2_21_Out();
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_46();
    l0 = self.box_MultipleOR_6;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1128363405", "1128363405", "LT01_010_B30", "box_MultipleOR_6.Out", "box_ActivityMiscInfoModifier_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_95();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1300615287", "1300615287", "LT01_010_B30", "box_OutputOrder_v2_96.Out", "box_Compare_Boolean_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1853272685", "1853272685", "LT01_010_B30", "box_OutputOrder_v2_96.Out", "box_MultipleOR_97.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_59_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_61();
    l0 = self.box_ProximityTrigger_v2_59;
    l1 = self.box_PositionModifier_v2_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2030590044", "2030590044", "LT01_010_B30", "box_ProximityTrigger_v2_59.Enter", "box_PositionModifier_v2_61.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_86_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostWWiseEventSetState_87();
    l0 = self.box_PostWWiseEventSetState_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1947464585", "1947464585", "LT01_010_B30", "box_OutputOrder_v2_86.Out", "box_PostWWiseEventSetState_87.SetState", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetState
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_86_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2079393821", "2079393821", "LT01_010_B30", "box_OutputOrder_v2_86.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_34();
    l0 = self.box_MultipleOR_35;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|205624047", "205624047", "LT01_010_B30", "box_MultipleOR_35.Out", "box_Compare_Boolean_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerInCapturedOnChairStateModifier_9_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_PlayerInCapturedOnChairStateModifier_9;
    l1 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|222125892", "222125892", "LT01_010_B30", "box_PlayerInCapturedOnChairStateModifier_9.Disabled", "box_Delay_v5_37.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayerInCapturedOnChairStateModifier_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_PlayerInCapturedOnChairStateModifier_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|9289985", "9289985", "LT01_010_B30", "box_PlayerInCapturedOnChairStateModifier_9.Enabled", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_64_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_88();
    l0 = self.box_InventoryItemModifier_64;
    l1 = self.box_InventoryItemModifier_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2049578070", "2049578070", "LT01_010_B30", "box_InventoryItemModifier_64.Out", "box_InventoryItemModifier_88.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_CIN_Confession_Capture_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_39();
    l0 = self.box_CIN_Confession_Capture_13;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|606923552", "606923552", "LT01_010_B30", "box_CIN_Confession_Capture_13.Out", "box_CHEAT_SetEnvironmentTimeScale_39.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_NarrativeSceneSetup_57_Out()
    local l0, l1;
    l0 = self.box_NarrativeSceneSetup_57;
    l1 = self.box_StartMetaSequence_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1956708639", "1956708639", "LT01_010_B30", "box_NarrativeSceneSetup_57.Out", "box_StartMetaSequence_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_22_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_22;
    l1 = self.box_OnceOnly_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|786249881", "786249881", "LT01_010_B30", "box_MultipleOR_22.Out", "box_OnceOnly_v3_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_16_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_43();
    l0 = self.box_OnceOnly_v3_16;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1904915228", "1904915228", "LT01_010_B30", "box_OnceOnly_v3_16.Out", "box_SoundMixing_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_65_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_64();
    l0 = self.box_GunsForHireSystemModifier_65;
    l1 = self.box_InventoryItemModifier_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1949195147", "1949195147", "LT01_010_B30", "box_GunsForHireSystemModifier_65.Disabled", "box_InventoryItemModifier_64.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_NarrativeSceneSetup_92_Holstered()
    local l0, l1;
    l0 = self.box_NarrativeSceneSetup_92;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1781974995", "1781974995", "LT01_010_B30", "box_NarrativeSceneSetup_92.Holstered", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SoundMixing_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_10();
    l0 = self.box_PlaySequence_v8_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1013317712", "1013317712", "LT01_010_B30", "box_SoundMixing_44.Out", "box_PlaySequence_v8_10.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_SoundMusicTriggerBox_83_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_82();
    l0 = self.box_SoundMusicTriggerBox_83;
    l1 = self.box_PostWWiseEventSetState_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|166516056", "166516056", "LT01_010_B30", "box_SoundMusicTriggerBox_83.Started", "box_PostWWiseEventSetState_82.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1200936950", "1200936950", "LT01_010_B30", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_92();
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_NarrativeSceneSetup_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|299545421", "299545421", "LT01_010_B30", "box_ActivityAcknowledgeGate_1.Reloaded", "box_NarrativeSceneSetup_92.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_InventoryItemModifier_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_29();
    l0 = self.box_InventoryItemModifier_77;
    l1 = self.box_InventoryItemModifier_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|11098817", "11098817", "LT01_010_B30", "box_InventoryItemModifier_77.Out", "box_InventoryItemModifier_29.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_InventoryItemModifier_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_63();
    l0 = self.box_InventoryItemModifier_75;
    l1 = self.box_InventoryItemModifier_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|729380002", "729380002", "LT01_010_B30", "box_InventoryItemModifier_75.Out", "box_InventoryItemModifier_63.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = self.box_Delay_v5_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1800871263", "1800871263", "LT01_010_B30", "box_Delay_v5_28.TimeElapsed", "box_OutputOrder_v2_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_34_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_62();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1121397924", "1121397924", "LT01_010_B30", "box_Compare_Boolean_34.A_is_True", "box_Simple_Node_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_76();
    l0 = self.box_InventoryItemModifier_88;
    l1 = self.box_InventoryItemModifier_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1796589101", "1796589101", "LT01_010_B30", "box_InventoryItemModifier_88.Out", "box_InventoryItemModifier_76.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_56();
    l0 = self.box_MultipleOR_58;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1421744180", "1421744180", "LT01_010_B30", "box_MultipleOR_58.Out", "box_StopMetaSequence_v4_56.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_29_Out()
    local l0, l1;
    l0 = self.box_InventoryItemModifier_29;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1531049987", "1531049987", "LT01_010_B30", "box_InventoryItemModifier_29.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PositionModifier_v2_61_Done()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_50();
    l0 = self.box_PositionModifier_v2_61;
    l1 = self.box_ProximityTrigger_v2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|997499295", "997499295", "LT01_010_B30", "box_PositionModifier_v2_61.Done", "box_ProximityTrigger_v2_50.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_InventoryItemModifier_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_69();
    l0 = self.box_InventoryItemModifier_66;
    l1 = self.box_InventoryItemModifier_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1326142704", "1326142704", "LT01_010_B30", "box_InventoryItemModifier_66.Out", "box_InventoryItemModifier_69.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCinematicPrompt_49();
    l0 = self.box_MultipleOR_97;
    l1 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|169355337", "169355337", "LT01_010_B30", "box_MultipleOR_97.Out", "box_DisplayCinematicPrompt_49.HidePrompt", l0:GetLuaBox(), l1:GetLuaBox());
    -- HidePrompt
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_45();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_42;
    l1 = self.box_NarrativeSceneCleanUp_V2_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1040034069", "1040034069", "LT01_010_B30", "box_CHEAT_SetEnvironmentTimeScale_42.Out", "box_NarrativeSceneCleanUp_V2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_77();
    l0 = self.box_InventoryItemModifier_69;
    l1 = self.box_InventoryItemModifier_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|369516199", "369516199", "LT01_010_B30", "box_InventoryItemModifier_69.Out", "box_InventoryItemModifier_77.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_DisplayCinematicPrompt_49_PromptDisplayed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    local clone = l0;
    params = self:OnEnter_box_InputListener_v3_31();
    l0 = self.box_InputListener_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1486212792", "1486212792", "LT01_010_B30", "box_DisplayCinematicPrompt_49.PromptDisplayed", "box_InputListener_v3_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_DisplayCinematicPrompt_49_PromptHidden()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    local clone = l0;
    params = self:OnEnter_box_InputListener_v3_31();
    l0 = self.box_InputListener_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|827023286", "827023286", "LT01_010_B30", "box_DisplayCinematicPrompt_49.PromptHidden", "box_InputListener_v3_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_8_Out()
    self:OnExit_box_GetPlayerGroup_v2_8_Out();
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_86();
    l0 = self.box_MultipleOR_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1751516655", "1751516655", "LT01_010_B30", "box_MultipleOR_27.Out", "box_OutputOrder_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_41();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2022060833", "2022060833", "LT01_010_B30", "box_OutputOrder_v2_102.Out", "box_SetTimeOfDay_41.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_101();
    l0 = self.box_SoundModifier_v2_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|604936973", "604936973", "LT01_010_B30", "box_OutputOrder_v2_102.Out", "box_SoundModifier_v2_101.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_50_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_70();
    l0 = self.box_ProximityTrigger_v2_50;
    l1 = self.box_PositionModifier_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|198664293", "198664293", "LT01_010_B30", "box_ProximityTrigger_v2_50.Enter", "box_PositionModifier_v2_70.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_NarrativeSceneCleanUp_V2_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_3();
    l0 = self.box_NarrativeSceneCleanUp_V2_53;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|67204598", "67204598", "LT01_010_B30", "box_NarrativeSceneCleanUp_V2_53.Out", "box_ActivityEnd_3.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2030971850", "2030971850", "LT01_010_B30", "box_CHEAT_SetEnvironmentTimeScale_39.Out", "box_OutputOrder_v2_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1648305032", "1648305032", "LT01_010_B30", "box_OutputOrder_v2_5.Out", "box_Print_v2_4.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|522033705", "522033705", "LT01_010_B30", "box_OutputOrder_v2_5.Out", "box_ActivityAcknowledgeGate_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_InventoryItemModifier_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_75();
    l0 = self.box_InventoryItemModifier_76;
    l1 = self.box_InventoryItemModifier_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|387670314", "387670314", "LT01_010_B30", "box_InventoryItemModifier_76.Out", "box_InventoryItemModifier_75.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_38();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|432108340", "432108340", "LT01_010_B30", "box_ActivityInitialized_2.Out", "box_ActivityMiscInfoModifier_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_54_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_54_Out();
    params = self:OnEnter_box_PlaySequence_v8_60();
    l0 = self.box_StartMetaSequence_54;
    l1 = self.box_PlaySequence_v8_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|323827366", "323827366", "LT01_010_B30", "box_StartMetaSequence_54.Out", "box_PlaySequence_v8_60.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|84102156", "84102156", "LT01_010_B30", "box_OutputOrder_v2_25.Out", "box_MultipleOR_97.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|158106483", "158106483", "LT01_010_B30", "box_OutputOrder_v2_25.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayTextModifier_v6_72();
    l0 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1214654979", "1214654979", "LT01_010_B30", "box_OutputOrder_v2_73.Out", "box_DisplayTextModifier_v6_72.ClearText", clone:GetLuaBox(), l0:GetLuaBox());
    -- ClearText
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_98();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1717137354", "1717137354", "LT01_010_B30", "box_OutputOrder_v2_73.Out", "box_OutputOrder_v2_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_100_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_99();
    l0 = self.box_SoundModifier_v2_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1033536001", "1033536001", "LT01_010_B30", "box_OutputOrder_v2_100.Out", "box_SoundModifier_v2_99.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_100_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v4_12();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|635316537", "635316537", "LT01_010_B30", "box_OutputOrder_v2_100.Out", "box_StopMetaSequence_v4_12.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_19_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1173521554", "1173521554", "LT01_010_B30", "box_Compare_Boolean_19.A_is_False", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_19_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1166860489", "1166860489", "LT01_010_B30", "box_Compare_Boolean_19.A_is_True", "box_OutputOrder_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_11_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_11_Out();
    params = self:OnEnter_box_SoundMixing_44();
    l0 = self.box_StartMetaSequence_11;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1887084451", "1887084451", "LT01_010_B30", "box_StartMetaSequence_11.Out", "box_SoundMixing_44.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|198672546", "198672546", "LT01_010_B30", "box_OutputOrder_v2_20.Out", "box_MultipleOR_35.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|167406944", "167406944", "LT01_010_B30", "box_OutputOrder_v2_20.Out", "box_MultipleOR_97.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_32();
    l0 = self.box_ProximityTrigger_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1370923791", "1370923791", "LT01_010_B30", "box_OutputOrder_v2_40.Out", "box_ProximityTrigger_v2_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestTutorial_v3_30();
    l0 = self.box_RequestTutorial_v3_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|220865877", "220865877", "LT01_010_B30", "box_OutputOrder_v2_40.Out", "box_RequestTutorial_v3_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_40_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_14();
    l0 = self.box_ProximityTrigger_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1098675595", "1098675595", "LT01_010_B30", "box_OutputOrder_v2_40.Out", "box_ProximityTrigger_v2_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_91_Out()
    self:OnExit_box_SetBoolean_v2_91_Out();
end;

function export:f_box_SetTimeOfDay_41_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|220601335", "220601335", "LT01_010_B30", "box_SetTimeOfDay_41.Out", "box_StartMetaSequence_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_SoundMusicTriggerBox_81_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_80();
    l0 = self.box_SoundMusicTriggerBox_81;
    l1 = self.box_PostWWiseEventSetState_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1356932697", "1356932697", "LT01_010_B30", "box_SoundMusicTriggerBox_81.Started", "box_PostWWiseEventSetState_80.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_SoundMixing_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_100();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2137924207", "2137924207", "LT01_010_B30", "box_SoundMixing_43.Out", "box_OutputOrder_v2_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FlashlightModifier_7();
    l0 = self.box_FlashlightModifier_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2094070409", "2094070409", "LT01_010_B30", "box_ActivityMiscInfoModifier_v2_46.Out", "box_FlashlightModifier_7.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_33_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_33_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1742762572", "1742762572", "LT01_010_B30", "box_SetBoolean_v2_33.Out", "box_MultipleOR_97.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityMiscInfoModifier_v2_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1816887675", "1816887675", "LT01_010_B30", "box_ActivityMiscInfoModifier_v2_38.Out", "box_OutputOrder_v2_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1866174643", "1866174643", "LT01_010_B30", "box_Simple_Node_23.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|@n_SayYes");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_62_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|16734107");
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

function export:OnEnter_box_NarrativeSceneCleanUp_V2_45()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGFHDisabled,
        [1] = true,
        -- KeepGodMode,
        [2] = false,
        -- KeepHUDMode,
        [3] = true,
        -- KeepWeaponHolstered,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|29175130");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_47_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InputListener_v3_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- signal,
        [2] = "uiselector_skipprompt_press_accept",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_55()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2105237711494339373",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103706492499673949",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_24()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_36()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2101534575233602440",
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_78()
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
        [5] = "1775149796",
        -- StopEvent,
        [6] = "1790631716",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_10()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101038532429622699",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/cin_LT01_03_Confession/cin_lt01_03_confession_intro.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_82()
    local params;
    DrawTextToScreen("Comment: MUS_MIS_Step_03", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PostWWiseEventSetState')-- Comment: MUS_MIS_Step_03");
    params = {
        -- SoundId,
        [0] = "2806627700",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_30()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015315733273321",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|234300154");
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
                [0] = self.f_box_OutputOrder_v2_94_Out_0,
                [1] = self.f_box_OutputOrder_v2_94_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105237579879177001",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_93()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1692792558",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|276528929");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Purple",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "---- LT01_010_B30 ---- SCRIPT IS RUNNING",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|281961293");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|283083923");
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
                [0] = self.f_box_OutputOrder_v2_85_Out_0,
                [1] = self.f_box_OutputOrder_v2_85_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DisplayTextModifier_v6_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayTextModifier_v6_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|296179533");
    l0:SetConnections({
    });
    params = {
        -- displayOverCinematic,
        [0] = false,
        -- displayTimer,
        [1] = 12,
        -- forceInstantDisplay,
        [2] = false,
        -- isKarmaEvent,
        [3] = false,
        -- textId,
        [4] = {
            section = "Objectives",
            item = "LT01_000_SquadWarning",
            id = "585133",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|313975899");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
                [2] = self.f_box_OutputOrder_v2_68_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_FlashlightModifier_7()
    local params;
    params = {
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|376559755");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_12_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|408873634");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_56_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_60()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101546557150096271",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/GAM_LT01_03_CONF_stunt/gam_lt01_03_conf_stunt.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|478672960");
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
                [0] = self.f_box_OutputOrder_v2_98_Out_0,
                [1] = self.f_box_OutputOrder_v2_98_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_15()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_37()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|509054221");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_95_A_is_True,
    });
    params = {
        -- A,
        [0] = self.didNoPlay,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_63()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015142847222583",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_32()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101076851249158708",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|549870900");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|553078607");
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
                [0] = self.f_box_OutputOrder_v2_96_Out_0,
                [1] = self.f_box_OutputOrder_v2_96_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_18()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_59()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105237740529408825",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|699252702");
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
                [0] = self.f_box_OutputOrder_v2_86_Out_0,
                [1] = self.f_box_OutputOrder_v2_86_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayerInCapturedOnChairStateModifier_9()
    local params;
    params = {
        -- CameraTargetEntity,
        [0] = "2103706492499673949",
        -- ChairId,
        [1] = "2101534575233602440",
        -- FollowPath,
        [2] = "2101076837437315623",
        -- FollowPathBackwardSpeedFactor,
        [3] = 1,
        -- FollowPathForwardSpeedFactor,
        [4] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_64()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015269155144374",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetHUDMode_v2_48()
    local params;
    params = {
        -- Players,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_51()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_57()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_65()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_92()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1112225121");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SoundMixing_44_Out,
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/CIN_Unconscious",
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_83()
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
        [5] = "1775149796",
        -- StopEvent,
        [6] = "1790631716",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1147877745");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_77()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015142847315810",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_84()
    local params;
    DrawTextToScreen("Comment: MUS_MIS_Step_03", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PostWWiseEventSetState')-- Comment: MUS_MIS_Step_03");
    params = {
        -- SoundId,
        [0] = "264881612",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_75()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015142847129732",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_87()
    local params;
    DrawTextToScreen("Comment: MUS_MIS_CIN_Skip", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PostWWiseEventSetState')-- Comment: MUS_MIS_CIN_Skip");
    params = {
        -- SoundId,
        [0] = "264881612",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1347723444");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_34_A_is_True,
    });
    params = {
        -- A,
        [0] = self.didPlayerSayYes,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_88()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015142847278116",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_29()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927638943126",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_61()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2105237722535844657",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103706492499673949",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_66()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015203377185800",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_79()
    local params;
    DrawTextToScreen("Comment: MUS_MIS_Step_01", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PostWWiseEventSetState')-- Comment: MUS_MIS_Step_01");
    params = {
        -- SoundId,
        [0] = "4013606668",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_42()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_69()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015271057271553",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_DisplayCinematicPrompt_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCinematicPrompt_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1523527499");
    l0:SetConnections({
        -- PromptDisplayed,
        [0] = self.f_box_DisplayCinematicPrompt_49_PromptDisplayed,
        -- PromptHidden,
        [1] = self.f_box_DisplayCinematicPrompt_49_PromptHidden,
    });
    params = {
        -- textId1,
        [0] = {
            section = "Quest Specific",
            item = "INTERACTION_STORY_SAYYES",
            id = "586618",
        },
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1532616950");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1533289904");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "LT01_010_B30_Cin_Ended",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_52()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 32,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1775149796",
        -- StopEvent,
        [7] = "1790631716",
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

function export:OnEnter_box_NarrativeFade_26()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1602904796");
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
                [0] = self.f_box_OutputOrder_v2_102_Out_0,
                [1] = self.f_box_OutputOrder_v2_102_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_50()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105034500739193614",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_53()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGFHDisabled,
        [1] = true,
        -- KeepGodMode,
        [2] = false,
        -- KeepHUDMode,
        [3] = false,
        -- KeepWeaponHolstered,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_70()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2105237726147140405",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103706492499673949",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_39()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_80()
    local params;
    DrawTextToScreen("Comment: MUS_MIS_Step_02", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PostWWiseEventSetState')-- Comment: MUS_MIS_Step_02");
    params = {
        -- SoundId,
        [0] = "2102059229",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1733604854");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_76()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015279628760114",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_99()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2768662478",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1812429766");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1821082770");
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
                [0] = self.f_box_OutputOrder_v2_73_Out_0,
                [1] = self.f_box_OutputOrder_v2_73_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1878484244");
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

function export:OnEnter_box_Compare_Boolean_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1905799485");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_19_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_19_A_is_True,
    });
    params = {
        -- A,
        [0] = self.isPromptDisplayed,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1927000156");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|1977351582");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
                [2] = self.f_box_OutputOrder_v2_40_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2017833010");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_91_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_101()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "3757802645",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2053286383");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_41_Out,
    });
    params = {
        -- Hour,
        [0] = 0,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_81()
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
        [5] = "1775149796",
        -- StopEvent,
        [6] = "1790631716",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2054544324");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SoundMixing_43_Out,
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/CIN_Recovered",
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2068468849");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_46_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2106720538");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_33_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2108583707");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_38_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B30.domino|@LT01_010_B30|2130437982");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isPromptDisplayed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_54_Out()
    local l0;
    l0 = self.box_StartMetaSequence_54;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_11_Out()
    local l0;
    l0 = self.box_StartMetaSequence_11;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_91_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.didNoPlay = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.didPlayerSayYes = l0:GetDataOutValue(0);
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
