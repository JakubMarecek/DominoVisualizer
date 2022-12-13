LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni34/uni34_010/uni34_010_debrief.domino
-- User graph: UNI34_010_DEBRIEF
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_CustomAttractLines.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3914151696.bnk]], "CSoundResource");
        cboxRes:LoadResource([[504558118.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2437133175.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1162394345.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3999285405.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1780314971.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2345722280.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2452067704.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI34/UNI34_010/UNI34_010_DEBRIEF.UNI34_010_DEBRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "RemoveItemFromInventory",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "ItemsAcquired",
                delayed = false,
            },
            [1] = {
                name = "ItemsRemoved",
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
                name = "AmountRequired",
                type = "int",
            },
            [1] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [2] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [3] = {
                name = "LootItemID",
                type = "genericdb",
            },
            [4] = {
                name = "MarkerTypeId",
                type = "database",
            },
            [5] = {
                name = "Objective",
                type = "oasis",
            },
            [6] = {
                name = "opt_eMarker",
                type = "entity",
            },
            [7] = {
                name = "ProtectItemOnSuccess",
                type = "bool",
            },
        },
        dataInCount = 8,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua")] = {
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
                name = "Interrupt_STP_on_Talk",
                type = "bool",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_CustomAttractLines.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "LongDelay10_20s",
            },
            [2] = {
                name = "MediumDelay5_8s",
            },
            [3] = {
                name = "ShortDelay2_3s",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Disabled",
                delayed = true,
            },
            [1] = {
                name = "Ended",
                delayed = true,
            },
            [2] = {
                name = "LineID_Updated",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "eNPC",
                type = "entity",
            },
            [1] = {
                name = "LoopLines",
                type = "bool",
            },
            [2] = {
                name = "RandomLineOrder",
                type = "bool",
            },
            [3] = {
                name = "SoundID_01",
                type = "Sound",
            },
            [4] = {
                name = "SoundID_02",
                type = "Sound",
            },
            [5] = {
                name = "SoundID_03",
                type = "Sound",
            },
            [6] = {
                name = "SoundID_04",
                type = "Sound",
            },
            [7] = {
                name = "SoundID_05",
                type = "Sound",
            },
            [8] = {
                name = "SoundID_06",
                type = "Sound",
            },
            [9] = {
                name = "SoundID_07",
                type = "Sound",
            },
            [10] = {
                name = "SoundID_08",
                type = "Sound",
            },
            [11] = {
                name = "SoundID_09",
                type = "Sound",
            },
        },
        dataInCount = 12,
        dataOut = {
            [0] = {
                name = "LineID",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/UniversalInteractionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceInteraction",
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
                name = "Interacted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "disableOnUse",
                type = "bool",
            },
            [1] = {
                name = "displayId",
                type = "oasis",
            },
            [2] = {
                name = "interactor",
                type = "entity",
            },
            [3] = {
                name = "state",
                type = "bool",
            },
            [4] = {
                name = "usableEntity",
                type = "entity",
            },
            [5] = {
                name = "usageType",
                type = "string",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI34_010_DEBRIEF";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF";
    self.eQuestGiver = nil;
    self.gPlayer = nil;
    self.box_ContextualActionListener_44 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|42537509");
    l0:SetConnections({
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_44_Disabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_44_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_44_Interrupt,
        -- Start,
        [8] = self.f_box_ContextualActionListener_44_Start,
    });
    self.box_UniversalInteractionModifier_v2_15 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|88194009");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_15_Enabled,
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|92488668");
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
        [0] = self.f_box_MultipleOR_48_Out,
    });
    self.box_MultipleOR_57 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|180116276");
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
        [0] = self.f_box_MultipleOR_57_Out,
    });
    self.box_Gate_v3_1 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|215054124");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_1_Out,
    });
    self.box_ProximityRadiusListener_v3_26 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|296857773");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_26_SomeoneNear,
    });
    self.box_Music_Quest_v2_31 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|313924744");
    l0:SetConnections({
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|404039187");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_Realization_CustomAttractLines_46 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_CustomAttractLines.debug.lua");
    l0 = self.box_Realization_CustomAttractLines_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Realization_CustomAttractLines_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|408458842");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Realization_CustomAttractLines_46_Disabled,
    });
    self.box_CharacterLoadedIdListener_3 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|408731608");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_3_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_3_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_3_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_3_LoadedIdReceived,
    });
    self.box_ActivityInitialized_16 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|443452494");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_16_Out,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|519043196");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_StartCelebration_12 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|664060885");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_12_Ended,
    });
    self.box_RemoveEntity_v2_18 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|806736446");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|876647166");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_PlayDialog_v6_47 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|886966194");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_47_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_47_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_47_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_47_Stopped,
    });
    self.box_OnceOnly_v3_49 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1149319916");
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
                [0] = self.f_box_OnceOnly_v3_49_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1169349472");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
    self.box_Gate_v3_20 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1246980144");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_20_Out,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1394922248");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_Gate_v3_10 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1500345110");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_10_Out,
    });
    self.box_OnceOnly_v3_33 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1509119565");
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
                [0] = self.f_box_OnceOnly_v3_33_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_32 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1511648137");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_32_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_32_Out,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1602798542");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
        [0] = self.f_box_MultipleOR_24_Out,
    });
    self.box_Brick_AcquireObject_v5_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua");
    l0 = self.box_Brick_AcquireObject_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v5_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1632293346");
    l0:SetConnections({
        -- ItemsRemoved,
        [1] = self.f_box_Brick_AcquireObject_v5_8_ItemsRemoved,
        -- Started,
        [2] = self.f_box_Brick_AcquireObject_v5_8_Started,
    });
    self.box_ProximityRadiusListener_v3_50 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1688157286");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_50_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_50_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_50_SomeoneNear,
    });
    self.box_Brick_AcquireObject_v5_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua");
    l0 = self.box_Brick_AcquireObject_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1736385903");
    l0:SetConnections({
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1769890797");
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
        [0] = self.f_box_MultipleOR_23_Out,
    });
    self.box_Brick_NarrativeQuickCinema_V4_53 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V4_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V4_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1798179187");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V4_53_Finished,
        -- Started,
        [5] = self.f_box_Brick_NarrativeQuickCinema_V4_53_Started,
    });
    self.box_ContextualActionListener_35 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1804430681");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_35_Enabled,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_35_Interrupt,
    });
    self.box_RemoveEntity_v2_58 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1877168238");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_29 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1891852167");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_45 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|2144602418");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_45_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_45_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_45_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_45_Stopped,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|581565554", "581565554", "UNI34_010_DEBRIEF", "In", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|634375764", "634375764", "UNI34_010_DEBRIEF", "OnLeaveZone", "box_OutputOrder_v2_30.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_54_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_10();
    l0 = self.box_Gate_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1594614721", "1594614721", "UNI34_010_DEBRIEF", "box_Simple_Node_54.Out", "box_Gate_v3_10.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_20();
    l0 = self.box_Gate_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|547853856", "547853856", "UNI34_010_DEBRIEF", "box_Simple_Node_54.Out", "box_Gate_v3_20.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Simple_Node_55();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|2022659868", "2022659868", "UNI34_010_DEBRIEF", "box_Simple_Node_54.Out", "box_Simple_Node_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ContextualActionListener_44();
    l0 = self.box_ContextualActionListener_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1103733316", "1103733316", "UNI34_010_DEBRIEF", "box_Simple_Node_54.Out", "box_ContextualActionListener_44.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_1();
    l0 = self.box_Gate_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|381211018", "381211018", "UNI34_010_DEBRIEF", "box_Simple_Node_54.Out", "box_Gate_v3_1.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_55_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_51();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|920551977", "920551977", "UNI34_010_DEBRIEF", "box_Simple_Node_55.Out", "box_UseContextualActionModifier_v3_51.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_26();
    l0 = self.box_ProximityRadiusListener_v3_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1035546253", "1035546253", "UNI34_010_DEBRIEF", "box_OutputOrder_v2_11.Out", "box_ProximityRadiusListener_v3_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|106169961", "106169961", "UNI34_010_DEBRIEF", "box_OutputOrder_v2_11.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_44_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_50();
    l0 = self.box_ContextualActionListener_44;
    l1 = self.box_ProximityRadiusListener_v3_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|388715075", "388715075", "UNI34_010_DEBRIEF", "box_ContextualActionListener_44.Disabled", "box_ProximityRadiusListener_v3_50.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ContextualActionListener_44_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_44;
    l1 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|950644204", "950644204", "UNI34_010_DEBRIEF", "box_ContextualActionListener_44.End", "box_MultipleOR_57.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_44_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_44;
    l1 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1812881737", "1812881737", "UNI34_010_DEBRIEF", "box_ContextualActionListener_44.Interrupt", "box_MultipleOR_57.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_44_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_ContextualActionListener_44;
    l1 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|175105835", "175105835", "UNI34_010_DEBRIEF", "box_ContextualActionListener_44.Start", "box_Delay_v5_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_15_Enabled()
    local l0, l1;
    l0 = self.box_UniversalInteractionModifier_v2_15;
    l1 = self.box_ActivityInitialized_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1985360815", "1985360815", "UNI34_010_DEBRIEF", "box_UniversalInteractionModifier_v2_15.Enabled", "box_ActivityInitialized_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Realization_CustomAttractLines_46();
    l0 = self.box_MultipleOR_48;
    l1 = self.box_Realization_CustomAttractLines_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|682700591", "682700591", "UNI34_010_DEBRIEF", "box_MultipleOR_48.Out", "box_Realization_CustomAttractLines_46.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_57_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_57;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|113898148", "113898148", "UNI34_010_DEBRIEF", "box_MultipleOR_57.Out", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_32();
    l0 = self.box_Gate_v3_1;
    l1 = self.box_Gate_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|203611674", "203611674", "UNI34_010_DEBRIEF", "box_Gate_v3_1.Out", "box_Gate_v3_32.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_26_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_32();
    l0 = self.box_ProximityRadiusListener_v3_26;
    l1 = self.box_Gate_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1681066821", "1681066821", "UNI34_010_DEBRIEF", "box_ProximityRadiusListener_v3_26.SomeoneNear", "box_Gate_v3_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_MultipleOR_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|738759525", "738759525", "UNI34_010_DEBRIEF", "box_MultipleOR_36.Out", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Realization_CustomAttractLines_46_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_20();
    l0 = self.box_Realization_CustomAttractLines_46;
    l1 = self.box_Gate_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|884165770", "884165770", "UNI34_010_DEBRIEF", "box_Realization_CustomAttractLines_46.Disabled", "box_Gate_v3_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_3_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_3_LoadedIdReceived();
    params = self:OnEnter_box_GetPlayerGroup_v2_9();
    l0 = self.box_CharacterLoadedIdListener_3;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|2103807067", "2103807067", "UNI34_010_DEBRIEF", "box_CharacterLoadedIdListener_3.LoadedIdReceived", "box_GetPlayerGroup_v2_9.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_ActivityInitialized_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1001697553", "1001697553", "UNI34_010_DEBRIEF", "box_ActivityInitialized_16.Out", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_3();
    l0 = self.box_CharacterLoadedIdListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|653301785", "653301785", "UNI34_010_DEBRIEF", "box_OutputOrder_v2_4.Out", "box_CharacterLoadedIdListener_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1398063115", "1398063115", "UNI34_010_DEBRIEF", "box_OutputOrder_v2_4.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_9_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1905594184", "1905594184", "UNI34_010_DEBRIEF", "box_GetPlayerGroup_v2_9.Out", "box_OutputOrder_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_45();
    l0 = self.box_MultipleOR_25;
    l1 = self.box_PlayDialog_v6_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|760870816", "760870816", "UNI34_010_DEBRIEF", "box_MultipleOR_25.Out", "box_PlayDialog_v6_45.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_27_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_27();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|624113821", "624113821", "UNI34_010_DEBRIEF", "box_UseContextualActionModifier_v3_27.Enabled", "box_UseContextualActionModifier_v3_27.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_27_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_22();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|964887449", "964887449", "UNI34_010_DEBRIEF", "box_UseContextualActionModifier_v3_27.UseCalled", "box_UseContextualActionModifier_v3_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V4_53();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|206379891", "206379891", "UNI34_010_DEBRIEF", "box_OutputOrder_v2_28.Out", "box_Brick_NarrativeQuickCinema_V4_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_29();
    l0 = self.box_Music_Quest_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1066131481", "1066131481", "UNI34_010_DEBRIEF", "box_OutputOrder_v2_28.Out", "box_Music_Quest_v2_29.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_StartCelebration_12_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_17();
    l0 = self.box_StartCelebration_12;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1958225929", "1958225929", "UNI34_010_DEBRIEF", "box_StartCelebration_12.Ended", "box_ActivityEnd_17.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_59_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1321039887", "1321039887", "UNI34_010_DEBRIEF", "box_UseContextualActionModifier_v3_59.Disabled", "box_UseContextualActionModifier_v3_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|2061158248", "2061158248", "UNI34_010_DEBRIEF", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|104556673", "104556673", "UNI34_010_DEBRIEF", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_47_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_45();
    l0 = self.box_PlayDialog_v6_47;
    l1 = self.box_PlayDialog_v6_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1965214797", "1965214797", "UNI34_010_DEBRIEF", "box_PlayDialog_v6_47.Finished", "box_PlayDialog_v6_45.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_47_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_47;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|378619015", "378619015", "UNI34_010_DEBRIEF", "box_PlayDialog_v6_47.FinishedInterrupted", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_47_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_47;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|27415237", "27415237", "UNI34_010_DEBRIEF", "box_PlayDialog_v6_47.QueueCancelled", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_47_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_47;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|2123363535", "2123363535", "UNI34_010_DEBRIEF", "box_PlayDialog_v6_47.Stopped", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_18();
    l0 = self.box_RemoveEntity_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1930706226", "1930706226", "UNI34_010_DEBRIEF", "box_OutputOrder_v2_19.Out", "box_RemoveEntity_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_21();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1424687615", "1424687615", "UNI34_010_DEBRIEF", "box_OutputOrder_v2_19.Out", "box_SetContextualStrategy_21.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_22_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_22();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1176318402", "1176318402", "UNI34_010_DEBRIEF", "box_UseContextualActionModifier_v3_22.Enabled", "box_UseContextualActionModifier_v3_22.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_22_UseCalled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|508664580", "508664580", "UNI34_010_DEBRIEF", "box_UseContextualActionModifier_v3_22.UseCalled", "box_ActivityAcknowledgeGate_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OnceOnly_v3_49_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_47();
    l0 = self.box_OnceOnly_v3_49;
    l1 = self.box_PlayDialog_v6_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|615205779", "615205779", "UNI34_010_DEBRIEF", "box_OnceOnly_v3_49.Out", "box_PlayDialog_v6_47.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_51_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_58();
    l0 = self.box_RemoveEntity_v2_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1173098940", "1173098940", "UNI34_010_DEBRIEF", "box_UseContextualActionModifier_v3_51.Disabled", "box_RemoveEntity_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_50();
    l0 = self.box_Delay_v5_2;
    l1 = self.box_ProximityRadiusListener_v3_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1128385854", "1128385854", "UNI34_010_DEBRIEF", "box_Delay_v5_2.TimeElapsed", "box_ProximityRadiusListener_v3_50.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_12();
    l0 = self.box_StartCelebration_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1021948488", "1021948488", "UNI34_010_DEBRIEF", "box_SetContextualStrategy_21.Out", "box_StartCelebration_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_20_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_20;
    l1 = self.box_OnceOnly_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1977838553", "1977838553", "UNI34_010_DEBRIEF", "box_Gate_v3_20.Out", "box_OnceOnly_v3_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_15();
    l0 = self.box_MultipleOR_14;
    l1 = self.box_UniversalInteractionModifier_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|734647411", "734647411", "UNI34_010_DEBRIEF", "box_MultipleOR_14.Out", "box_UniversalInteractionModifier_v2_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_44();
    l0 = self.box_Gate_v3_10;
    l1 = self.box_ContextualActionListener_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|295365498", "295365498", "UNI34_010_DEBRIEF", "box_Gate_v3_10.Out", "box_ContextualActionListener_44.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_33_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_59();
    l0 = self.box_OnceOnly_v3_33;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|473433541", "473433541", "UNI34_010_DEBRIEF", "box_OnceOnly_v3_33.Out", "box_UseContextualActionModifier_v3_59.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_32_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_35();
    l0 = self.box_Gate_v3_32;
    l1 = self.box_ContextualActionListener_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|61874735", "61874735", "UNI34_010_DEBRIEF", "box_Gate_v3_32.Closed", "box_ContextualActionListener_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_32_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_32;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1174567115", "1174567115", "UNI34_010_DEBRIEF", "box_Gate_v3_32.Out", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_24_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_24;
    l1 = self.box_OnceOnly_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1670040326", "1670040326", "UNI34_010_DEBRIEF", "box_MultipleOR_24.Out", "box_OnceOnly_v3_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_31();
    l0 = self.box_Music_Quest_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|967648060", "967648060", "UNI34_010_DEBRIEF", "box_OutputOrder_v2_30.Out", "box_Music_Quest_v2_31.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1000303956", "1000303956", "UNI34_010_DEBRIEF", "box_OutputOrder_v2_30.Out", "box_ActivityRetry_7.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_AcquireObject_v5_8_ItemsRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_Brick_AcquireObject_v5_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|649654494", "649654494", "UNI34_010_DEBRIEF", "box_Brick_AcquireObject_v5_8.ItemsRemoved", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_AcquireObject_v5_8_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_AcquireObject_v5_13();
    l0 = self.box_Brick_AcquireObject_v5_8;
    l1 = self.box_Brick_AcquireObject_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|6156815", "6156815", "UNI34_010_DEBRIEF", "box_Brick_AcquireObject_v5_8.Started", "box_Brick_AcquireObject_v5_13.RemoveItemFromInventory", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveItemFromInventory
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_50_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_50;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|415664940", "415664940", "UNI34_010_DEBRIEF", "box_ProximityRadiusListener_v3_50.Disabled", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_50_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_1();
    l0 = self.box_ProximityRadiusListener_v3_50;
    l1 = self.box_Gate_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1536099408", "1536099408", "UNI34_010_DEBRIEF", "box_ProximityRadiusListener_v3_50.Enabled", "box_Gate_v3_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_50_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_50;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1792788772", "1792788772", "UNI34_010_DEBRIEF", "box_ProximityRadiusListener_v3_50.SomeoneNear", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_10();
    l0 = self.box_MultipleOR_23;
    l1 = self.box_Gate_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|953328638", "953328638", "UNI34_010_DEBRIEF", "box_MultipleOR_23.Out", "box_Gate_v3_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_53_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_AcquireObject_v5_8();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_53;
    l1 = self.box_Brick_AcquireObject_v5_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|133607139", "133607139", "UNI34_010_DEBRIEF", "box_Brick_NarrativeQuickCinema_V4_53.Finished", "box_Brick_AcquireObject_v5_8.RemoveItemFromInventory", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveItemFromInventory
    l1:Exec(1, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_53_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_54();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_53;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1819738637", "1819738637", "UNI34_010_DEBRIEF", "box_Brick_NarrativeQuickCinema_V4_53.Started", "box_Simple_Node_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_35_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Realization_CustomAttractLines_46();
    l0 = self.box_ContextualActionListener_35;
    l1 = self.box_Realization_CustomAttractLines_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1424984814", "1424984814", "UNI34_010_DEBRIEF", "box_ContextualActionListener_35.Enabled", "box_Realization_CustomAttractLines_46.ShortDelay2_3s", l0:GetLuaBox(), l1:GetLuaBox());
    -- ShortDelay2_3s
    l1:Exec(3, params);
end;

function export:f_box_ContextualActionListener_35_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_35;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|814485134", "814485134", "UNI34_010_DEBRIEF", "box_ContextualActionListener_35.Interrupt", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_54();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|754736667", "754736667", "UNI34_010_DEBRIEF", "box_OutputOrder_v2_34.Out", "box_Simple_Node_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1389814841", "1389814841", "UNI34_010_DEBRIEF", "box_OutputOrder_v2_34.Out", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_PlayDialog_v6_45_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_45;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1251426651", "1251426651", "UNI34_010_DEBRIEF", "box_PlayDialog_v6_45.Finished", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_45_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_45;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1109508841", "1109508841", "UNI34_010_DEBRIEF", "box_PlayDialog_v6_45.FinishedInterrupted", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_45_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_45;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1641229666", "1641229666", "UNI34_010_DEBRIEF", "box_PlayDialog_v6_45.QueueCancelled", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_45_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_45;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|207053696", "207053696", "UNI34_010_DEBRIEF", "box_PlayDialog_v6_45.Stopped", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:OnEnter_box_Simple_Node_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|@Disabler");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_54_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|@StopPlayDialog");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_55_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|18323612");
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

function export:OnEnter_box_ContextualActionListener_44()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2099613629023259154",
        -- UserFilter,
        [1] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|44686089");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_15()
    local params;
    DrawTextToScreen("Comment: Open Hatch", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'UniversalInteractionModifier_v2')-- Comment: Open Hatch");
    params = {
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = "2103496596275605823",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_1()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_26()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = self.eQuestGiver,
        -- nearZone,
        [4] = 6,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_31()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 0,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "504558118",
        -- StopEvent,
        [7] = "2345722280",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = true,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_Realization_CustomAttractLines_46()
    local params;
    params = {
        -- eNPC,
        [0] = self.eQuestGiver,
        -- LoopLines,
        [1] = true,
        -- RandomLineOrder,
        [2] = true,
        -- SoundID_01,
        [3] = "1780314971",
        -- SoundID_02,
        [4] = "2452067704",
        -- SoundID_03,
        [5] = "2437133175",
        -- SoundID_04,
        [6] = "3914151696",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015201653466527",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|466963340");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|492395795");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|544096202");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_27_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_27_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104481204079179351",
        -- Entity,
        [1] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|557751782");
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

function export:OnEnter_box_StartCelebration_12()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|690567902");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_59_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099613629023259154",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_18()
    local params;
    params = {
        -- Group,
        [0] = "2103196388551580660",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_47()
    local params;
    params = {
        -- Group,
        [0] = self.eQuestGiver,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1162394345",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1050972740");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1118240609");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_22_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_22_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099698138062264429",
        -- Entity,
        [1] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1168897107");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_51_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099613629023259154",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4.5,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1206817085");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_21_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105599499769485460",
        -- Group,
        [1] = "#6DB169CF",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_20()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_10()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_32()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1551089818");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "UNI34_010_Debrief script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1606731747");
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

function export:OnEnter_box_Brick_AcquireObject_v5_8()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bRequiresObjective,
        [1] = false,
        -- CompletePreviousObjective,
        [2] = false,
        -- LootItemID,
        [3] = "9015250078678856",
        -- ProtectItemOnSuccess,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_50()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = self.eQuestGiver,
        -- nearZone,
        [4] = 6,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v5_13()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bRequiresObjective,
        [1] = false,
        -- CompletePreviousObjective,
        [2] = false,
        -- LootItemID,
        [3] = "9015250078678856",
        -- ProtectItemOnSuccess,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V4_53()
    local params;
    params = {
        -- eNPC,
        [0] = self.eQuestGiver,
        -- Interrupt STP on Talk,
        [1] = true,
        -- oObjective,
        [2] = {
            section = "Objectives",
            item = "UNI34_010_Debrief_OBJ_TalkToWillis",
            id = "546779",
        },
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_35()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2099613629023259154",
        -- UserFilter,
        [1] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_58()
    local params;
    params = {
        -- Group,
        [0] = "2099613629023259154",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_29()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 0,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "504558118",
        -- StopEvent,
        [7] = "2345722280",
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

function export:OnEnter_box_ActivityEnd_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|1980761840");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_DEBRIEF.domino|@UNI34_010_DEBRIEF|2131692386");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_45()
    local params;
    params = {
        -- Group,
        [0] = self.eQuestGiver,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3999285405",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_3_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_3;
    self.eQuestGiver = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
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
