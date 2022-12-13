LUACX -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni05/uni05_010/uni05_010_brief.domino
-- User graph: UNI05_010_BRIEF
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_BRIEF.UNI05_010_Brief_Skylar_VO_Long.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_BRIEF.UNI05_010_Brief_Skylar_VO_Short.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_BRIEF.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3881167353.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2918331193.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1700839822.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3787917215.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_BRIEF.UNI05_010_BRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
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
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_BRIEF.UNI05_010_Brief_Skylar_VO_Long.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Dylan",
                type = "entity",
            },
            [1] = {
                name = "Skylar",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_BRIEF.UNI05_010_Brief_Skylar_VO_Short.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Dylan",
                type = "entity",
            },
            [1] = {
                name = "Skylar",
                type = "entity",
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
    self._name = "UNI05_010_BRIEF";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF";
    self.Dylan = nil;
    self.PlayerGroup = nil;
    self.Skylar = nil;
    self.Skylar_Hitting_RV = false;
    self.Skylar_VO_Playing = false;
    self.bEliSpawned = false;
    self.eGiver = nil;
    self.eCanoe = "2096420593059501415";
    self.eSatellite = "2096420509227947363";
    self.eSeptic = "2096420472234186079";
    self.eGuitar = "2096698702086279919";
    self.eKeg = "2096420492645766497";
    self.box_Switch_30 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|15147973");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
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
                [0] = self.f_box_Switch_30_Output_0,
                [1] = self.f_box_Switch_30_Output_1,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_10 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|35046586");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_10_Loaded,
    });
    self.box_MultipleOR_55 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|206421549");
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
        [0] = self.f_box_MultipleOR_55_Out,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|320754694");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_ActivityInitialized_7 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|341246469");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_7_Out,
    });
    self.box_MultipleOR_61 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|341732555");
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
        [0] = self.f_box_MultipleOR_61_Out,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|359849335");
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
    self.box_ActivityAcknowledgeGate_8 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|481267449");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_8_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_8_Reloaded,
    });
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|517345704");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_PlayDialog_v6_44 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|525570650");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|531845437");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
    });
    self.box_PlayDialog_v6_43 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|551622658");
    l0:SetConnections({
    });
    self.box_UNI05_010_Brief_Skylar_VO_Long_54 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_BRIEF.UNI05_010_Brief_Skylar_VO_Long.debug.lua");
    l0 = self.box_UNI05_010_Brief_Skylar_VO_Long_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI05_010_Brief_Skylar_VO_Long_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|643855041");
    l0:SetConnections({
        -- Interrupted,
        [0] = self.f_box_UNI05_010_Brief_Skylar_VO_Long_54_Interrupted,
        -- Out,
        [1] = self.f_box_UNI05_010_Brief_Skylar_VO_Long_54_Out,
    });
    self.box_PlayDialog_v6_35 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|735548925");
    l0:SetConnections({
    });
    self.box_ContextualActionListener_66 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|834584788");
    l0:SetConnections({
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_66_Interrupt,
        -- Start,
        [8] = self.f_box_ContextualActionListener_66_Start,
    });
    self.box_EntityStatusListener_11 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1099971441");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_11_Loaded,
    });
    self.box_Delay_v5_45 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1128825725");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_45_TimeElapsed,
    });
    self.box_EntityStatusListener_17 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1215215238");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_17_Loaded,
    });
    self.box_Delay_v5_59 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1240601554");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_59_TimeElapsed,
    });
    self.box_Delay_v5_50 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1326052963");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_50_TimeElapsed,
    });
    self.box_PlayDialog_v6_37 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1331017918");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_39 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1370147254");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_39_OnBreak,
    });
    self.box_CharacterLoadedIdListener_47 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1408737671");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_47_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_47_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_47_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_47_LoadedIdReceived,
    });
    self.box_HealthListener_v6_51 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1476817183");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_51_Damaged,
    });
    self.box_ProximityRadiusListener_v3_60 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1536184058");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_60_AllFar,
    });
    self.box_MultipleOR_72 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1640648935");
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
        [0] = self.f_box_MultipleOR_72_Out,
    });
    self.box_EntityStatusListener_38 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1684532075");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_38_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_38_Unloaded,
    });
    self.box_OnceOnly_v3_15 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1848445743");
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
                [0] = self.f_box_OnceOnly_v3_15_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_NarrativeQuickCinema_V4_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V4_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V4_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1892687957");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V4_5_Finished,
        -- Paused,
        [3] = self.f_box_Brick_NarrativeQuickCinema_V4_5_Paused,
        -- Started,
        [5] = self.f_box_Brick_NarrativeQuickCinema_V4_5_Started,
    });
    self.box_Switch_21 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1905832257");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
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
                [0] = self.f_box_Switch_21_Output_0,
                [1] = self.f_box_Switch_21_Output_1,
                [2] = self.f_box_Switch_21_Output_2,
                [3] = self.f_box_Switch_21_Output_3,
            },
            count = 4,
        },
    });
    self.box_EntityStatusListener_9 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1950092411");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_9_Loaded,
    });
    self.box_UNI05_010_Brief_Skylar_VO_Short_53 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_BRIEF.UNI05_010_Brief_Skylar_VO_Short.debug.lua");
    l0 = self.box_UNI05_010_Brief_Skylar_VO_Short_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI05_010_Brief_Skylar_VO_Short_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1959532442");
    l0:SetConnections({
        -- Interrupted,
        [0] = self.f_box_UNI05_010_Brief_Skylar_VO_Short_53_Interrupted,
        -- Out,
        [1] = self.f_box_UNI05_010_Brief_Skylar_VO_Short_53_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|230972185", "230972185", "UNI05_010_BRIEF", "In", "box_OutputOrder_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_SetBoolean_v2_41();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1767756599", "1767756599", "UNI05_010_BRIEF", "OnLeaveZone", "box_SetBoolean_v2_41.False", self, l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_31();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1333024836", "1333024836", "UNI05_010_BRIEF", "box_Simple_Node_57.Out", "box_Compare_Boolean_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1858944451", "1858944451", "UNI05_010_BRIEF", "box_Simple_Node_57.Out", "box_Delay_v5_36.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_56_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_51();
    l0 = self.box_HealthListener_v6_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1582586278", "1582586278", "UNI05_010_BRIEF", "box_Simple_Node_56.Out", "box_HealthListener_v6_51.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_101_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_50();
    l0 = self.box_Delay_v5_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1324470983", "1324470983", "UNI05_010_BRIEF", "box_Simple_Node_101.Out", "box_Delay_v5_50.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_UNI05_010_Brief_Skylar_VO_Long_54();
    l0 = self.box_UNI05_010_Brief_Skylar_VO_Long_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|883621247", "883621247", "UNI05_010_BRIEF", "box_Simple_Node_101.Out", "box_UNI05_010_Brief_Skylar_VO_Long_54.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_UNI05_010_Brief_Skylar_VO_Short_53();
    l0 = self.box_UNI05_010_Brief_Skylar_VO_Short_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|636909619", "636909619", "UNI05_010_BRIEF", "box_Simple_Node_101.Out", "box_UNI05_010_Brief_Skylar_VO_Short_53.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_Switch_30_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_UNI05_010_Brief_Skylar_VO_Long_54();
    l0 = self.box_Switch_30;
    l1 = self.box_UNI05_010_Brief_Skylar_VO_Long_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1066455300", "1066455300", "UNI05_010_BRIEF", "box_Switch_30.Output", "box_UNI05_010_Brief_Skylar_VO_Long_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_30_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_UNI05_010_Brief_Skylar_VO_Short_53();
    l0 = self.box_Switch_30;
    l1 = self.box_UNI05_010_Brief_Skylar_VO_Short_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1296272652", "1296272652", "UNI05_010_BRIEF", "box_Switch_30.Output", "box_UNI05_010_Brief_Skylar_VO_Short_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_10_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_19();
    l0 = self.box_EntityStatusListener_10;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|93985661", "93985661", "UNI05_010_BRIEF", "box_EntityStatusListener_10.Loaded", "box_ShimmerModifier_v2_19.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_23_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|498101040", "498101040", "UNI05_010_BRIEF", "box_SetBoolean_v2_23.Out", "box_Simple_Node_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_25_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_25_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|389131609", "389131609", "UNI05_010_BRIEF", "box_SetBoolean_v2_25.Out", "box_Simple_Node_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_69_Out()
    self:OnExit_box_SetBoolean_v2_69_Out();
end;

function export:f_box_MultipleOR_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_MultipleOR_55;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1670250709", "1670250709", "UNI05_010_BRIEF", "box_MultipleOR_55.Out", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1965891832", "1965891832", "UNI05_010_BRIEF", "box_MultipleOR_2.Out", "box_ActivityInitialized_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V4_5();
    l0 = self.box_ActivityInitialized_7;
    l1 = self.box_Brick_NarrativeQuickCinema_V4_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1111178171", "1111178171", "UNI05_010_BRIEF", "box_ActivityInitialized_7.Out", "box_Brick_NarrativeQuickCinema_V4_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_61_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_50();
    l0 = self.box_MultipleOR_61;
    l1 = self.box_Delay_v5_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1865269829", "1865269829", "UNI05_010_BRIEF", "box_MultipleOR_61.Out", "box_Delay_v5_50.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1369437058", "1369437058", "UNI05_010_BRIEF", "box_OutputOrder_v2_12.Out", "box_OnceOnly_v3_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_66();
    l0 = self.box_ContextualActionListener_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|366768383", "366768383", "UNI05_010_BRIEF", "box_OutputOrder_v2_12.Out", "box_ContextualActionListener_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_51();
    l0 = self.box_HealthListener_v6_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1917442109", "1917442109", "UNI05_010_BRIEF", "box_OutputOrder_v2_12.Out", "box_HealthListener_v6_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_73();
    l0 = self.box_MultipleOR_14;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1915088785", "1915088785", "UNI05_010_BRIEF", "box_MultipleOR_14.Out", "box_SetBoolean_v2_73.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1152536978", "1152536978", "UNI05_010_BRIEF", "box_OutputOrder_v2_20.Out", "box_ActivityAcknowledgeGate_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_62();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1967053759", "1967053759", "UNI05_010_BRIEF", "box_OutputOrder_v2_20.Out", "box_Simple_Node_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|520781489", "520781489", "UNI05_010_BRIEF", "box_OutputOrder_v2_20.Out", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_58_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|761139560", "761139560", "UNI05_010_BRIEF", "box_SetContextualStrategy_58.Out", "box_OutputOrder_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_41_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_41_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|2076582892", "2076582892", "UNI05_010_BRIEF", "box_SetBoolean_v2_41.Out", "box_ActivityRetry_4.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_8_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1325593472", "1325593472", "UNI05_010_BRIEF", "box_ActivityAcknowledgeGate_8.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_8_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1905764018", "1905764018", "UNI05_010_BRIEF", "box_ActivityAcknowledgeGate_8.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_21();
    l0 = self.box_Delay_v5_36;
    l1 = self.box_Switch_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1578601885", "1578601885", "UNI05_010_BRIEF", "box_Delay_v5_36.TimeElapsed", "box_Switch_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_18();
    l0 = self.box_EntityStatusListener_13;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1120114814", "1120114814", "UNI05_010_BRIEF", "box_EntityStatusListener_13.Loaded", "box_ShimmerModifier_v2_18.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_16_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_23();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1378958712", "1378958712", "UNI05_010_BRIEF", "box_Compare_Boolean_16.A_is_False", "box_SetBoolean_v2_23.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UNI05_010_Brief_Skylar_VO_Long_54_Interrupted()
    local l0, l1;
    l0 = self.box_UNI05_010_Brief_Skylar_VO_Long_54;
    l1 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|263693216", "263693216", "UNI05_010_BRIEF", "box_UNI05_010_Brief_Skylar_VO_Long_54.Interrupted", "box_MultipleOR_72.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UNI05_010_Brief_Skylar_VO_Long_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = self.box_UNI05_010_Brief_Skylar_VO_Long_54;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|537940790", "537940790", "UNI05_010_BRIEF", "box_UNI05_010_Brief_Skylar_VO_Long_54.Out", "box_Simple_Node_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_40_Out()
    self:OnExit_box_SetBoolean_v2_40_Out();
end;

function export:f_box_ContextualActionListener_66_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_66;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|625577586", "625577586", "UNI05_010_BRIEF", "box_ContextualActionListener_66.Interrupt", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_66_Start()
    local l0, l1;
    l0 = self.box_ContextualActionListener_66;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1738700100", "1738700100", "UNI05_010_BRIEF", "box_ContextualActionListener_66.Start", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_71();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|372085022", "372085022", "UNI05_010_BRIEF", "box_OutputOrder_v2_28.Out", "box_SetBoolean_v2_71.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|511313024", "511313024", "UNI05_010_BRIEF", "box_OutputOrder_v2_28.Out", "box_Delay_v5_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_31_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_30();
    l0 = self.box_Switch_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1097726528", "1097726528", "UNI05_010_BRIEF", "box_Compare_Boolean_31.A_is_True", "box_Switch_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_16();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|604465035", "604465035", "UNI05_010_BRIEF", "box_OutputOrder_v2_63.Out", "box_Compare_Boolean_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_64();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1175073967", "1175073967", "UNI05_010_BRIEF", "box_OutputOrder_v2_63.Out", "box_BroadcastMessage_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_60();
    l0 = self.box_ProximityRadiusListener_v3_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1086196087", "1086196087", "UNI05_010_BRIEF", "box_Simple_Node_62.Out", "box_ProximityRadiusListener_v3_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_29_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_29_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|297138119", "297138119", "UNI05_010_BRIEF", "box_SetBoolean_v2_29.Out", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_56();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1933216754", "1933216754", "UNI05_010_BRIEF", "box_OutputOrder_v2_52.Out", "box_Simple_Node_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1771183548", "1771183548", "UNI05_010_BRIEF", "box_OutputOrder_v2_52.Out", "box_ActivityEnd_3.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_11_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_32();
    l0 = self.box_EntityStatusListener_11;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|604604010", "604604010", "UNI05_010_BRIEF", "box_EntityStatusListener_11.Loaded", "box_ShimmerModifier_v2_32.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_45_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = self.box_Delay_v5_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|343324941", "343324941", "UNI05_010_BRIEF", "box_Delay_v5_45.TimeElapsed", "box_OutputOrder_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_17_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_26();
    l0 = self.box_EntityStatusListener_17;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|345549964", "345549964", "UNI05_010_BRIEF", "box_EntityStatusListener_17.Loaded", "box_ShimmerModifier_v2_26.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|794284140", "794284140", "UNI05_010_BRIEF", "box_OutputOrder_v2_1.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1955370416", "1955370416", "UNI05_010_BRIEF", "box_OutputOrder_v2_1.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_119();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1065318565", "1065318565", "UNI05_010_BRIEF", "box_OutputOrder_v2_1.Out", "box_GetPlayerGroup_v2_119.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_38();
    l0 = self.box_EntityStatusListener_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|344427168", "344427168", "UNI05_010_BRIEF", "box_OutputOrder_v2_1.Out", "box_EntityStatusListener_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_59_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_58();
    l0 = self.box_Delay_v5_59;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1084136920", "1084136920", "UNI05_010_BRIEF", "box_Delay_v5_59.TimeElapsed", "box_SetContextualStrategy_58.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_50_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = self.box_Delay_v5_50;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|342273318", "342273318", "UNI05_010_BRIEF", "box_Delay_v5_50.TimeElapsed", "box_OutputOrder_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_48();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|2107720039", "2107720039", "UNI05_010_BRIEF", "box_OutputOrder_v2_46.Out", "box_Compare_Boolean_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_49();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|402390780", "402390780", "UNI05_010_BRIEF", "box_OutputOrder_v2_46.Out", "box_BroadcastMessage_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_39_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_40();
    l0 = self.box_StaticBreakableListener_39;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1515882088", "1515882088", "UNI05_010_BRIEF", "box_StaticBreakableListener_39.OnBreak", "box_SetBoolean_v2_40.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_47_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_47_LoadedIdReceived();
    params = self:OnEnter_box_Delay_v5_59();
    l0 = self.box_CharacterLoadedIdListener_47;
    l1 = self.box_Delay_v5_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|819923156", "819923156", "UNI05_010_BRIEF", "box_CharacterLoadedIdListener_47.LoadedIdReceived", "box_Delay_v5_59.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_51_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_51;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|442001538", "442001538", "UNI05_010_BRIEF", "box_HealthListener_v6_51.Damaged", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_119_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_119_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_47();
    l0 = self.box_CharacterLoadedIdListener_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|858676999", "858676999", "UNI05_010_BRIEF", "box_GetPlayerGroup_v2_119.Out", "box_CharacterLoadedIdListener_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_45();
    l0 = self.box_Delay_v5_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1469190509", "1469190509", "UNI05_010_BRIEF", "box_OutputOrder_v2_42.Out", "box_Delay_v5_45.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_22();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1163666111", "1163666111", "UNI05_010_BRIEF", "box_OutputOrder_v2_42.Out", "box_BroadcastMessage_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_101();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1652673225", "1652673225", "UNI05_010_BRIEF", "box_OutputOrder_v2_42.Out", "box_Simple_Node_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_60_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_60;
    l1 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|167293092", "167293092", "UNI05_010_BRIEF", "box_ProximityRadiusListener_v3_60.AllFar", "box_MultipleOR_61.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_48_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_25();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|588351798", "588351798", "UNI05_010_BRIEF", "box_Compare_Boolean_48.A_is_False", "box_SetBoolean_v2_25.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_27_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_101();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1604059809", "1604059809", "UNI05_010_BRIEF", "box_SetBoolean_v2_27.Out", "box_Simple_Node_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_69();
    l0 = self.box_MultipleOR_72;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1768583531", "1768583531", "UNI05_010_BRIEF", "box_MultipleOR_72.Out", "box_SetBoolean_v2_69.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_38_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_39();
    l0 = self.box_EntityStatusListener_38;
    l1 = self.box_StaticBreakableListener_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|688626696", "688626696", "UNI05_010_BRIEF", "box_EntityStatusListener_38.Loaded", "box_StaticBreakableListener_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_38_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_39();
    l0 = self.box_EntityStatusListener_38;
    l1 = self.box_StaticBreakableListener_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1842855996", "1842855996", "UNI05_010_BRIEF", "box_EntityStatusListener_38.Unloaded", "box_StaticBreakableListener_39.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_27();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1701464442", "1701464442", "UNI05_010_BRIEF", "box_OutputOrder_v2_76.Out", "box_SetBoolean_v2_27.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_65();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1188059345", "1188059345", "UNI05_010_BRIEF", "box_OutputOrder_v2_76.Out", "box_BroadcastMessage_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_71_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_71_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_29();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|629240230", "629240230", "UNI05_010_BRIEF", "box_SetBoolean_v2_71.Out", "box_SetBoolean_v2_29.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1282753719", "1282753719", "UNI05_010_BRIEF", "box_OutputOrder_v2_33.Out", "box_EntityStatusListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_11();
    l0 = self.box_EntityStatusListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1862350183", "1862350183", "UNI05_010_BRIEF", "box_OutputOrder_v2_33.Out", "box_EntityStatusListener_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|631107700", "631107700", "UNI05_010_BRIEF", "box_OutputOrder_v2_33.Out", "box_EntityStatusListener_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_10();
    l0 = self.box_EntityStatusListener_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|658876532", "658876532", "UNI05_010_BRIEF", "box_OutputOrder_v2_33.Out", "box_EntityStatusListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_17();
    l0 = self.box_EntityStatusListener_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1753994599", "1753994599", "UNI05_010_BRIEF", "box_OutputOrder_v2_33.Out", "box_EntityStatusListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_15_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_15;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|2097419388", "2097419388", "UNI05_010_BRIEF", "box_OnceOnly_v3_15.Out", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_5_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|772993980", "772993980", "UNI05_010_BRIEF", "box_Brick_NarrativeQuickCinema_V4_5.Finished", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_5_Paused()
    local l0, l1;
    l0 = self.box_Brick_NarrativeQuickCinema_V4_5;
    l1 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|209838690", "209838690", "UNI05_010_BRIEF", "box_Brick_NarrativeQuickCinema_V4_5.Paused", "box_MultipleOR_61.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_5_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|636944969", "636944969", "UNI05_010_BRIEF", "box_Brick_NarrativeQuickCinema_V4_5.Started", "box_OutputOrder_v2_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_21_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_35();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|2118303783", "2118303783", "UNI05_010_BRIEF", "box_Switch_21.Output", "box_PlayDialog_v6_35.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_37();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|655782716", "655782716", "UNI05_010_BRIEF", "box_Switch_21.Output", "box_PlayDialog_v6_37.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_43();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|2007767150", "2007767150", "UNI05_010_BRIEF", "box_Switch_21.Output", "box_PlayDialog_v6_43.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_44();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1525850969", "1525850969", "UNI05_010_BRIEF", "box_Switch_21.Output", "box_PlayDialog_v6_44.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_9_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_24();
    l0 = self.box_EntityStatusListener_9;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|888836230", "888836230", "UNI05_010_BRIEF", "box_EntityStatusListener_9.Loaded", "box_ShimmerModifier_v2_24.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI05_010_Brief_Skylar_VO_Short_53_Interrupted()
    local l0, l1;
    l0 = self.box_UNI05_010_Brief_Skylar_VO_Short_53;
    l1 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|386910757", "386910757", "UNI05_010_BRIEF", "box_UNI05_010_Brief_Skylar_VO_Short_53.Interrupted", "box_MultipleOR_72.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UNI05_010_Brief_Skylar_VO_Short_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = self.box_UNI05_010_Brief_Skylar_VO_Short_53;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|858167211", "858167211", "UNI05_010_BRIEF", "box_UNI05_010_Brief_Skylar_VO_Short_53.Out", "box_Simple_Node_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_73_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_73_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_45();
    l0 = self.box_Delay_v5_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1003970825", "1003970825", "UNI05_010_BRIEF", "box_SetBoolean_v2_73.Out", "box_Delay_v5_45.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:OnEnter_box_Simple_Node_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|@Play_VO");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_57_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|@Stop_Listeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_56_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|@Stop_Other_VO_and Timers");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_101_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_30()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eGuitar,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|44163010");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|64793216");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "Skylar_speaking_to_Player",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|97873551");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "Skylar_NOT_speaking_to_Player",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|114430126");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_25_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|138127471");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_69_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|349679021");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|380289572");
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

function export:OnEnter_box_SetContextualStrategy_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|427620089");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_58_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2098727220261432682",
        -- Group,
        [1] = self.Skylar,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|446565982");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_41_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|468150990");
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
        [8] = "UNI05_010_BRIEF script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|488325022");
    l0:SetConnections({
    });
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
        [4] = self.eCanoe,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_36()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_44()
    local params;
    params = {
        -- Group,
        [0] = "2097125819349472250",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1700839822",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eSeptic,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|535476121");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_16_A_is_False,
    });
    params = {
        -- A,
        [0] = self.Skylar_VO_Playing,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_43()
    local params;
    params = {
        -- Group,
        [0] = "2097125819349472250",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3787917215",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|605320387");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UNI05_010_Brief_Skylar_VO_Long_54()
    local params;
    params = {
        -- Dylan,
        [0] = "2097125819349472250",
        -- Skylar,
        [1] = self.Skylar,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_35()
    local params;
    params = {
        -- Group,
        [0] = "2097125819349472250",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3881167353",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|747284639");
    l0:SetConnections({
    });
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
        [4] = self.eGuitar,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|759221065");
    l0:SetConnections({
    });
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
        [4] = self.eKeg,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|802081624");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_40_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_66()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2096241939358684377",
        -- UserFilter,
        [1] = self.Skylar,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|903637734");
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

function export:OnEnter_box_Compare_Boolean_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|951320596");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_31_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Skylar_Hitting_RV,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|960315535");
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
                [0] = self.f_box_OutputOrder_v2_63_Out_0,
                [1] = self.f_box_OutputOrder_v2_63_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|974857665");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_62_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1002152183");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1089930253");
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
                [0] = self.f_box_OutputOrder_v2_52_Out_0,
                [1] = self.f_box_OutputOrder_v2_52_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eSatellite,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_45()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eKeg,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1226799919");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
                [3] = self.f_box_OutputOrder_v2_1_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1239104103");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "Skylar_speaking_to_Player",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_59()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.25,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_50()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_37()
    local params;
    params = {
        -- Group,
        [0] = "2097125819349472250",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2918331193",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1337278968");
    l0:SetConnections({
    });
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
        [4] = self.eSeptic,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1344686513");
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

function export:OnEnter_box_StaticBreakableListener_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2096420492645766497",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_47()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015183791252927",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_51()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.Skylar,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1478394613");
    l0:SetConnections({
    });
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
        [4] = self.eSatellite,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1480588263");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_119_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1483018442");
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

function export:OnEnter_box_ProximityRadiusListener_v3_60()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.PlayerGroup,
        -- farZone,
        [2] = 6,
        -- id2,
        [3] = self.Skylar,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1587640171");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_48_A_is_False,
    });
    params = {
        -- A,
        [0] = self.Skylar_VO_Playing,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1615895946");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_38()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2096420492645766497",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1721180360");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1757658433");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_71_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1817958540");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
                [2] = self.f_box_OutputOrder_v2_33_Out_2,
                [3] = self.f_box_OutputOrder_v2_33_Out_3,
                [4] = self.f_box_OutputOrder_v2_33_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V4_5()
    local params;
    params = {
        -- eNPC,
        [0] = self.Skylar,
        -- Interrupt STP on Talk,
        [1] = false,
        -- oObjective,
        [2] = {
            section = "Objectives",
            item = "UNI05_010_BRIEF_TalkToSkylar",
            id = "393185",
        },
    };
    return params;
end;

function export:OnEnter_box_Switch_21()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eCanoe,
    };
    return params;
end;

function export:OnEnter_box_UNI05_010_Brief_Skylar_VO_Short_53()
    local params;
    params = {
        -- Dylan,
        [0] = "2097125819349472250",
        -- Skylar,
        [1] = self.Skylar,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|1977244974");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_73_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|2007208929");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "Skylar_NOT_speaking_to_Player",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_BRIEF.domino|@UNI05_010_BRIEF|2038653619");
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

function export:OnExit_box_SetBoolean_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Skylar_VO_Playing = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Skylar_VO_Playing = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_69_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Skylar_VO_Playing = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_41_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.UNI05_010_BRIEF.bIsKegDestroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.UNI05_010_BRIEF.bIsKegDestroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Skylar_VO_Playing = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_47_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_47;
    self.Skylar = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_119_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Skylar_VO_Playing = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_71_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Skylar_Hitting_RV = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_73_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Skylar_Hitting_RV = l0:GetDataOutValue(0);
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
