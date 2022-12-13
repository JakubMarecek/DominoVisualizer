LUAC}� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni31/uni31_020_b02.domino
-- User graph: UNI31_020_B02_main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TaggingModifier_v3.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2173164202.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3972846395.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2498730874.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3398012219.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2808718868.bnk]], "CSoundResource");
        cboxRes:LoadResource([[31046000.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1402761980.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3705561996.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1730903901.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1713830973.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2594697706.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3837360592.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B02.UNI31_020_B02_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "extraMarker",
                delayed = false,
            },
            [1] = {
                name = "Failed",
                delayed = false,
            },
            [2] = {
                name = "PlayerDetected",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bPlayerDetection",
                type = "bool",
            },
            [2] = {
                name = "eGuardsCS",
                type = "entity",
            },
            [3] = {
                name = "eTargetCS",
                type = "entity",
            },
            [4] = {
                name = "Objective",
                type = "oasis",
            },
            [5] = {
                name = "sDamageType",
                type = "string",
            },
            [6] = {
                name = "TargetGroup",
                type = "group",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "eNumberOfEscaped",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/AI/NavLinkModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Bind_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Bind",
            },
            [1] = {
                name = "UnBind",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Bound",
                delayed = false,
            },
            [1] = {
                name = "UnBound",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "EntityA",
                type = "entity",
            },
            [2] = {
                name = "EntityB",
                type = "entity",
            },
            [3] = {
                name = "IsMultiBeatBind",
                type = "bool",
            },
            [4] = {
                name = "PositionOnly",
                type = "bool",
            },
            [5] = {
                name = "RemoveOffset",
                type = "bool",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/GetHealthState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Critical",
                delayed = false,
            },
            [1] = {
                name = "Dead",
                delayed = false,
            },
            [2] = {
                name = "Down",
                delayed = false,
            },
            [3] = {
                name = "Healthy",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Health",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/TaggingModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "TagEntity",
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
                name = "Tagged",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "Pawns",
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
    self._name = "UNI31_020_B02_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main";
    self.i_CounterPerkinsFarVO = 0;
    self.i_CounterPerkinsNearVO = 0;
    self.ePerkins_NPC = nil;
    self.player = nil;
    self.box_PlayDialog_v6_76 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|8518849");
    l0:SetConnections({
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|139002280");
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
    self.box_HealthListener_v6_17 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|216116157");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_17_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_17_Killed,
    });
    self.box_PlayDialog_v6_67 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|267008446");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_61 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|267224670");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_61_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_61_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_61_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_61_LoadedIdReceived,
    });
    self.box_Bind_v4_19 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|284265400");
    l0:SetConnections({
        -- UnBound,
        [1] = self.f_box_Bind_v4_19_UnBound,
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|344619283");
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
        [0] = self.f_box_MultipleOR_30_Out,
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|349164211");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|366086103");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_ActivityInitialized_44 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|387467089");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_44_Out,
    });
    self.box_NavLinkModifier_18 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|394195124");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_18_Activated,
    });
    self.box_Switch_66 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|409134709");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 8,
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
                [0] = self.f_box_Switch_66_Output_0,
                [1] = self.f_box_Switch_66_Output_1,
                [2] = self.f_box_Switch_66_Output_2,
                [3] = self.f_box_Switch_66_Output_3,
                [4] = self.f_box_Switch_66_Output_4,
                [5] = self.f_box_Switch_66_Output_5,
                [6] = self.f_box_Switch_66_Output_6,
                [7] = self.f_box_Switch_66_Output_7,
            },
            count = 8,
        },
    });
    self.box_ContextualActionListener_3 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|505432000");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_3_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_3_Interrupt,
    });
    self.box_Delay_v5_42 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|602871670");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_42_TimeElapsed,
    });
    self.box_Brick_Kill_Target_CORE_v2_27 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua");
    l0 = self.box_Brick_Kill_Target_CORE_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Kill_Target_CORE_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|607089783");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Brick_Kill_Target_CORE_v2_27_Started,
        -- Success,
        [4] = self.f_box_Brick_Kill_Target_CORE_v2_27_Success,
    });
    self.box_PlayDialog_v6_77 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|750369905");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_77_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_77_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_77_StartedPriorityFailed,
    });
    self.box_Bind_v4_9 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|762249545");
    l0:SetConnections({
        -- UnBound,
        [1] = self.f_box_Bind_v4_9_UnBound,
    });
    self.box_OnceOnly_v3_6 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|768420041");
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
    self.box_PlayDialog_v6_71 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|804581461");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_2 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|814675742");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_2_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_2_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_2_Enabled,
    });
    self.box_PlayDialog_v6_70 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|981283417");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_11 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1143506774");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_11_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_11_Killed,
    });
    self.box_PlayDialog_v6_75 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1155778200");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_69 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1170848382");
    l0:SetConnections({
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1177165940");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 6,
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
    self.box_NavLinkModifier_62 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1192538072");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_62_Deactivated,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1232452666");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_HealthListener_v6_22 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1240104259");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_22_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_22_Killed,
    });
    self.box_PlayDialog_v6_23 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1386128470");
    l0:SetConnections({
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_23_StartedPriorityFailed,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1564977507");
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
    self.box_PlayDialog_v6_68 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1800283950");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_74 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1859415727");
    l0:SetConnections({
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_74_StartedPriorityFailed,
    });
    self.box_ActivityAcknowledgeGate_43 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1892968351");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_43_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_43_Reloaded,
    });
    self.box_PlayDialog_v6_72 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1950834948");
    l0:SetConnections({
    });
    self.box_Bind_v4_21 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1952955276");
    l0:SetConnections({
        -- UnBound,
        [1] = self.f_box_Bind_v4_21_UnBound,
    });
    self.box_Switch_28 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|2023637999");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
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
                [0] = self.f_box_Switch_28_Output_0,
                [1] = self.f_box_Switch_28_Output_1,
                [2] = self.f_box_Switch_28_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_79 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|2048779895");
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
        [0] = self.f_box_MultipleOR_79_Out,
    });
    self.box_PlayDialog_v6_73 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|2095805996");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_73_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_73_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_73_StartedPriorityFailed,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|2107270063");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1775768370", "1775768370", "UNI31_020_B02_main", "In", "box_OutputOrder_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_12();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|184901108", "184901108", "UNI31_020_B02_main", "OnLeaveZone", "box_ActivityRetry_12.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_36_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_77();
    l0 = self.box_PlayDialog_v6_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1880108528", "1880108528", "UNI31_020_B02_main", "box_GetHealthState_36.Healthy", "box_PlayDialog_v6_77.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_GetHealthState_35_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_66();
    l0 = self.box_Switch_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|553106178", "553106178", "UNI31_020_B02_main", "box_GetHealthState_35.Healthy", "box_Switch_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_MultipleOR_52;
    l1 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1080933646", "1080933646", "UNI31_020_B02_main", "box_MultipleOR_52.Out", "box_Delay_v5_42.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_GetHealthState_34_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_23();
    l0 = self.box_PlayDialog_v6_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1306872381", "1306872381", "UNI31_020_B02_main", "box_GetHealthState_34.Healthy", "box_PlayDialog_v6_23.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_GetHealthState_10_Dead()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|906117707", "906117707", "UNI31_020_B02_main", "box_GetHealthState_10.Dead", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetHealthState_10_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_11();
    l0 = self.box_HealthListener_v6_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1448940620", "1448940620", "UNI31_020_B02_main", "box_GetHealthState_10.Healthy", "box_HealthListener_v6_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_HealthListener_v6_17_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_19();
    l0 = self.box_HealthListener_v6_17;
    l1 = self.box_Bind_v4_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1292345194", "1292345194", "UNI31_020_B02_main", "box_HealthListener_v6_17.Enabled", "box_Bind_v4_19.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_17_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_19();
    l0 = self.box_HealthListener_v6_17;
    l1 = self.box_Bind_v4_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1668955633", "1668955633", "UNI31_020_B02_main", "box_HealthListener_v6_17.Killed", "box_Bind_v4_19.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_2();
    l0 = self.box_ProximityRadiusListener_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|2111421982", "2111421982", "UNI31_020_B02_main", "box_Simple_Node_16.Out", "box_ProximityRadiusListener_v3_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_61_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_61_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_CharacterLoadedIdListener_61;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|715316600", "715316600", "UNI31_020_B02_main", "box_CharacterLoadedIdListener_61.LoadedIdReceived", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1072834031", "1072834031", "UNI31_020_B02_main", "box_OutputOrder_v2_47.Out", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_45();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1683386258", "1683386258", "UNI31_020_B02_main", "box_OutputOrder_v2_47.Out", "box_Simple_Node_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_19_UnBound()
    local l0, l1;
    l0 = self.box_Bind_v4_19;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1324215491", "1324215491", "UNI31_020_B02_main", "box_Bind_v4_19.UnBound", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|233681771", "233681771", "UNI31_020_B02_main", "box_Simple_Node_45.Out", "box_OnceOnly_v3_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_28();
    l0 = self.box_MultipleOR_30;
    l1 = self.box_Switch_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|465411107", "465411107", "UNI31_020_B02_main", "box_MultipleOR_30.Out", "box_Switch_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_31();
    l0 = self.box_MultipleOR_32;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|538464112", "538464112", "UNI31_020_B02_main", "box_MultipleOR_32.Out", "box_UseContextualActionModifier_v3_31.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_37();
    l0 = self.box_MultipleOR_7;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1639807796", "1639807796", "UNI31_020_B02_main", "box_MultipleOR_7.Out", "box_GetHealthState_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_15();
    l0 = self.box_ActivityInitialized_44;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1909389752", "1909389752", "UNI31_020_B02_main", "box_ActivityInitialized_44.Out", "box_GetPlayerGroup_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_18_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_1();
    l0 = self.box_NavLinkModifier_18;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|615598804", "615598804", "UNI31_020_B02_main", "box_NavLinkModifier_18.Activated", "box_UseContextualActionModifier_v3_1.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_66_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_68();
    l0 = self.box_Switch_66;
    l1 = self.box_PlayDialog_v6_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1893915655", "1893915655", "UNI31_020_B02_main", "box_Switch_66.Output", "box_PlayDialog_v6_68.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_66_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_76();
    l0 = self.box_Switch_66;
    l1 = self.box_PlayDialog_v6_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1213453350", "1213453350", "UNI31_020_B02_main", "box_Switch_66.Output", "box_PlayDialog_v6_76.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_66_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_67();
    l0 = self.box_Switch_66;
    l1 = self.box_PlayDialog_v6_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1142544020", "1142544020", "UNI31_020_B02_main", "box_Switch_66.Output", "box_PlayDialog_v6_67.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_66_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_72();
    l0 = self.box_Switch_66;
    l1 = self.box_PlayDialog_v6_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|834726405", "834726405", "UNI31_020_B02_main", "box_Switch_66.Output", "box_PlayDialog_v6_72.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_66_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_69();
    l0 = self.box_Switch_66;
    l1 = self.box_PlayDialog_v6_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1175882179", "1175882179", "UNI31_020_B02_main", "box_Switch_66.Output", "box_PlayDialog_v6_69.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_66_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_71();
    l0 = self.box_Switch_66;
    l1 = self.box_PlayDialog_v6_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1083700050", "1083700050", "UNI31_020_B02_main", "box_Switch_66.Output", "box_PlayDialog_v6_71.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_66_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_70();
    l0 = self.box_Switch_66;
    l1 = self.box_PlayDialog_v6_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1935135737", "1935135737", "UNI31_020_B02_main", "box_Switch_66.Output", "box_PlayDialog_v6_70.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_66_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_75();
    l0 = self.box_Switch_66;
    l1 = self.box_PlayDialog_v6_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1554341861", "1554341861", "UNI31_020_B02_main", "box_Switch_66.Output", "box_PlayDialog_v6_75.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_GetHealthState_37_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_73();
    l0 = self.box_PlayDialog_v6_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1372468848", "1372468848", "UNI31_020_B02_main", "box_GetHealthState_37.Healthy", "box_PlayDialog_v6_73.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|434995114", "434995114", "UNI31_020_B02_main", "box_OutputOrder_v2_29.Out", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_82();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1786712285", "1786712285", "UNI31_020_B02_main", "box_OutputOrder_v2_29.Out", "box_TaggingModifier_v3_82.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_46();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1926414439", "1926414439", "UNI31_020_B02_main", "box_OutputOrder_v2_29.Out", "box_TaggingModifier_v3_46.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_81();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1398827476", "1398827476", "UNI31_020_B02_main", "box_OutputOrder_v2_29.Out", "box_TaggingModifier_v3_81.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_14_Dead()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1478099511", "1478099511", "UNI31_020_B02_main", "box_GetHealthState_14.Dead", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetHealthState_14_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_17();
    l0 = self.box_HealthListener_v6_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|879221837", "879221837", "UNI31_020_B02_main", "box_GetHealthState_14.Healthy", "box_HealthListener_v6_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ContextualActionListener_3_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_3;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|2145275967", "2145275967", "UNI31_020_B02_main", "box_ContextualActionListener_3.End", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_3_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_3;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1361716104", "1361716104", "UNI31_020_B02_main", "box_ContextualActionListener_3.Interrupt", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|2133333919", "2133333919", "UNI31_020_B02_main", "box_OutputOrder_v2_5.Out", "box_ActivityAcknowledgeGate_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_38();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|579232901", "579232901", "UNI31_020_B02_main", "box_OutputOrder_v2_5.Out", "box_Print_v2_38.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_1_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_13();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|162743821", "162743821", "UNI31_020_B02_main", "box_UseContextualActionModifier_v3_1.Disabled", "box_ActivityEnd_13.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_42_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_35();
    l0 = self.box_Delay_v5_42;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1373270637", "1373270637", "UNI31_020_B02_main", "box_Delay_v5_42.TimeElapsed", "box_GetHealthState_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Kill_Target_CORE_v2_27_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_Brick_Kill_Target_CORE_v2_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|2054864904", "2054864904", "UNI31_020_B02_main", "box_Brick_Kill_Target_CORE_v2_27.Started", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Kill_Target_CORE_v2_27_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_Brick_Kill_Target_CORE_v2_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1024300369", "1024300369", "UNI31_020_B02_main", "box_Brick_Kill_Target_CORE_v2_27.Success", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_77_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_77;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1136614031", "1136614031", "UNI31_020_B02_main", "box_PlayDialog_v6_77.Finished", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_77_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_77;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1960516148", "1960516148", "UNI31_020_B02_main", "box_PlayDialog_v6_77.FinishedInterrupted", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_77_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_77;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1154414305", "1154414305", "UNI31_020_B02_main", "box_PlayDialog_v6_77.StartedPriorityFailed", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Bind_v4_9_UnBound()
    local l0, l1;
    l0 = self.box_Bind_v4_9;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1898057337", "1898057337", "UNI31_020_B02_main", "box_Bind_v4_9.UnBound", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_6_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_6;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1380820138", "1380820138", "UNI31_020_B02_main", "box_OnceOnly_v3_6.Out", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_2_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = self.box_ProximityRadiusListener_v3_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1535285257", "1535285257", "UNI31_020_B02_main", "box_ProximityRadiusListener_v3_2.AllNear", "box_OutputOrder_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_2_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_2;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1387109282", "1387109282", "UNI31_020_B02_main", "box_ProximityRadiusListener_v3_2.Disabled", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_63();
    l0 = self.box_ProximityRadiusListener_v3_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1205935816", "1205935816", "UNI31_020_B02_main", "box_ProximityRadiusListener_v3_2.Enabled", "box_Simple_Node_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1019514722", "1019514722", "UNI31_020_B02_main", "box_OutputOrder_v2_26.Out", "box_MultipleOR_79.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_18();
    l0 = self.box_NavLinkModifier_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|457481772", "457481772", "UNI31_020_B02_main", "box_OutputOrder_v2_26.Out", "box_NavLinkModifier_18.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_2();
    l0 = self.box_ProximityRadiusListener_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|585909556", "585909556", "UNI31_020_B02_main", "box_OutputOrder_v2_26.Out", "box_ProximityRadiusListener_v3_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_GetHealthState_24_Dead()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|378481169", "378481169", "UNI31_020_B02_main", "box_GetHealthState_24.Dead", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_GetHealthState_24_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_22();
    l0 = self.box_HealthListener_v6_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|756548671", "756548671", "UNI31_020_B02_main", "box_GetHealthState_24.Healthy", "box_HealthListener_v6_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_HealthListener_v6_11_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_9();
    l0 = self.box_HealthListener_v6_11;
    l1 = self.box_Bind_v4_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1859947471", "1859947471", "UNI31_020_B02_main", "box_HealthListener_v6_11.Enabled", "box_Bind_v4_9.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_11_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_9();
    l0 = self.box_HealthListener_v6_11;
    l1 = self.box_Bind_v4_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|225590859", "225590859", "UNI31_020_B02_main", "box_HealthListener_v6_11.Killed", "box_Bind_v4_9.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_25_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_25;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1145184088", "1145184088", "UNI31_020_B02_main", "box_MultipleOR_25.Out", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_NavLinkModifier_62_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    l0 = self.box_NavLinkModifier_62;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1764688980", "1764688980", "UNI31_020_B02_main", "box_NavLinkModifier_62.Deactivated", "box_UseContextualActionModifier_v3_33.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_20_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_20;
    l1 = self.box_ActivityInitialized_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1736193470", "1736193470", "UNI31_020_B02_main", "box_MultipleOR_20.Out", "box_ActivityInitialized_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_HealthListener_v6_22_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_21();
    l0 = self.box_HealthListener_v6_22;
    l1 = self.box_Bind_v4_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|646469289", "646469289", "UNI31_020_B02_main", "box_HealthListener_v6_22.Enabled", "box_Bind_v4_21.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_22_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_21();
    l0 = self.box_HealthListener_v6_22;
    l1 = self.box_Bind_v4_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|614730011", "614730011", "UNI31_020_B02_main", "box_HealthListener_v6_22.Killed", "box_Bind_v4_21.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_62();
    l0 = self.box_NavLinkModifier_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|159557200", "159557200", "UNI31_020_B02_main", "box_OutputOrder_v2_60.Out", "box_NavLinkModifier_62.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Kill_Target_CORE_v2_27();
    l0 = self.box_Brick_Kill_Target_CORE_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1325520349", "1325520349", "UNI31_020_B02_main", "box_OutputOrder_v2_60.Out", "box_Brick_Kill_Target_CORE_v2_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1081566670", "1081566670", "UNI31_020_B02_main", "box_OutputOrder_v2_60.Out", "box_Simple_Node_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_33_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_3();
    l0 = self.box_ContextualActionListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1729501578", "1729501578", "UNI31_020_B02_main", "box_UseContextualActionModifier_v3_33.UseCalled", "box_ContextualActionListener_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_23_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_23;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1968251904", "1968251904", "UNI31_020_B02_main", "box_PlayDialog_v6_23.StartedPriorityFailed", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_15_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_15_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_61();
    l0 = self.box_CharacterLoadedIdListener_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|495229979", "495229979", "UNI31_020_B02_main", "box_GetPlayerGroup_v2_15.Out", "box_CharacterLoadedIdListener_61.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetHealthState_39_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_74();
    l0 = self.box_PlayDialog_v6_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1908995987", "1908995987", "UNI31_020_B02_main", "box_GetHealthState_39.Healthy", "box_PlayDialog_v6_74.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_36();
    l0 = self.box_MultipleOR_4;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1278704739", "1278704739", "UNI31_020_B02_main", "box_MultipleOR_4.Out", "box_GetHealthState_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1066070203", "1066070203", "UNI31_020_B02_main", "box_Simple_Node_63.Out", "box_Delay_v5_42.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_74_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_74;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|860858634", "860858634", "UNI31_020_B02_main", "box_PlayDialog_v6_74.StartedPriorityFailed", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ActivityAcknowledgeGate_43_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_43;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1133778362", "1133778362", "UNI31_020_B02_main", "box_ActivityAcknowledgeGate_43.Acknowledged", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_43_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_43;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|7517433", "7517433", "UNI31_020_B02_main", "box_ActivityAcknowledgeGate_43.Reloaded", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Bind_v4_21_UnBound()
    local l0, l1;
    l0 = self.box_Bind_v4_21;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|463572365", "463572365", "UNI31_020_B02_main", "box_Bind_v4_21.UnBound", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Switch_28_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_10();
    l0 = self.box_Switch_28;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1204264530", "1204264530", "UNI31_020_B02_main", "box_Switch_28.Output", "box_GetHealthState_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_28_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_14();
    l0 = self.box_Switch_28;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1596065513", "1596065513", "UNI31_020_B02_main", "box_Switch_28.Output", "box_GetHealthState_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_28_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_24();
    l0 = self.box_Switch_28;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|2112110843", "2112110843", "UNI31_020_B02_main", "box_Switch_28.Output", "box_GetHealthState_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_79_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_34();
    l0 = self.box_MultipleOR_79;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|459402443", "459402443", "UNI31_020_B02_main", "box_MultipleOR_79.Out", "box_GetHealthState_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_73_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_73;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|730314344", "730314344", "UNI31_020_B02_main", "box_PlayDialog_v6_73.Finished", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_73_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_73;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1479763241", "1479763241", "UNI31_020_B02_main", "box_PlayDialog_v6_73.FinishedInterrupted", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_73_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_73;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1826016512", "1826016512", "UNI31_020_B02_main", "box_PlayDialog_v6_73.StartedPriorityFailed", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_39();
    l0 = self.box_MultipleOR_8;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|462189191", "462189191", "UNI31_020_B02_main", "box_MultipleOR_8.Out", "box_GetHealthState_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_GetHealthState_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|8069727");
    l0:SetConnections({
        -- Healthy,
        [3] = self.f_box_GetHealthState_36_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.ePerkins_NPC,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_76()
    local params;
    params = {
        -- Group,
        [0] = self.ePerkins_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3837360592",
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|106911925");
    l0:SetConnections({
        -- Healthy,
        [3] = self.f_box_GetHealthState_35_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.ePerkins_NPC,
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|158087491");
    l0:SetConnections({
        -- Healthy,
        [3] = self.f_box_GetHealthState_34_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.ePerkins_NPC,
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|180465402");
    l0:SetConnections({
        -- Dead,
        [1] = self.f_box_GetHealthState_10_Dead,
        -- Healthy,
        [3] = self.f_box_GetHealthState_10_Healthy,
    });
    params = {
        -- Pawn,
        [0] = "2101177173950865791",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_17()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2101176816447268440",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|248567159");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_67()
    local params;
    params = {
        -- Group,
        [0] = self.ePerkins_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "31046000",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_61()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015191695287394",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|269459472");
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

function export:OnEnter_box_Bind_v4_19()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- EntityA,
        [1] = "2101176816447268440",
        -- EntityB,
        [2] = "2101176801947559414",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_45()
    local params, l0;
    DrawTextToScreen("Comment: Start Near", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Start Near");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|288192955");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_45_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_18()
    local params;
    params = {
        -- Entity,
        [0] = "2101633456906714762",
    };
    return params;
end;

function export:OnEnter_box_Switch_66()
    local params;
    DrawTextToScreen("Comment: Perkins Far Dialogue", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Switch')-- Comment: Perkins Far Dialogue");
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|447286404");
    l0:SetConnections({
        -- Healthy,
        [3] = self.f_box_GetHealthState_37_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.ePerkins_NPC,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|492803512");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
                [2] = self.f_box_OutputOrder_v2_29_Out_2,
                [3] = self.f_box_OutputOrder_v2_29_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|503173546");
    l0:SetConnections({
        -- Dead,
        [1] = self.f_box_GetHealthState_14_Dead,
        -- Healthy,
        [3] = self.f_box_GetHealthState_14_Healthy,
    });
    params = {
        -- Pawn,
        [0] = "2101176816447268440",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_3()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103786600864427810",
        -- UserFilter,
        [1] = self.ePerkins_NPC,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|545492898");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|562086178");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_1_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103786600864427810",
        -- Entity,
        [1] = self.ePerkins_NPC,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|591089494");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2101177171132293481",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_42()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Brick_Kill_Target_CORE_v2_27()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bPlayerDetection,
        [1] = false,
        -- Objective,
        [4] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_Attack_MultiTargets",
            id = "373000",
        },
        -- TargetGroup,
        [6] = "#1CD4F073",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_77()
    local params;
    params = {
        -- Group,
        [0] = self.ePerkins_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1713830973",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_9()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- EntityA,
        [1] = "2101177173950865791",
        -- EntityB,
        [2] = "2101176801947559414",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_71()
    local params;
    params = {
        -- Group,
        [0] = self.ePerkins_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2173164202",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_2()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.player,
        -- id2,
        [3] = self.ePerkins_NPC,
        -- nearZone,
        [4] = 23,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|921311348");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
                [2] = self.f_box_OutputOrder_v2_26_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|954303805");
    l0:SetConnections({
        -- Dead,
        [1] = self.f_box_GetHealthState_24_Dead,
        -- Healthy,
        [3] = self.f_box_GetHealthState_24_Healthy,
    });
    params = {
        -- Pawn,
        [0] = "2101177171132293481",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_70()
    local params;
    params = {
        -- Group,
        [0] = self.ePerkins_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1402761980",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_11()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2101177173950865791",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_75()
    local params;
    params = {
        -- Group,
        [0] = self.ePerkins_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3398012219",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_69()
    local params;
    params = {
        -- Group,
        [0] = self.ePerkins_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3705561996",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_62()
    local params;
    params = {
        -- Entity,
        [0] = "2101633456906714762",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_22()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2101177171132293481",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1298504183");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
                [2] = self.f_box_OutputOrder_v2_60_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1339581961");
    l0:SetConnections({
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_33_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103786600864427810",
        -- Entity,
        [1] = self.ePerkins_NPC,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1344058493");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_23()
    local params;
    params = {
        -- Group,
        [0] = self.ePerkins_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2498730874",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1453473973");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_15_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1482347503");
    l0:SetConnections({
        -- Healthy,
        [3] = self.f_box_GetHealthState_39_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.ePerkins_NPC,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1513167248");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2101176816447268440",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1611382057");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2101177173950865791",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_68()
    local params;
    params = {
        -- Group,
        [0] = self.ePerkins_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2808718868",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_63()
    local params, l0;
    DrawTextToScreen("Comment: Start Far", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Start Far");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1842994795");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_63_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_74()
    local params;
    params = {
        -- Group,
        [0] = self.ePerkins_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3972846395",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1891475664");
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

function export:OnEnter_box_UseContextualActionModifier_v3_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|1943343833");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2103786600864427810",
        -- Entity,
        [1] = self.ePerkins_NPC,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_72()
    local params;
    params = {
        -- Group,
        [0] = self.ePerkins_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1730903901",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_21()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- EntityA,
        [1] = "2101177171132293481",
        -- EntityB,
        [2] = "2101176801947559414",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Switch_28()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_73()
    local params;
    params = {
        -- Group,
        [0] = self.ePerkins_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2594697706",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B02.domino|@UNI31_020_B02_main|2104971687");
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
        [8] = "UNI31_020_B02 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_61_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_61;
    self.ePerkins_NPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.player = l0:GetDataOutValue(0);
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
