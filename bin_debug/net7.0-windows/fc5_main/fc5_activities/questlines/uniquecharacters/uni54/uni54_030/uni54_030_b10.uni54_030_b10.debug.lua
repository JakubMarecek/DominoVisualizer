LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni54/uni54_030/uni54_030_b10.domino
-- User graph: UNI54_030_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/GetContextualAction.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetPreconditionState.lua");
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MetaBreakableModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
        
        -- Load resources
        cboxRes:LoadResource([[902102189.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2830591695.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2145749482.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4269094613.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1686308447.bnk]], "CSoundResource");
        cboxRes:LoadResource([[117138026.bnk]], "CSoundResource");
        cboxRes:LoadResource([[144417588.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3640166421.bnk]], "CSoundResource");
        cboxRes:LoadResource([[21630.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI54/UNI54_030/UNI54_030_B10.UNI54_030_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")] = {
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
                name = "pawnId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "contextualActionId",
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
    metadataTable[GetPathID("Domino/System/AI/PreconditionListener.lua")] = {
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
                name = "PreconditionMet",
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
                name = "PreconditionId",
                type = "string",
            },
            [2] = {
                name = "TestOnEnable",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SpawnAI.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Spawn",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Spawned",
                delayed = true,
            },
            [3] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "EntitySpawner",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "mercsSpawned",
                type = "list",
            },
            [1] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/DynamicLightModifier.lua")] = {
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
            [0] = {
                name = "dynamicLightId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/HealthModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Damage",
            },
            [1] = {
                name = "Heal",
            },
            [2] = {
                name = "RemoveCritical",
            },
            [3] = {
                name = "Set",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Healed",
                delayed = false,
            },
            [2] = {
                name = "OnRemoveCritical",
                delayed = false,
            },
            [3] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "damageWithStim",
                type = "int",
            },
            [1] = {
                name = "origin",
                type = "entity",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "value",
                type = "int",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
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
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/LookAtTrigger_v2.lua")] = {
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
                name = "EnterFOV",
                delayed = true,
            },
            [3] = {
                name = "LeaveFOV",
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
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "LookingPawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/MetaBreakableModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDamageable",
            },
            [1] = {
                name = "SetDisabled",
            },
            [2] = {
                name = "SetEnabled",
            },
            [3] = {
                name = "SetUnDamageable",
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
                name = "OnSetDamageable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUnDamageable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/SoundShapeModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Paused",
                delayed = false,
            },
            [1] = {
                name = "Resumed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "FadeTime",
                type = "float",
            },
            [1] = {
                name = "SoundShapeId",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/UnlockDoor.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Unlock",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "door",
                type = "entity",
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
    self._name = "UNI54_030_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10";
    self.iPumpCount = 0;
    self.iIdProgress = 0;
    self.gPlayers = nil;
    self.box_MultipleOR_126 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|5308039");
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
        [0] = self.f_box_MultipleOR_126_Out,
    });
    self.box_SpawnAI_290 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_290;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_290");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|22632402");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_290_Spawned,
    });
    self.box_ProximityTrigger_v2_130 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|27719290");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_130_Enter,
    });
    self.box_MultipleAND_v2_270 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_270;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_270");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|57219367");
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
        [0] = self.f_box_MultipleAND_v2_270_Out,
    });
    self.box_MultipleOR_336 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_336;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_336");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|80514201");
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
        [0] = self.f_box_MultipleOR_336_Out,
    });
    self.box_MetaBreakableModifier_v2_20 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|110477795");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_20_OnSetDamageable,
    });
    self.box_StaticBreakableListener_107 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|115628443");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_107_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_107_OnBreak,
    });
    self.box_ProximityRadiusListener_v3_89 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|126450121");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_89_SomeoneNear,
    });
    self.box_PreconditionListener_60 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|133834540");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_60_PreconditionMet,
    });
    self.box_PlayDialog_v6_140 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|162714797");
    l0:SetConnections({
    });
    self.box_MultipleOR_256 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_256;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_256");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|175139338");
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
        [0] = self.f_box_MultipleOR_256_Out,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|180970944");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_GroupSizeListener_v5_297 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_297;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_297");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|194338225");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_297_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_297_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_297_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_297_MemberRemoved,
    });
    self.box_ProximityTrigger_v2_286 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_286;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_286");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|202019345");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_286_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_286_Enter,
    });
    self.box_ProximityRadiusListener_v3_88 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|217228925");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_88_AllFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_88_SomeoneNear,
    });
    self.box_Gate_v3_243 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|227390586");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_243_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_243_Out,
    });
    self.box_Delay_v5_281 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_281;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_281");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|252179854");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_281_TimeElapsed,
    });
    self.box_Delay_v5_153 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|309640543");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_153_TimeElapsed,
    });
    self.box_GroupSizeListener_v5_329 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_329;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_329");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|312999879");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_329_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_329_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_329_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_329_MemberRemoved,
    });
    self.box_MetaBreakableModifier_v2_21 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|316347204");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_21_OnSetDamageable,
    });
    self.box_MultipleOR_65 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|347891055");
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
        [0] = self.f_box_MultipleOR_65_Out,
    });
    self.box_Gate_v3_242 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_242;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_242");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|353801014");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_242_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_242_Out,
    });
    self.box_MetaBreakableModifier_v2_12 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|356074103");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_12_OnSetUnDamageable,
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|357236588");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_ContextualActionListener_87 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|449926304");
    l0:SetConnections({
        -- Available,
        [0] = self.f_box_ContextualActionListener_87_Available,
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_87_Disabled,
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_87_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_87_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_87_Interrupt,
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_87_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_87_Markup2,
        -- Select,
        [7] = self.f_box_ContextualActionListener_87_Select,
        -- Start,
        [8] = self.f_box_ContextualActionListener_87_Start,
    });
    self.box_SpawnAI_139 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|481432365");
    l0:SetConnections({
    });
    self.box_SpawnAI_295 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_295;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_295");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|485834295");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_295_Spawned,
    });
    self.box_Delay_v5_142 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|500494637");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_142_TimeElapsed,
    });
    self.box_GroupSizeListener_v5_325 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_325;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_325");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|502642233");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_325_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_325_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_325_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_325_MemberRemoved,
    });
    self.box_MultipleOR_129 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|511405192");
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
        [0] = self.f_box_MultipleOR_129_Out,
    });
    self.box_SpawnAI_127 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|512972408");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_127_Spawned,
    });
    self.box_SoundModifier_v2_151 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|515759696");
    l0:SetConnections({
    });
    self.box_Delay_v5_96 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|573831147");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_96_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_69 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|586607968");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_114 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|630291048");
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
                [0] = self.f_box_OnceOnly_v3_114_Out_0,
            },
            count = 2,
        },
    });
    self.box_StaticBreakableListener_106 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|631096216");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_106_OnBreak,
    });
    self.box_MultipleOR_284 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_284");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|670919903");
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
        [0] = self.f_box_MultipleOR_284_Out,
    });
    self.box_MultipleOR_333 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_333;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_333");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|673018800");
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
        [0] = self.f_box_MultipleOR_333_Out,
    });
    self.box_GroupSizeListener_v5_79 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|675581540");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_79_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_79_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_79_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_79_MemberRemoved,
    });
    self.box_SpawnAI_137 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|678846493");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_137_Spawned,
    });
    self.box_MetaBreakableModifier_v2_17 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|719058067");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_17_OnSetDamageable,
    });
    self.box_MetaBreakableModifier_v2_15 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|724507107");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_15_OnSetUnDamageable,
    });
    self.box_OnceOnly_v3_321 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_321;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_321");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|740837366");
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
                [0] = self.f_box_OnceOnly_v3_321_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_249 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_249");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|749619368");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_249_TimeElapsed,
    });
    self.box_StaticBreakableListener_104 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|759500529");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_104_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_104_OnBreak,
    });
    self.box_SpawnAI_70 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|767193678");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_70_Spawned,
    });
    self.box_OnceOnly_v3_113 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|771110092");
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
                [0] = self.f_box_OnceOnly_v3_113_Out_0,
            },
            count = 2,
        },
    });
    self.box_MetaBreakableModifier_v2_277 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_277");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|780514709");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_277_OnSetDamageable,
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_277_OnSetUnDamageable,
    });
    self.box_ProximityTrigger_v2_111 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|791701377");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_111_Enter,
    });
    self.box_Music_Quest_v2_311 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_311;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_311");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|807091301");
    l0:SetConnections({
    });
    self.box_MetaBreakableModifier_v2_18 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|836803448");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_18_OnSetDamageable,
    });
    self.box_SoundModifier_v2_147 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|843184441");
    l0:SetConnections({
    });
    self.box_MultipleOR_259 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_259");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|874598412");
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
        [0] = self.f_box_MultipleOR_259_Out,
    });
    self.box_RemoveEntity_v2_68 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|930793860");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_66 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|934054725");
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
                [0] = self.f_box_OnceOnly_v3_66_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_330 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_330;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_330");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|935040332");
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
                [0] = self.f_box_OnceOnly_v3_330_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|970330752");
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
    self.box_Delay_v5_91 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|994445517");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_91_TimeElapsed,
    });
    self.box_Delay_v5_45 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1044138236");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_45_TimeElapsed,
    });
    self.box_MultipleOR_258 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_258");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1044998492");
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
        [0] = self.f_box_MultipleOR_258_Out,
    });
    self.box_MultipleOR_124 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1055934056");
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
        [0] = self.f_box_MultipleOR_124_Out,
    });
    self.box_OnceOnly_v3_319 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_319;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_319");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1063121595");
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
                [0] = self.f_box_OnceOnly_v3_319_Out_0,
            },
            count = 2,
        },
    });
    self.box_Music_Quest_v2_313 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_313;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_313");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1067196793");
    l0:SetConnections({
    });
    self.box_SpawnAI_83 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1073091619");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_83_Success,
    });
    self.box_OnceOnly_v3_134 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1082564447");
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
                [0] = self.f_box_OnceOnly_v3_134_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleAND_v2_264 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_264;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_264");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1089504739");
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
        [0] = self.f_box_MultipleAND_v2_264_Out,
    });
    self.box_MultipleOR_339 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_339;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_339");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1093422156");
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
        [0] = self.f_box_MultipleOR_339_Out,
    });
    self.box_MultipleOR_266 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_266;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_266");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1108947683");
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
        [0] = self.f_box_MultipleOR_266_Out,
    });
    self.box_Delay_v5_100 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1123056569");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_100_TimeElapsed,
    });
    self.box_MultipleOR_250 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_250");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1139697072");
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
        [0] = self.f_box_MultipleOR_250_Out,
    });
    self.box_PlayDialog_v6_95 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1174374983");
    l0:SetConnections({
    });
    self.box_MetaBreakableModifier_v2_14 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1180094593");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_14_OnSetUnDamageable,
    });
    self.box_MetaBreakableModifier_v2_192 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1185769316");
    l0:SetConnections({
    });
    self.box_MultipleOR_257 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_257");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1185838661");
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
        [0] = self.f_box_MultipleOR_257_Out,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1190116004");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_StaticBreakableListener_112 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1190118278");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_112_OnBreak,
    });
    self.box_GroupSizeListener_v5_74 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1214761931");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_74_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_74_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_74_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_74_MemberRemoved,
    });
    self.box_PreconditionListener_56 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1220329269");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_56_PreconditionMet,
    });
    self.box_Gate_v3_240 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1240583627");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_240_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_240_Out,
    });
    self.box_Delay_v5_97 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1290875333");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_97_TimeElapsed,
    });
    self.box_OnceOnly_v3_317 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_317;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_317");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1293454830");
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
                [0] = self.f_box_OnceOnly_v3_317_Out_0,
            },
            count = 2,
        },
    });
    self.box_StaticBreakableListener_105 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1361542492");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_105_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_105_OnBreak,
    });
    self.box_MetaBreakableModifier_v2_11 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1367166758");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_11_OnSetUnDamageable,
    });
    self.box_MetaBreakableModifier_v2_279 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_279;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1409659869");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_279_OnSetDamageable,
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_279_OnSetUnDamageable,
    });
    self.box_SpawnAI_82 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1440257543");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_82_Success,
    });
    self.box_ProximityTrigger_v2_101 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1471908724");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_101_Enter,
    });
    self.box_PlayDialog_v6_92 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1535202188");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_92_Finished,
    });
    self.box_SoundModifier_v2_146 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1562630846");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_316 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_316;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_316");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1572413235");
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
                [0] = self.f_box_OnceOnly_v3_316_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_241 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1578851293");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_241_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_241_Out,
    });
    self.box_MultipleAND_v2_118 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1582767841");
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
        [0] = self.f_box_MultipleAND_v2_118_Out,
    });
    self.box_GroupSizeListener_v5_293 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_293;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_293");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1587344433");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_293_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_293_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_293_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_293_MemberRemoved,
    });
    self.box_OnceOnly_v3_62 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1588537067");
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
                [0] = self.f_box_OnceOnly_v3_62_Out_0,
            },
            count = 2,
        },
    });
    self.box_StartCelebration_81 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1611071714");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_81_Ended,
    });
    self.box_PlayDialog_v6_93 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1615219807");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_93_Finished,
    });
    self.box_MetaBreakableModifier_v2_16 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1676845857");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_16_OnSetDamageable,
    });
    self.box_MetaBreakableModifier_v2_10 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1682820373");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_10_OnSetUnDamageable,
    });
    self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1697017568");
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
        [0] = self.f_box_MultipleOR_59_Out,
    });
    self.box_ProximityRadiusListener_v3_191 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1725885257");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_191_AllFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_191_SomeoneNear,
    });
    self.box_SpawnAI_128 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1753919381");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_128_Spawned,
    });
    self.box_SpawnAI_71 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1766229999");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_119 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1775508957");
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
                [0] = self.f_box_OnceOnly_v3_119_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_304 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_304;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_304");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1786041975");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_282 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_282;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_282");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1819601474");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_282_SomeoneNear,
    });
    self.box_OnceOnly_v3_326 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_326;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_326");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1832868044");
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
                [0] = self.f_box_OnceOnly_v3_326_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_274 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_274;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_274");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1834245212");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_274_Finished,
    });
    self.box_SoundModifier_v2_145 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1867137299");
    l0:SetConnections({
    });
    self.box_MultipleOR_265 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_265;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_265");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1869947348");
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
        [0] = self.f_box_MultipleOR_265_Out,
    });
    self.box_MetaBreakableModifier_v2_13 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1879094686");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_13_OnSetUnDamageable,
    });
    self.box_SpawnAI_76 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1883151585");
    l0:SetConnections({
    });
    self.box_MetaBreakableModifier_v2_291 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_291;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_291");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1894199084");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_291_OnSetDamageable,
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_291_OnSetUnDamageable,
    });
    self.box_MultipleOR_342 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_342;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_342");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1927492305");
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
        [0] = self.f_box_MultipleOR_342_Out,
    });
    self.box_SoundModifier_v2_152 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1962764590");
    l0:SetConnections({
    });
    self.box_MetaBreakableModifier_v2_278 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_278");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1965288860");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_287 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_287;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_287");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2008928902");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_287_Enter,
    });
    self.box_MetaBreakableModifier_v2_19 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2058661695");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_19_OnSetDamageable,
    });
    self.box_LookAtTrigger_v2_271 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_271");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2076949101");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_271_EnterFOV,
    });
    self.box_MetaBreakableModifier_v2_193 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2088727990");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_193_OnSetDamageable,
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_193_OnSetUnDamageable,
    });
    self.box_SoundModifier_v2_148 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2116986035");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_51 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2134392940");
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
        [0] = self.f_box_MultipleAND_v2_51_Out,
    });
    self.box_StaticBreakableListener_109 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2135848515");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_109_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_109_OnBreak,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1912748646", "1912748646", "UNI54_030_B10", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_312();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1566362691", "1566362691", "UNI54_030_B10", "OnLeaveZone", "box_OutputOrder_v2_312.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_186();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1730593698", "1730593698", "UNI54_030_B10", "box_Simple_Node_32.Out", "box_OutputOrder_v2_186.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_187();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|402195547", "402195547", "UNI54_030_B10", "box_Simple_Node_32.Out", "box_OutputOrder_v2_187.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_188();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1025008180", "1025008180", "UNI54_030_B10", "box_Simple_Node_32.Out", "box_OutputOrder_v2_188.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_183();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1058840512", "1058840512", "UNI54_030_B10", "box_Simple_Node_32.Out", "box_OutputOrder_v2_183.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_260_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_265;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|477557196", "477557196", "UNI54_030_B10", "box_Simple_Node_260.Out", "box_MultipleOR_265.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1464154529", "1464154529", "UNI54_030_B10", "box_Simple_Node_260.Out", "box_MultipleOR_258.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_256;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|128578416", "128578416", "UNI54_030_B10", "box_Simple_Node_260.Out", "box_MultipleOR_256.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_261_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_259;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|268170621", "268170621", "UNI54_030_B10", "box_Simple_Node_261.Out", "box_MultipleOR_259.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_266;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|426021847", "426021847", "UNI54_030_B10", "box_Simple_Node_261.Out", "box_MultipleOR_266.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_257;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|579410870", "579410870", "UNI54_030_B10", "box_Simple_Node_261.Out", "box_MultipleOR_257.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_288_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_256;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2137787849", "2137787849", "UNI54_030_B10", "box_Simple_Node_288.Out", "box_MultipleOR_256.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
    l0 = self.box_MultipleOR_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1262295397", "1262295397", "UNI54_030_B10", "box_Simple_Node_288.Out", "box_MultipleOR_258.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_289_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_259;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1826850042", "1826850042", "UNI54_030_B10", "box_Simple_Node_289.Out", "box_MultipleOR_259.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_257;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|357470126", "357470126", "UNI54_030_B10", "box_Simple_Node_289.Out", "box_MultipleOR_257.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_322_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_311();
    l0 = self.box_Music_Quest_v2_311;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2058168908", "2058168908", "UNI54_030_B10", "box_Simple_Node_322.Out", "box_Music_Quest_v2_311.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_230_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_150();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|352256624", "352256624", "UNI54_030_B10", "box_Simple_Node_230.Out", "box_OutputOrder_v2_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ProximityRadiusListener_v3_191();
    l0 = self.box_ProximityRadiusListener_v3_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1156143746", "1156143746", "UNI54_030_B10", "box_Simple_Node_230.Out", "box_ProximityRadiusListener_v3_191.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_229_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_88();
    l0 = self.box_ProximityRadiusListener_v3_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|212409602", "212409602", "UNI54_030_B10", "box_Simple_Node_229.Out", "box_ProximityRadiusListener_v3_88.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_149();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|920356332", "920356332", "UNI54_030_B10", "box_Simple_Node_229.Out", "box_OutputOrder_v2_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_126_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_126;
    l1 = self.box_OnceOnly_v3_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|582200428", "582200428", "UNI54_030_B10", "box_MultipleOR_126.Out", "box_OnceOnly_v3_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_306_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_304();
    l0 = self.box_PlayDialog_v6_304;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1200283972", "1200283972", "UNI54_030_B10", "box_OutputOrder_v2_306.Out", "box_PlayDialog_v6_304.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_306_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_153();
    l0 = self.box_Delay_v5_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|446965027", "446965027", "UNI54_030_B10", "box_OutputOrder_v2_306.Out", "box_Delay_v5_153.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_290_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_79();
    l0 = self.box_SpawnAI_290;
    l1 = self.box_GroupSizeListener_v5_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1529201436", "1529201436", "UNI54_030_B10", "box_SpawnAI_290.Spawned", "box_GroupSizeListener_v5_79.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_130_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_70();
    l0 = self.box_ProximityTrigger_v2_130;
    l1 = self.box_SpawnAI_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|171792382", "171792382", "UNI54_030_B10", "box_ProximityTrigger_v2_130.Enter", "box_SpawnAI_70.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_94_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_86();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1594737998", "1594737998", "UNI54_030_B10", "box_OutputOrder_v2_94.Out", "box_BroadcastMessage_86.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_94_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_100();
    l0 = self.box_Delay_v5_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1319990526", "1319990526", "UNI54_030_B10", "box_OutputOrder_v2_94.Out", "box_Delay_v5_100.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleAND_v2_270_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_270;
    l1 = self.box_MultipleOR_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1134961421", "1134961421", "UNI54_030_B10", "box_MultipleAND_v2_270.Out", "box_MultipleOR_124.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ShimmerModifier_v2_22_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|232316322", "232316322", "UNI54_030_B10", "box_ShimmerModifier_v2_22.Enabled", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_324_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_323();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1796069217", "1796069217", "UNI54_030_B10", "box_Compare_Integers_324.A_le_B", "box_OutputOrder_v2_323.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_336_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_337();
    l0 = self.box_MultipleOR_336;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1507966404", "1507966404", "UNI54_030_B10", "box_MultipleOR_336.Out", "box_IsEntityLoaded_v3_337.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_246_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_234();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|417181825", "417181825", "UNI54_030_B10", "box_GetPreconditionState_246.NotValid", "box_ActivityObjectiveMarkerModifier_v3_234.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_24_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2065005000", "2065005000", "UNI54_030_B10", "box_IsEntityLoaded_v3_24.False", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_24_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_22();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1180604244", "1180604244", "UNI54_030_B10", "box_IsEntityLoaded_v3_24.True", "box_ShimmerModifier_v2_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_177_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_224();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|914476943", "914476943", "UNI54_030_B10", "box_IsEntityLoaded_v3_177.True", "box_SoundShapeModifier_224.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_247_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_235();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|526136478", "526136478", "UNI54_030_B10", "box_GetPreconditionState_247.NotValid", "box_ActivityObjectiveMarkerModifier_v3_235.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_338_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_339;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|522593980", "522593980", "UNI54_030_B10", "box_ShimmerModifier_v2_338.Enabled", "box_MultipleOR_339.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MetaBreakableModifier_v2_20_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_19();
    l0 = self.box_MetaBreakableModifier_v2_20;
    l1 = self.box_MetaBreakableModifier_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|901966379", "901966379", "UNI54_030_B10", "box_MetaBreakableModifier_v2_20.OnSetDamageable", "box_MetaBreakableModifier_v2_19.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_107_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_112();
    l0 = self.box_StaticBreakableListener_107;
    l1 = self.box_StaticBreakableListener_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|364552513", "364552513", "UNI54_030_B10", "box_StaticBreakableListener_107.Enabled", "box_StaticBreakableListener_112.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_107_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_121();
    l0 = self.box_StaticBreakableListener_107;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|775016677", "775016677", "UNI54_030_B10", "box_StaticBreakableListener_107.OnBreak", "box_OutputOrder_v2_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_168_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_207();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1978802354", "1978802354", "UNI54_030_B10", "box_IsEntityLoaded_v3_168.True", "box_SoundShapeModifier_207.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_89_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_90();
    l0 = self.box_ProximityRadiusListener_v3_89;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2139331152", "2139331152", "UNI54_030_B10", "box_ProximityRadiusListener_v3_89.SomeoneNear", "box_UseContextualActionModifier_v3_90.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_262_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2101546628", "2101546628", "UNI54_030_B10", "box_AddActivityObjective_v2_262.Out", "box_OutputOrder_v2_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_60_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_60;
    l1 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|47164373", "47164373", "UNI54_030_B10", "box_PreconditionListener_60.PreconditionMet", "box_MultipleOR_65.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_340_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_342;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2050829801", "2050829801", "UNI54_030_B10", "box_IsEntityLoaded_v3_340.False", "box_MultipleOR_342.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_340_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_341();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1179686368", "1179686368", "UNI54_030_B10", "box_IsEntityLoaded_v3_340.True", "box_ShimmerModifier_v2_341.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_299_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|84214602", "84214602", "UNI54_030_B10", "box_DynamicLightModifier_299.Enabled", "box_Simple_Node_230.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_135_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1715694228", "1715694228", "UNI54_030_B10", "box_OutputOrder_v2_135.Out", "box_OnceOnly_v3_134.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_135_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_87();
    l0 = self.box_ContextualActionListener_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|543548838", "543548838", "UNI54_030_B10", "box_OutputOrder_v2_135.Out", "box_ContextualActionListener_87.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_256_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_242();
    l0 = self.box_MultipleOR_256;
    l1 = self.box_Gate_v3_242;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|859996356", "859996356", "UNI54_030_B10", "box_MultipleOR_256.Out", "box_Gate_v3_242.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_239_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_333;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|668499137", "668499137", "UNI54_030_B10", "box_IsEntityLoaded_v3_239.False", "box_MultipleOR_333.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_239_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_238();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1000882848", "1000882848", "UNI54_030_B10", "box_IsEntityLoaded_v3_239.True", "box_ShimmerModifier_v2_238.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_190();
    l0 = self.box_ActivityInitialized_5;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|761431098", "761431098", "UNI54_030_B10", "box_ActivityInitialized_5.Out", "box_GetPlayerGroup_v2_190.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_144_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_197();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|252890910", "252890910", "UNI54_030_B10", "box_IsEntityLoaded_v3_144.True", "box_SoundShapeModifier_197.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_300_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_301();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|614793243", "614793243", "UNI54_030_B10", "box_DynamicLightModifier_300.Disabled", "box_DynamicLightModifier_301.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_297_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_296();
    l0 = self.box_GroupSizeListener_v5_297;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1088058877", "1088058877", "UNI54_030_B10", "box_GroupSizeListener_v5_297.MemberRemoved", "box_Compare_Integers_296.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_286_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_287();
    l0 = self.box_ProximityTrigger_v2_286;
    l1 = self.box_ProximityTrigger_v2_287;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1674564608", "1674564608", "UNI54_030_B10", "box_ProximityTrigger_v2_286.Enabled", "box_ProximityTrigger_v2_287.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_286_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_288();
    l0 = self.box_ProximityTrigger_v2_286;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|531273452", "531273452", "UNI54_030_B10", "box_ProximityTrigger_v2_286.Enter", "box_Simple_Node_288.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_88_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_277();
    l0 = self.box_ProximityRadiusListener_v3_88;
    l1 = self.box_MetaBreakableModifier_v2_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|852694809", "852694809", "UNI54_030_B10", "box_ProximityRadiusListener_v3_88.AllFar", "box_MetaBreakableModifier_v2_277.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_ProximityRadiusListener_v3_88_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_277();
    l0 = self.box_ProximityRadiusListener_v3_88;
    l1 = self.box_MetaBreakableModifier_v2_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1922542232", "1922542232", "UNI54_030_B10", "box_ProximityRadiusListener_v3_88.SomeoneNear", "box_MetaBreakableModifier_v2_277.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_243_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_235();
    l0 = self.box_Gate_v3_243;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1046298492", "1046298492", "UNI54_030_B10", "box_Gate_v3_243.Closed", "box_ActivityObjectiveMarkerModifier_v3_235.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_243_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPreconditionState_247();
    l0 = self.box_Gate_v3_243;
    l1 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1003918797", "1003918797", "UNI54_030_B10", "box_Gate_v3_243.Out", "box_GetPreconditionState_247.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_158_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_199();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1332581357", "1332581357", "UNI54_030_B10", "box_IsEntityLoaded_v3_158.True", "box_SoundShapeModifier_199.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_281_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_281;
    l1 = self.box_MultipleOR_284;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1090075940", "1090075940", "UNI54_030_B10", "box_Delay_v5_281.TimeElapsed", "box_MultipleOR_284.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_78_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_314();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|66066500", "66066500", "UNI54_030_B10", "box_Compare_Integers_78.A_le_B", "box_OutputOrder_v2_314.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_153_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UnlockDoor_80();
    l0 = self.box_Delay_v5_153;
    l1 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|982042081", "982042081", "UNI54_030_B10", "box_Delay_v5_153.TimeElapsed", "box_UnlockDoor_80.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_329_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_328();
    l0 = self.box_GroupSizeListener_v5_329;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1239085964", "1239085964", "UNI54_030_B10", "box_GroupSizeListener_v5_329.MemberRemoved", "box_Compare_Integers_328.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_21_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_17();
    l0 = self.box_MetaBreakableModifier_v2_21;
    l1 = self.box_MetaBreakableModifier_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|951385222", "951385222", "UNI54_030_B10", "box_MetaBreakableModifier_v2_21.OnSetDamageable", "box_MetaBreakableModifier_v2_17.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_337_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_339;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1756722361", "1756722361", "UNI54_030_B10", "box_IsEntityLoaded_v3_337.False", "box_MultipleOR_339.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_337_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_338();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|711072712", "711072712", "UNI54_030_B10", "box_IsEntityLoaded_v3_337.True", "box_ShimmerModifier_v2_338.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_65_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_65;
    l1 = self.box_OnceOnly_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|722384988", "722384988", "UNI54_030_B10", "box_MultipleOR_65.Out", "box_OnceOnly_v3_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_60();
    l0 = self.box_PreconditionListener_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1121511406", "1121511406", "UNI54_030_B10", "box_OutputOrder_v2_99.Out", "box_PreconditionListener_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_84();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1625634559", "1625634559", "UNI54_030_B10", "box_OutputOrder_v2_99.Out", "box_ActivityObjectiveMarkerModifier_v3_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_296_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_320();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|755844066", "755844066", "UNI54_030_B10", "box_Compare_Integers_296.A_le_B", "box_OutputOrder_v2_320.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_242_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_234();
    l0 = self.box_Gate_v3_242;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1217153336", "1217153336", "UNI54_030_B10", "box_Gate_v3_242.Closed", "box_ActivityObjectiveMarkerModifier_v3_234.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_242_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPreconditionState_246();
    l0 = self.box_Gate_v3_242;
    l1 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1815242230", "1815242230", "UNI54_030_B10", "box_Gate_v3_242.Out", "box_GetPreconditionState_246.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_12_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_13();
    l0 = self.box_MetaBreakableModifier_v2_12;
    l1 = self.box_MetaBreakableModifier_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|532267961", "532267961", "UNI54_030_B10", "box_MetaBreakableModifier_v2_12.OnSetUnDamageable", "box_MetaBreakableModifier_v2_13.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|129453748", "129453748", "UNI54_030_B10", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1777714164", "1777714164", "UNI54_030_B10", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_102_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_103();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|38791180", "38791180", "UNI54_030_B10", "box_ActivityObjectiveMarkerModifier_v3_102.Enabled", "box_ActivityObjectiveMarkerModifier_v3_103.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_312_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_322();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1580099938", "1580099938", "UNI54_030_B10", "box_OutputOrder_v2_312.Out", "box_Simple_Node_322.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_312_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1747881212", "1747881212", "UNI54_030_B10", "box_OutputOrder_v2_312.Out", "box_ActivityRetry_9.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_68();
    l0 = self.box_RemoveEntity_v2_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1253768295", "1253768295", "UNI54_030_B10", "box_OutputOrder_v2_67.Out", "box_RemoveEntity_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_313();
    l0 = self.box_Music_Quest_v2_313;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1195310126", "1195310126", "UNI54_030_B10", "box_OutputOrder_v2_67.Out", "box_Music_Quest_v2_313.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_67_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_81();
    l0 = self.box_StartCelebration_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|799661932", "799661932", "UNI54_030_B10", "box_OutputOrder_v2_67.Out", "box_StartCelebration_81.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_26_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_250;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1993142291", "1993142291", "UNI54_030_B10", "box_IsEntityLoaded_v3_26.False", "box_MultipleOR_250.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_26_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_189();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1773186395", "1773186395", "UNI54_030_B10", "box_IsEntityLoaded_v3_26.True", "box_ShimmerModifier_v2_189.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_87_End()
    self:OnExit_box_ContextualActionListener_87_End();
end;

function export:f_box_ContextualActionListener_87_Interrupt()
    self:OnExit_box_ContextualActionListener_87_Interrupt();
end;

function export:f_box_ContextualActionListener_87_Markup1()
    self:OnExit_box_ContextualActionListener_87_Markup1();
end;

function export:f_box_ContextualActionListener_87_Markup2()
    self:OnExit_box_ContextualActionListener_87_Markup2();
end;

function export:f_box_ContextualActionListener_87_Select()
    self:OnExit_box_ContextualActionListener_87_Select();
end;

function export:f_box_ContextualActionListener_87_Start()
    local params, l0, l1;
    self:OnExit_box_ContextualActionListener_87_Start();
    params = self:OnEnter_box_Delay_v5_91();
    l0 = self.box_ContextualActionListener_87;
    l1 = self.box_Delay_v5_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|570769817", "570769817", "UNI54_030_B10", "box_ContextualActionListener_87.Start", "box_Delay_v5_91.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_273_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_110();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|249648329", "249648329", "UNI54_030_B10", "box_ActivityObjectiveMarkerModifier_v3_273.Enabled", "box_ActivityObjectiveMarkerModifier_v3_110.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_320_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_297();
    l0 = self.box_GroupSizeListener_v5_297;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|997222439", "997222439", "UNI54_030_B10", "box_OutputOrder_v2_320.Out", "box_GroupSizeListener_v5_297.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_320_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_321;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|931673337", "931673337", "UNI54_030_B10", "box_OutputOrder_v2_320.Out", "box_OnceOnly_v3_321.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_295_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_74();
    l0 = self.box_SpawnAI_295;
    l1 = self.box_GroupSizeListener_v5_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1874037514", "1874037514", "UNI54_030_B10", "box_SpawnAI_295.Spawned", "box_GroupSizeListener_v5_74.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_328_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_327();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1860389267", "1860389267", "UNI54_030_B10", "box_Compare_Integers_328.A_le_B", "box_OutputOrder_v2_327.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_142_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UnlockDoor_136();
    l0 = self.box_Delay_v5_142;
    l1 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1238343735", "1238343735", "UNI54_030_B10", "box_Delay_v5_142.TimeElapsed", "box_UnlockDoor_136.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_325_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_324();
    l0 = self.box_GroupSizeListener_v5_325;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|30976220", "30976220", "UNI54_030_B10", "box_GroupSizeListener_v5_325.MemberRemoved", "box_Compare_Integers_324.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_129_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_129;
    l1 = self.box_OnceOnly_v3_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1360913309", "1360913309", "UNI54_030_B10", "box_MultipleOR_129.Out", "box_OnceOnly_v3_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_127_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_297();
    l0 = self.box_SpawnAI_127;
    l1 = self.box_GroupSizeListener_v5_297;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1103261711", "1103261711", "UNI54_030_B10", "box_SpawnAI_127.Spawned", "box_GroupSizeListener_v5_297.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_285_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_285_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_282();
    l0 = self.box_ProximityRadiusListener_v3_282;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1208524683", "1208524683", "UNI54_030_B10", "box_GetPlayerGroup_v2_285.Out", "box_ProximityRadiusListener_v3_282.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|63244702", "63244702", "UNI54_030_B10", "box_AddActivityObjective_v2_8.Out", "box_AddActivityObjectiveProgress_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_334_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|45563875", "45563875", "UNI54_030_B10", "box_IsEntityLoaded_v3_334.False", "box_MultipleOR_336.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_334_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_335();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|181429617", "181429617", "UNI54_030_B10", "box_IsEntityLoaded_v3_334.True", "box_ShimmerModifier_v2_335.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_96_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_93();
    l0 = self.box_Delay_v5_96;
    l1 = self.box_PlayDialog_v6_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1693614460", "1693614460", "UNI54_030_B10", "box_Delay_v5_96.TimeElapsed", "box_PlayDialog_v6_93.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_157_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_202();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1867780268", "1867780268", "UNI54_030_B10", "box_IsEntityLoaded_v3_157.True", "box_SoundShapeModifier_202.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_269_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_265;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|986679706", "986679706", "UNI54_030_B10", "box_GetPreconditionState_269.Valid", "box_MultipleOR_265.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_48_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|190033330", "190033330", "UNI54_030_B10", "box_EndActivityObjective_v2_48.Out", "box_OutputOrder_v2_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_36_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_194();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1349582368", "1349582368", "UNI54_030_B10", "box_IsEntityLoaded_v3_36.True", "box_SoundShapeModifier_194.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_166_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_206();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|700229557", "700229557", "UNI54_030_B10", "box_IsEntityLoaded_v3_166.True", "box_SoundShapeModifier_206.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_181_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_222();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1467134341", "1467134341", "UNI54_030_B10", "box_IsEntityLoaded_v3_181.True", "box_SoundShapeModifier_222.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_114_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = self.box_OnceOnly_v3_114;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1808364417", "1808364417", "UNI54_030_B10", "box_OnceOnly_v3_114.Out", "box_OutputOrder_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_106_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_117();
    l0 = self.box_StaticBreakableListener_106;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|19571842", "19571842", "UNI54_030_B10", "box_StaticBreakableListener_106.OnBreak", "box_OutputOrder_v2_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_58_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|921436122", "921436122", "UNI54_030_B10", "box_GetPreconditionState_58.NotValid", "box_OutputOrder_v2_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_58_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_276();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|796100943", "796100943", "UNI54_030_B10", "box_GetPreconditionState_58.Valid", "box_OutputOrder_v2_276.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_176();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1062227174", "1062227174", "UNI54_030_B10", "box_OutputOrder_v2_188.Out", "box_IsEntityLoaded_v3_176.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_184();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|188687093", "188687093", "UNI54_030_B10", "box_OutputOrder_v2_188.Out", "box_IsEntityLoaded_v3_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_182();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|322298022", "322298022", "UNI54_030_B10", "box_OutputOrder_v2_188.Out", "box_IsEntityLoaded_v3_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_185();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1797804776", "1797804776", "UNI54_030_B10", "box_OutputOrder_v2_188.Out", "box_IsEntityLoaded_v3_185.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_179();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1469940728", "1469940728", "UNI54_030_B10", "box_OutputOrder_v2_188.Out", "box_IsEntityLoaded_v3_179.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_181();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1360115323", "1360115323", "UNI54_030_B10", "box_OutputOrder_v2_188.Out", "box_IsEntityLoaded_v3_181.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_177();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1638847179", "1638847179", "UNI54_030_B10", "box_OutputOrder_v2_188.Out", "box_IsEntityLoaded_v3_177.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_178();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2006635980", "2006635980", "UNI54_030_B10", "box_OutputOrder_v2_188.Out", "box_IsEntityLoaded_v3_178.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_47_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_47_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_46();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1461058459", "1461058459", "UNI54_030_B10", "box_IntegerArithmetics_v2_47.Out", "box_SetActivityObjectiveProgress_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_84_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_111();
    l0 = self.box_ProximityTrigger_v2_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|949588967", "949588967", "UNI54_030_B10", "box_ActivityObjectiveMarkerModifier_v3_84.Enabled", "box_ProximityTrigger_v2_111.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_284_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_280();
    l0 = self.box_MultipleOR_284;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1154936593", "1154936593", "UNI54_030_B10", "box_MultipleOR_284.Out", "box_HealthModifier_v2_280.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_159_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_201();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|77516403", "77516403", "UNI54_030_B10", "box_IsEntityLoaded_v3_159.True", "box_SoundShapeModifier_201.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_333_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_334();
    l0 = self.box_MultipleOR_333;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1493004347", "1493004347", "UNI54_030_B10", "box_MultipleOR_333.Out", "box_IsEntityLoaded_v3_334.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_79_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_78();
    l0 = self.box_GroupSizeListener_v5_79;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|154585033", "154585033", "UNI54_030_B10", "box_GroupSizeListener_v5_79.MemberRemoved", "box_Compare_Integers_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_251_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_240();
    l0 = self.box_Gate_v3_240;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1096236642", "1096236642", "UNI54_030_B10", "box_OutputOrder_v2_251.Out", "box_Gate_v3_240.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_251_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_241();
    l0 = self.box_Gate_v3_241;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|315034981", "315034981", "UNI54_030_B10", "box_OutputOrder_v2_251.Out", "box_Gate_v3_241.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_137_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_139();
    l0 = self.box_SpawnAI_137;
    l1 = self.box_SpawnAI_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1851100450", "1851100450", "UNI54_030_B10", "box_SpawnAI_137.Spawned", "box_SpawnAI_139.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_163_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_205();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|13616034", "13616034", "UNI54_030_B10", "box_IsEntityLoaded_v3_163.True", "box_SoundShapeModifier_205.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_51();
    l0 = self.box_MultipleAND_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2033448568", "2033448568", "UNI54_030_B10", "box_SetActivityObjectiveProgress_v2_46.Out", "box_MultipleAND_v2_51.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_IsEntityLoaded_v3_154_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_198();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1653354472", "1653354472", "UNI54_030_B10", "box_IsEntityLoaded_v3_154.True", "box_SoundShapeModifier_198.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_341_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_342;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|579842710", "579842710", "UNI54_030_B10", "box_ShimmerModifier_v2_341.Enabled", "box_MultipleOR_342.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MetaBreakableModifier_v2_17_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_273();
    l0 = self.box_MetaBreakableModifier_v2_17;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1521130193", "1521130193", "UNI54_030_B10", "box_MetaBreakableModifier_v2_17.OnSetDamageable", "box_ActivityObjectiveMarkerModifier_v3_273.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_15_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_MetaBreakableModifier_v2_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|339249027", "339249027", "UNI54_030_B10", "box_MetaBreakableModifier_v2_15.OnSetUnDamageable", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_184_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_227();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1986789806", "1986789806", "UNI54_030_B10", "box_IsEntityLoaded_v3_184.True", "box_SoundShapeModifier_227.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_321_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_71();
    l0 = self.box_OnceOnly_v3_321;
    l1 = self.box_SpawnAI_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1105099451", "1105099451", "UNI54_030_B10", "box_OnceOnly_v3_321.Out", "box_SpawnAI_71.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_318_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_74();
    l0 = self.box_GroupSizeListener_v5_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1958464143", "1958464143", "UNI54_030_B10", "box_OutputOrder_v2_318.Out", "box_GroupSizeListener_v5_74.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_318_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_319;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|654435110", "654435110", "UNI54_030_B10", "box_OutputOrder_v2_318.Out", "box_OnceOnly_v3_319.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_249_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_251();
    l0 = self.box_Delay_v5_249;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|158547212", "158547212", "UNI54_030_B10", "box_Delay_v5_249.TimeElapsed", "box_OutputOrder_v2_251.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_104_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_105();
    l0 = self.box_StaticBreakableListener_104;
    l1 = self.box_StaticBreakableListener_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1781810448", "1781810448", "UNI54_030_B10", "box_StaticBreakableListener_104.Enabled", "box_StaticBreakableListener_105.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_104_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_115();
    l0 = self.box_StaticBreakableListener_104;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1073470687", "1073470687", "UNI54_030_B10", "box_StaticBreakableListener_104.OnBreak", "box_OutputOrder_v2_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_70_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_283();
    l0 = self.box_SpawnAI_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1404568334", "1404568334", "UNI54_030_B10", "box_SpawnAI_70.Spawned", "box_OutputOrder_v2_283.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_156_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_200();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|974454759", "974454759", "UNI54_030_B10", "box_IsEntityLoaded_v3_156.True", "box_SoundShapeModifier_200.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_113_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_8();
    l0 = self.box_OnceOnly_v3_113;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1007968802", "1007968802", "UNI54_030_B10", "box_OnceOnly_v3_113.Out", "box_AddActivityObjective_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_277_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_193();
    l0 = self.box_MetaBreakableModifier_v2_277;
    l1 = self.box_MetaBreakableModifier_v2_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|547989670", "547989670", "UNI54_030_B10", "box_MetaBreakableModifier_v2_277.OnSetDamageable", "box_MetaBreakableModifier_v2_193.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_MetaBreakableModifier_v2_277_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_193();
    l0 = self.box_MetaBreakableModifier_v2_277;
    l1 = self.box_MetaBreakableModifier_v2_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|346704163", "346704163", "UNI54_030_B10", "box_MetaBreakableModifier_v2_277.OnSetUnDamageable", "box_MetaBreakableModifier_v2_193.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_53();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1711046577", "1711046577", "UNI54_030_B10", "box_OutputOrder_v2_23.Out", "box_GetActivityState_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_262();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1249763163", "1249763163", "UNI54_030_B10", "box_OutputOrder_v2_23.Out", "box_AddActivityObjective_v2_262.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_130();
    l0 = self.box_ProximityTrigger_v2_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1139735848", "1139735848", "UNI54_030_B10", "box_OutputOrder_v2_23.Out", "box_ProximityTrigger_v2_130.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_24();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1619753211", "1619753211", "UNI54_030_B10", "box_OutputOrder_v2_23.Out", "box_IsEntityLoaded_v3_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_311();
    l0 = self.box_Music_Quest_v2_311;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1437065711", "1437065711", "UNI54_030_B10", "box_OutputOrder_v2_23.Out", "box_Music_Quest_v2_311.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_111_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_255();
    l0 = self.box_ProximityTrigger_v2_111;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1322152721", "1322152721", "UNI54_030_B10", "box_ProximityTrigger_v2_111.Enter", "box_OutputOrder_v2_255.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_18_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_21();
    l0 = self.box_MetaBreakableModifier_v2_18;
    l1 = self.box_MetaBreakableModifier_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1040274054", "1040274054", "UNI54_030_B10", "box_MetaBreakableModifier_v2_18.OnSetDamageable", "box_MetaBreakableModifier_v2_21.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_173_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_214();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|251461824", "251461824", "UNI54_030_B10", "box_IsEntityLoaded_v3_173.True", "box_SoundShapeModifier_214.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_301_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_306();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|60531355", "60531355", "UNI54_030_B10", "box_DynamicLightModifier_301.Disabled", "box_OutputOrder_v2_306.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_343_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_344();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|92050221", "92050221", "UNI54_030_B10", "box_IsEntityLoaded_v3_343.True", "box_ShimmerModifier_v2_344.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_259_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_241();
    l0 = self.box_MultipleOR_259;
    l1 = self.box_Gate_v3_241;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1304406526", "1304406526", "UNI54_030_B10", "box_MultipleOR_259.Out", "box_Gate_v3_241.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_117_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_103();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|535220811", "535220811", "UNI54_030_B10", "box_OutputOrder_v2_117.Out", "box_ActivityObjectiveMarkerModifier_v3_103.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_117_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_270();
    l0 = self.box_MultipleAND_v2_270;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1027084409", "1027084409", "UNI54_030_B10", "box_OutputOrder_v2_117.Out", "box_MultipleAND_v2_270.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_117_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_39();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1034967489", "1034967489", "UNI54_030_B10", "box_OutputOrder_v2_117.Out", "box_ParticleSystem_v3_39.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|532988639", "532988639", "UNI54_030_B10", "box_OutputOrder_v2_2.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1779637220", "1779637220", "UNI54_030_B10", "box_OutputOrder_v2_2.Out", "box_Print_v2_3.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|911284423", "911284423", "UNI54_030_B10", "box_OutputOrder_v2_2.Out", "box_Simple_Node_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_66_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_125();
    l0 = self.box_OnceOnly_v3_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1237831735", "1237831735", "UNI54_030_B10", "box_OnceOnly_v3_66.Out", "box_OutputOrder_v2_125.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_330_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_295();
    l0 = self.box_OnceOnly_v3_330;
    l1 = self.box_SpawnAI_295;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|177053309", "177053309", "UNI54_030_B10", "box_OnceOnly_v3_330.Out", "box_SpawnAI_295.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_98_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_56();
    l0 = self.box_PreconditionListener_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|596713401", "596713401", "UNI54_030_B10", "box_OutputOrder_v2_98.Out", "box_PreconditionListener_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_98_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_85();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2144044926", "2144044926", "UNI54_030_B10", "box_OutputOrder_v2_98.Out", "box_ActivityObjectiveMarkerModifier_v3_85.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_294_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_315();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|32750716", "32750716", "UNI54_030_B10", "box_Compare_Integers_294.A_le_B", "box_OutputOrder_v2_315.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_108_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_109();
    l0 = self.box_StaticBreakableListener_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|399502839", "399502839", "UNI54_030_B10", "box_ActivityObjectiveMarkerModifier_v3_108.Enabled", "box_StaticBreakableListener_109.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1529407018", "1529407018", "UNI54_030_B10", "box_MultipleOR_4.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_IsEntityLoaded_v3_162_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_208();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1730333048", "1730333048", "UNI54_030_B10", "box_IsEntityLoaded_v3_162.True", "box_SoundShapeModifier_208.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_51();
    l0 = self.box_MultipleAND_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2107766939", "2107766939", "UNI54_030_B10", "box_SetActivityObjectiveProgress_v2_50.Out", "box_MultipleAND_v2_51.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_91_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_94();
    l0 = self.box_Delay_v5_91;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|731888308", "731888308", "UNI54_030_B10", "box_Delay_v5_91.TimeElapsed", "box_OutputOrder_v2_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_116_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_102();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|652137149", "652137149", "UNI54_030_B10", "box_OutputOrder_v2_116.Out", "box_ActivityObjectiveMarkerModifier_v3_102.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_116_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_270();
    l0 = self.box_MultipleAND_v2_270;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1977961271", "1977961271", "UNI54_030_B10", "box_OutputOrder_v2_116.Out", "box_MultipleAND_v2_270.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_116_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_40();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1774441877", "1774441877", "UNI54_030_B10", "box_OutputOrder_v2_116.Out", "box_ParticleSystem_v3_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_10();
    l0 = self.box_MetaBreakableModifier_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1937251186", "1937251186", "UNI54_030_B10", "box_OutputOrder_v2_77.Out", "box_MetaBreakableModifier_v2_10.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_82();
    l0 = self.box_SpawnAI_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2035904504", "2035904504", "UNI54_030_B10", "box_OutputOrder_v2_77.Out", "box_SpawnAI_82.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_89();
    l0 = self.box_ProximityRadiusListener_v3_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|480509468", "480509468", "UNI54_030_B10", "box_OutputOrder_v2_77.Out", "box_ProximityRadiusListener_v3_89.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UnlockDoor_136_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_52();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1623526184", "1623526184", "UNI54_030_B10", "box_UnlockDoor_136.Unlocked", "box_UnlockDoor_52.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_155_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_204();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|965947749", "965947749", "UNI54_030_B10", "box_IsEntityLoaded_v3_155.True", "box_SoundShapeModifier_204.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_254_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1176554820", "1176554820", "UNI54_030_B10", "box_OutputOrder_v2_254.Out", "box_MultipleOR_129.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_254_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_260();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1172291298", "1172291298", "UNI54_030_B10", "box_OutputOrder_v2_254.Out", "box_Simple_Node_260.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_254_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_20();
    l0 = self.box_MetaBreakableModifier_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1853629981", "1853629981", "UNI54_030_B10", "box_OutputOrder_v2_254.Out", "box_MetaBreakableModifier_v2_20.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_254_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_85();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|19893310", "19893310", "UNI54_030_B10", "box_OutputOrder_v2_254.Out", "box_ActivityObjectiveMarkerModifier_v3_85.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_254_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_88();
    l0 = self.box_ProximityRadiusListener_v3_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1925203812", "1925203812", "UNI54_030_B10", "box_OutputOrder_v2_254.Out", "box_ProximityRadiusListener_v3_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_45_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_48();
    l0 = self.box_Delay_v5_45;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1900429042", "1900429042", "UNI54_030_B10", "box_Delay_v5_45.TimeElapsed", "box_EndActivityObjective_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_258_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_240();
    l0 = self.box_MultipleOR_258;
    l1 = self.box_Gate_v3_240;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1580628982", "1580628982", "UNI54_030_B10", "box_MultipleOR_258.Out", "box_Gate_v3_240.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_123_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_72();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|440522233", "440522233", "UNI54_030_B10", "box_OutputOrder_v2_123.Out", "box_ActivityObjectiveMarkerModifier_v3_72.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|410908431", "410908431", "UNI54_030_B10", "box_OutputOrder_v2_123.Out", "box_MultipleOR_124.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_124_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_124;
    l1 = self.box_OnceOnly_v3_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|351139227", "351139227", "UNI54_030_B10", "box_MultipleOR_124.Out", "box_OnceOnly_v3_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_319_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_127();
    l0 = self.box_OnceOnly_v3_319;
    l1 = self.box_SpawnAI_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|176652791", "176652791", "UNI54_030_B10", "box_OnceOnly_v3_319.Out", "box_SpawnAI_127.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_161_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_203();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1301682921", "1301682921", "UNI54_030_B10", "box_IsEntityLoaded_v3_161.True", "box_SoundShapeModifier_203.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_83_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_137();
    l0 = self.box_SpawnAI_83;
    l1 = self.box_SpawnAI_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1103145070", "1103145070", "UNI54_030_B10", "box_SpawnAI_83.Success", "box_SpawnAI_137.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_267_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_269();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|531950466", "531950466", "UNI54_030_B10", "box_OutputOrder_v2_267.Out", "box_GetPreconditionState_269.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_267_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_268();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1475736395", "1475736395", "UNI54_030_B10", "box_OutputOrder_v2_267.Out", "box_GetPreconditionState_268.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_134_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetContextualAction_132();
    l0 = self.box_OnceOnly_v3_134;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1932941881", "1932941881", "UNI54_030_B10", "box_OnceOnly_v3_134.Out", "box_GetContextualAction_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_44_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_44_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_50();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1657488077", "1657488077", "UNI54_030_B10", "box_IntegerArithmetics_v2_44.Out", "box_SetActivityObjectiveProgress_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_264_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_263();
    l0 = self.box_MultipleAND_v2_264;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|357576048", "357576048", "UNI54_030_B10", "box_MultipleAND_v2_264.Out", "box_EndActivityObjective_v2_263.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_339_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_340();
    l0 = self.box_MultipleOR_339;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1001908704", "1001908704", "UNI54_030_B10", "box_MultipleOR_339.Out", "box_IsEntityLoaded_v3_340.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_164_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_209();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|442266161", "442266161", "UNI54_030_B10", "box_IsEntityLoaded_v3_164.True", "box_SoundShapeModifier_209.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_266_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_264();
    l0 = self.box_MultipleOR_266;
    l1 = self.box_MultipleAND_v2_264;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|854242977", "854242977", "UNI54_030_B10", "box_MultipleOR_266.Out", "box_MultipleAND_v2_264.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_100_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_92();
    l0 = self.box_Delay_v5_100;
    l1 = self.box_PlayDialog_v6_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1800176002", "1800176002", "UNI54_030_B10", "box_Delay_v5_100.TimeElapsed", "box_PlayDialog_v6_92.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_276_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|803791592", "803791592", "UNI54_030_B10", "box_OutputOrder_v2_276.Out", "box_MultipleOR_129.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_276_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|337619869", "337619869", "UNI54_030_B10", "box_OutputOrder_v2_276.Out", "box_MultipleOR_65.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_250_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_239();
    l0 = self.box_MultipleOR_250;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2009139133", "2009139133", "UNI54_030_B10", "box_MultipleOR_250.Out", "box_IsEntityLoaded_v3_239.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_120_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_108();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|810626973", "810626973", "UNI54_030_B10", "box_OutputOrder_v2_120.Out", "box_ActivityObjectiveMarkerModifier_v3_108.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_120_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_118();
    l0 = self.box_MultipleAND_v2_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|971652274", "971652274", "UNI54_030_B10", "box_OutputOrder_v2_120.Out", "box_MultipleAND_v2_118.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_120_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_49();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1638069586", "1638069586", "UNI54_030_B10", "box_OutputOrder_v2_120.Out", "box_ParticleSystem_v3_49.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_238_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_333;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|989272252", "989272252", "UNI54_030_B10", "box_ShimmerModifier_v2_238.Enabled", "box_MultipleOR_333.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MetaBreakableModifier_v2_14_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_15();
    l0 = self.box_MetaBreakableModifier_v2_14;
    l1 = self.box_MetaBreakableModifier_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2009229568", "2009229568", "UNI54_030_B10", "box_MetaBreakableModifier_v2_14.OnSetUnDamageable", "box_MetaBreakableModifier_v2_15.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_257_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_243();
    l0 = self.box_MultipleOR_257;
    l1 = self.box_Gate_v3_243;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1614406110", "1614406110", "UNI54_030_B10", "box_MultipleOR_257.Out", "box_Gate_v3_243.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_26();
    l0 = self.box_MultipleOR_25;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1980419110", "1980419110", "UNI54_030_B10", "box_MultipleOR_25.Out", "box_IsEntityLoaded_v3_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_112_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_120();
    l0 = self.box_StaticBreakableListener_112;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1193747002", "1193747002", "UNI54_030_B10", "box_StaticBreakableListener_112.OnBreak", "box_OutputOrder_v2_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_185_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_226();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|806599931", "806599931", "UNI54_030_B10", "box_IsEntityLoaded_v3_185.True", "box_SoundShapeModifier_226.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetContextualAction_132_Out()
    local params, l0;
    self:OnExit_box_GetContextualAction_132_Out();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_133();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|637913398", "637913398", "UNI54_030_B10", "box_GetContextualAction_132.Out", "box_UseContextualActionModifier_v3_133.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_74_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_75();
    l0 = self.box_GroupSizeListener_v5_74;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1616339753", "1616339753", "UNI54_030_B10", "box_GroupSizeListener_v5_74.MemberRemoved", "box_Compare_Integers_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_56_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_56;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1367659891", "1367659891", "UNI54_030_B10", "box_PreconditionListener_56.PreconditionMet", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_240_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_236();
    l0 = self.box_Gate_v3_240;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1017464777", "1017464777", "UNI54_030_B10", "box_Gate_v3_240.Closed", "box_ActivityObjectiveMarkerModifier_v3_236.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_240_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPreconditionState_253();
    l0 = self.box_Gate_v3_240;
    l1 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|833999248", "833999248", "UNI54_030_B10", "box_Gate_v3_240.Out", "box_GetPreconditionState_253.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_309_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_310();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2123944692", "2123944692", "UNI54_030_B10", "box_MissionBlockLayer_309.Activated", "box_MissionBlockLayer_310.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_174_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_216();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|122648239", "122648239", "UNI54_030_B10", "box_IsEntityLoaded_v3_174.True", "box_SoundShapeModifier_216.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_97_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_95();
    l0 = self.box_Delay_v5_97;
    l1 = self.box_PlayDialog_v6_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1855429978", "1855429978", "UNI54_030_B10", "box_Delay_v5_97.TimeElapsed", "box_PlayDialog_v6_95.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_317_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_76();
    l0 = self.box_OnceOnly_v3_317;
    l1 = self.box_SpawnAI_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|998638516", "998638516", "UNI54_030_B10", "box_OnceOnly_v3_317.Out", "box_SpawnAI_76.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_303();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1365896434", "1365896434", "UNI54_030_B10", "box_OutputOrder_v2_63.Out", "box_DynamicLightModifier_303.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_307();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1293592625", "1293592625", "UNI54_030_B10", "box_OutputOrder_v2_63.Out", "box_MissionBlockLayer_307.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_325();
    l0 = self.box_GroupSizeListener_v5_325;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1822921367", "1822921367", "UNI54_030_B10", "box_OutputOrder_v2_63.Out", "box_GroupSizeListener_v5_325.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_149_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_146();
    l0 = self.box_SoundModifier_v2_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|197153999", "197153999", "UNI54_030_B10", "box_OutputOrder_v2_149.Out", "box_SoundModifier_v2_146.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_149_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_148();
    l0 = self.box_SoundModifier_v2_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1567090538", "1567090538", "UNI54_030_B10", "box_OutputOrder_v2_149.Out", "box_SoundModifier_v2_148.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_149_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_152();
    l0 = self.box_SoundModifier_v2_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1159990313", "1159990313", "UNI54_030_B10", "box_OutputOrder_v2_149.Out", "box_SoundModifier_v2_152.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_121_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_110();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2113330490", "2113330490", "UNI54_030_B10", "box_OutputOrder_v2_121.Out", "box_ActivityObjectiveMarkerModifier_v3_110.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_121_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_118();
    l0 = self.box_MultipleAND_v2_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|142666177", "142666177", "UNI54_030_B10", "box_OutputOrder_v2_121.Out", "box_MultipleAND_v2_118.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_121_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_42();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|773678399", "773678399", "UNI54_030_B10", "box_OutputOrder_v2_121.Out", "box_ParticleSystem_v3_42.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_105_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_106();
    l0 = self.box_StaticBreakableListener_105;
    l1 = self.box_StaticBreakableListener_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|39469085", "39469085", "UNI54_030_B10", "box_StaticBreakableListener_105.Enabled", "box_StaticBreakableListener_106.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_105_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_116();
    l0 = self.box_StaticBreakableListener_105;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1778478532", "1778478532", "UNI54_030_B10", "box_StaticBreakableListener_105.OnBreak", "box_OutputOrder_v2_116.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_11_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_12();
    l0 = self.box_MetaBreakableModifier_v2_11;
    l1 = self.box_MetaBreakableModifier_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1805204678", "1805204678", "UNI54_030_B10", "box_MetaBreakableModifier_v2_11.OnSetUnDamageable", "box_MetaBreakableModifier_v2_12.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_122_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_273();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1211967674", "1211967674", "UNI54_030_B10", "box_OutputOrder_v2_122.Out", "box_ActivityObjectiveMarkerModifier_v3_273.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_122_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_118();
    l0 = self.box_MultipleAND_v2_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1437823997", "1437823997", "UNI54_030_B10", "box_OutputOrder_v2_122.Out", "box_MultipleAND_v2_118.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_OutputOrder_v2_122_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_43();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|515883116", "515883116", "UNI54_030_B10", "box_OutputOrder_v2_122.Out", "box_ParticleSystem_v3_43.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_90_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_135();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1680357673", "1680357673", "UNI54_030_B10", "box_UseContextualActionModifier_v3_90.Enabled", "box_OutputOrder_v2_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_248_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_249();
    l0 = self.box_Delay_v5_249;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1002761071", "1002761071", "UNI54_030_B10", "box_OutputOrder_v2_248.Out", "box_Delay_v5_249.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_248_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_286();
    l0 = self.box_ProximityTrigger_v2_286;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1757326853", "1757326853", "UNI54_030_B10", "box_OutputOrder_v2_248.Out", "box_ProximityTrigger_v2_286.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_248_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_267();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1235100118", "1235100118", "UNI54_030_B10", "box_OutputOrder_v2_248.Out", "box_OutputOrder_v2_267.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_279_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_291();
    l0 = self.box_MetaBreakableModifier_v2_279;
    l1 = self.box_MetaBreakableModifier_v2_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1342030157", "1342030157", "UNI54_030_B10", "box_MetaBreakableModifier_v2_279.OnSetDamageable", "box_MetaBreakableModifier_v2_291.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_MetaBreakableModifier_v2_279_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_291();
    l0 = self.box_MetaBreakableModifier_v2_279;
    l1 = self.box_MetaBreakableModifier_v2_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|965352418", "965352418", "UNI54_030_B10", "box_MetaBreakableModifier_v2_279.OnSetUnDamageable", "box_MetaBreakableModifier_v2_291.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_DynamicLightModifier_303_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_302();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1117447697", "1117447697", "UNI54_030_B10", "box_DynamicLightModifier_303.Disabled", "box_DynamicLightModifier_302.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_82_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_83();
    l0 = self.box_SpawnAI_82;
    l1 = self.box_SpawnAI_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|141657701", "141657701", "UNI54_030_B10", "box_SpawnAI_82.Success", "box_SpawnAI_83.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_72_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_47();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1478681313", "1478681313", "UNI54_030_B10", "box_ActivityObjectiveMarkerModifier_v3_72.Disabled", "box_IntegerArithmetics_v2_47.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_101_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_254();
    l0 = self.box_ProximityTrigger_v2_101;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|546093034", "546093034", "UNI54_030_B10", "box_ProximityTrigger_v2_101.Enter", "box_OutputOrder_v2_254.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_41_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_98();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1328333011", "1328333011", "UNI54_030_B10", "box_GetPreconditionState_41.NotValid", "box_OutputOrder_v2_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_41_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_275();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1164249229", "1164249229", "UNI54_030_B10", "box_GetPreconditionState_41.Valid", "box_OutputOrder_v2_275.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_252_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_237();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|664676809", "664676809", "UNI54_030_B10", "box_GetPreconditionState_252.NotValid", "box_ActivityObjectiveMarkerModifier_v3_237.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_75_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_318();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2024013245", "2024013245", "UNI54_030_B10", "box_Compare_Integers_75.A_le_B", "box_OutputOrder_v2_318.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_92_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_96();
    l0 = self.box_PlayDialog_v6_92;
    l1 = self.box_Delay_v5_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|974621881", "974621881", "UNI54_030_B10", "box_PlayDialog_v6_92.Finished", "box_Delay_v5_96.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_165_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_213();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1984309097", "1984309097", "UNI54_030_B10", "box_IsEntityLoaded_v3_165.True", "box_SoundShapeModifier_213.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_316_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_128();
    l0 = self.box_OnceOnly_v3_316;
    l1 = self.box_SpawnAI_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|198264026", "198264026", "UNI54_030_B10", "box_OnceOnly_v3_316.Out", "box_SpawnAI_128.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_241_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_237();
    l0 = self.box_Gate_v3_241;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|279938782", "279938782", "UNI54_030_B10", "box_Gate_v3_241.Closed", "box_ActivityObjectiveMarkerModifier_v3_237.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_241_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPreconditionState_252();
    l0 = self.box_Gate_v3_241;
    l1 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|296888008", "296888008", "UNI54_030_B10", "box_Gate_v3_241.Out", "box_GetPreconditionState_252.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_118_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_118;
    l1 = self.box_MultipleOR_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|728325508", "728325508", "UNI54_030_B10", "box_MultipleAND_v2_118.Out", "box_MultipleOR_126.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_293_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_294();
    l0 = self.box_GroupSizeListener_v5_293;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|9179738", "9179738", "UNI54_030_B10", "box_GroupSizeListener_v5_293.MemberRemoved", "box_Compare_Integers_294.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_62_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_123();
    l0 = self.box_OnceOnly_v3_62;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1636882217", "1636882217", "UNI54_030_B10", "box_OnceOnly_v3_62.Out", "box_OutputOrder_v2_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_115_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_272();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2091788691", "2091788691", "UNI54_030_B10", "box_OutputOrder_v2_115.Out", "box_ActivityObjectiveMarkerModifier_v3_272.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_115_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_270();
    l0 = self.box_MultipleAND_v2_270;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1036578499", "1036578499", "UNI54_030_B10", "box_OutputOrder_v2_115.Out", "box_MultipleAND_v2_270.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_OutputOrder_v2_115_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_38();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|155030144", "155030144", "UNI54_030_B10", "box_OutputOrder_v2_115.Out", "box_ParticleSystem_v3_38.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_298_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_229();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|467368690", "467368690", "UNI54_030_B10", "box_DynamicLightModifier_298.Enabled", "box_Simple_Node_229.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_268_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_266;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|539496163", "539496163", "UNI54_030_B10", "box_GetPreconditionState_268.Valid", "box_MultipleOR_266.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StartCelebration_81_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_1();
    l0 = self.box_StartCelebration_81;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1465700281", "1465700281", "UNI54_030_B10", "box_StartCelebration_81.Ended", "box_ActivityEnd_1.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_93_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_97();
    l0 = self.box_PlayDialog_v6_93;
    l1 = self.box_Delay_v5_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1218403411", "1218403411", "UNI54_030_B10", "box_PlayDialog_v6_93.Finished", "box_Delay_v5_97.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_167_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_212();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|320830160", "320830160", "UNI54_030_B10", "box_IsEntityLoaded_v3_167.True", "box_SoundShapeModifier_212.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_275_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|235172048", "235172048", "UNI54_030_B10", "box_OutputOrder_v2_275.Out", "box_MultipleOR_129.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_275_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1151514572", "1151514572", "UNI54_030_B10", "box_OutputOrder_v2_275.Out", "box_MultipleOR_59.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_178_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_221();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|368910478", "368910478", "UNI54_030_B10", "box_IsEntityLoaded_v3_178.True", "box_SoundShapeModifier_221.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_300();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|760794159", "760794159", "UNI54_030_B10", "box_OutputOrder_v2_64.Out", "box_DynamicLightModifier_300.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_309();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|131313289", "131313289", "UNI54_030_B10", "box_OutputOrder_v2_64.Out", "box_MissionBlockLayer_309.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_329();
    l0 = self.box_GroupSizeListener_v5_329;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1207324913", "1207324913", "UNI54_030_B10", "box_OutputOrder_v2_64.Out", "box_GroupSizeListener_v5_329.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_323_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_325();
    l0 = self.box_GroupSizeListener_v5_325;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|949672751", "949672751", "UNI54_030_B10", "box_OutputOrder_v2_323.Out", "box_GroupSizeListener_v5_325.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_323_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_326;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1454227733", "1454227733", "UNI54_030_B10", "box_OutputOrder_v2_323.Out", "box_OnceOnly_v3_326.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MetaBreakableModifier_v2_16_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_272();
    l0 = self.box_MetaBreakableModifier_v2_16;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|200606698", "200606698", "UNI54_030_B10", "box_MetaBreakableModifier_v2_16.OnSetDamageable", "box_ActivityObjectiveMarkerModifier_v3_272.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_10_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_11();
    l0 = self.box_MetaBreakableModifier_v2_10;
    l1 = self.box_MetaBreakableModifier_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1938706039", "1938706039", "UNI54_030_B10", "box_MetaBreakableModifier_v2_10.OnSetUnDamageable", "box_MetaBreakableModifier_v2_11.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_IsEntityLoaded_v3_169_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_211();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1105371841", "1105371841", "UNI54_030_B10", "box_IsEntityLoaded_v3_169.True", "box_SoundShapeModifier_211.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_59_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_59;
    l1 = self.box_OnceOnly_v3_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1475082139", "1475082139", "UNI54_030_B10", "box_MultipleOR_59.Out", "box_OnceOnly_v3_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ShimmerModifier_v2_189_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_250;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|181897390", "181897390", "UNI54_030_B10", "box_ShimmerModifier_v2_189.Enabled", "box_MultipleOR_250.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_191_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_279();
    l0 = self.box_ProximityRadiusListener_v3_191;
    l1 = self.box_MetaBreakableModifier_v2_279;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1791961075", "1791961075", "UNI54_030_B10", "box_ProximityRadiusListener_v3_191.AllFar", "box_MetaBreakableModifier_v2_279.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_ProximityRadiusListener_v3_191_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_279();
    l0 = self.box_ProximityRadiusListener_v3_191;
    l1 = self.box_MetaBreakableModifier_v2_279;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1977090606", "1977090606", "UNI54_030_B10", "box_ProximityRadiusListener_v3_191.SomeoneNear", "box_MetaBreakableModifier_v2_279.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_73_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_44();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2021338072", "2021338072", "UNI54_030_B10", "box_ActivityObjectiveMarkerModifier_v3_73.Disabled", "box_IntegerArithmetics_v2_44.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_73();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|6858652", "6858652", "UNI54_030_B10", "box_OutputOrder_v2_125.Out", "box_ActivityObjectiveMarkerModifier_v3_73.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|365646903", "365646903", "UNI54_030_B10", "box_OutputOrder_v2_125.Out", "box_MultipleOR_126.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_128_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_293();
    l0 = self.box_SpawnAI_128;
    l1 = self.box_GroupSizeListener_v5_293;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|747334344", "747334344", "UNI54_030_B10", "box_SpawnAI_128.Spawned", "box_GroupSizeListener_v5_293.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_150_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_145();
    l0 = self.box_SoundModifier_v2_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1163785595", "1163785595", "UNI54_030_B10", "box_OutputOrder_v2_150.Out", "box_SoundModifier_v2_145.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_150_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_151();
    l0 = self.box_SoundModifier_v2_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2051048372", "2051048372", "UNI54_030_B10", "box_OutputOrder_v2_150.Out", "box_SoundModifier_v2_151.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_150_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_147();
    l0 = self.box_SoundModifier_v2_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|574278579", "574278579", "UNI54_030_B10", "box_OutputOrder_v2_150.Out", "box_SoundModifier_v2_147.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_53_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_69();
    l0 = self.box_RequestPhoneCall_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|245202026", "245202026", "UNI54_030_B10", "box_GetActivityState_v2_53.Completed", "box_RequestPhoneCall_v2_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_110_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_108();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2118336359", "2118336359", "UNI54_030_B10", "box_ActivityObjectiveMarkerModifier_v3_110.Enabled", "box_ActivityObjectiveMarkerModifier_v3_108.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UnlockDoor_55_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_299();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|344477836", "344477836", "UNI54_030_B10", "box_UnlockDoor_55.Unlocked", "box_DynamicLightModifier_299.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_119_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = self.box_OnceOnly_v3_119;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|282516283", "282516283", "UNI54_030_B10", "box_OnceOnly_v3_119.Out", "box_OutputOrder_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_255_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|85344338", "85344338", "UNI54_030_B10", "box_OutputOrder_v2_255.Out", "box_MultipleOR_129.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_255_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_261();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1333043909", "1333043909", "UNI54_030_B10", "box_OutputOrder_v2_255.Out", "box_Simple_Node_261.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_255_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_18();
    l0 = self.box_MetaBreakableModifier_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|93378079", "93378079", "UNI54_030_B10", "box_OutputOrder_v2_255.Out", "box_MetaBreakableModifier_v2_18.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_255_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_84();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|891830194", "891830194", "UNI54_030_B10", "box_OutputOrder_v2_255.Out", "box_ActivityObjectiveMarkerModifier_v3_84.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_255_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_191();
    l0 = self.box_ProximityRadiusListener_v3_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|155912584", "155912584", "UNI54_030_B10", "box_OutputOrder_v2_255.Out", "box_ProximityRadiusListener_v3_191.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_190_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_190_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|157238351", "157238351", "UNI54_030_B10", "box_GetPlayerGroup_v2_190.Out", "box_OutputOrder_v2_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_315_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_293();
    l0 = self.box_GroupSizeListener_v5_293;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|67749923", "67749923", "UNI54_030_B10", "box_OutputOrder_v2_315.Out", "box_GroupSizeListener_v5_293.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_315_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_317;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|474008624", "474008624", "UNI54_030_B10", "box_OutputOrder_v2_315.Out", "box_OnceOnly_v3_317.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_41();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|979251355", "979251355", "UNI54_030_B10", "box_OutputOrder_v2_61.Out", "box_GetPreconditionState_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_58();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1147840968", "1147840968", "UNI54_030_B10", "box_OutputOrder_v2_61.Out", "box_GetPreconditionState_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_248();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|341306657", "341306657", "UNI54_030_B10", "box_OutputOrder_v2_61.Out", "box_OutputOrder_v2_248.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjectiveProgress_v2_7_Out()
    self:OnExit_box_AddActivityObjectiveProgress_v2_7_Out();
end;

function export:f_box_ProximityRadiusListener_v3_282_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_282;
    l1 = self.box_MultipleOR_284;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|91211599", "91211599", "UNI54_030_B10", "box_ProximityRadiusListener_v3_282.SomeoneNear", "box_MultipleOR_284.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UnlockDoor_52_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_54();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|426919399", "426919399", "UNI54_030_B10", "box_UnlockDoor_52.Unlocked", "box_UnlockDoor_54.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_182_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_225();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1022067304", "1022067304", "UNI54_030_B10", "box_IsEntityLoaded_v3_182.True", "box_SoundShapeModifier_225.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_326_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_290();
    l0 = self.box_OnceOnly_v3_326;
    l1 = self.box_SpawnAI_290;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2118070133", "2118070133", "UNI54_030_B10", "box_OnceOnly_v3_326.Out", "box_SpawnAI_290.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_274_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_281();
    l0 = self.box_PlayDialog_v6_274;
    l1 = self.box_Delay_v5_281;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|577927396", "577927396", "UNI54_030_B10", "box_PlayDialog_v6_274.Finished", "box_Delay_v5_281.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_265_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_264();
    l0 = self.box_MultipleOR_265;
    l1 = self.box_MultipleAND_v2_264;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|179694814", "179694814", "UNI54_030_B10", "box_MultipleOR_265.Out", "box_MultipleAND_v2_264.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_UnlockDoor_57_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_55();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|714274593", "714274593", "UNI54_030_B10", "box_UnlockDoor_57.Unlocked", "box_UnlockDoor_55.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_335_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1436533347", "1436533347", "UNI54_030_B10", "box_ShimmerModifier_v2_335.Enabled", "box_MultipleOR_336.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_272_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_102();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|464870037", "464870037", "UNI54_030_B10", "box_ActivityObjectiveMarkerModifier_v3_272.Enabled", "box_ActivityObjectiveMarkerModifier_v3_102.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_13_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_14();
    l0 = self.box_MetaBreakableModifier_v2_13;
    l1 = self.box_MetaBreakableModifier_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1334681405", "1334681405", "UNI54_030_B10", "box_MetaBreakableModifier_v2_13.OnSetUnDamageable", "box_MetaBreakableModifier_v2_14.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_314_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_79();
    l0 = self.box_GroupSizeListener_v5_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|312115554", "312115554", "UNI54_030_B10", "box_OutputOrder_v2_314.Out", "box_GroupSizeListener_v5_79.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_314_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_316;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1453328980", "1453328980", "UNI54_030_B10", "box_OutputOrder_v2_314.Out", "box_OnceOnly_v3_316.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_37_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_195();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|563715171", "563715171", "UNI54_030_B10", "box_IsEntityLoaded_v3_37.True", "box_SoundShapeModifier_195.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_291_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_278();
    l0 = self.box_MetaBreakableModifier_v2_291;
    l1 = self.box_MetaBreakableModifier_v2_278;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|108462186", "108462186", "UNI54_030_B10", "box_MetaBreakableModifier_v2_291.OnSetDamageable", "box_MetaBreakableModifier_v2_278.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_MetaBreakableModifier_v2_291_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_278();
    l0 = self.box_MetaBreakableModifier_v2_291;
    l1 = self.box_MetaBreakableModifier_v2_278;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1518009816", "1518009816", "UNI54_030_B10", "box_MetaBreakableModifier_v2_291.OnSetUnDamageable", "box_MetaBreakableModifier_v2_278.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_103_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_104();
    l0 = self.box_StaticBreakableListener_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1589173013", "1589173013", "UNI54_030_B10", "box_ActivityObjectiveMarkerModifier_v3_103.Enabled", "box_StaticBreakableListener_104.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_187_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_165();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|166950560", "166950560", "UNI54_030_B10", "box_OutputOrder_v2_187.Out", "box_IsEntityLoaded_v3_165.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_187_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_174();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1686042304", "1686042304", "UNI54_030_B10", "box_OutputOrder_v2_187.Out", "box_IsEntityLoaded_v3_174.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_187_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_173();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1881264417", "1881264417", "UNI54_030_B10", "box_OutputOrder_v2_187.Out", "box_IsEntityLoaded_v3_173.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_187_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_175();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1522969706", "1522969706", "UNI54_030_B10", "box_OutputOrder_v2_187.Out", "box_IsEntityLoaded_v3_175.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_307_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_308();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1985923668", "1985923668", "UNI54_030_B10", "box_MissionBlockLayer_307.Activated", "box_MissionBlockLayer_308.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_327_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_329();
    l0 = self.box_GroupSizeListener_v5_329;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|677933234", "677933234", "UNI54_030_B10", "box_OutputOrder_v2_327.Out", "box_GroupSizeListener_v5_329.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_327_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_330;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|482897422", "482897422", "UNI54_030_B10", "box_OutputOrder_v2_327.Out", "box_OnceOnly_v3_330.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_DynamicLightModifier_302_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_305();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1537984978", "1537984978", "UNI54_030_B10", "box_DynamicLightModifier_302.Disabled", "box_OutputOrder_v2_305.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_342_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_343();
    l0 = self.box_MultipleOR_342;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1973561608", "1973561608", "UNI54_030_B10", "box_MultipleOR_342.Out", "box_IsEntityLoaded_v3_343.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_160_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_210();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1341775787", "1341775787", "UNI54_030_B10", "box_IsEntityLoaded_v3_160.True", "box_SoundShapeModifier_210.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_179_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_223();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1293876340", "1293876340", "UNI54_030_B10", "box_IsEntityLoaded_v3_179.True", "box_SoundShapeModifier_223.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_141_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_196();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|154053224", "154053224", "UNI54_030_B10", "box_IsEntityLoaded_v3_141.True", "box_SoundShapeModifier_196.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UnlockDoor_80_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_57();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|765809942", "765809942", "UNI54_030_B10", "box_UnlockDoor_80.Unlocked", "box_UnlockDoor_57.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_287_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_289();
    l0 = self.box_ProximityTrigger_v2_287;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1287787627", "1287787627", "UNI54_030_B10", "box_ProximityTrigger_v2_287.Enter", "box_Simple_Node_289.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_175_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_215();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1045497595", "1045497595", "UNI54_030_B10", "box_IsEntityLoaded_v3_175.True", "box_SoundShapeModifier_215.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_36();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|306258324", "306258324", "UNI54_030_B10", "box_OutputOrder_v2_183.Out", "box_IsEntityLoaded_v3_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_37();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|859000069", "859000069", "UNI54_030_B10", "box_OutputOrder_v2_183.Out", "box_IsEntityLoaded_v3_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_141();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1833300427", "1833300427", "UNI54_030_B10", "box_OutputOrder_v2_183.Out", "box_IsEntityLoaded_v3_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_144();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|847473239", "847473239", "UNI54_030_B10", "box_OutputOrder_v2_183.Out", "box_IsEntityLoaded_v3_144.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_154();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|137974750", "137974750", "UNI54_030_B10", "box_OutputOrder_v2_183.Out", "box_IsEntityLoaded_v3_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_158();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1081760679", "1081760679", "UNI54_030_B10", "box_OutputOrder_v2_183.Out", "box_IsEntityLoaded_v3_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_156();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|910905835", "910905835", "UNI54_030_B10", "box_OutputOrder_v2_183.Out", "box_IsEntityLoaded_v3_156.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_159();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|201407346", "201407346", "UNI54_030_B10", "box_OutputOrder_v2_183.Out", "box_IsEntityLoaded_v3_159.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_157();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1438106997", "1438106997", "UNI54_030_B10", "box_OutputOrder_v2_183.Out", "box_IsEntityLoaded_v3_157.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_85_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_101();
    l0 = self.box_ProximityTrigger_v2_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|479158716", "479158716", "UNI54_030_B10", "box_ActivityObjectiveMarkerModifier_v3_85.Enabled", "box_ProximityTrigger_v2_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_305_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_140();
    l0 = self.box_PlayDialog_v6_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1859285977", "1859285977", "UNI54_030_B10", "box_OutputOrder_v2_305.Out", "box_PlayDialog_v6_140.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_305_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_142();
    l0 = self.box_Delay_v5_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1244826972", "1244826972", "UNI54_030_B10", "box_OutputOrder_v2_305.Out", "box_Delay_v5_142.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MetaBreakableModifier_v2_19_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_16();
    l0 = self.box_MetaBreakableModifier_v2_19;
    l1 = self.box_MetaBreakableModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|543671668", "543671668", "UNI54_030_B10", "box_MetaBreakableModifier_v2_19.OnSetDamageable", "box_MetaBreakableModifier_v2_16.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_UnlockDoor_54_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_298();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1970734837", "1970734837", "UNI54_030_B10", "box_UnlockDoor_54.Unlocked", "box_DynamicLightModifier_298.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_155();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|345767089", "345767089", "UNI54_030_B10", "box_OutputOrder_v2_186.Out", "box_IsEntityLoaded_v3_155.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_163();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|998117438", "998117438", "UNI54_030_B10", "box_OutputOrder_v2_186.Out", "box_IsEntityLoaded_v3_163.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_161();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2097602542", "2097602542", "UNI54_030_B10", "box_OutputOrder_v2_186.Out", "box_IsEntityLoaded_v3_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_164();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1118698174", "1118698174", "UNI54_030_B10", "box_OutputOrder_v2_186.Out", "box_IsEntityLoaded_v3_164.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_162();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|259281414", "259281414", "UNI54_030_B10", "box_OutputOrder_v2_186.Out", "box_IsEntityLoaded_v3_162.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_160();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1779232584", "1779232584", "UNI54_030_B10", "box_OutputOrder_v2_186.Out", "box_IsEntityLoaded_v3_160.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_168();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|568612046", "568612046", "UNI54_030_B10", "box_OutputOrder_v2_186.Out", "box_IsEntityLoaded_v3_168.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_166();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|950869364", "950869364", "UNI54_030_B10", "box_OutputOrder_v2_186.Out", "box_IsEntityLoaded_v3_166.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_169();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2142956486", "2142956486", "UNI54_030_B10", "box_OutputOrder_v2_186.Out", "box_IsEntityLoaded_v3_169.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_167();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1747308292", "1747308292", "UNI54_030_B10", "box_OutputOrder_v2_186.Out", "box_IsEntityLoaded_v3_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_271_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_274();
    l0 = self.box_LookAtTrigger_v2_271;
    l1 = self.box_PlayDialog_v6_274;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2038101989", "2038101989", "UNI54_030_B10", "box_LookAtTrigger_v2_271.EnterFOV", "box_PlayDialog_v6_274.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MetaBreakableModifier_v2_193_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_192();
    l0 = self.box_MetaBreakableModifier_v2_193;
    l1 = self.box_MetaBreakableModifier_v2_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1948621345", "1948621345", "UNI54_030_B10", "box_MetaBreakableModifier_v2_193.OnSetDamageable", "box_MetaBreakableModifier_v2_192.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_MetaBreakableModifier_v2_193_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_192();
    l0 = self.box_MetaBreakableModifier_v2_193;
    l1 = self.box_MetaBreakableModifier_v2_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|213370915", "213370915", "UNI54_030_B10", "box_MetaBreakableModifier_v2_193.OnSetUnDamageable", "box_MetaBreakableModifier_v2_192.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_GetPreconditionState_253_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_236();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1904363718", "1904363718", "UNI54_030_B10", "box_GetPreconditionState_253.NotValid", "box_ActivityObjectiveMarkerModifier_v3_236.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_283_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_271();
    l0 = self.box_LookAtTrigger_v2_271;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1164041491", "1164041491", "UNI54_030_B10", "box_OutputOrder_v2_283.Out", "box_LookAtTrigger_v2_271.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_283_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_285();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|840903995", "840903995", "UNI54_030_B10", "box_OutputOrder_v2_283.Out", "box_GetPlayerGroup_v2_285.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_176_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_228();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2096783324", "2096783324", "UNI54_030_B10", "box_IsEntityLoaded_v3_176.True", "box_SoundShapeModifier_228.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_45();
    l0 = self.box_MultipleAND_v2_51;
    l1 = self.box_Delay_v5_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|626806456", "626806456", "UNI54_030_B10", "box_MultipleAND_v2_51.Out", "box_Delay_v5_45.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_109_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_107();
    l0 = self.box_StaticBreakableListener_109;
    l1 = self.box_StaticBreakableListener_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|535407357", "535407357", "UNI54_030_B10", "box_StaticBreakableListener_109.Enabled", "box_StaticBreakableListener_107.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_109_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_122();
    l0 = self.box_StaticBreakableListener_109;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1765440473", "1765440473", "UNI54_030_B10", "box_StaticBreakableListener_109.OnBreak", "box_OutputOrder_v2_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|@Audio_Pause_WaterLevel_Soundshapes");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_260()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|@EnteredBuilding1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_260_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_261()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_261");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|@EnteredBuilding2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_261_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_288()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_288");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|@EnterPipe1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_288_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_289()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_289");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|@EnterPipe2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_289_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_322()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_322");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|@n_OnLeaveZone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_322_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|@UnlockDoors_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_230_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|@UnlockDoors_b");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_229_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_306()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_306");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|10600007");
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
                [0] = self.f_box_OutputOrder_v2_306_Out_0,
                [1] = self.f_box_OutputOrder_v2_306_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|11548719");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532881921775311",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_290()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104660497545570305",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|26635839");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101135036355987120",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_130()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2100676747182749065",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|31539582");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800007191698703",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|45553335");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800286463139095",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|53682142");
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

function export:OnEnter_box_MultipleAND_v2_270()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|59759961");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101135027227084463",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|72276423");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_22_Enabled,
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
        [4] = "2101767527550956795",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_324()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_324");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|78081768");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_324_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_325;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 8,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|86017036");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_246_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015246071770278",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|92458572");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_24_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_24_True,
    });
    params = {
        -- entityId,
        [0] = "2101767527550956795",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|95962955");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_177_True,
    });
    params = {
        -- entityId,
        [0] = "2101135027227084463",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_247()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|97721961");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_247_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015246071781167",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_338()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_338");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|108650553");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_338_Enabled,
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
        [4] = "2101767506128549112",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_20()
    local params;
    params = {
        -- targets,
        [0] = "2099822151419829370",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|112253141");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101755152491885593",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_107()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2099808860228296700",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|119470496");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_168_True,
    });
    params = {
        -- entityId,
        [0] = "2103966131829107341",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_89()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayers,
        -- id2,
        [3] = "2102888284238648729",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_262()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_262");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|126653078");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_262_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI54_030_B10_LeaveArea",
            id = "715312",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_60()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015246071781167",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|148851911");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101135041523369649",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_340()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_340");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|158454090");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_340_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_340_True,
    });
    params = {
        -- entityId,
        [0] = "2101767461075432692",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_140()
    local params;
    params = {
        -- Group,
        [0] = "2104908053859026970",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4269094613",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_299()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_299");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|170596958");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_299_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2104812071485982706",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|172371855");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103966137346714254",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|174638372");
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
                [0] = self.f_box_OutputOrder_v2_135_Out_0,
                [1] = self.f_box_OutputOrder_v2_135_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|180606233");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_239_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_239_True,
    });
    params = {
        -- entityId,
        [0] = "2103386625823241515",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|180999707");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_144_True,
    });
    params = {
        -- entityId,
        [0] = "2103800281048292630",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_300()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_300");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|189670428");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_300_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2101671845179707765",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_297()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#B3C83C58",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_286()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104453438105473289",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_88()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayers,
        -- farZone,
        [2] = 101,
        -- id2,
        [3] = "2104631259555710695",
        -- nearZone,
        [4] = 100,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_243()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|230177450");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_158_True,
    });
    params = {
        -- entityId,
        [0] = "2103800007191698703",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_281()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|290485274");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101135018687481518",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|295877366");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_78_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_79;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_153()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_329()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#B3C83C58",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_280()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_280");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|314702922");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2104425200534688746",
        -- pawns,
        [2] = "2104425200534688746",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_21()
    local params;
    params = {
        -- targets,
        [0] = "2099808860228296700",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_337()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_337");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|318203838");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_337_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_337_True,
    });
    params = {
        -- entityId,
        [0] = "2101767506128549112",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|336058353");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103966145353640591",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|350983478");
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
                [0] = self.f_box_OutputOrder_v2_99_Out_0,
                [1] = self.f_box_OutputOrder_v2_99_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_296()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_296");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|351375924");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_296_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_297;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_242()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_12()
    local params;
    params = {
        -- targets,
        [0] = "2099822151413537874",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|382834920");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_102_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2103067790381455467",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI54_030_B10_PumpDestroyed",
            id = "561761",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_312()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_312");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|390415973");
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
                [0] = self.f_box_OutputOrder_v2_312_Out_0,
                [1] = self.f_box_OutputOrder_v2_312_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|397513130");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101755176367961119",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|413325946");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532810450835148",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|418061215");
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
                [0] = self.f_box_OutputOrder_v2_67_Out_0,
                [1] = self.f_box_OutputOrder_v2_67_Out_1,
                [2] = self.f_box_OutputOrder_v2_67_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|439597451");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_26_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_26_True,
    });
    params = {
        -- entityId,
        [0] = "2101768118966689331",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_87()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102888284238648729",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|464073089");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101134997709670061",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|465985425");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_273()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_273");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|466025282");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_273_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2104355457226258959",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI54_030_B10_PumpDestroyed",
            id = "561761",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_320()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_320");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|474540940");
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
                [0] = self.f_box_OutputOrder_v2_320_Out_0,
                [1] = self.f_box_OutputOrder_v2_320_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|479623483");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532750738626251",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_139()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100085024450678826",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|485561881");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532682721695433",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_295()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104661147140507462",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_328()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_328");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|492096754");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_328_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_329;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 8,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_142()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_325()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#B3C83C58",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_127()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100595570904149427",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_151()
    local params;
    params = {
        -- Pawns,
        [0] = "2103982831052004592",
        -- SoundId,
        [1] = "2145749482",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_285()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_285");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|522079273");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_285_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|526843991");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_8_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI54_030_B10_PumpDestroyed",
            id = "561761",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_334()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_334");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|527989115");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_334_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_334_True,
    });
    params = {
        -- entityId,
        [0] = "2103387045081673847",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_96()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|584222824");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_157_True,
    });
    params = {
        -- entityId,
        [0] = "2103800042820214034",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_69()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "117138026",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_269()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_269");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|589772599");
    l0:SetConnections({
        -- Valid,
        [1] = self.f_box_GetPreconditionState_269_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015246071770278",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|591796825");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_48_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_030_B10_PumpDestroyed",
            id = "561761",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|593393871");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_36_True,
    });
    params = {
        -- entityId,
        [0] = "2103800049755495699",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|606613751");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_166_True,
    });
    params = {
        -- entityId,
        [0] = "2103966137346714254",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|623118762");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_181_True,
    });
    params = {
        -- entityId,
        [0] = "2101134997709670061",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_106()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2099822151413537874",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|632330164");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_58_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_58_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015246071781167",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|643071137");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [0] = self.f_box_OutputOrder_v2_188_Out_0,
                [1] = self.f_box_OutputOrder_v2_188_Out_1,
                [2] = self.f_box_OutputOrder_v2_188_Out_2,
                [3] = self.f_box_OutputOrder_v2_188_Out_3,
                [4] = self.f_box_OutputOrder_v2_188_Out_4,
                [5] = self.f_box_OutputOrder_v2_188_Out_5,
                [6] = self.f_box_OutputOrder_v2_188_Out_6,
                [7] = self.f_box_OutputOrder_v2_188_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|648506200");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_47_Out,
    });
    params = {
        -- A,
        [0] = self.iPumpCount,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|666464722");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_84_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100192324156924516",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI54_030_B10_LeaveArea",
            id = "715312",
        },
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|671205162");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_159_True,
    });
    params = {
        -- entityId,
        [0] = "2103800033456430353",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_79()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#B3C83C58",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_251()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_251");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|677080605");
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
                [0] = self.f_box_OutputOrder_v2_251_Out_0,
                [1] = self.f_box_OutputOrder_v2_251_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_137()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099877257395835670",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|684262575");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_163_True,
    });
    params = {
        -- entityId,
        [0] = "2101532810450835148",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|685618828");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_46_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_030_B10_PumpDestroyed",
            id = "561761",
        },
        -- Progress,
        [1] = self.iPumpCount,
        -- ProgressId,
        [2] = self.iIdProgress,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|698945278");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_154_True,
    });
    params = {
        -- entityId,
        [0] = "2103800286463139095",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|705459524");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103966127685134988",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_341()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_341");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|708511862");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_341_Enabled,
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
        [4] = "2101767461075432692",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_17()
    local params;
    params = {
        -- targets,
        [0] = "2099808860230393870",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|720093786");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101135046176949938",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_15()
    local params;
    params = {
        -- targets,
        [0] = "2099808860230393870",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|736338456");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_184_True,
    });
    params = {
        -- entityId,
        [0] = "2101135018687481518",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_318()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_318");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|747388841");
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
                [0] = self.f_box_OutputOrder_v2_318_Out_0,
                [1] = self.f_box_OutputOrder_v2_318_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_249()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 300,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_104()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2099822151419829370",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_70()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104425297966273578",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|768444232");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_156_True,
    });
    params = {
        -- entityId,
        [0] = "2103800020766563600",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_277()
    local params;
    params = {
        -- targets,
        [0] = "2099822151419829370",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|786333351");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
                [2] = self.f_box_OutputOrder_v2_23_Out_2,
                [3] = self.f_box_OutputOrder_v2_23_Out_3,
                [4] = self.f_box_OutputOrder_v2_23_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_111()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103068056709285027",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_311()
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
        [6] = "144417588",
        -- StopEvent,
        [7] = "902102189",
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

function export:OnEnter_box_SoundShapeModifier_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|820432813");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800057896639764",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_18()
    local params;
    params = {
        -- targets,
        [0] = "2099808860234588196",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|838284901");
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

function export:OnEnter_box_IsEntityLoaded_v3_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|838981688");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_173_True,
    });
    params = {
        -- entityId,
        [0] = "2101532682721695433",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_147()
    local params;
    params = {
        -- Pawns,
        [0] = "2103982829873405166",
        -- SoundId,
        [1] = "2145749482",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_301()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_301");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|845023795");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_301_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2101671855162151289",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_343()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_343");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|862607867");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_343_True,
    });
    params = {
        -- entityId,
        [0] = "2103939072664812501",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|886592702");
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
                [0] = self.f_box_OutputOrder_v2_117_Out_0,
                [1] = self.f_box_OutputOrder_v2_117_Out_1,
                [2] = self.f_box_OutputOrder_v2_117_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|896263639");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_344()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_344");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|897468110");
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
        [4] = "2103939072664812501",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_68()
    local params;
    params = {
        -- Group,
        [0] = "2100263555025610186",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|948085292");
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

function export:OnEnter_box_Compare_Integers_294()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_294");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|949646012");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_294_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_293;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|968820218");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_108_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2103068054173828255",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI54_030_B10_PumpDestroyed",
            id = "561761",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|970973961");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800033456430353",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|971518470");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_162_True,
    });
    params = {
        -- entityId,
        [0] = "2101532881921775311",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|974811115");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_50_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_030_B10_PumpDestroyed",
            id = "561761",
        },
        -- Progress,
        [1] = self.iPumpCount,
        -- ProgressId,
        [2] = self.iIdProgress,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_91()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1003509040");
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
                [0] = self.f_box_OutputOrder_v2_116_Out_0,
                [1] = self.f_box_OutputOrder_v2_116_Out_1,
                [2] = self.f_box_OutputOrder_v2_116_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1014420388");
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
                [0] = self.f_box_OutputOrder_v2_77_Out_0,
                [1] = self.f_box_OutputOrder_v2_77_Out_1,
                [2] = self.f_box_OutputOrder_v2_77_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1030853723");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_136_Unlocked,
    });
    params = {
        -- door,
        [0] = "2103568560153444537",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1031783753");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_155_True,
    });
    params = {
        -- entityId,
        [0] = "2101532750738626251",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_254()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_254");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1042401455");
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
                [0] = self.f_box_OutputOrder_v2_254_Out_0,
                [1] = self.f_box_OutputOrder_v2_254_Out_1,
                [2] = self.f_box_OutputOrder_v2_254_Out_2,
                [3] = self.f_box_OutputOrder_v2_254_Out_3,
                [4] = self.f_box_OutputOrder_v2_254_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_45()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1044302884");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101134941893969579",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1046950024");
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
                [0] = self.f_box_OutputOrder_v2_123_Out_0,
                [1] = self.f_box_OutputOrder_v2_123_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1057881274");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532836572960461",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1063291806");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103966151812868752",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_313()
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
        [6] = "144417588",
        -- StopEvent,
        [7] = "902102189",
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

function export:OnEnter_box_IsEntityLoaded_v3_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1068336251");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_161_True,
    });
    params = {
        -- entityId,
        [0] = "2101532836572960461",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_83()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104269744275212577",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_267");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1079465324");
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
                [0] = self.f_box_OutputOrder_v2_267_Out_0,
                [1] = self.f_box_OutputOrder_v2_267_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1085523881");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_44_Out,
    });
    params = {
        -- A,
        [0] = self.iPumpCount,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_264()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1105464965");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_164_True,
    });
    params = {
        -- entityId,
        [0] = "2101532842138801870",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_100()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_276()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_276");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1128552054");
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
                [0] = self.f_box_OutputOrder_v2_276_Out_0,
                [1] = self.f_box_OutputOrder_v2_276_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1152678953");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532642802407112",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1161998864");
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
                [0] = self.f_box_OutputOrder_v2_120_Out_0,
                [1] = self.f_box_OutputOrder_v2_120_Out_1,
                [2] = self.f_box_OutputOrder_v2_120_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1172534161");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_238_Enabled,
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
        [4] = "2103386625823241515",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_95()
    local params;
    params = {
        -- Group,
        [0] = "#B9461B83",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2830591695",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_14()
    local params;
    params = {
        -- targets,
        [0] = "2099808860228296700",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_192()
    local params;
    params = {
        -- targets,
        [0] = "2099822151413537874",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_112()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2099808860230393870",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1211339888");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_185_True,
    });
    params = {
        -- entityId,
        [0] = "2101135046176949938",
    };
    return params;
end;

function export:OnEnter_box_GetContextualAction_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetContextualAction_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1212546234");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetContextualAction_132_Out,
    });
    params = {
        -- pawnId,
        [0] = "2104424730711848810",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_74()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#B3C83C58",
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_56()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015246071770278",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_240()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_309()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_309");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1241447408");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_309_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160255079929212",
        -- missionLayerId,
        [1] = "63189052099040573",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1277401816");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_174_True,
    });
    params = {
        -- entityId,
        [0] = "2101532642802407112",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_97()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1319067805");
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
                [2] = self.f_box_OutputOrder_v2_63_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1327787604");
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
                [0] = self.f_box_OutputOrder_v2_149_Out_0,
                [1] = self.f_box_OutputOrder_v2_149_Out_1,
                [2] = self.f_box_OutputOrder_v2_149_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1342802562");
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

function export:OnEnter_box_StaticBreakableListener_105()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2099822151417732196",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_11()
    local params;
    params = {
        -- targets,
        [0] = "2099822151417732196",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1369025312");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800042820214034",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1371284832");
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

function export:OnEnter_box_UseContextualActionModifier_v3_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1379437345");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_90_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102888284238648729",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_248()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_248");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1392514834");
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
                [0] = self.f_box_OutputOrder_v2_248_Out_0,
                [1] = self.f_box_OutputOrder_v2_248_Out_1,
                [2] = self.f_box_OutputOrder_v2_248_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_263");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1407251820");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_030_B10_LeaveArea",
            id = "715312",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_279()
    local params;
    params = {
        -- targets,
        [0] = "2099808860234588196",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_303()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_303");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1417178860");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_303_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2100194548362816647",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_82()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104356585103959809",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1460798096");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_72_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2100192177276592736",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI54_030_B10_LeaveArea",
            id = "715312",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_101()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103067797771819121",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1494031543");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_41_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_41_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015246071770278",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1494820560");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104243975631160471",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI54_030_B10_LeaveArea",
            id = "715312",
        },
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_252()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_252");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1523778591");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_252_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015246071781167",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1527426407");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_75_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_74;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_92()
    local params;
    params = {
        -- Group,
        [0] = "#B9461B83",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "21630",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1547374319");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_165_True,
    });
    params = {
        -- entityId,
        [0] = "2101532579197884102",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1553835776");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103966131829107341",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1556010415");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800281048292630",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_146()
    local params;
    params = {
        -- Pawns,
        [0] = "2103982824418712750",
        -- SoundId,
        [1] = "2145749482",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_241()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_118()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_293()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#B3C83C58",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1593519921");
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
                [0] = self.f_box_OutputOrder_v2_115_Out_0,
                [1] = self.f_box_OutputOrder_v2_115_Out_1,
                [2] = self.f_box_OutputOrder_v2_115_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_298()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_298");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1609188925");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_298_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2104812021798160365",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_268()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_268");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1610235664");
    l0:SetConnections({
        -- Valid,
        [1] = self.f_box_GetPreconditionState_268_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015246071781167",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_81()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1613531156");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "ButtonPressed",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1614468584");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800064383130901",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_93()
    local params, l0;
    l0 = self.box_ContextualActionListener_87;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3640166421",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_308()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_308");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1627276085");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160255079929212",
        -- missionLayerId,
        [1] = "36167454334670205",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1634905477");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_167_True,
    });
    params = {
        -- entityId,
        [0] = "2103966151812868752",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_275()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_275");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1636310272");
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
                [0] = self.f_box_OutputOrder_v2_275_Out_0,
                [1] = self.f_box_OutputOrder_v2_275_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1645508052");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_178_True,
    });
    params = {
        -- entityId,
        [0] = "2101135036355987120",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1665198006");
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
                [0] = self.f_box_OutputOrder_v2_64_Out_0,
                [1] = self.f_box_OutputOrder_v2_64_Out_1,
                [2] = self.f_box_OutputOrder_v2_64_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_323()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_323");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1674951489");
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
                [0] = self.f_box_OutputOrder_v2_323_Out_0,
                [1] = self.f_box_OutputOrder_v2_323_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_16()
    local params;
    params = {
        -- targets,
        [0] = "2099822151413537874",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1678609099");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101755179599672353",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_10()
    local params;
    params = {
        -- targets,
        [0] = "2099822151419829370",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1691820075");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_169_True,
    });
    params = {
        -- entityId,
        [0] = "2103966145353640591",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1696174997");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104244027827176607",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI54_030_B10_LeaveArea",
            id = "715312",
        },
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1697406207");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_189_Enabled,
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
        [4] = "2101768118966689331",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1717531310");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101134979586082476",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_191()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayers,
        -- farZone,
        [2] = 101,
        -- id2,
        [3] = "2104631295662376683",
        -- nearZone,
        [4] = 100,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1734318059");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_73_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2100192324156924516",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI54_030_B10_LeaveArea",
            id = "715312",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1735186262");
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
                [0] = self.f_box_OutputOrder_v2_125_Out_0,
                [1] = self.f_box_OutputOrder_v2_125_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_128()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100595395359935125",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1758135700");
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
                [0] = self.f_box_OutputOrder_v2_150_Out_0,
                [1] = self.f_box_OutputOrder_v2_150_Out_1,
                [2] = self.f_box_OutputOrder_v2_150_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1765724321");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_53_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015223002755220",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_71()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102031009693326760",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1768563327");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_110_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2103068053293024411",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI54_030_B10_PumpDestroyed",
            id = "561761",
        },
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1772404785");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_55_Unlocked,
    });
    params = {
        -- door,
        [0] = "2103568781482670294",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_255()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_255");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1777888496");
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
                [0] = self.f_box_OutputOrder_v2_255_Out_0,
                [1] = self.f_box_OutputOrder_v2_255_Out_1,
                [2] = self.f_box_OutputOrder_v2_255_Out_2,
                [3] = self.f_box_OutputOrder_v2_255_Out_3,
                [4] = self.f_box_OutputOrder_v2_255_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1778104937");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_190_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1780349001");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800049755495699",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1784772515");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101755153974572059",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_304()
    local params;
    params = {
        -- Group,
        [0] = "2104908114932287519",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4269094613",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_315()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_315");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1796077533");
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
                [0] = self.f_box_OutputOrder_v2_315_Out_0,
                [1] = self.f_box_OutputOrder_v2_315_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1807585071");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532842138801870",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1816491368");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
                [2] = self.f_box_OutputOrder_v2_61_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1818187591");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_7_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI54_030_B10_PumpDestroyed",
            id = "561761",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 2,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_282()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2104425200534688746",
        -- nearZone,
        [4] = 2,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1823299788");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800020766563600",
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1824449999");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_52_Unlocked,
    });
    params = {
        -- door,
        [0] = "2103568753886247002",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1828820189");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_182_True,
    });
    params = {
        -- entityId,
        [0] = "2101135041523369649",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_274()
    local params;
    params = {
        -- Group,
        [0] = "2104425200534688746",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1686308447",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1854060858");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104244002449540251",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI54_030_B10_LeaveArea",
            id = "715312",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_145()
    local params;
    params = {
        -- Pawns,
        [0] = "2101532483213347230",
        -- SoundId,
        [1] = "2145749482",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1873799838");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_57_Unlocked,
    });
    params = {
        -- door,
        [0] = "2103568787526662360",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_335()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_335");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1876291002");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_335_Enabled,
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
        [4] = "2103387045081673847",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_272()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_272");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1876664960");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_272_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2104355394305407477",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI54_030_B10_PumpDestroyed",
            id = "561761",
        },
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_310()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_310");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1876851559");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160255079929212",
        -- missionLayerId,
        [1] = "54181852844285839",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_13()
    local params;
    params = {
        -- targets,
        [0] = "2099808860234588196",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_314()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_314");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1882979196");
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
                [0] = self.f_box_OutputOrder_v2_314_Out_0,
                [1] = self.f_box_OutputOrder_v2_314_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_76()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102031057254637268",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1887096838");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_37_True,
    });
    params = {
        -- entityId,
        [0] = "2103800057896639764",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1888997587");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532713489012426",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_291()
    local params;
    params = {
        -- targets,
        [0] = "2099808860228296700",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1894396695");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_103_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2103067792325515375",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI54_030_B10_PumpDestroyed",
            id = "561761",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1895278170");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [0] = self.f_box_OutputOrder_v2_187_Out_0,
                [1] = self.f_box_OutputOrder_v2_187_Out_1,
                [2] = self.f_box_OutputOrder_v2_187_Out_2,
                [3] = self.f_box_OutputOrder_v2_187_Out_3,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_307()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_307");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1901904266");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_307_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160255079929212",
        -- missionLayerId,
        [1] = "45174653589521602",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_327()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_327");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1904758042");
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
                [0] = self.f_box_OutputOrder_v2_327_Out_0,
                [1] = self.f_box_OutputOrder_v2_327_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_237()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1912556315");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104244031711102115",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI54_030_B10_LeaveArea",
            id = "715312",
        },
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_302()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_302");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1920696790");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_302_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2101671484329054555",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1940619356");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_160_True,
    });
    params = {
        -- entityId,
        [0] = "2103966127685134988",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1962689205");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_179_True,
    });
    params = {
        -- entityId,
        [0] = "2101134941893969579",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_152()
    local params;
    params = {
        -- Pawns,
        [0] = "2103982827065318636",
        -- SoundId,
        [1] = "2145749482",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_278()
    local params;
    params = {
        -- targets,
        [0] = "2099808860230393870",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|1972088884");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_141_True,
    });
    params = {
        -- entityId,
        [0] = "2103800064383130901",
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2000373380");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_80_Unlocked,
    });
    params = {
        -- door,
        [0] = "2103568795627960538",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_287()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2100675771621190499",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2011492535");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_175_True,
    });
    params = {
        -- entityId,
        [0] = "2101532713489012426",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2034585934");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 9,
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
                [0] = self.f_box_OutputOrder_v2_183_Out_0,
                [1] = self.f_box_OutputOrder_v2_183_Out_1,
                [2] = self.f_box_OutputOrder_v2_183_Out_2,
                [3] = self.f_box_OutputOrder_v2_183_Out_3,
                [4] = self.f_box_OutputOrder_v2_183_Out_4,
                [5] = self.f_box_OutputOrder_v2_183_Out_5,
                [6] = self.f_box_OutputOrder_v2_183_Out_6,
                [7] = self.f_box_OutputOrder_v2_183_Out_7,
                [8] = self.f_box_OutputOrder_v2_183_Out_8,
            },
            count = 9,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2035281592");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_85_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100192177276592736",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI54_030_B10_LeaveArea",
            id = "715312",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_305()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_305");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2046557731");
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
                [0] = self.f_box_OutputOrder_v2_305_Out_0,
                [1] = self.f_box_OutputOrder_v2_305_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2049799464");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101755132384392215",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_19()
    local params;
    params = {
        -- targets,
        [0] = "2099822151417732196",
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2061936047");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_54_Unlocked,
    });
    params = {
        -- door,
        [0] = "2103568765309434068",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2063825616");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = self._sld_contextualActionId_box_GetContextualAction_132,
        -- Entity,
        [1] = "2104424730711848810",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2069678355");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532579197884102",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2074094699");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 10,
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
                [0] = self.f_box_OutputOrder_v2_186_Out_0,
                [1] = self.f_box_OutputOrder_v2_186_Out_1,
                [2] = self.f_box_OutputOrder_v2_186_Out_2,
                [3] = self.f_box_OutputOrder_v2_186_Out_3,
                [4] = self.f_box_OutputOrder_v2_186_Out_4,
                [5] = self.f_box_OutputOrder_v2_186_Out_5,
                [6] = self.f_box_OutputOrder_v2_186_Out_6,
                [7] = self.f_box_OutputOrder_v2_186_Out_7,
                [8] = self.f_box_OutputOrder_v2_186_Out_8,
                [9] = self.f_box_OutputOrder_v2_186_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_271()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2104425456102035278",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_193()
    local params;
    params = {
        -- targets,
        [0] = "2099822151417732196",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_253()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_253");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2093655266");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_253_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015246071770278",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2116277938");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101755159611716637",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_148()
    local params;
    params = {
        -- Pawns,
        [0] = "2101532491092347296",
        -- SoundId,
        [1] = "2145749482",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_283()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_283");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2121841173");
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
                [0] = self.f_box_OutputOrder_v2_283_Out_0,
                [1] = self.f_box_OutputOrder_v2_283_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2131449460");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_176_True,
    });
    params = {
        -- entityId,
        [0] = "2101134979586082476",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_B10.domino|@UNI54_030_B10|2131571606");
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
        [8] = "UNI054_030_B10 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_51()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_109()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2099808860234588196",
    };
    return params;
end;

function export:OnExit_box_ContextualActionListener_87_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_87;
    l1 = self.box_PlayDialog_v6_93;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_87_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_87;
    l1 = self.box_PlayDialog_v6_93;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_87_Markup1()
    local l0, l1;
    l0 = self.box_ContextualActionListener_87;
    l1 = self.box_PlayDialog_v6_93;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_87_Markup2()
    local l0, l1;
    l0 = self.box_ContextualActionListener_87;
    l1 = self.box_PlayDialog_v6_93;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_87_Select()
    local l0, l1;
    l0 = self.box_ContextualActionListener_87;
    l1 = self.box_PlayDialog_v6_93;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_87_Start()
    local l0, l1;
    l0 = self.box_ContextualActionListener_87;
    l1 = self.box_PlayDialog_v6_93;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_285_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_282;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_47_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iPumpCount = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iPumpCount = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetContextualAction_132_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    self._sld_contextualActionId_box_GetContextualAction_132 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_190_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.iIdProgress = l0:GetDataOutValue(0);
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
