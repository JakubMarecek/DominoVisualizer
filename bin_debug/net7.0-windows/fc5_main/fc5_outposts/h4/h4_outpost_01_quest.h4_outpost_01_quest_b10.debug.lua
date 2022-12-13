LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/h4/h4_outpost_01_quest.domino
-- User graph: H4_Outpost_01_QUEST_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetOasis.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.H4_Outpost_01_QUEST_MovingObjects.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.H4_Outpost_01_QUEST_RangeListener.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.H4_Outpost_01_QUEST_Teleport.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3878843753.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1264164175.bnk]], "CSoundResource");
        cboxRes:LoadResource([[499039454.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2278293383.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.H4_Outpost_01_QUEST_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua")] = {
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
                name = "FailingZoneEntered",
                delayed = true,
            },
            [1] = {
                name = "WarningZoneEntered",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bShowUI",
                type = "bool",
            },
            [1] = {
                name = "CoopFailRequiresAllPlayer",
                type = "bool",
            },
            [2] = {
                name = "FailingZoneTrigger",
                type = "entity",
            },
            [3] = {
                name = "WarningZoneTrigger",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "CurrentWarnedPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")] = {
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
                name = "CharacterId",
                type = "genericdb",
            },
            [1] = {
                name = "Marker",
                type = "entity",
            },
            [2] = {
                name = "ObjectiveId",
                type = "oasis",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveTimerListener.lua")] = {
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
                name = "OnTime",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")] = {
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
                name = "MarkerTypeId",
                type = "database",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "ProgressDisplayType",
                type = "int",
            },
            [3] = {
                name = "TotalProgress",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")] = {
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
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
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
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
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
            [0] = {
                name = "Result",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Mission_Flow/MissionAckTriggerListener.lua")] = {
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
        },
        controlOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/SetOasis.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromDuniaOasis",
            },
            [1] = {
                name = "FromOasis",
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
                name = "Oasis",
                type = "oasis",
            },
            [1] = {
                name = "OasisFromEditor",
                type = "oasiseditor",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Target",
                type = "oasis",
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
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "MessageType",
                type = "int",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.H4_Outpost_01_QUEST_MovingObjects.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Delay_Start",
                type = "float",
            },
            [1] = {
                name = "Pause_Bottom",
                type = "float",
            },
            [2] = {
                name = "Pause_Top",
                type = "float",
            },
            [3] = {
                name = "Target",
                type = "entity",
            },
            [4] = {
                name = "Target_EndPoint",
                type = "entity",
            },
            [5] = {
                name = "Target_Speed",
                type = "float",
            },
            [6] = {
                name = "Target_StartPoint",
                type = "entity",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.H4_Outpost_01_QUEST_RangeListener.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableListener",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "SetDamagable",
            },
            [3] = {
                name = "SetUndamageable",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damageable",
                delayed = false,
            },
            [1] = {
                name = "Destroyed",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "Undamageable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "eInBreakable01",
                type = "entity",
            },
            [1] = {
                name = "eInBreakable02",
                type = "entity",
            },
            [2] = {
                name = "eInBreakable03",
                type = "entity",
            },
            [3] = {
                name = "eInBreakable04",
                type = "entity",
            },
            [4] = {
                name = "eInBreakable05",
                type = "entity",
            },
            [5] = {
                name = "eInBreakable06",
                type = "entity",
            },
            [6] = {
                name = "eInBreakable07",
                type = "entity",
            },
            [7] = {
                name = "eInBreakable08",
                type = "entity",
            },
            [8] = {
                name = "eInBreakable09",
                type = "entity",
            },
            [9] = {
                name = "eInBreakable10",
                type = "entity",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.H4_Outpost_01_QUEST_Teleport.debug.lua")] = {
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
    self._name = "H4_Outpost_01_QUEST_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10";
    self.iTotalProgress = 10;
    self.bRangeStarted = false;
    self.oRangeTimer = {
        section = "Objectives",
        item = "H4_CultLocation_01_QUEST_B10_OBJ_05",
        id = "745390",
    };
    self.eGiver = nil;
    self.oRange = {
        section = "Objectives",
        item = "H4_CultLocation_01_QUEST_B10_OBJ",
        id = "657052",
    };
    self.iCounter = 0;
    self.bCompleted = false;
    self.iProgress = 0;
    self.oFailReason = {
        section = "",
        item = "",
        id = "",
    };
    self.bInRange = false;
    self.ePlayerAddRemove = nil;
    self.eClient = nil;
    self.eHost = nil;
    self.bCoop = false;
    self.box_NarrativeFade_41 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|71307892");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_41_FadedOut,
    });
    self.box_CharacterLoadedIdListener_63 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|413117323");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_63_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_63_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_63_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_63_LoadedIdReceived,
    });
    self.box_ActivityObjectiveTimerListener_22 = cbox:CreateBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
    l0 = self.box_ActivityObjectiveTimerListener_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerListener_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|494517405");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveTimerListener_22_Enabled,
        -- OnTime,
        [2] = self.f_box_ActivityObjectiveTimerListener_22_OnTime,
    });
    self.box_MissionAckTriggerListener_47 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|495930330");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MissionAckTriggerListener_47_Enabled,
    });
    self.box_ExitZoneWarningListener_v3_105 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|808286336");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_105_FailingZoneEntered,
    });
    self.box_MultipleOR_123 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|818881403");
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
        [0] = self.f_box_MultipleOR_123_Out,
    });
    self.box_SoundModifier_v2_24 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|820956997");
    l0:SetConnections({
    });
    self.box_Delay_v5_1 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|828478474");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_1_TimeElapsed,
    });
    self.box_H4_Outpost_01_QUEST_MovingObjects_27 = cbox:CreateBox("Domino/User/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.H4_Outpost_01_QUEST_MovingObjects.debug.lua");
    l0 = self.box_H4_Outpost_01_QUEST_MovingObjects_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_H4_Outpost_01_QUEST_MovingObjects_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|946986454");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_49 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|965380998");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_49_Enabled,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_49_OnOccupied,
    });
    self.box_PlayDialog_v6_2 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|967791028");
    l0:SetConnections({
    });
    self.box_H4_Outpost_01_QUEST_RangeListener_106 = cbox:CreateBox("Domino/User/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.H4_Outpost_01_QUEST_RangeListener.debug.lua");
    l0 = self.box_H4_Outpost_01_QUEST_RangeListener_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_H4_Outpost_01_QUEST_RangeListener_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1039228957");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_H4_Outpost_01_QUEST_RangeListener_106_Destroyed,
        -- Enabled,
        [2] = self.f_box_H4_Outpost_01_QUEST_RangeListener_106_Enabled,
    });
    self.box_H4_Outpost_01_QUEST_Teleport_14 = cbox:CreateBox("Domino/User/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.H4_Outpost_01_QUEST_Teleport.debug.lua");
    l0 = self.box_H4_Outpost_01_QUEST_Teleport_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_H4_Outpost_01_QUEST_Teleport_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1120889640");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_H4_Outpost_01_QUEST_Teleport_14_Out,
    });
    self.box_H4_Outpost_01_QUEST_MovingObjects_30 = cbox:CreateBox("Domino/User/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.H4_Outpost_01_QUEST_MovingObjects.debug.lua");
    l0 = self.box_H4_Outpost_01_QUEST_MovingObjects_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_H4_Outpost_01_QUEST_MovingObjects_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1192785340");
    l0:SetConnections({
    });
    self.box_MultipleOR_100 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1221709136");
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
        [0] = self.f_box_MultipleOR_100_Out,
    });
    self.box_MultipleOR_119 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1309670002");
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
        [0] = self.f_box_MultipleOR_119_Out,
    });
    self.box_Delay_v5_53 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1347838485");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_53_TimeElapsed,
    });
    self.box_Delay_v5_50 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1439726637");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_50_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_28 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1538094163");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_28_Enabled,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_28_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_28_OnOccupied,
    });
    self.box_MultipleOR_131 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1608133614");
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
        [0] = self.f_box_MultipleOR_131_Out,
    });
    self.box_ActivityAcknowledgeGate_45 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1672799132");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_45_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_45_Reloaded,
    });
    self.box_SoundModifier_v2_43 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1757503850");
    l0:SetConnections({
    });
    self.box_DisplayCustomUIMsg_v5_120 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1813461266");
    l0:SetConnections({
    });
    self.box_NarrativeFade_126 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1868735786");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_126_FadedIn,
    });
    self.box_ActivityInitialized_96 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1881942229");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_96_Out,
    });
    self.box_SoundModifier_v2_38 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|2027268775");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|28824203", "28824203", "H4_Outpost_01_QUEST_B10", "In", "box_OutputOrder_v2_60.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_83();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|114392639", "114392639", "H4_Outpost_01_QUEST_B10", "OnLeaveZone", "box_ActivityRetry_83.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_118_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_81();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1025814274", "1025814274", "H4_Outpost_01_QUEST_B10", "box_Simple_Node_118.Out", "box_IntegerArithmetics_v2_81.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_109_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_H4_Outpost_01_QUEST_RangeListener_106();
    l0 = self.box_H4_Outpost_01_QUEST_RangeListener_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1630099791", "1630099791", "H4_Outpost_01_QUEST_B10", "box_Simple_Node_109.Out", "box_H4_Outpost_01_QUEST_RangeListener_106.SetUndamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUndamageable
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_130_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_47();
    l0 = self.box_MissionAckTriggerListener_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|663589664", "663589664", "H4_Outpost_01_QUEST_B10", "box_Simple_Node_130.Out", "box_MissionAckTriggerListener_47.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_107_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1456056191", "1456056191", "H4_Outpost_01_QUEST_B10", "box_Simple_Node_107.Out", "box_MultipleOR_123.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_H4_Outpost_01_QUEST_RangeListener_106();
    l0 = self.box_H4_Outpost_01_QUEST_RangeListener_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1693918188", "1693918188", "H4_Outpost_01_QUEST_B10", "box_Simple_Node_107.Out", "box_H4_Outpost_01_QUEST_RangeListener_106.DisableListener", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableListener
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|463348347", "463348347", "H4_Outpost_01_QUEST_B10", "box_Simple_Node_107.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_108_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_H4_Outpost_01_QUEST_RangeListener_106();
    l0 = self.box_H4_Outpost_01_QUEST_RangeListener_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1370896514", "1370896514", "H4_Outpost_01_QUEST_B10", "box_Simple_Node_108.Out", "box_H4_Outpost_01_QUEST_RangeListener_106.SetDamagable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamagable
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_110_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_91();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|347505966", "347505966", "H4_Outpost_01_QUEST_B10", "box_Simple_Node_110.Out", "box_OutputOrder_v2_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_H4_Outpost_01_QUEST_Teleport_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|344304008", "344304008", "H4_Outpost_01_QUEST_B10", "box_Simple_Node_110.Out", "box_H4_Outpost_01_QUEST_Teleport_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_115_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1412265952", "1412265952", "H4_Outpost_01_QUEST_B10", "box_Simple_Node_115.Out", "box_OutputOrder_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_41_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_52();
    l0 = self.box_NarrativeFade_41;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|117967281", "117967281", "H4_Outpost_01_QUEST_B10", "box_NarrativeFade_41.FadedOut", "box_MissionBlockLayer_52.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_78_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_75();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|2064958764", "2064958764", "H4_Outpost_01_QUEST_B10", "box_EndActivityObjective_v2_78.Out", "box_EndActivityObjective_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_44_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_128();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|882755881", "882755881", "H4_Outpost_01_QUEST_B10", "box_MissionBlockLayer_44.Activated", "box_Compare_Boolean_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_33_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_108();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1982583754", "1982583754", "H4_Outpost_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_33.Disabled", "box_Simple_Node_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_33_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_109();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|888981075", "888981075", "H4_Outpost_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_33.Enabled", "box_Simple_Node_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_81_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_81_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_80();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1230724661", "1230724661", "H4_Outpost_01_QUEST_B10", "box_IntegerArithmetics_v2_81.Out", "box_SetActivityObjectiveProgress_v2_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_66_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|96096743", "96096743", "H4_Outpost_01_QUEST_B10", "box_EndActivityObjective_v2_66.Out", "box_MultipleOR_100.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_59_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_59_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1141681188", "1141681188", "H4_Outpost_01_QUEST_B10", "box_SetBoolean_v2_59.Out", "box_OutputOrder_v2_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_63_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_63_LoadedIdReceived();
    params = self:OnEnter_box_Print_v2_31();
    l0 = self.box_CharacterLoadedIdListener_63;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|668566410", "668566410", "H4_Outpost_01_QUEST_B10", "box_CharacterLoadedIdListener_63.LoadedIdReceived", "box_Print_v2_31.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveTimerListener_22_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_38();
    l0 = self.box_ActivityObjectiveTimerListener_22;
    l1 = self.box_SoundModifier_v2_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1085840733", "1085840733", "H4_Outpost_01_QUEST_B10", "box_ActivityObjectiveTimerListener_22.Enabled", "box_SoundModifier_v2_38.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ActivityObjectiveTimerListener_22_OnTime()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_ActivityObjectiveTimerListener_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|561621179", "561621179", "H4_Outpost_01_QUEST_B10", "box_ActivityObjectiveTimerListener_22.OnTime", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_47_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_49();
    l0 = self.box_MissionAckTriggerListener_47;
    l1 = self.box_ProximityTrigger_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|97553748", "97553748", "H4_Outpost_01_QUEST_B10", "box_MissionAckTriggerListener_47.Enabled", "box_ProximityTrigger_v2_49.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_103_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_118();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|298478858", "298478858", "H4_Outpost_01_QUEST_B10", "box_AddActivityObjective_v2_103.Out", "box_Simple_Node_118.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_77_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_66();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1360165408", "1360165408", "H4_Outpost_01_QUEST_B10", "box_EndActivityObjective_v2_77.Out", "box_EndActivityObjective_v2_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_51_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1596706785", "1596706785", "H4_Outpost_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_51.Disabled", "box_EndActivityObjective_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FastTravelModifier_v2_17_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|206234575", "206234575", "H4_Outpost_01_QUEST_B10", "box_FastTravelModifier_v2_17.Enabled", "box_Simple_Node_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetOasis_10_Out()
    local params, l0;
    self:OnExit_box_SetOasis_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_77();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|315955156", "315955156", "H4_Outpost_01_QUEST_B10", "box_SetOasis_10.Out", "box_EndActivityObjective_v2_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_H4_Outpost_01_QUEST_MovingObjects_27();
    l0 = self.box_H4_Outpost_01_QUEST_MovingObjects_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|143861782", "143861782", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_29.Out", "box_H4_Outpost_01_QUEST_MovingObjects_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_H4_Outpost_01_QUEST_MovingObjects_30();
    l0 = self.box_H4_Outpost_01_QUEST_MovingObjects_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1009479335", "1009479335", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_29.Out", "box_H4_Outpost_01_QUEST_MovingObjects_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_122_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1217031904", "1217031904", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_122.Out", "box_ActivityObjectiveMarkerModifier_v3_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_122_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_120();
    l0 = self.box_DisplayCustomUIMsg_v5_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|73192092", "73192092", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_122.Out", "box_DisplayCustomUIMsg_v5_120.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_122_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1090403420", "1090403420", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_122.Out", "box_ActivityObjectiveMarkerModifier_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_105_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_SetOasis_10();
    l0 = self.box_ExitZoneWarningListener_v3_105;
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|428174743", "428174743", "H4_Outpost_01_QUEST_B10", "box_ExitZoneWarningListener_v3_105.FailingZoneEntered", "box_SetOasis_10.FromOasis", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromOasis
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_123_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_120();
    l0 = self.box_MultipleOR_123;
    l1 = self.box_DisplayCustomUIMsg_v5_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1134844940", "1134844940", "H4_Outpost_01_QUEST_B10", "box_MultipleOR_123.Out", "box_DisplayCustomUIMsg_v5_120.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_1_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_70();
    l0 = self.box_Delay_v5_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|362326139", "362326139", "H4_Outpost_01_QUEST_B10", "box_Delay_v5_1.TimeElapsed", "box_ActivityRetry_70.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_67_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_59();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1336915317", "1336915317", "H4_Outpost_01_QUEST_B10", "box_Compare_Boolean_67.A_is_False", "box_SetBoolean_v2_59.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_67_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_118();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|290178581", "290178581", "H4_Outpost_01_QUEST_B10", "box_Compare_Boolean_67.A_is_True", "box_Simple_Node_118.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_92();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|645280216", "645280216", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_8.Out", "box_SetBoolean_v2_92.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1480958920", "1480958920", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_8.Out", "box_Simple_Node_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_43();
    l0 = self.box_SoundModifier_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|334201835", "334201835", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_8.Out", "box_SoundModifier_v2_43.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|976384025", "976384025", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_60.Out", "box_ActivityAcknowledgeGate_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_63();
    l0 = self.box_CharacterLoadedIdListener_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1246630469", "1246630469", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_60.Out", "box_CharacterLoadedIdListener_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_7_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1083540868", "1083540868", "H4_Outpost_01_QUEST_B10", "box_EndActivityObjective_v2_7.Out", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_49_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_50();
    l0 = self.box_ProximityTrigger_v2_49;
    l1 = self.box_Delay_v5_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1161476769", "1161476769", "H4_Outpost_01_QUEST_B10", "box_ProximityTrigger_v2_49.Enabled", "box_Delay_v5_50.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_49_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_55();
    l0 = self.box_ProximityTrigger_v2_49;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1730796377", "1730796377", "H4_Outpost_01_QUEST_B10", "box_ProximityTrigger_v2_49.OnOccupied", "box_SetBoolean_v2_55.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_74();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1812372166", "1812372166", "H4_Outpost_01_QUEST_B10", "box_AddActivityObjective_v2_15.Out", "box_AddActivityObjectiveProgress_v2_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_H4_Outpost_01_QUEST_RangeListener_106_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_67();
    l0 = self.box_H4_Outpost_01_QUEST_RangeListener_106;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|435174136", "435174136", "H4_Outpost_01_QUEST_B10", "box_H4_Outpost_01_QUEST_RangeListener_106.Destroyed", "box_Compare_Boolean_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_H4_Outpost_01_QUEST_RangeListener_106_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_28();
    l0 = self.box_H4_Outpost_01_QUEST_RangeListener_106;
    l1 = self.box_ProximityTrigger_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|771572386", "771572386", "H4_Outpost_01_QUEST_B10", "box_H4_Outpost_01_QUEST_RangeListener_106.Enabled", "box_ProximityTrigger_v2_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetActivityObjectiveProgress_v2_76_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_103();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|237284055", "237284055", "H4_Outpost_01_QUEST_B10", "box_SetActivityObjectiveProgress_v2_76.Out", "box_AddActivityObjective_v2_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FastTravelModifier_v2_12_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1225005532", "1225005532", "H4_Outpost_01_QUEST_B10", "box_FastTravelModifier_v2_12.Disabled", "box_AddActivityObjective_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_54_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_H4_Outpost_01_QUEST_RangeListener_106();
    l0 = self.box_H4_Outpost_01_QUEST_RangeListener_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1963897369", "1963897369", "H4_Outpost_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_54.Enabled", "box_H4_Outpost_01_QUEST_RangeListener_106.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_FastTravelModifier_v2_16_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_58();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1102343165", "1102343165", "H4_Outpost_01_QUEST_B10", "box_FastTravelModifier_v2_16.Enabled", "box_EndActivityObjective_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_115();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1884784006", "1884784006", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_9.Out", "box_Simple_Node_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_110();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|357608273", "357608273", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_9.Out", "box_Simple_Node_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_H4_Outpost_01_QUEST_Teleport_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_19();
    l0 = self.box_H4_Outpost_01_QUEST_Teleport_14;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|261965706", "261965706", "H4_Outpost_01_QUEST_B10", "box_H4_Outpost_01_QUEST_Teleport_14.Out", "box_Print_v2_19.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_55_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_41();
    l0 = self.box_NarrativeFade_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|206293782", "206293782", "H4_Outpost_01_QUEST_B10", "box_SetBoolean_v2_55.Out", "box_NarrativeFade_41.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_SetActivityObjectiveProgress_v2_80_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_64();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|518089287", "518089287", "H4_Outpost_01_QUEST_B10", "box_SetActivityObjectiveProgress_v2_80.Out", "box_Compare_Integers_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_100_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = self.box_MultipleOR_100;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1461764075", "1461764075", "H4_Outpost_01_QUEST_B10", "box_MultipleOR_100.Out", "box_OutputOrder_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_128_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_6();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|784933333", "784933333", "H4_Outpost_01_QUEST_B10", "box_Compare_Boolean_128.A_is_False", "box_MissionBlockLayer_6.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_128_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_126();
    l0 = self.box_NarrativeFade_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|530071055", "530071055", "H4_Outpost_01_QUEST_B10", "box_Compare_Boolean_128.A_is_True", "box_NarrativeFade_126.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_AddActivityObjectiveProgress_v2_74_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_74_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_76();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|141822049", "141822049", "H4_Outpost_01_QUEST_B10", "box_AddActivityObjectiveProgress_v2_74.Out", "box_SetActivityObjectiveProgress_v2_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_119_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_119;
    l1 = self.box_ActivityInitialized_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1461830531", "1461830531", "H4_Outpost_01_QUEST_B10", "box_MultipleOR_119.Out", "box_ActivityInitialized_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_53_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_18();
    l0 = self.box_Delay_v5_53;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|225457168", "225457168", "H4_Outpost_01_QUEST_B10", "box_Delay_v5_53.TimeElapsed", "box_ActivityEnd_18.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_6_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1819675025", "1819675025", "H4_Outpost_01_QUEST_B10", "box_MissionBlockLayer_6.Disabled", "box_MultipleOR_131.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EndActivityObjective_v2_58_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_20();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1201768214", "1201768214", "H4_Outpost_01_QUEST_B10", "box_EndActivityObjective_v2_58.Out", "box_EndActivityObjective_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_50_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_Delay_v5_50;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1389812865", "1389812865", "H4_Outpost_01_QUEST_B10", "box_Delay_v5_50.TimeElapsed", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_130();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1872817361", "1872817361", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_129.Out", "box_Simple_Node_130.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_53();
    l0 = self.box_Delay_v5_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1577766989", "1577766989", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_129.Out", "box_Delay_v5_53.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_28_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_69();
    l0 = self.box_ProximityTrigger_v2_28;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1552345992", "1552345992", "H4_Outpost_01_QUEST_B10", "box_ProximityTrigger_v2_28.Enabled", "box_Print_v2_69.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_28_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_121();
    l0 = self.box_ProximityTrigger_v2_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|791324054", "791324054", "H4_Outpost_01_QUEST_B10", "box_ProximityTrigger_v2_28.OnEmpty", "box_OutputOrder_v2_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_28_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_122();
    l0 = self.box_ProximityTrigger_v2_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|441049004", "441049004", "H4_Outpost_01_QUEST_B10", "box_ProximityTrigger_v2_28.OnOccupied", "box_OutputOrder_v2_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_129();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|726121254", "726121254", "H4_Outpost_01_QUEST_B10", "box_EndActivityObjective_v2_20.Out", "box_OutputOrder_v2_129.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_131_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_95();
    l0 = self.box_MultipleOR_131;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|505055748", "505055748", "H4_Outpost_01_QUEST_B10", "box_MultipleOR_131.Out", "box_AddActivityObjective_v2_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_121_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1678733539", "1678733539", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_121.Out", "box_ActivityObjectiveMarkerModifier_v3_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_121_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1238037440", "1238037440", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_121.Out", "box_MultipleOR_123.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_121_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|747131140", "747131140", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_121.Out", "box_ActivityObjectiveMarkerModifier_v3_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_49();
    l0 = self.box_ProximityTrigger_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|99866461", "99866461", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_42.Out", "box_ProximityTrigger_v2_49.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_44();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|200836594", "200836594", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_42.Out", "box_MissionBlockLayer_44.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_79();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1983927334", "1983927334", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_42.Out", "box_SetContextualStrategy_79.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_105();
    l0 = self.box_ExitZoneWarningListener_v3_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1810877239", "1810877239", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_91.Out", "box_ExitZoneWarningListener_v3_105.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_91_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveTimerListener_22();
    l0 = self.box_ActivityObjectiveTimerListener_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|51008965", "51008965", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_91.Out", "box_ActivityObjectiveTimerListener_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_45_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_45;
    l1 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|351870320", "351870320", "H4_Outpost_01_QUEST_B10", "box_ActivityAcknowledgeGate_45.Acknowledged", "box_MultipleOR_119.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_45_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_45;
    l1 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|938752810", "938752810", "H4_Outpost_01_QUEST_B10", "box_ActivityAcknowledgeGate_45.Reloaded", "box_MultipleOR_119.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetOasis_3_Out()
    local params, l0;
    self:OnExit_box_SetOasis_3_Out();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_78();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|875990138", "875990138", "H4_Outpost_01_QUEST_B10", "box_SetOasis_3.Out", "box_EndActivityObjective_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_5_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_1();
    l0 = self.box_Delay_v5_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|644603011", "644603011", "H4_Outpost_01_QUEST_B10", "box_MissionBlockLayer_5.Disabled", "box_Delay_v5_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_NarrativeFade_126_FadedIn()
    local l0, l1;
    l0 = self.box_NarrativeFade_126;
    l1 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|2027289651", "2027289651", "H4_Outpost_01_QUEST_B10", "box_NarrativeFade_126.FadedIn", "box_MultipleOR_131.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_92_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_92_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_16();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|67601473", "67601473", "H4_Outpost_01_QUEST_B10", "box_SetBoolean_v2_92.Out", "box_FastTravelModifier_v2_16.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_96_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_47();
    l0 = self.box_ActivityInitialized_96;
    l1 = self.box_MissionAckTriggerListener_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|512458028", "512458028", "H4_Outpost_01_QUEST_B10", "box_ActivityInitialized_96.Out", "box_MissionAckTriggerListener_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_105();
    l0 = self.box_ExitZoneWarningListener_v3_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|187624593", "187624593", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_13.Out", "box_ExitZoneWarningListener_v3_105.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveTimerListener_22();
    l0 = self.box_ActivityObjectiveTimerListener_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1018346138", "1018346138", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_13.Out", "box_ActivityObjectiveTimerListener_22.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_64_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|865405002", "865405002", "H4_Outpost_01_QUEST_B10", "box_Compare_Integers_64.A_ge_B", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_95_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_54();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1959425497", "1959425497", "H4_Outpost_01_QUEST_B10", "box_AddActivityObjective_v2_95.Out", "box_ActivityObjectiveMarkerModifier_v3_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_75_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|394161756", "394161756", "H4_Outpost_01_QUEST_B10", "box_EndActivityObjective_v2_75.Out", "box_MultipleOR_100.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_2();
    l0 = self.box_PlayDialog_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1142061506", "1142061506", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_37.Out", "box_PlayDialog_v6_2.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_17();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|227507374", "227507374", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_37.Out", "box_FastTravelModifier_v2_17.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_5();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1944616720", "1944616720", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_37.Out", "box_MissionBlockLayer_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_12();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|2016806259", "2016806259", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_61.Out", "box_FastTravelModifier_v2_12.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_51();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|2007713636", "2007713636", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_61.Out", "box_ActivityObjectiveMarkerModifier_v3_51.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetOasis_3();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1653440886", "1653440886", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_4.Out", "box_SetOasis_3.FromOasis", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromOasis
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_24();
    l0 = self.box_SoundModifier_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1527706294", "1527706294", "H4_Outpost_01_QUEST_B10", "box_OutputOrder_v2_4.Out", "box_SoundModifier_v2_24.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|@AddProgress");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_118_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|@DisableDamage");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_109_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|@DisableListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_130_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|@DisableRange");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_107_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|@EnableDamage");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_108_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|@FailListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_110_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|@StartTargetMovement");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_115_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_41()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|167343641");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_78_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.oRangeTimer,
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_44()
    local params, l0;
    DrawTextToScreen("Comment: Target Layer In", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Target Layer In");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|197727505");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_44_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189011577458294",
        -- missionLayerId,
        [1] = "27160217394360332",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|204559587");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_33_Disabled,
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_33_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2101285022978812302",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "H4_CultLocation_01_QUEST_B10_OBJ_02",
            id = "682543",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|212353611");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "E7_CultLocation_01_QUEST_B10_FAIL",
            id = "592364",
        },
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|253467407");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_81_Out,
    });
    params = {
        -- A,
        [0] = self.iCounter,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|258683599");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101853645508201497",
        -- Group,
        [1] = "#F38DC38B",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|383363237");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_66_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.oRange,
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|403790288");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_59_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_63()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015250085584015",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveTimerListener_22()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- ObjectiveId,
        [1] = self.oRangeTimer,
        -- Time,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_47()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- triggerId,
        [1] = "2103985772448190463",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|619950798");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_103_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = self.oRangeTimer,
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 30,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|645625070");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_77_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.oRangeTimer,
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|714646877");
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
        [8] = "Range Round 1 Loaded",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|766895200");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_51_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2105061359059223154",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "H4_CultLocation_01_QUEST_B10_OBJ_02",
            id = "682543",
        },
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|774300205");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_FastTravelModifier_v2_17_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|777023297");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2105061359059223154",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "H4_CultLocation_01_QUEST_B10_OBJ_02",
            id = "682543",
        },
    };
    return params;
end;

function export:OnEnter_box_SetOasis_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetOasis_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|783620508");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetOasis_10_Out,
    });
    params = {
        -- Oasis,
        [0] = {
            section = "Objectives",
            item = "E7_CultLocation_01_QUEST_B10_FAIL",
            id = "592364",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|796057465");
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

function export:OnEnter_box_OutputOrder_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|797875867");
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
                [0] = self.f_box_OutputOrder_v2_122_Out_0,
                [1] = self.f_box_OutputOrder_v2_122_Out_1,
                [2] = self.f_box_OutputOrder_v2_122_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|798050660");
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
        [8] = "H4_Outpost_01_Quest_B10_STARTED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_105()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2103985769556217854",
        -- WarningZoneTrigger,
        [3] = "2103985772448190463",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_24()
    local params;
    DrawTextToScreen("Comment: Sound: Fail", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Sound: Fail");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2278293383",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_1()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|843191259");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_67_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_67_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRangeStarted,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|844712740");
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

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|848066083");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_H4_Outpost_01_QUEST_MovingObjects_27()
    local params;
    params = {
        -- Delay_Start,
        [0] = 0,
        -- Pause_Bottom,
        [1] = 0,
        -- Pause_Top,
        [2] = 1,
        -- Target,
        [3] = "2101274382184795389",
        -- Target_EndPoint,
        [4] = "2101274387834522878",
        -- Target_Speed,
        [5] = 2,
        -- Target_StartPoint,
        [6] = "2101274388646120706",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|948253570");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_7_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "H4_CultLocation_01_QUEST_B10_OBJ_02",
            id = "682543",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_49()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103985772448190463",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_2()
    local params;
    params = {
        -- Group,
        [0] = self.eGiver,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1264164175",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1016733199");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_15_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = self.oRange,
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_H4_Outpost_01_QUEST_RangeListener_106()
    local params;
    params = {
        -- eInBreakable01,
        [0] = "2101274435817360645",
        -- eInBreakable02,
        [1] = "2101272846908011327",
        -- eInBreakable03,
        [2] = "2101272840295691065",
        -- eInBreakable04,
        [3] = "2101272844213171005",
        -- eInBreakable05,
        [4] = "2101274378384755963",
        -- eInBreakable06,
        [5] = "2101274444220648711",
        -- eInBreakable07,
        [6] = "2101272842751456059",
        -- eInBreakable08,
        [7] = "2101272791631276280",
        -- eInBreakable09,
        [8] = "2101274382184795389",
        -- eInBreakable10,
        [9] = "2101274449075555593",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1064601171");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_76_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.oRange,
        -- Progress,
        [1] = self.iCounter,
        -- ProgressId,
        [2] = self.iProgress,
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1071121512");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_12_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1076300304");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_54_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2101285022978812302",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "H4_CultLocation_01_QUEST_B10_OBJ_02",
            id = "682543",
        },
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1110492351");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_FastTravelModifier_v2_16_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1114256078");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1133971384");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_55_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1147681894");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = self.oFailReason,
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_H4_Outpost_01_QUEST_MovingObjects_30()
    local params;
    params = {
        -- Delay_Start,
        [0] = 1,
        -- Pause_Bottom,
        [1] = 0,
        -- Pause_Top,
        [2] = 1,
        -- Target,
        [3] = "2101274378384755963",
        -- Target_EndPoint,
        [4] = "2101635334075855005",
        -- Target_Speed,
        [5] = 3,
        -- Target_StartPoint,
        [6] = "2101635335432712353",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1213176977");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_80_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.oRange,
        -- Progress,
        [1] = self.iCounter,
        -- ProgressId,
        [2] = self.iProgress,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1303310389");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_128_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_128_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bInRange,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1307013511");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_74_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = self.oRange,
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = self.iTotalProgress,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_52()
    local params, l0;
    DrawTextToScreen("Comment: Static Range", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Static Range");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1347050682");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "45174615904324295",
        -- missionLayerId,
        [1] = "54181815159065288",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_53()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.25,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_6()
    local params, l0;
    DrawTextToScreen("Comment: Static Range", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Static Range");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1357119598");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_6_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "45174615904324295",
        -- missionLayerId,
        [1] = "54181815159065288",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1382538922");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_58_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.oRange,
        -- Success,
        [1] = true,
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

function export:OnEnter_box_OutputOrder_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1453661324");
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
                [0] = self.f_box_OutputOrder_v2_129_Out_0,
                [1] = self.f_box_OutputOrder_v2_129_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_28()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103985772448190463",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1562659048");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_20_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.oRangeTimer,
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1610949393");
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
                [0] = self.f_box_OutputOrder_v2_121_Out_0,
                [1] = self.f_box_OutputOrder_v2_121_Out_1,
                [2] = self.f_box_OutputOrder_v2_121_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1627843231");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
                [2] = self.f_box_OutputOrder_v2_42_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1631961719");
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
                [0] = self.f_box_OutputOrder_v2_91_Out_0,
                [1] = self.f_box_OutputOrder_v2_91_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_43()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "3878843753",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1795199913");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_120()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "H4_CultLocation_01_QUEST_B10_GOAL",
            id = "657051",
        },
        -- MessageType,
        [1] = 2,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SetOasis_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetOasis_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1823395276");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetOasis_3_Out,
    });
    params = {
        -- Oasis,
        [0] = {
            section = "Quest_Common",
            item = "UNI46_COMMON_FAIL_TIME",
            id = "782678",
        },
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_5()
    local params, l0;
    DrawTextToScreen("Comment: Target Layer In", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Target Layer In");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1848951133");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_5_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "63189011577458294",
        -- missionLayerId,
        [1] = "27160217394360332",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_126()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1869305381");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_92_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1974044519");
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
        [8] = "Teleport was completed",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|1999421496");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_38()
    local params;
    DrawTextToScreen("Comment: Sound: Start", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Sound: Start");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "499039454",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_64()
    local params, l0;
    DrawTextToScreen("Comment: Compare", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Compare Integers')-- Comment: Compare");
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|2040102096");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_64_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iCounter,
        -- B,
        [1] = self.iTotalProgress,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|2076818480");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_95_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "H4_CultLocation_01_QUEST_B10_OBJ_02",
            id = "682543",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|2080054354");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_75_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.oRange,
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|2101477701");
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
                [0] = self.f_box_OutputOrder_v2_37_Out_0,
                [1] = self.f_box_OutputOrder_v2_37_Out_1,
                [2] = self.f_box_OutputOrder_v2_37_Out_2,
            },
            count = 3,
        },
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|2127011826");
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

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_B10|2145029983");
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

function export:OnExit_box_IntegerArithmetics_v2_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iCounter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_59_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRangeStarted = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_63_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_63;
    self.eGiver = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetOasis_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.oFailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInRange = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_74_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.iProgress = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetOasis_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.oFailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_92_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bCompleted = l0:GetDataOutValue(0);
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
