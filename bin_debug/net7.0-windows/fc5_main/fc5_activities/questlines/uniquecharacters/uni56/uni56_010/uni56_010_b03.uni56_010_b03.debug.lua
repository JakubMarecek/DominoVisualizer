LUACEL -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni56/uni56_010/uni56_010_b03.domino
-- User graph: UNI56_010_B03
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetEntityPreconditionState.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetPreconditionState.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/EntityTagListener_v4.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2046487038.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI56/UNI56_010/UNI56_010_B03.UNI56_010_B03.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/GetEntityPreconditionState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NotValid",
                delayed = false,
            },
            [1] = {
                name = "Valid",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "EntityPreconditionId",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/GetPreconditionState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NotValid",
                delayed = false,
            },
            [1] = {
                name = "Valid",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PreconditionId",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/EntityTagListener_v4.lua")] = {
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
                name = "Discovered",
                delayed = true,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "ObjectInFocus",
                delayed = true,
            },
            [4] = {
                name = "ObjectInFrame",
                delayed = true,
            },
            [5] = {
                name = "ObjectOutOfFocus",
                delayed = true,
            },
            [6] = {
                name = "ObjectOutOfFrame",
                delayed = true,
            },
            [7] = {
                name = "Tagged",
                delayed = true,
            },
            [8] = {
                name = "Untagged",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "id",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
            },
            [1] = {
                name = "playerID",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v5.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberRemoved",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v2.lua")] = {
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
                name = "Pawn",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/Player/RequestPhoneCall_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Canceled",
                delayed = true,
            },
            [1] = {
                name = "Completed",
                delayed = true,
            },
            [2] = {
                name = "Failed",
                delayed = true,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
            [4] = {
                name = "Pending",
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
                name = "CustomRingInSound",
                type = "Sound",
            },
            [1] = {
                name = "CustomRingOutSound",
                type = "Sound",
            },
            [2] = {
                name = "Delay",
                type = "float",
            },
            [3] = {
                name = "NoDeadair",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/Random.lua")] = {
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
            [1] = {
                name = "Probability",
                type = "float",
                dynamicType = 1,
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI56_010_B03";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03";
    self.eHelico = nil;
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|86014956");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_Delay_v5_75 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|91929462");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_75_TimeElapsed,
    });
    self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|155811530");
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
    self.box_Delay_v5_74 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|316268048");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_74_TimeElapsed,
    });
    self.box_Delay_v5_42 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|334146743");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_42_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_42_TimeElapsed,
    });
    self.box_OnceOnly_v3_40 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|432829219");
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
                [0] = self.f_box_OnceOnly_v3_40_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityAcknowledgeGate_11 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|448956687");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_11_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_11_Reloaded,
    });
    self.box_ProximityRadiusListener_v3_66 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|474269981");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_66_SomeoneNear,
    });
    self.box_Delay_v5_48 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|588426977");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_48_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_48_TimeElapsed,
    });
    self.box_OnceOnly_v3_51 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|589458354");
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
                [0] = self.f_box_OnceOnly_v3_51_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_52 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|644422967");
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
                [0] = self.f_box_OnceOnly_v3_52_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityTagListener_v4_20 = cbox:CreateBox("Domino/System/EntityTagListener_v4.lua");
    l0 = self.box_EntityTagListener_v4_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityTagListener_v4_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|698548731");
    l0:SetConnections({
        -- Tagged,
        [7] = self.f_box_EntityTagListener_v4_20_Tagged,
    });
    self.box_Bind_v4_17 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|765545352");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_17_Bound,
    });
    self.box_OnceOnly_v3_63 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|801726759");
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
                [0] = self.f_box_OnceOnly_v3_63_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_22 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|887941172");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_22_Loaded,
    });
    self.box_MultipleOR_61 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|893641625");
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
        [0] = self.f_box_MultipleOR_61_Out,
    });
    self.box_ContextualActionListener_30 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|896908884");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_30_End,
        -- Start,
        [8] = self.f_box_ContextualActionListener_30_Start,
    });
    self.box_Random_73 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|919253817");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
            [1] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_73_Output_0,
                [1] = self.f_box_Random_73_Output_1,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_68 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|924294647");
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
        [0] = self.f_box_MultipleOR_68_Out,
    });
    self.box_RequestPhoneCall_v2_58 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1020830995");
    l0:SetConnections({
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1074839234");
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
        [0] = self.f_box_MultipleOR_19_Out,
    });
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1086327418");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_44_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_MultipleOR_81 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1145556341");
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
        [0] = self.f_box_MultipleOR_81_Out,
    });
    self.box_OnceOnly_v3_47 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1155281819");
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
                [0] = self.f_box_OnceOnly_v3_47_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_45 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1157452820");
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
                [0] = self.f_box_OnceOnly_v3_45_Out_0,
            },
            count = 2,
        },
    });
    self.box_ContextualActionListener_21 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1190031705");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_21_End,
        -- Start,
        [8] = self.f_box_ContextualActionListener_21_Start,
    });
    self.box_ProximityRadiusListener_v3_59 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1240896832");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_59_SomeoneNear,
    });
    self.box_MultipleOR_55 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1262636144");
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
    self.box_GroupSizeListener_v5_38 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1312372174");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_38_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_38_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_38_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_38_MemberRemoved,
    });
    self.box_ContextualActionListener_27 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1326597876");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_27_End,
        -- Start,
        [8] = self.f_box_ContextualActionListener_27_Start,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1365123090");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_HealthListener_v6_18 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1437916120");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_18_Damaged,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_18_Killed,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1449317120");
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
        [0] = self.f_box_MultipleOR_43_Out,
    });
    self.box_MultipleOR_76 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1463326653");
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
        [0] = self.f_box_MultipleOR_76_Out,
    });
    self.box_RemoveEntity_v2_71 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1541335732");
    l0:SetConnections({
    });
    self.box_ContextualActionListener_31 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1763520431");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_31_End,
        -- Start,
        [8] = self.f_box_ContextualActionListener_31_Start,
    });
    self.box_Delay_v5_80 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1786647807");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_80_TimeElapsed,
    });
    self.box_Delay_v5_46 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1936152250");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_46_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_46_TimeElapsed,
    });
    self.box_MultipleOR_50 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1958958937");
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
        [0] = self.f_box_MultipleOR_50_Out,
    });
    self.box_OnceOnly_v3_69 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1995345420");
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
                [0] = self.f_box_OnceOnly_v3_69_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityTagListener_v4_16 = cbox:CreateBox("Domino/System/EntityTagListener_v4.lua");
    l0 = self.box_EntityTagListener_v4_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityTagListener_v4_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|2033114926");
    l0:SetConnections({
        -- Tagged,
        [7] = self.f_box_EntityTagListener_v4_16_Tagged,
    });
    self.box_MultipleOR_57 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|2053509616");
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
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|647536947", "647536947", "UNI56_010_B03", "In", "box_OutputOrder_v2_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_36();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1443807061", "1443807061", "UNI56_010_B03", "OnLeaveZone", "box_ActivityRetry_36.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_77_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|737291295", "737291295", "UNI56_010_B03", "box_Simple_Node_77.Out", "box_MultipleOR_61.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IsPawnAlive_v2_78_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_79();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1436314781", "1436314781", "UNI56_010_B03", "box_IsPawnAlive_v2_78.False", "box_AddActivityObjective_v2_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v2_78_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_22();
    l0 = self.box_EntityStatusListener_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|664877325", "664877325", "UNI56_010_B03", "box_IsPawnAlive_v2_78.True", "box_EntityStatusListener_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetEntityPreconditionState_70_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetEntityPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_73();
    l0 = self.box_Random_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1791645465", "1791645465", "UNI56_010_B03", "box_GetEntityPreconditionState_70.NotValid", "box_Random_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1940759387", "1940759387", "UNI56_010_B03", "box_EndActivityObjective_v2_64.Out", "box_EndActivityObjective_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v2_78();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|692736718", "692736718", "UNI56_010_B03", "box_ActivityInitialized_3.Out", "box_IsPawnAlive_v2_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_75_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_75;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1662639222", "1662639222", "UNI56_010_B03", "box_Delay_v5_75.TimeElapsed", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_7_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityTagListener_v4_16();
    l0 = self.box_EntityTagListener_v4_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1097269874", "1097269874", "UNI56_010_B03", "box_ActivityObjectiveMarkerModifier_v3_7.Enabled", "box_EntityTagListener_v4_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|789059585", "789059585", "UNI56_010_B03", "box_AddActivityObjective_v2_10.Out", "box_ActivityObjectiveMarkerModifier_v3_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_21();
    l0 = self.box_MultipleOR_41;
    l1 = self.box_ContextualActionListener_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|22339932", "22339932", "UNI56_010_B03", "box_MultipleOR_41.Out", "box_ContextualActionListener_21.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_79_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_80();
    l0 = self.box_Delay_v5_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|674410191", "674410191", "UNI56_010_B03", "box_AddActivityObjective_v2_79.Out", "box_Delay_v5_80.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_14_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityPreconditionState_70();
    l0 = Boxes[GetPathID("Domino/System/AI/GetEntityPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|62329792", "62329792", "UNI56_010_B03", "box_ActivityObjectiveMarkerModifier_v3_14.Enabled", "box_GetEntityPreconditionState_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_74_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_74;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|86370934", "86370934", "UNI56_010_B03", "box_Delay_v5_74.TimeElapsed", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_42_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_42;
    l1 = self.box_OnceOnly_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1688599238", "1688599238", "UNI56_010_B03", "box_Delay_v5_42.Started", "box_OnceOnly_v3_52.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_Delay_v5_42_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_42;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|2017455882", "2017455882", "UNI56_010_B03", "box_Delay_v5_42.TimeElapsed", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1171204800", "1171204800", "UNI56_010_B03", "box_OutputOrder_v2_6.Out", "box_ActivityAcknowledgeGate_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1102137192", "1102137192", "UNI56_010_B03", "box_OutputOrder_v2_6.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_32_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_31();
    l0 = self.box_ContextualActionListener_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1153513943", "1153513943", "UNI56_010_B03", "box_UseContextualActionModifier_v3_32.Enabled", "box_ContextualActionListener_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_40_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_40;
    l1 = self.box_MultipleOR_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|794184450", "794184450", "UNI56_010_B03", "box_OnceOnly_v3_40.Out", "box_MultipleOR_81.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_11_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_11;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|736801620", "736801620", "UNI56_010_B03", "box_ActivityAcknowledgeGate_11.Acknowledged", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_11_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_11;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1877285745", "1877285745", "UNI56_010_B03", "box_ActivityAcknowledgeGate_11.Reloaded", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_66_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_66;
    l1 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|296307406", "296307406", "UNI56_010_B03", "box_ProximityRadiusListener_v3_66.SomeoneNear", "box_MultipleOR_68.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_9_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityTagListener_v4_20();
    l0 = self.box_EntityTagListener_v4_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|460314930", "460314930", "UNI56_010_B03", "box_ActivityObjectiveMarkerModifier_v3_9.Enabled", "box_EntityTagListener_v4_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|875731086", "875731086", "UNI56_010_B03", "box_OutputOrder_v2_62.Out", "box_AddActivityObjective_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_60();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1795041540", "1795041540", "UNI56_010_B03", "box_OutputOrder_v2_62.Out", "box_GetPlayerGroup_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_34_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1867190275", "1867190275", "UNI56_010_B03", "box_UseContextualActionModifier_v3_34.Enabled", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPreconditionState_2_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|2094773530", "2094773530", "UNI56_010_B03", "box_GetPreconditionState_2.NotValid", "box_OutputOrder_v2_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_2_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|98527902", "98527902", "UNI56_010_B03", "box_GetPreconditionState_2.Valid", "box_OutputOrder_v2_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_48_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_48;
    l1 = self.box_OnceOnly_v3_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|900693087", "900693087", "UNI56_010_B03", "box_Delay_v5_48.Started", "box_OnceOnly_v3_47.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_Delay_v5_48_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_48;
    l1 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|676553897", "676553897", "UNI56_010_B03", "box_Delay_v5_48.TimeElapsed", "box_MultipleOR_57.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_51_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_32();
    l0 = self.box_OnceOnly_v3_51;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1421925249", "1421925249", "UNI56_010_B03", "box_OnceOnly_v3_51.Out", "box_UseContextualActionModifier_v3_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|60728514", "60728514", "UNI56_010_B03", "box_AddActivityObjective_v2_5.Out", "box_ActivityObjectiveMarkerModifier_v3_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_52_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_25();
    l0 = self.box_OnceOnly_v3_52;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1240940680", "1240940680", "UNI56_010_B03", "box_OnceOnly_v3_52.Out", "box_UseContextualActionModifier_v3_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|68226443", "68226443", "UNI56_010_B03", "box_OutputOrder_v2_53.Out", "box_MultipleOR_43.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_24();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1004921439", "1004921439", "UNI56_010_B03", "box_OutputOrder_v2_53.Out", "box_UseContextualActionModifier_v3_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_25_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_27();
    l0 = self.box_ContextualActionListener_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1990877713", "1990877713", "UNI56_010_B03", "box_UseContextualActionModifier_v3_25.Enabled", "box_ContextualActionListener_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityTagListener_v4_20_Tagged()
    local l0, l1;
    l0 = self.box_EntityTagListener_v4_20;
    l1 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1245013516", "1245013516", "UNI56_010_B03", "box_EntityTagListener_v4_20.Tagged", "box_MultipleOR_61.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_8_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_12();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|2103380571", "2103380571", "UNI56_010_B03", "box_ActivityObjectiveMarkerModifier_v3_8.Disabled", "box_ActivityObjectiveMarkerModifier_v3_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_17_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_Bind_v4_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|491263549", "491263549", "UNI56_010_B03", "box_Bind_v4_17.Bound", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_63_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_13();
    l0 = self.box_OnceOnly_v3_63;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1515744911", "1515744911", "UNI56_010_B03", "box_OnceOnly_v3_63.Out", "box_AddActivityObjective_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_22_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_EntityStatusListener_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|88764767", "88764767", "UNI56_010_B03", "box_EntityStatusListener_22.Loaded", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_61_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_61;
    l1 = self.box_OnceOnly_v3_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1815581453", "1815581453", "UNI56_010_B03", "box_MultipleOR_61.Out", "box_OnceOnly_v3_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_30_End()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_ContextualActionListener_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|995932464", "995932464", "UNI56_010_B03", "box_ContextualActionListener_30.End", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_30_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_46();
    l0 = self.box_ContextualActionListener_30;
    l1 = self.box_Delay_v5_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1673363288", "1673363288", "UNI56_010_B03", "box_ContextualActionListener_30.Start", "box_Delay_v5_46.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_73_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_74();
    l0 = self.box_Random_73;
    l1 = self.box_Delay_v5_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|513072668", "513072668", "UNI56_010_B03", "box_Random_73.Output", "box_Delay_v5_74.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_73_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_75();
    l0 = self.box_Random_73;
    l1 = self.box_Delay_v5_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|730943198", "730943198", "UNI56_010_B03", "box_Random_73.Output", "box_Delay_v5_75.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_68_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_68;
    l1 = self.box_OnceOnly_v3_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|2013192533", "2013192533", "UNI56_010_B03", "box_MultipleOR_68.Out", "box_OnceOnly_v3_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|57148163", "57148163", "UNI56_010_B03", "box_OutputOrder_v2_54.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1778552953", "1778552953", "UNI56_010_B03", "box_OutputOrder_v2_54.Out", "box_UseContextualActionModifier_v3_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_72_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_71();
    l0 = self.box_RemoveEntity_v2_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|670308376", "670308376", "UNI56_010_B03", "box_OutputOrder_v2_72.Out", "box_RemoveEntity_v2_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_72_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1856023268", "1856023268", "UNI56_010_B03", "box_OutputOrder_v2_72.Out", "box_ActivityEnd_4.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_60_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_60_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_59();
    l0 = self.box_ProximityRadiusListener_v3_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1944927354", "1944927354", "UNI56_010_B03", "box_GetPlayerGroup_v2_60.Out", "box_ProximityRadiusListener_v3_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_19_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_19;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1478905080", "1478905080", "UNI56_010_B03", "box_MultipleOR_19.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_44_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_44;
    l1 = self.box_OnceOnly_v3_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|166738451", "166738451", "UNI56_010_B03", "box_Delay_v5_44.Started", "box_OnceOnly_v3_45.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_44;
    l1 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|780924344", "780924344", "UNI56_010_B03", "box_Delay_v5_44.TimeElapsed", "box_MultipleOR_50.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_64();
    l0 = self.box_MultipleOR_81;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|167242042", "167242042", "UNI56_010_B03", "box_MultipleOR_81.Out", "box_EndActivityObjective_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_38();
    l0 = self.box_GroupSizeListener_v5_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|636617033", "636617033", "UNI56_010_B03", "box_OutputOrder_v2_26.Out", "box_GroupSizeListener_v5_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_18();
    l0 = self.box_HealthListener_v6_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1245325579", "1245325579", "UNI56_010_B03", "box_OutputOrder_v2_26.Out", "box_HealthListener_v6_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_2();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1588453868", "1588453868", "UNI56_010_B03", "box_OutputOrder_v2_26.Out", "box_GetPreconditionState_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_47_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_34();
    l0 = self.box_OnceOnly_v3_47;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1846794918", "1846794918", "UNI56_010_B03", "box_OnceOnly_v3_47.Out", "box_UseContextualActionModifier_v3_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_45_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_28();
    l0 = self.box_OnceOnly_v3_45;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1484825529", "1484825529", "UNI56_010_B03", "box_OnceOnly_v3_45.Out", "box_UseContextualActionModifier_v3_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_21_End()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = self.box_ContextualActionListener_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1424054101", "1424054101", "UNI56_010_B03", "box_ContextualActionListener_21.End", "box_OutputOrder_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_21_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_ContextualActionListener_21;
    l1 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|424598277", "424598277", "UNI56_010_B03", "box_ContextualActionListener_21.Start", "box_Delay_v5_42.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_59_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_59;
    l1 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|589407935", "589407935", "UNI56_010_B03", "box_ProximityRadiusListener_v3_59.SomeoneNear", "box_MultipleOR_61.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_55_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_55;
    l1 = self.box_OnceOnly_v3_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|340301157", "340301157", "UNI56_010_B03", "box_MultipleOR_55.Out", "box_OnceOnly_v3_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AddActivityObjective_v2_13_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_14();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|87987016", "87987016", "UNI56_010_B03", "box_AddActivityObjective_v2_13.Out", "box_ActivityObjectiveMarkerModifier_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_38_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_39();
    l0 = self.box_GroupSizeListener_v5_38;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1096202162", "1096202162", "UNI56_010_B03", "box_GroupSizeListener_v5_38.Enabled", "box_Compare_Integers_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_27_End()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = self.box_ContextualActionListener_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|769525006", "769525006", "UNI56_010_B03", "box_ContextualActionListener_27.End", "box_OutputOrder_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_27_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_ContextualActionListener_27;
    l1 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|413155794", "413155794", "UNI56_010_B03", "box_ContextualActionListener_27.Start", "box_Delay_v5_44.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_37_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_37;
    l1 = self.box_OnceOnly_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|2088403828", "2088403828", "UNI56_010_B03", "box_MultipleOR_37.Out", "box_OnceOnly_v3_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_18_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = self.box_HealthListener_v6_18;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|467975977", "467975977", "UNI56_010_B03", "box_HealthListener_v6_18.Damaged", "box_Simple_Node_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_18_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_18;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|512224692", "512224692", "UNI56_010_B03", "box_HealthListener_v6_18.Killed", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_43_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_43;
    l1 = self.box_OnceOnly_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|325714573", "325714573", "UNI56_010_B03", "box_MultipleOR_43.Out", "box_OnceOnly_v3_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_58();
    l0 = self.box_MultipleOR_76;
    l1 = self.box_RequestPhoneCall_v2_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1384330651", "1384330651", "UNI56_010_B03", "box_MultipleOR_76.Out", "box_RequestPhoneCall_v2_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|693033241", "693033241", "UNI56_010_B03", "box_OutputOrder_v2_67.Out", "box_AddActivityObjective_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_65();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|762293351", "762293351", "UNI56_010_B03", "box_OutputOrder_v2_67.Out", "box_GetPlayerGroup_v2_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|397402998", "397402998", "UNI56_010_B03", "box_OutputOrder_v2_56.Out", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_35();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|233639087", "233639087", "UNI56_010_B03", "box_OutputOrder_v2_56.Out", "box_UseContextualActionModifier_v3_35.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1117356890", "1117356890", "UNI56_010_B03", "box_OutputOrder_v2_49.Out", "box_MultipleOR_50.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_29();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1475651601", "1475651601", "UNI56_010_B03", "box_OutputOrder_v2_49.Out", "box_UseContextualActionModifier_v3_29.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_31_End()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_ContextualActionListener_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1915091488", "1915091488", "UNI56_010_B03", "box_ContextualActionListener_31.End", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_31_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_48();
    l0 = self.box_ContextualActionListener_31;
    l1 = self.box_Delay_v5_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1123109047", "1123109047", "UNI56_010_B03", "box_ContextualActionListener_31.Start", "box_Delay_v5_48.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_80_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_80;
    l1 = self.box_MultipleOR_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|736112443", "736112443", "UNI56_010_B03", "box_Delay_v5_80.TimeElapsed", "box_MultipleOR_81.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_65_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_65_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_66();
    l0 = self.box_ProximityRadiusListener_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1808377468", "1808377468", "UNI56_010_B03", "box_GetPlayerGroup_v2_65.Out", "box_ProximityRadiusListener_v3_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_28_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_30();
    l0 = self.box_ContextualActionListener_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|430585802", "430585802", "UNI56_010_B03", "box_UseContextualActionModifier_v3_28.Enabled", "box_ContextualActionListener_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_72();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1748179406", "1748179406", "UNI56_010_B03", "box_EndActivityObjective_v2_15.Out", "box_OutputOrder_v2_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_46_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_46;
    l1 = self.box_OnceOnly_v3_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|577932803", "577932803", "UNI56_010_B03", "box_Delay_v5_46.Started", "box_OnceOnly_v3_51.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_Delay_v5_46_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_46;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1385481294", "1385481294", "UNI56_010_B03", "box_Delay_v5_46.TimeElapsed", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_17();
    l0 = self.box_Bind_v4_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1554507458", "1554507458", "UNI56_010_B03", "box_OutputOrder_v2_23.Out", "box_Bind_v4_17.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|926339458", "926339458", "UNI56_010_B03", "box_OutputOrder_v2_23.Out", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_50_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_50;
    l1 = self.box_OnceOnly_v3_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|60076136", "60076136", "UNI56_010_B03", "box_MultipleOR_50.Out", "box_OnceOnly_v3_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_69_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_8();
    l0 = self.box_OnceOnly_v3_69;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|636068701", "636068701", "UNI56_010_B03", "box_OnceOnly_v3_69.Out", "box_ActivityObjectiveMarkerModifier_v3_8.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityTagListener_v4_16_Tagged()
    local l0, l1;
    l0 = self.box_EntityTagListener_v4_16;
    l1 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1849260509", "1849260509", "UNI56_010_B03", "box_EntityTagListener_v4_16.Tagged", "box_MultipleOR_68.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_57_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_57;
    l1 = self.box_OnceOnly_v3_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|274509241", "274509241", "UNI56_010_B03", "box_MultipleOR_57.Out", "box_OnceOnly_v3_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_39_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1013751199", "1013751199", "UNI56_010_B03", "box_Compare_Integers_39.A_eq_B", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|@VIPDamaged");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_77_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|13214128");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsPawnAlive_v2_78_False,
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_78_True,
    });
    params = {
        -- Pawn,
        [0] = "2100760887611632838",
    };
    return params;
end;

function export:OnEnter_box_GetEntityPreconditionState_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetEntityPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityPreconditionState_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|40770342");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetEntityPreconditionState_70_NotValid,
    });
    params = {
        -- EntityPreconditionId,
        [1] = "9015248473863791",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|82411214");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_64_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI56_010_B05_Tag",
            id = "592954",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_75()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|92180966");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_7_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100761827689377002",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI56_010_B05_FindFlightPlans",
            id = "587131",
        },
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|111055389");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_10_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI56_010_B05_Tag",
            id = "592954",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|148499733");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102640928830302522",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|158419630");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_79_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI56_010_B05_FindFlightPlans",
            id = "587131",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|166001318");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_14_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100761866044189938",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI56_010_B05_FindFlightPlans",
            id = "587131",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_74()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_42()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 52,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|346177268");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|378980039");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_32_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102640942778460478",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|398420150");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100761866044189938",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI56_010_B05_FindFlightPlans",
            id = "587131",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2100760887611632838",
        -- nearZone,
        [4] = 6,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|514180317");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_9_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100761827689377002",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI56_010_B05_Tag",
            id = "592954",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|524359195");
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
                [0] = self.f_box_OutputOrder_v2_62_Out_0,
                [1] = self.f_box_OutputOrder_v2_62_Out_1,
            },
            count = 2,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|526643503");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102640922276702519",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|529699631");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_34_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102640900969637971",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|558953866");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_2_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_2_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015248473863791",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_48()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 25,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|612573059");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_5_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI56_010_B05_FindFlightPlans",
            id = "587131",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|650306922");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|665440589");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_25_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102640928830302522",
    };
    return params;
end;

function export:OnEnter_box_EntityTagListener_v4_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- id,
        [1] = "2100760887611632838",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|742723224");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_8_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2100761827689377002",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI56_010_B05_FindFlightPlans",
            id = "587131",
        },
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_17()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine1",
        -- EntityA,
        [1] = "2100760887611632838",
        -- EntityB,
        [2] = "2100761866044189938",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|783952167");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102640942778460478",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_22()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100760887611632838",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_30()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102640922276702519",
    };
    return params;
end;

function export:OnEnter_box_Random_73()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|966325257");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_58()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2046487038",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1021680267");
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
                [0] = self.f_box_OutputOrder_v2_72_Out_0,
                [1] = self.f_box_OutputOrder_v2_72_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1037020556");
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

function export:OnEnter_box_GetPlayerGroup_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1072158494");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_60_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 25,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1144941548");
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
        [8] = "UNI056_010_B03 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1154975501");
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

function export:OnEnter_box_ContextualActionListener_21()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102640900969637971",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2100760887611632838",
        -- nearZone,
        [4] = 6,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1284395023");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_13_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI56_010_B05_FindFlightPlans",
            id = "587131",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_38()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#4B076C22",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_27()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102640928830302522",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_18()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2100760887611632838",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1463561169");
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
                [0] = self.f_box_OutputOrder_v2_67_Out_0,
                [1] = self.f_box_OutputOrder_v2_67_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1499903914");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1524402585");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102640900969637971",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_71()
    local params;
    params = {
        -- Group,
        [0] = "2101422581977460741",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1607543499");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1709293452");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_31()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102640942778460478",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_80()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1799190348");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_65_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1828174689");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_28_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102640922276702519",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1904801509");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_15_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI56_010_B05_FindFlightPlans",
            id = "587131",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_46()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 25,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|1944597487");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityTagListener_v4_16()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- id,
        [1] = "2100760887611632838",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B03.domino|@UNI56_010_B03|2090782025");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_39_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_38;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_60_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_59;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_65_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_66;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
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
