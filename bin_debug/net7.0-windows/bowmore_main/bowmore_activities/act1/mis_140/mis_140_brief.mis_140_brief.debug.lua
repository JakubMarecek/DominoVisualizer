LUAC -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act1/mis_140/mis_140_brief.domino
-- User graph: mis_140_brief
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputPriorityModifier_v4.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_BRIEF.WorldMapTutorial.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/Bowmore_ACT1_Start.globals.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_BRIEF.mis_140_brief.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua")] = {
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
                name = "LineStarted",
                delayed = true,
            },
            [4] = {
                name = "OasisLineStarted",
                delayed = true,
            },
            [5] = {
                name = "Paused",
                delayed = true,
            },
            [6] = {
                name = "Resumed",
                delayed = true,
            },
            [7] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "b_IsNPCPersistentCharacter",
                type = "bool",
            },
            [1] = {
                name = "b_WaitForConvoEndOnSkip",
                type = "bool",
            },
            [2] = {
                name = "CheckedOasisID",
                type = "int",
            },
            [3] = {
                name = "e_MobileObjectiveMarker",
                type = "entity",
            },
            [4] = {
                name = "eNPC",
                type = "entity",
            },
            [5] = {
                name = "Interrupt_STP_on_Talk",
                type = "bool",
            },
            [6] = {
                name = "oObjective",
                type = "oasis",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "TriggeredLineId",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua")] = {
        stateless = false,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")] = {
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
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Active",
                delayed = false,
            },
            [1] = {
                name = "Canceled",
                delayed = false,
            },
            [2] = {
                name = "Completed",
                delayed = false,
            },
            [3] = {
                name = "Failed",
                delayed = false,
            },
            [4] = {
                name = "Inactive",
                delayed = false,
            },
            [5] = {
                name = "Out",
                delayed = false,
            },
            [6] = {
                name = "Unavailable",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "activityDescriptorID",
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
                name = "InCAIndex",
                type = "int",
            },
            [2] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "OutCAIndex",
                type = "int",
            },
            [1] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/UI/OverrideMenuAccessibility_v2.lua")] = {
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
                name = "ActivityLogMenuEnabled",
                type = "bool",
            },
            [1] = {
                name = "AvatarCreationMenuEnabled",
                type = "bool",
            },
            [2] = {
                name = "AvatarCustomizationMenuEnabled",
                type = "bool",
            },
            [3] = {
                name = "ChallengeMenuEnabled",
                type = "bool",
            },
            [4] = {
                name = "HomebaseMenuEnabled",
                type = "bool",
            },
            [5] = {
                name = "LootMenuEnabled",
                type = "bool",
            },
            [6] = {
                name = "OnlineMenuEnabled",
                type = "bool",
            },
            [7] = {
                name = "PerksMenuEnabled",
                type = "bool",
            },
            [8] = {
                name = "SquadMenuEnabled",
                type = "bool",
            },
            [9] = {
                name = "WorldmapMenuEnabled",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_BRIEF.WorldMapTutorial.debug.lua")] = {
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
    self._name = "mis_140_brief";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief";
    self.QuestGiver = nil;
    self.EXTRA02 = "2106845081387406047";
    self.EXTRA01 = "2106856617881386603";
    self.bob = "2106845081387406047";
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|15809856");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_RequestTutorial_v3_15 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|36380262");
    l0:SetConnections({
        -- OnHidden,
        [1] = self.f_box_RequestTutorial_v3_15_OnHidden,
        -- Out,
        [2] = self.f_box_RequestTutorial_v3_15_Out,
        -- RequestFailure,
        [3] = self.f_box_RequestTutorial_v3_15_RequestFailure,
    });
    self.box_Delay_v5_76 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|80136474");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_76_TimeElapsed,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|211625993");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_TeleportPawns_52 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|403599625");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_52_Out,
    });
    self.box_WorldMapTutorial_6 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_BRIEF.WorldMapTutorial.debug.lua");
    l0 = self.box_WorldMapTutorial_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WorldMapTutorial_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|417920377");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_WorldMapTutorial_6_Out,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|585268418");
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
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|585597247");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_14_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_EntityStatusListener_70 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|637736004");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_70_Loaded,
    });
    self.box_Delay_v5_56 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|717238166");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_56_TimeElapsed,
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|765089291");
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
        [0] = self.f_box_MultipleOR_58_Out,
    });
    self.box_NarrativeFade_54 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|811425397");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_54_FadedIn,
    });
    self.box_ContextualActionListener_64 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|859665480");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_64_Start,
    });
    self.box_EntityStatusListener_75 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|936661386");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_75_Loaded,
    });
    self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|956830966");
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
    self.box_InputPriorityModifier_v4_55 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1075702070");
    l0:SetConnections({
        -- OnRelease,
        [0] = self.f_box_InputPriorityModifier_v4_55_OnRelease,
    });
    self.box_LockTimeOfDay_51 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
    l0 = self.box_LockTimeOfDay_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockTimeOfDay_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1144284756");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LockTimeOfDay_51_Out,
    });
    self.box_Delay_v5_73 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1333563149");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_73_TimeElapsed,
    });
    self.box_TeleportPawns_69 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1399488891");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_69_Out,
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1530033806");
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
        [0] = self.f_box_MultipleOR_63_Out,
    });
    self.box_CharacterLoadedIdListener_v2_8 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1678043119");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_8_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_8_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_8_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_8_LoadedIdReceived,
    });
    self.box_ContextualActionListener_67 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1728186753");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_67_Start,
    });
    self.box_RemoveEntity_v2_18 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1738197455");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1758816232");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_OnceOnly_v3_68 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1821043154");
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
                [0] = self.f_box_OnceOnly_v3_68_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_NarrativeQuickCinema_V7_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V7_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V7_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1824519368");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V7_4_Finished,
        -- Resumed,
        [6] = self.f_box_Brick_NarrativeQuickCinema_V7_4_Resumed,
        -- Started,
        [7] = self.f_box_Brick_NarrativeQuickCinema_V7_4_Started,
    });
    self.box_Delay_v5_60 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1887414171");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_60_TimeElapsed,
    });
    self.box_Delay_v5_78 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1968134047");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_78_TimeElapsed,
    });
    self.box_LockTimeOfDay_50 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
    l0 = self.box_LockTimeOfDay_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockTimeOfDay_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|2016210477");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LockTimeOfDay_50_Out,
    });
    self.box_OverrideMenuAccessibility_v2_48 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|2055247067");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1788217266", "1788217266", "mis_140_brief", "In", "box_OutputOrder_v2_47.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_FastTravelModifier_v2_12();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|162326570", "162326570", "mis_140_brief", "OnLeaveZone", "box_FastTravelModifier_v2_12.SetEnabled", self, l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|499854498", "499854498", "mis_140_brief", "box_Simple_Node_36.Out", "box_OutputOrder_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_42();
    l0 = self.box_ActivityInitialized_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1885265128", "1885265128", "mis_140_brief", "box_ActivityInitialized_1.Out", "box_ActivityMiscInfoModifier_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestTutorial_v3_15_OnHidden()
    local l0, l1;
    l0 = self.box_RequestTutorial_v3_15;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|266275965", "266275965", "mis_140_brief", "box_RequestTutorial_v3_15.OnHidden", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestTutorial_v3_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_RequestTutorial_v3_15;
    l1 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|141725341", "141725341", "mis_140_brief", "box_RequestTutorial_v3_15.Out", "box_Delay_v5_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RequestTutorial_v3_15_RequestFailure()
    local l0, l1;
    l0 = self.box_RequestTutorial_v3_15;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|605459075", "605459075", "mis_140_brief", "box_RequestTutorial_v3_15.RequestFailure", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_71_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|759109021", "759109021", "mis_140_brief", "box_Compare_Boolean_71.A_is_False", "box_OutputOrder_v2_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_76_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_76;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1164866725", "1164866725", "mis_140_brief", "box_Delay_v5_76.TimeElapsed", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_FastTravelModifier_v2_49_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LockTimeOfDay_51();
    l0 = self.box_LockTimeOfDay_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|50652952", "50652952", "mis_140_brief", "box_FastTravelModifier_v2_49.Enabled", "box_LockTimeOfDay_51.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_18();
    l0 = self.box_Delay_v5_20;
    l1 = self.box_RemoveEntity_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1509641734", "1509641734", "mis_140_brief", "box_Delay_v5_20.TimeElapsed", "box_RemoveEntity_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_22();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|22885478", "22885478", "mis_140_brief", "box_OutputOrder_v2_27.Out", "box_SetContextualStrategy_22.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_23();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|949746903", "949746903", "mis_140_brief", "box_OutputOrder_v2_27.Out", "box_SetContextualStrategy_23.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_79();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|842073918", "842073918", "mis_140_brief", "box_OutputOrder_v2_27.Out", "box_UseContextualActionModifier_v3_79.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_7();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1689519264", "1689519264", "mis_140_brief", "box_OutputOrder_v2_27.Out", "box_MissionBlockLayer_7.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_8();
    l0 = self.box_CharacterLoadedIdListener_v2_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1769218179", "1769218179", "mis_140_brief", "box_ActivityMiscInfoModifier_v2_42.Out", "box_CharacterLoadedIdListener_v2_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_25_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_49();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1342570023", "1342570023", "mis_140_brief", "box_UseContextualActionModifier_v3_25.Disabled", "box_FastTravelModifier_v2_49.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_65();
    l0 = self.box_TeleportPawns_52;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1292638427", "1292638427", "mis_140_brief", "box_TeleportPawns_52.Out", "box_SetContextualStrategy_65.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_13();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1889121775", "1889121775", "mis_140_brief", "box_OutputOrder_v2_21.Out", "box_UseContextualActionModifier_v3_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_13_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_17();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|2089127963", "2089127963", "mis_140_brief", "box_UseContextualActionModifier_v3_13.Disabled", "box_UseContextualActionModifier_v3_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_WorldMapTutorial_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_WorldMapTutorial_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|624778228", "624778228", "mis_140_brief", "box_WorldMapTutorial_6.Out", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FastTravelModifier_v2_12_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_43();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1225600107", "1225600107", "mis_140_brief", "box_FastTravelModifier_v2_12.Enabled", "box_ActivityRetry_v2_43.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1316997459", "1316997459", "mis_140_brief", "box_OutputOrder_v2_47.Out", "box_ActivityAcknowledgeGate_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_46();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1185690156", "1185690156", "mis_140_brief", "box_OutputOrder_v2_47.Out", "box_GetActivityState_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|451640608", "451640608", "mis_140_brief", "box_MultipleOR_3.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_14_Started()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_44();
    l0 = self.box_Delay_v5_14;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1937924139", "1937924139", "mis_140_brief", "box_Delay_v5_14.Started", "box_UseContextualActionModifier_v3_44.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestTutorial_v3_15();
    l0 = self.box_Delay_v5_14;
    l1 = self.box_RequestTutorial_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|632442602", "632442602", "mis_140_brief", "box_Delay_v5_14.TimeElapsed", "box_RequestTutorial_v3_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_70_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_69();
    l0 = self.box_EntityStatusListener_70;
    l1 = self.box_TeleportPawns_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|167355921", "167355921", "mis_140_brief", "box_EntityStatusListener_70.Loaded", "box_TeleportPawns_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_19_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_19();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|795076702", "795076702", "mis_140_brief", "box_UseContextualActionModifier_v3_19.Enabled", "box_UseContextualActionModifier_v3_19.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_62();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1540670774", "1540670774", "mis_140_brief", "box_SetContextualStrategy_74.Out", "box_UseContextualActionModifier_v3_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_7_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_9();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|594783064", "594783064", "mis_140_brief", "box_MissionBlockLayer_7.Disabled", "box_MissionBlockLayer_9.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_56_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_54();
    l0 = self.box_Delay_v5_56;
    l1 = self.box_NarrativeFade_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|260827678", "260827678", "mis_140_brief", "box_Delay_v5_56.TimeElapsed", "box_NarrativeFade_54.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = self.box_MultipleOR_58;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1643927461", "1643927461", "mis_140_brief", "box_MultipleOR_58.Out", "box_ActivityEnd_5.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LockTimeOfDay_50();
    l0 = self.box_LockTimeOfDay_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1204278625", "1204278625", "mis_140_brief", "box_OutputOrder_v2_59.Out", "box_LockTimeOfDay_50.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_71();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|491833342", "491833342", "mis_140_brief", "box_OutputOrder_v2_59.Out", "box_Compare_Boolean_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_66();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|429399147", "429399147", "mis_140_brief", "box_OutputOrder_v2_59.Out", "box_Print_v2_66.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_54_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_55();
    l0 = self.box_NarrativeFade_54;
    l1 = self.box_InputPriorityModifier_v4_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|139244159", "139244159", "mis_140_brief", "box_NarrativeFade_54.FadedIn", "box_InputPriorityModifier_v4_55.Release", l0:GetLuaBox(), l1:GetLuaBox());
    -- Release
    l1:Exec(0, params);
end;

function export:f_box_ContextualActionListener_64_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_ContextualActionListener_64;
    l1 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1811821434", "1811821434", "mis_140_brief", "box_ContextualActionListener_64.Start", "box_Delay_v5_73.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_11_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_72();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1672064013", "1672064013", "mis_140_brief", "box_SetBoolean_v2_11.Out", "box_Print_v2_72.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_40_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_25();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1664569848", "1664569848", "mis_140_brief", "box_UseContextualActionModifier_v3_40.Disabled", "box_UseContextualActionModifier_v3_25.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_75_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_52();
    l0 = self.box_EntityStatusListener_75;
    l1 = self.box_TeleportPawns_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1677394752", "1677394752", "mis_140_brief", "box_EntityStatusListener_75.Loaded", "box_TeleportPawns_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_78();
    l0 = self.box_MultipleOR_41;
    l1 = self.box_Delay_v5_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|212886854", "212886854", "mis_140_brief", "box_MultipleOR_41.Out", "box_Delay_v5_78.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_26();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|2016970056", "2016970056", "mis_140_brief", "box_SetContextualStrategy_22.Out", "box_UseContextualActionModifier_v3_26.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_79_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_80();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1868448736", "1868448736", "mis_140_brief", "box_UseContextualActionModifier_v3_79.Enabled", "box_UseContextualActionModifier_v3_80.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_9_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1178936198", "1178936198", "mis_140_brief", "box_MissionBlockLayer_9.Activated", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_46_Unavailable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1620289233", "1620289233", "mis_140_brief", "box_GetActivityState_v2_46.Unavailable", "box_OutputOrder_v2_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InputPriorityModifier_v4_55_OnRelease()
    local l0, l1;
    l0 = self.box_InputPriorityModifier_v4_55;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|30236069", "30236069", "mis_140_brief", "box_InputPriorityModifier_v4_55.OnRelease", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_57_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|2115399758", "2115399758", "mis_140_brief", "box_GetActivityState_v2_57.Active", "box_MultipleOR_58.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_57_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_56();
    l0 = self.box_Delay_v5_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|616015809", "616015809", "mis_140_brief", "box_GetActivityState_v2_57.Completed", "box_Delay_v5_56.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetActivityState_v2_57_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1871980927", "1871980927", "mis_140_brief", "box_GetActivityState_v2_57.Inactive", "box_MultipleOR_58.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_57_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|201056489", "201056489", "mis_140_brief", "box_GetActivityState_v2_57.Unavailable", "box_MultipleOR_58.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_24();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|84953782", "84953782", "mis_140_brief", "box_SetContextualStrategy_23.Out", "box_UseContextualActionModifier_v3_24.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_29_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1262104614", "1262104614", "mis_140_brief", "box_UseContextualActionModifier_v3_29.Disabled", "box_UseContextualActionModifier_v3_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LockTimeOfDay_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_57();
    l0 = self.box_LockTimeOfDay_51;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|646203026", "646203026", "mis_140_brief", "box_LockTimeOfDay_51.Out", "box_GetActivityState_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_62_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_62();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1143537933", "1143537933", "mis_140_brief", "box_UseContextualActionModifier_v3_62.Enabled", "box_UseContextualActionModifier_v3_62.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_62_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_67();
    l0 = self.box_ContextualActionListener_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|638388025", "638388025", "mis_140_brief", "box_UseContextualActionModifier_v3_62.UseCalled", "box_ContextualActionListener_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_73_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_73;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|234622166", "234622166", "mis_140_brief", "box_Delay_v5_73.TimeElapsed", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TeleportPawns_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_74();
    l0 = self.box_TeleportPawns_69;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|760877949", "760877949", "mis_140_brief", "box_TeleportPawns_69.Out", "box_SetContextualStrategy_74.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_65_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_77();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|656871423", "656871423", "mis_140_brief", "box_SetContextualStrategy_65.Out", "box_UseContextualActionModifier_v3_77.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_63_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_63;
    l1 = self.box_OnceOnly_v3_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|712436093", "712436093", "mis_140_brief", "box_MultipleOR_63.Out", "box_OnceOnly_v3_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_39_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_40();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|2029787379", "2029787379", "mis_140_brief", "box_UseContextualActionModifier_v3_39.Disabled", "box_UseContextualActionModifier_v3_40.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_77_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_77();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|883005099", "883005099", "mis_140_brief", "box_UseContextualActionModifier_v3_77.Enabled", "box_UseContextualActionModifier_v3_77.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_77_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_64();
    l0 = self.box_ContextualActionListener_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1212572680", "1212572680", "mis_140_brief", "box_UseContextualActionModifier_v3_77.UseCalled", "box_ContextualActionListener_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_8_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_8_LoadedIdReceived();
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V7_4();
    l0 = self.box_CharacterLoadedIdListener_v2_8;
    l1 = self.box_Brick_NarrativeQuickCinema_V7_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1879929973", "1879929973", "mis_140_brief", "box_CharacterLoadedIdListener_v2_8.LoadedIdReceived", "box_Brick_NarrativeQuickCinema_V7_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_ContextualActionListener_67_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_76();
    l0 = self.box_ContextualActionListener_67;
    l1 = self.box_Delay_v5_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|959627920", "959627920", "mis_140_brief", "box_ContextualActionListener_67.Start", "box_Delay_v5_76.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_70();
    l0 = self.box_EntityStatusListener_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1286824354", "1286824354", "mis_140_brief", "box_OutputOrder_v2_61.Out", "box_EntityStatusListener_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_75();
    l0 = self.box_EntityStatusListener_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1629364678", "1629364678", "mis_140_brief", "box_OutputOrder_v2_61.Out", "box_EntityStatusListener_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_61_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_60();
    l0 = self.box_Delay_v5_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1424351736", "1424351736", "mis_140_brief", "box_OutputOrder_v2_61.Out", "box_Delay_v5_60.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|652160783", "652160783", "mis_140_brief", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|453153393", "453153393", "mis_140_brief", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_30_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_19();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|320721842", "320721842", "mis_140_brief", "box_UseContextualActionModifier_v3_30.Disabled", "box_UseContextualActionModifier_v3_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_68_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_11();
    l0 = self.box_OnceOnly_v3_68;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|873688520", "873688520", "mis_140_brief", "box_OnceOnly_v3_68.Out", "box_SetBoolean_v2_11.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_4_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_4;
    l1 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|780667245", "780667245", "mis_140_brief", "box_Brick_NarrativeQuickCinema_V7_4.Finished", "box_Delay_v5_14.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_4_Resumed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_4;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|2037933883", "2037933883", "mis_140_brief", "box_Brick_NarrativeQuickCinema_V7_4.Resumed", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_4_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|737377720", "737377720", "mis_140_brief", "box_Brick_NarrativeQuickCinema_V7_4.Started", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_60_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_60;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|919981827", "919981827", "mis_140_brief", "box_Delay_v5_60.TimeElapsed", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_29();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1130719759", "1130719759", "mis_140_brief", "box_OutputOrder_v2_28.Out", "box_UseContextualActionModifier_v3_29.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_30();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1777240416", "1777240416", "mis_140_brief", "box_OutputOrder_v2_28.Out", "box_UseContextualActionModifier_v3_30.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_78_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_78;
    l1 = self.box_WorldMapTutorial_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1508044674", "1508044674", "mis_140_brief", "box_Delay_v5_78.TimeElapsed", "box_WorldMapTutorial_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_53();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|85653689", "85653689", "mis_140_brief", "box_OutputOrder_v2_10.Out", "box_SoundMixing_53.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_38();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|751392322", "751392322", "mis_140_brief", "box_OutputOrder_v2_10.Out", "box_UseContextualActionModifier_v3_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LockTimeOfDay_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_48();
    l0 = self.box_LockTimeOfDay_50;
    l1 = self.box_OverrideMenuAccessibility_v2_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|461808528", "461808528", "mis_140_brief", "box_LockTimeOfDay_50.Out", "box_OverrideMenuAccessibility_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_38_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_39();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1580032566", "1580032566", "mis_140_brief", "box_UseContextualActionModifier_v3_38.Disabled", "box_UseContextualActionModifier_v3_39.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_44_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_45();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1543601461", "1543601461", "mis_140_brief", "box_UseContextualActionModifier_v3_44.Enabled", "box_UseContextualActionModifier_v3_45.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_17_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_17();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|279002454", "279002454", "mis_140_brief", "box_UseContextualActionModifier_v3_17.Enabled", "box_UseContextualActionModifier_v3_17.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_16_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|409622024", "409622024", "mis_140_brief", "box_UseContextualActionModifier_v3_16.Enabled", "box_UseContextualActionModifier_v3_16.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|@Gomap");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_15()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015352368002292",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|59248725");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_71_A_is_False,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.Bowmore_ACT1_Start.bNPCSpawned,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_76()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|187836384");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_FastTravelModifier_v2_49_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|354286100");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|374257369");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
                [2] = self.f_box_OutputOrder_v2_27_Out_2,
                [3] = self.f_box_OutputOrder_v2_27_Out_3,
            },
            count = 5,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|378510467");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_42_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|390476917");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_25_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108693785566259643",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_52()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2108695805610167141",
        -- LoadingScreen,
        [2] = true,
        -- Pawns,
        [4] = self.EXTRA02,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|408958223");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|411426174");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_13_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108683261778596397",
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|458211625");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_FastTravelModifier_v2_12_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|501214561");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|531760478");
    l0:SetConnections({
    });
    params = {
        -- bool,
        [0] = PersistentGlobals.Bowmore_ACT1_Start.bNPCSpawned,
        -- color,
        [1] = "magenta",
        -- duration,
        [3] = 10,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "NPC HAVE ALREADY BEEN SPAWNED: ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|546469531");
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
                [0] = self.f_box_OutputOrder_v2_47_Out_0,
                [1] = self.f_box_OutputOrder_v2_47_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_14()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|592967408");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2107383355126336379",
        -- Entity,
        [2] = self.EXTRA01,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_70()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.EXTRA01,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|651603010");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2107743261274670448",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|675019050");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_19_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108693785566259643",
        -- Entity,
        [2] = self.EXTRA02,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|682367070");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_74_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108695829532380008",
        -- Group,
        [1] = self.EXTRA01,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_7()
    local params, l0;
    DrawTextToScreen("Comment: DISABLE CLOSED DOORS", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: DISABLE CLOSED DOORS");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|699763379");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_7_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "81203499741500658",
        -- missionLayerId,
        [1] = "99217898251779965",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_56()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|785122588");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
                [1] = self.f_box_OutputOrder_v2_59_Out_1,
                [2] = self.f_box_OutputOrder_v2_59_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_54()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_64()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2108693785566259643",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|873556656");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|935162065");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_40_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108693820043438536",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_75()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.EXTRA02,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1000455272");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_22_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2107176392945831980",
        -- Group,
        [1] = self.EXTRA01,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1021194014");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2106856617789111912",
        -- Entity,
        [2] = self.EXTRA02,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1048709003");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_79_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108683261778596397",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_9()
    local params, l0;
    DrawTextToScreen("Comment: ACTIVATE OPENED DOORS", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: ACTIVATE OPENED DOORS");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1062680321");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_9_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "81203499741500658",
        -- missionLayerId,
        [1] = "90210698996241652",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1063760615");
    l0:SetConnections({
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_46_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015323223918718",
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_55()
    local params;
    params = {
        -- InputPriority,
        [0] = "menu",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1083635673");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_57_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_57_Completed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_57_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_57_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015323223918718",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1110385506");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_23_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2107176392945831980",
        -- Group,
        [1] = self.EXTRA02,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1118114047");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_29_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108697046409026593",
    };
    return params;
end;

function export:OnEnter_box_LockTimeOfDay_51()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1226233558");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_62_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_62_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108693820043438536",
        -- Entity,
        [2] = self.EXTRA01,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_73()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_69()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2108695796296715105",
        -- LoadingScreen,
        [2] = true,
        -- Pawns,
        [4] = self.EXTRA01,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1494578756");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_65_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108695829532380008",
        -- Group,
        [1] = self.EXTRA02,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_45()
    local params, l0;
    DrawTextToScreen("Comment: ENABLE POST QCA CONVERSATION", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'UseContextualActionModifier_v3')-- Comment: ENABLE POST QCA CONVERSATION");
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1535153801");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2109996402946884618",
        -- Entity,
        [2] = self.QuestGiver,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1556352712");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_39_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108697061193948201",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1619576889");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_77_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_77_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108693785566259643",
        -- Entity,
        [2] = self.EXTRA02,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015218968118442",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1703275084");
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
        [8] = "NPC IN PLACE",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1712365945");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_M140_Exterior_Amb_Mute",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_67()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2108693820043438536",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_18()
    local params;
    params = {
        -- Group,
        [0] = "2109591979166806536",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1757327833");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
                [2] = self.f_box_OutputOrder_v2_61_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1792643569");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_30_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108697061193948201",
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V7_4()
    local params;
    params = {
        -- b_IsNPCPersistentCharacter,
        [0] = true,
        -- b_WaitForConvoEndOnSkip,
        [1] = true,
        -- eNPC,
        [4] = self.QuestGiver,
        -- Interrupt STP on Talk,
        [5] = false,
        -- oObjective,
        [6] = {
            section = "Objectives",
            item = "MIS_240_GOAL",
            id = "1033396",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_60()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|1900754147");
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

function export:OnEnter_box_Delay_v5_78()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|2001253053");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LockTimeOfDay_50()
    local params;
    params = {
        -- Hour,
        [0] = 14,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|2016932952");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_38_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108697046409026593",
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_48()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = false,
        -- AvatarCustomizationMenuEnabled,
        [2] = false,
        -- ChallengeMenuEnabled,
        [3] = false,
        -- HomebaseMenuEnabled,
        [4] = false,
        -- LootMenuEnabled,
        [5] = false,
        -- OnlineMenuEnabled,
        [6] = false,
        -- PerksMenuEnabled,
        [7] = false,
        -- SquadMenuEnabled,
        [8] = false,
        -- WorldmapMenuEnabled,
        [9] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|2073371553");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_44_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109996402946884618",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|2101091693");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_17_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107743261274670448",
        -- Entity,
        [2] = self.QuestGiver,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_BRIEF.domino|@mis_140_brief|2118961454");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_16_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108693820043438536",
        -- Entity,
        [2] = self.EXTRA01,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.Bowmore_ACT1_Start.bNPCSpawned = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_8_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_8;
    self.QuestGiver = l0:GetDataOutValue(0);
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
