LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_200/mis_200.domino
-- User graph: MIS_200_B30B
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
        cboxRes:RegisterBox("Domino/Library/Lib_Brick_DearPhotograph.Brick_DearPhotograph_CORE.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayerSelectedHoldableObject.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_PUZZLEHINTS.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_PuzzleLightFX_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.PuzzleCelebration.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/Library/Lib_Brick_DearPhotograph.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200_MASTER.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1924257166.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2964517945.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2775201934.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3763027159.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2103007581.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3345814498.bnk]], "CSoundResource");
        cboxRes:LoadResource([[435024961.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1715626660.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2025533193.bnk]], "CSoundResource");
        cboxRes:LoadResource([[302454436.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_200 = nil;
    Globals.MIS_200 = {
        MIS_200_B10_FIRE = false,
        MIS_200_B20_FIRE = false,
        MIS_200_B30_FIRE = false,
        MIS_200_B30_WINDMILL = false,
        MIS_200_BRIEF_EDEN_SKIPPED = true,
        isB10Runing = false,
        isB20Runing = false,
        isB30Runing = false,
        isB10Reloaded = true,
        isB20Reloaded = true,
        isB30Reloaded = true,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_B30B.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Lib_Brick_DearPhotograph.Brick_DearPhotograph_CORE.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "CelebrationEnded",
                delayed = false,
            },
            [1] = {
                name = "CelebrationStarted",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "eLookAt",
                type = "entity",
            },
            [1] = {
                name = "eMarker",
                type = "entity",
            },
            [2] = {
                name = "ePosition",
                type = "entity",
            },
            [3] = {
                name = "fFeedbackThreshold",
                type = "float",
            },
            [4] = {
                name = "fPositionThreshold",
                type = "float",
            },
            [5] = {
                name = "ItemDescriptor",
                type = "genericdb",
            },
            [6] = {
                name = "Objective",
                type = "oasis",
            },
            [7] = {
                name = "RequiresAdditionalStep",
                type = "bool",
            },
            [8] = {
                name = "RequiresObjective",
                type = "bool",
            },
        },
        dataInCount = 9,
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
    metadataTable[GetPathID("Domino/System/CompareEntity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Equal",
                delayed = false,
            },
            [1] = {
                name = "NotEqual",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity1",
                type = "entity",
            },
            [1] = {
                name = "Entity2",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "bool",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/Player/PlayerSelectedHoldableObject.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ResetSelectedHoldableObject",
            },
            [1] = {
                name = "SetSelectedHoldableObject",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "SelectedHoldableObjectReset",
                delayed = false,
            },
            [1] = {
                name = "SelectedHoldableObjectSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "itemDescriptorId",
                type = "genericdb",
            },
            [1] = {
                name = "Player",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "entity",
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
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UniversalInterationListener.lua")] = {
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
                name = "Interacted",
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
                name = "usableEntityId",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "entityInteracted",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_PUZZLEHINTS.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ResetHints",
            },
            [1] = {
                name = "StartHints",
            },
            [2] = {
                name = "StopHints",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "ActivateFinalMarker",
                delayed = false,
            },
            [1] = {
                name = "HintDone",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "eFatherSpawner01",
                type = "entity",
            },
            [1] = {
                name = "eFatherSpawner02",
                type = "entity",
            },
            [2] = {
                name = "FatherGroup",
                type = "group",
            },
            [3] = {
                name = "gPlayers",
                type = "group",
            },
            [4] = {
                name = "Hint_1",
                type = "Sound",
            },
            [5] = {
                name = "Hint_2",
                type = "Sound",
            },
            [6] = {
                name = "Hint_3",
                type = "Sound",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_PuzzleLightFX_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CleanSetup",
            },
            [1] = {
                name = "InitSetup",
            },
            [2] = {
                name = "PuzzleCompleted",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "EndPuzzle",
                delayed = false,
            },
            [1] = {
                name = "FatherDespawned",
                delayed = false,
            },
            [2] = {
                name = "PuzzleStarted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "ActivityPreCon",
                type = "database",
            },
            [1] = {
                name = "dbAmuletDescriptor",
                type = "genericdb",
            },
            [2] = {
                name = "eAmulet",
                type = "entity",
            },
            [3] = {
                name = "eAmuletHiddenPos",
                type = "entity",
            },
            [4] = {
                name = "eAmuletLight",
                type = "entity",
            },
            [5] = {
                name = "eAmuletVanishFX",
                type = "entity",
            },
            [6] = {
                name = "eAmuletVisiblePos",
                type = "entity",
            },
            [7] = {
                name = "eFatherParticle",
                type = "entity",
            },
            [8] = {
                name = "eLamp01_Light",
                type = "entity",
            },
            [9] = {
                name = "eLamp01_OFF",
                type = "entity",
            },
            [10] = {
                name = "eLamp01_ON",
                type = "entity",
            },
            [11] = {
                name = "eLamp02_Light",
                type = "entity",
            },
            [12] = {
                name = "eLamp02_OFF",
                type = "entity",
            },
            [13] = {
                name = "eLamp02_ON",
                type = "entity",
            },
            [14] = {
                name = "ePlayer",
                type = "entity",
            },
            [15] = {
                name = "ePuzzleParticles_01",
                type = "entity",
            },
            [16] = {
                name = "ePuzzleParticles_02",
                type = "entity",
            },
            [17] = {
                name = "ePuzzleParticles_03",
                type = "entity",
            },
            [18] = {
                name = "ePuzzleParticles_04",
                type = "entity",
            },
            [19] = {
                name = "ePuzzleParticles_05",
                type = "entity",
            },
            [20] = {
                name = "ePuzzleParticles_06",
                type = "entity",
            },
            [21] = {
                name = "FatherSpawner",
                type = "entity",
            },
            [22] = {
                name = "gPlayers",
                type = "group",
            },
            [23] = {
                name = "SpawnerID",
                type = "entity",
            },
        },
        dataInCount = 24,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.PuzzleCelebration.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FXStarted",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "eCelebrationFX_01",
                type = "entity",
            },
            [1] = {
                name = "eCelebrationFX_02",
                type = "entity",
            },
            [2] = {
                name = "eCelebrationFX_03",
                type = "entity",
            },
            [3] = {
                name = "eCelebrationFX_04",
                type = "entity",
            },
            [4] = {
                name = "ePlayer",
                type = "entity",
            },
            [5] = {
                name = "ePlayerPos",
                type = "entity",
            },
            [6] = {
                name = "eTarget",
                type = "entity",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_200_B30B";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B";
    self.PlayerGroup = nil;
    self.RotationPoint = nil;
    self.LocalPlayer = nil;
    self.box_PlayerSelectedHoldableObject_97 = cbox:CreateBox("Domino/System/Player/PlayerSelectedHoldableObject.lua");
    l0 = self.box_PlayerSelectedHoldableObject_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSelectedHoldableObject_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|13373696");
    l0:SetConnections({
        -- SelectedHoldableObjectReset,
        [0] = self.f_box_PlayerSelectedHoldableObject_97_SelectedHoldableObjectReset,
    });
    self.box_RequestPhoneCall_v2_65 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|24167751");
    l0:SetConnections({
    });
    self.box_Bind_v4_76 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|34329189");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_21 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|198647293");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_21_Done,
    });
    self.box_VisibilityModifier_24 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|269476739");
    l0:SetConnections({
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|291376338");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_UniversalInteractionModifier_v2_8 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|333419861");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_8_Enabled,
    });
    self.box_PositionModifier_v2_22 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|374990972");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_22_Done,
    });
    self.box_Delay_v5_98 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|446150594");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_98_TimeElapsed,
    });
    self.box_Switch_64 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|474986274");
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
                [0] = self.f_box_Switch_64_Output_0,
                [1] = self.f_box_Switch_64_Output_1,
                [2] = self.f_box_Switch_64_Output_2,
                [3] = self.f_box_Switch_64_Output_3,
            },
            count = 4,
        },
    });
    self.box_Delay_v5_95 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|524439513");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_95_TimeElapsed,
    });
    self.box_ShimmerModifier_v2_35 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|563170749");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_35_Disabled,
    });
    self.box_OnceOnly_v3_12 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|636059331");
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
                [0] = self.f_box_OnceOnly_v3_12_Out_0,
            },
            count = 2,
        },
    });
    self.box_UniversalInteractionModifier_v2_68 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|659513628");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_68_Disabled,
    });
    self.box_VisibilityModifier_73 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|677885366");
    l0:SetConnections({
    });
    self.box_ShimmerModifier_v2_74 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|682951183");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_29 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|687425762");
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
                [0] = self.f_box_OnceOnly_v3_29_Out_0,
            },
            count = 2,
        },
    });
    self.box_ShimmerModifier_v2_34 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|704543871");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_34_Enabled,
    });
    self.box_RequestPhoneCall_v2_61 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|738194460");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_61_Completed,
    });
    self.box_PositionModifier_v2_46 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|758561736");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_46_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_46_StartOut,
    });
    self.box_ProximityTrigger_v3_11 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|831922497");
    l0:SetConnections({
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_11_Leave,
    });
    self.box_SoundModifier_v2_80 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|854145682");
    l0:SetConnections({
    });
    self.box_MIS_200_PuzzleLightFX_Manager_15 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_PuzzleLightFX_Manager.debug.lua");
    l0 = self.box_MIS_200_PuzzleLightFX_Manager_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_PuzzleLightFX_Manager_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|895703627");
    l0:SetConnections({
        -- EndPuzzle,
        [0] = self.f_box_MIS_200_PuzzleLightFX_Manager_15_EndPuzzle,
    });
    self.box_ActivityInitialized_55 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1049011666");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_55_Out,
    });
    self.box_Brick_DearPhotograph_CORE_71 = cbox:CreateBox("Domino/Library/Lib_Brick_DearPhotograph.Brick_DearPhotograph_CORE.debug.lua");
    l0 = self.box_Brick_DearPhotograph_CORE_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_DearPhotograph_CORE_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1106881215");
    l0:SetConnections({
        -- CelebrationStarted,
        [1] = self.f_box_Brick_DearPhotograph_CORE_71_CelebrationStarted,
        -- Started,
        [2] = self.f_box_Brick_DearPhotograph_CORE_71_Started,
        -- Success,
        [3] = self.f_box_Brick_DearPhotograph_CORE_71_Success,
    });
    self.box_VisibilityModifier_75 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1117590523");
    l0:SetConnections({
    });
    self.box_MIS_200_PUZZLEHINTS_40 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_PUZZLEHINTS.debug.lua");
    l0 = self.box_MIS_200_PUZZLEHINTS_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_PUZZLEHINTS_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1191601835");
    l0:SetConnections({
        -- ActivateFinalMarker,
        [0] = self.f_box_MIS_200_PUZZLEHINTS_40_ActivateFinalMarker,
        -- HintDone,
        [1] = self.f_box_MIS_200_PUZZLEHINTS_40_HintDone,
    });
    self.box_MultipleAND_v2_42 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1236945125");
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
        [0] = self.f_box_MultipleAND_v2_42_Out,
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1248117545");
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
        [0] = self.f_box_MultipleOR_23_Out,
    });
    self.box_SoundModifier_v2_60 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1315147534");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_52 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1320621819");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_52_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_52_Unloaded,
    });
    self.box_Bind_v4_17 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1328340684");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_17_Bound,
    });
    self.box_UniversalInteractionModifier_v2_27 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1460974834");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_27_Disabled,
    });
    self.box_ActivityAcknowledgeGate_79 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1585912318");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_79_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_79_Reloaded,
    });
    self.box_Gate_v3_72 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1610246748");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_72_Out,
    });
    self.box_PuzzleCelebration_9 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.PuzzleCelebration.debug.lua");
    l0 = self.box_PuzzleCelebration_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PuzzleCelebration_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1702006531");
    l0:SetConnections({
    });
    self.box_UniversalInteractionListener_70 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1740421807");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_70_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_70_Interacted,
    });
    self.box_MultipleOR_67 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1803652424");
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
        [0] = self.f_box_MultipleOR_67_Out,
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1904463266");
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
        [0] = self.f_box_MultipleOR_56_Out,
    });
    self.box_RequestPhoneCall_v2_32 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1991683802");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_36 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|2073944692");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_2 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|2081171478");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_2_Started,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1496505417", "1496505417", "MIS_200_B30B", "In", "box_OutputOrder_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local l0;
    l0 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1638332306", "1638332306", "MIS_200_B30B", "OnLeaveZone", "box_MultipleOR_67.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_86_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|671367217", "671367217", "MIS_200_B30B", "box_Simple_Node_86.Out", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_85_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1161473162", "1161473162", "MIS_200_B30B", "box_Simple_Node_85.Out", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_EntityStatusListener_52();
    l0 = self.box_EntityStatusListener_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1009382682", "1009382682", "MIS_200_B30B", "box_Simple_Node_85.Out", "box_EntityStatusListener_52.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_72();
    l0 = self.box_Gate_v3_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1136286760", "1136286760", "MIS_200_B30B", "box_Simple_Node_85.Out", "box_Gate_v3_72.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_88_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_200_PUZZLEHINTS_40();
    l0 = self.box_MIS_200_PUZZLEHINTS_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1784916788", "1784916788", "MIS_200_B30B", "box_Simple_Node_88.Out", "box_MIS_200_PUZZLEHINTS_40.StartHints", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartHints
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_93();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1155559533", "1155559533", "MIS_200_B30B", "box_Simple_Node_92.Out", "box_BroadcastMessage_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_82_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_17();
    l0 = self.box_Bind_v4_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|237437511", "237437511", "MIS_200_B30B", "box_Simple_Node_82.Out", "box_Bind_v4_17.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_94_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_94_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_11();
    l0 = self.box_ProximityTrigger_v3_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|248012115", "248012115", "MIS_200_B30B", "box_GetLocalPlayer_v2_94.Out", "box_ProximityTrigger_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayerSelectedHoldableObject_97_SelectedHoldableObjectReset()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_26();
    l0 = self.box_PlayerSelectedHoldableObject_97;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|123602464", "123602464", "MIS_200_B30B", "box_PlayerSelectedHoldableObject_97.SelectedHoldableObjectReset", "box_BroadcastMessage_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_44_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_24();
    l0 = self.box_VisibilityModifier_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|62584437", "62584437", "MIS_200_B30B", "box_IsValueNil_v3_44.No", "box_VisibilityModifier_24.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_91_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_96();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1093852750", "1093852750", "MIS_200_B30B", "box_OutputOrder_v2_91.Out", "box_SetBoolean_v2_96.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_68();
    l0 = self.box_UniversalInteractionModifier_v2_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|2037638679", "2037638679", "MIS_200_B30B", "box_OutputOrder_v2_91.Out", "box_UniversalInteractionModifier_v2_68.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_91_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|527181599", "527181599", "MIS_200_B30B", "box_OutputOrder_v2_91.Out", "box_OnceOnly_v3_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PositionModifier_v2_21_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_22();
    l0 = self.box_PositionModifier_v2_21;
    l1 = self.box_PositionModifier_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|763370051", "763370051", "MIS_200_B30B", "box_PositionModifier_v2_21.Done", "box_PositionModifier_v2_22.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_16_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_16;
    l1 = self.box_ActivityInitialized_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1926570880", "1926570880", "MIS_200_B30B", "box_MultipleOR_16.Out", "box_ActivityInitialized_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|286745392", "286745392", "MIS_200_B30B", "box_OutputOrder_v2_49.Out", "box_OutputOrder_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_69();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1046481265", "1046481265", "MIS_200_B30B", "box_OutputOrder_v2_49.Out", "box_SoundShapeModifier_69.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_8_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_42();
    l0 = self.box_UniversalInteractionModifier_v2_8;
    l1 = self.box_MultipleAND_v2_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|609412648", "609412648", "MIS_200_B30B", "box_UniversalInteractionModifier_v2_8.Enabled", "box_MultipleAND_v2_42.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_35();
    l0 = self.box_ShimmerModifier_v2_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1014998498", "1014998498", "MIS_200_B30B", "box_OutputOrder_v2_54.Out", "box_ShimmerModifier_v2_35.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_63();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1786644022", "1786644022", "MIS_200_B30B", "box_OutputOrder_v2_54.Out", "box_ActivityRetry_v2_63.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_45_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_45_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|171009019", "171009019", "MIS_200_B30B", "box_SetEntity_v2_45.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PositionModifier_v2_22_Done()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_8();
    l0 = self.box_PositionModifier_v2_22;
    l1 = self.box_UniversalInteractionModifier_v2_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1880530309", "1880530309", "MIS_200_B30B", "box_PositionModifier_v2_22.Done", "box_UniversalInteractionModifier_v2_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_98_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_Delay_v5_98;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1057720925", "1057720925", "MIS_200_B30B", "box_Delay_v5_98.TimeElapsed", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_66_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_66_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1327859164", "1327859164", "MIS_200_B30B", "box_SetEntity_v2_66.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_64_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_31();
    l0 = self.box_Switch_64;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|203556188", "203556188", "MIS_200_B30B", "box_Switch_64.Output", "box_SetEntity_v2_31.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_64_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_66();
    l0 = self.box_Switch_64;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|655714158", "655714158", "MIS_200_B30B", "box_Switch_64.Output", "box_SetEntity_v2_66.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_64_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_45();
    l0 = self.box_Switch_64;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|2032837990", "2032837990", "MIS_200_B30B", "box_Switch_64.Output", "box_SetEntity_v2_45.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_64_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_77();
    l0 = self.box_Switch_64;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|412387392", "412387392", "MIS_200_B30B", "box_Switch_64.Output", "box_SetEntity_v2_77.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_95_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_1();
    l0 = self.box_Delay_v5_95;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|798531450", "798531450", "MIS_200_B30B", "box_Delay_v5_95.TimeElapsed", "box_ActivityEnd_1.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_35_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_86();
    l0 = self.box_ShimmerModifier_v2_35;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|587641055", "587641055", "MIS_200_B30B", "box_ShimmerModifier_v2_35.Disabled", "box_Simple_Node_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_12_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_92();
    l0 = self.box_OnceOnly_v3_12;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1111557031", "1111557031", "MIS_200_B30B", "box_OnceOnly_v3_12.Out", "box_Simple_Node_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_68_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_UniversalInteractionModifier_v2_68;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1295351839", "1295351839", "MIS_200_B30B", "box_UniversalInteractionModifier_v2_68.Disabled", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_29_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_76();
    l0 = self.box_OnceOnly_v3_29;
    l1 = self.box_Bind_v4_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|392433528", "392433528", "MIS_200_B30B", "box_OnceOnly_v3_29.Out", "box_Bind_v4_76.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_ShimmerModifier_v2_34_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_36();
    l0 = self.box_ShimmerModifier_v2_34;
    l1 = self.box_UniversalInteractionModifier_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|643337118", "643337118", "MIS_200_B30B", "box_ShimmerModifier_v2_34.Enabled", "box_UniversalInteractionModifier_v2_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_61_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_65();
    l0 = self.box_RequestPhoneCall_v2_61;
    l1 = self.box_RequestPhoneCall_v2_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1736627319", "1736627319", "MIS_200_B30B", "box_RequestPhoneCall_v2_61.Completed", "box_RequestPhoneCall_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_46_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = self.box_PositionModifier_v2_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|388510917", "388510917", "MIS_200_B30B", "box_PositionModifier_v2_46.Done", "box_OutputOrder_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_46_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_21();
    l0 = self.box_PositionModifier_v2_46;
    l1 = self.box_PositionModifier_v2_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1819123658", "1819123658", "MIS_200_B30B", "box_PositionModifier_v2_46.StartOut", "box_PositionModifier_v2_21.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_11_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_10();
    l0 = self.box_ProximityTrigger_v3_11;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|112101560", "112101560", "MIS_200_B30B", "box_ProximityTrigger_v3_11.Leave", "box_SetBoolean_v2_10.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_77_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_77_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1384200827", "1384200827", "MIS_200_B30B", "box_SetEntity_v2_77.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MIS_200_PuzzleLightFX_Manager_15_EndPuzzle()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = self.box_MIS_200_PuzzleLightFX_Manager_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1985484832", "1985484832", "MIS_200_B30B", "box_MIS_200_PuzzleLightFX_Manager_15.EndPuzzle", "box_OutputOrder_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_39_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_88();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|502561754", "502561754", "MIS_200_B30B", "box_Compare_Boolean_39.A_is_True", "box_Simple_Node_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|728356905", "728356905", "MIS_200_B30B", "box_OutputOrder_v2_19.Out", "box_OnceOnly_v3_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_64();
    l0 = self.box_Switch_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1126408256", "1126408256", "MIS_200_B30B", "box_OutputOrder_v2_19.Out", "box_Switch_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_60();
    l0 = self.box_SoundModifier_v2_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|2100792961", "2100792961", "MIS_200_B30B", "box_OutputOrder_v2_19.Out", "box_SoundModifier_v2_60.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_80();
    l0 = self.box_SoundModifier_v2_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|358451598", "358451598", "MIS_200_B30B", "box_OutputOrder_v2_19.Out", "box_SoundModifier_v2_80.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_75();
    l0 = self.box_VisibilityModifier_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1405422805", "1405422805", "MIS_200_B30B", "box_OutputOrder_v2_51.Out", "box_VisibilityModifier_75.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_73();
    l0 = self.box_VisibilityModifier_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1780852260", "1780852260", "MIS_200_B30B", "box_OutputOrder_v2_51.Out", "box_VisibilityModifier_73.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_53_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_53_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_27();
    l0 = self.box_UniversalInteractionModifier_v2_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|654677102", "654677102", "MIS_200_B30B", "box_SetBoolean_v2_53.Out", "box_UniversalInteractionModifier_v2_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_20();
    l0 = self.box_ActivityInitialized_55;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|782529945", "782529945", "MIS_200_B30B", "box_ActivityInitialized_55.Out", "box_GetPlayerGroup_v2_20.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_DearPhotograph_CORE_71_CelebrationStarted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = self.box_Brick_DearPhotograph_CORE_71;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1495434090", "1495434090", "MIS_200_B30B", "box_Brick_DearPhotograph_CORE_71.CelebrationStarted", "box_OutputOrder_v2_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_DearPhotograph_CORE_71_Started()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_4();
    l0 = self.box_Brick_DearPhotograph_CORE_71;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1492706190", "1492706190", "MIS_200_B30B", "box_Brick_DearPhotograph_CORE_71.Started", "box_BroadcastMessage_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_DearPhotograph_CORE_71_Success()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_200_PuzzleLightFX_Manager_15();
    l0 = self.box_Brick_DearPhotograph_CORE_71;
    l1 = self.box_MIS_200_PuzzleLightFX_Manager_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1917067333", "1917067333", "MIS_200_B30B", "box_Brick_DearPhotograph_CORE_71.Success", "box_MIS_200_PuzzleLightFX_Manager_15.PuzzleCompleted", l0:GetLuaBox(), l1:GetLuaBox());
    -- PuzzleCompleted
    l1:Exec(2, params);
end;

function export:f_box_BroadcastMessage_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_PuzzleCelebration_9();
    l0 = self.box_PuzzleCelebration_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1051976648", "1051976648", "MIS_200_B30B", "box_BroadcastMessage_30.Out", "box_PuzzleCelebration_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_MIS_200_PUZZLEHINTS_40_ActivateFinalMarker()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_90();
    l0 = self.box_MIS_200_PUZZLEHINTS_40;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|191973339", "191973339", "MIS_200_B30B", "box_MIS_200_PUZZLEHINTS_40.ActivateFinalMarker", "box_BroadcastMessage_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_200_PUZZLEHINTS_40_HintDone()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_39();
    l0 = self.box_MIS_200_PUZZLEHINTS_40;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|854417610", "854417610", "MIS_200_B30B", "box_MIS_200_PUZZLEHINTS_40.HintDone", "box_Compare_Boolean_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_52();
    l0 = self.box_EntityStatusListener_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|600869492", "600869492", "MIS_200_B30B", "box_OutputOrder_v2_13.Out", "box_EntityStatusListener_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|253544927", "253544927", "MIS_200_B30B", "box_OutputOrder_v2_13.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_59();
    l0 = self.box_MultipleAND_v2_42;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1712779051", "1712779051", "MIS_200_B30B", "box_MultipleAND_v2_42.Out", "box_Compare_Entity_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_46();
    l0 = self.box_MultipleOR_23;
    l1 = self.box_PositionModifier_v2_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|2097766927", "2097766927", "MIS_200_B30B", "box_MultipleOR_23.Out", "box_PositionModifier_v2_46.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_52_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_70();
    l0 = self.box_EntityStatusListener_52;
    l1 = self.box_UniversalInteractionListener_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|26029299", "26029299", "MIS_200_B30B", "box_EntityStatusListener_52.Loaded", "box_UniversalInteractionListener_70.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_52_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_70();
    l0 = self.box_EntityStatusListener_52;
    l1 = self.box_UniversalInteractionListener_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|769918611", "769918611", "MIS_200_B30B", "box_EntityStatusListener_52.Unloaded", "box_UniversalInteractionListener_70.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_17_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_50();
    l0 = self.box_Bind_v4_17;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|111027083", "111027083", "MIS_200_B30B", "box_Bind_v4_17.Bound", "box_SetBoolean_v2_50.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_44();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1721093971", "1721093971", "MIS_200_B30B", "box_OutputOrder_v2_5.Out", "box_IsValueNil_v3_44.Group", clone:GetLuaBox(), l0:GetLuaBox());
    -- Group
    l0:Exec(7, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1737678994", "1737678994", "MIS_200_B30B", "box_OutputOrder_v2_5.Out", "box_ActivityAcknowledgeGate_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_94();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|170559729", "170559729", "MIS_200_B30B", "box_OutputOrder_v2_5.Out", "box_GetLocalPlayer_v2_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|110305576", "110305576", "MIS_200_B30B", "box_OutputOrder_v2_5.Out", "box_Print_v2_3.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_27_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_95();
    l0 = self.box_UniversalInteractionModifier_v2_27;
    l1 = self.box_Delay_v5_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|932032811", "932032811", "MIS_200_B30B", "box_UniversalInteractionModifier_v2_27.Disabled", "box_Delay_v5_95.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_28_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_62();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1858246257", "1858246257", "MIS_200_B30B", "box_SetBoolean_v2_28.Out", "box_Print_v2_62.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_85();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1021578533", "1021578533", "MIS_200_B30B", "box_OutputOrder_v2_78.Out", "box_Simple_Node_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_74();
    l0 = self.box_ShimmerModifier_v2_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1613396864", "1613396864", "MIS_200_B30B", "box_OutputOrder_v2_78.Out", "box_ShimmerModifier_v2_74.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_78_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_32();
    l0 = self.box_RequestPhoneCall_v2_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1404216011", "1404216011", "MIS_200_B30B", "box_OutputOrder_v2_78.Out", "box_RequestPhoneCall_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_53();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|756054064", "756054064", "MIS_200_B30B", "box_OutputOrder_v2_78.Out", "box_SetBoolean_v2_53.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_59_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_2();
    l0 = self.box_SoundModifier_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|680004775", "680004775", "MIS_200_B30B", "box_Compare_Entity_59.Equal", "box_SoundModifier_v2_2.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Entity_59_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_28();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|277478895", "277478895", "MIS_200_B30B", "box_Compare_Entity_59.NotEqual", "box_SetBoolean_v2_28.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_82();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1961118453", "1961118453", "MIS_200_B30B", "box_OutputOrder_v2_57.Out", "box_Simple_Node_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_DearPhotograph_CORE_71();
    l0 = self.box_Brick_DearPhotograph_CORE_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1860475860", "1860475860", "MIS_200_B30B", "box_OutputOrder_v2_57.Out", "box_Brick_DearPhotograph_CORE_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_57_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_88();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1481244576", "1481244576", "MIS_200_B30B", "box_OutputOrder_v2_57.Out", "box_Simple_Node_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_61();
    l0 = self.box_RequestPhoneCall_v2_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|989448504", "989448504", "MIS_200_B30B", "box_OutputOrder_v2_57.Out", "box_RequestPhoneCall_v2_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_79_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_79;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|16593742", "16593742", "MIS_200_B30B", "box_ActivityAcknowledgeGate_79.Acknowledged", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_79_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_79;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1982445800", "1982445800", "MIS_200_B30B", "box_ActivityAcknowledgeGate_79.Reloaded", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_96_Out()
    self:OnExit_box_SetBoolean_v2_96_Out();
end;

function export:f_box_Gate_v3_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSelectedHoldableObject_97();
    l0 = self.box_Gate_v3_72;
    l1 = self.box_PlayerSelectedHoldableObject_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|182060633", "182060633", "MIS_200_B30B", "box_Gate_v3_72.Out", "box_PlayerSelectedHoldableObject_97.ResetSelectedHoldableObject", l0:GetLuaBox(), l1:GetLuaBox());
    -- ResetSelectedHoldableObject
    l1:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_43_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_43_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_81();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|258763420", "258763420", "MIS_200_B30B", "box_GetLocalPlayer_v2_43.Out", "box_SetBoolean_v2_81.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_31_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_31_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|2270681", "2270681", "MIS_200_B30B", "box_SetEntity_v2_31.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_10_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1734638901", "1734638901", "MIS_200_B30B", "box_SetBoolean_v2_10.Out", "box_MultipleOR_67.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UniversalInteractionListener_70_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_34();
    l0 = self.box_UniversalInteractionListener_70;
    l1 = self.box_ShimmerModifier_v2_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1840225445", "1840225445", "MIS_200_B30B", "box_UniversalInteractionListener_70.Enabled", "box_ShimmerModifier_v2_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_70_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_91();
    l0 = self.box_UniversalInteractionListener_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1421195028", "1421195028", "MIS_200_B30B", "box_UniversalInteractionListener_70.Interacted", "box_OutputOrder_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_93_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_200_PUZZLEHINTS_40();
    l0 = self.box_MIS_200_PUZZLEHINTS_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|228358627", "228358627", "MIS_200_B30B", "box_BroadcastMessage_93.Out", "box_MIS_200_PUZZLEHINTS_40.ResetHints", clone:GetLuaBox(), l0:GetLuaBox());
    -- ResetHints
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_98();
    l0 = self.box_Delay_v5_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|423265628", "423265628", "MIS_200_B30B", "box_OutputOrder_v2_99.Out", "box_Delay_v5_98.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_30();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1719992594", "1719992594", "MIS_200_B30B", "box_OutputOrder_v2_99.Out", "box_BroadcastMessage_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_67_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_72();
    l0 = self.box_MultipleOR_67;
    l1 = self.box_Gate_v3_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1416850983", "1416850983", "MIS_200_B30B", "box_MultipleOR_67.Out", "box_Gate_v3_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_BroadcastMessage_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|358190835", "358190835", "MIS_200_B30B", "box_BroadcastMessage_26.Out", "box_OutputOrder_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_81_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_81_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|712684172", "712684172", "MIS_200_B30B", "box_SetBoolean_v2_81.Out", "box_OutputOrder_v2_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_200_PUZZLEHINTS_40();
    l0 = self.box_MultipleOR_56;
    l1 = self.box_MIS_200_PUZZLEHINTS_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|913493371", "913493371", "MIS_200_B30B", "box_MultipleOR_56.Out", "box_MIS_200_PUZZLEHINTS_40.StopHints", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopHints
    l1:Exec(2, params);
end;

function export:f_box_GetPlayerGroup_v2_20_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_20_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_43();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|706311603", "706311603", "MIS_200_B30B", "box_GetPlayerGroup_v2_20.Out", "box_GetLocalPlayer_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_42();
    l0 = self.box_MultipleAND_v2_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1031139955", "1031139955", "MIS_200_B30B", "box_OutputOrder_v2_37.Out", "box_MultipleAND_v2_42.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SoundModifier_v2_2_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_28();
    l0 = self.box_SoundModifier_v2_2;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1819704078", "1819704078", "MIS_200_B30B", "box_SoundModifier_v2_2.Started", "box_SetBoolean_v2_28.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_50_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_50_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|690326253", "690326253", "MIS_200_B30B", "box_SetBoolean_v2_50.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|@BeatReset");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_86_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|@CleanPuzzleSetup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_85_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|@QueueNextBeat");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_88_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|@ResetB30BHints");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_92_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|@STARTWINDMILL");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_82_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|9366182");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_94_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayerSelectedHoldableObject_97()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015341364764952",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_65()
    local params;
    params = {
        -- CustomRingInSound,
        [0] = "3763027159",
        -- CustomRingOutSound,
        [1] = "3763027159",
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2775201934",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_76()
    local params;
    params = {
        -- EntityA,
        [1] = "2107660900130362533",
        -- EntityB,
        [2] = "2107824833912901245",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|112222451");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_44_No,
    });
    params = {
        -- group,
        [7] = "#CD60B0BD",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|133872491");
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
                [0] = self.f_box_OutputOrder_v2_91_Out_0,
                [1] = self.f_box_OutputOrder_v2_91_Out_1,
                [2] = self.f_box_OutputOrder_v2_91_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_21()
    local params;
    params = {
        -- blendTime,
        [1] = 1.25,
        -- endTarget,
        [4] = "2109664604865969272",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109664945976135799",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_24()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#CD60B0BD",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|300830805");
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

function export:OnEnter_box_UniversalInteractionModifier_v2_8()
    local params;
    params = {
        -- usableEntity,
        [4] = "2109388809203362806",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|349735117");
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

function export:OnEnter_box_SetEntity_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|369245120");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_45_Out,
    });
    params = {
        -- Entity,
        [0] = "2107661131785966783",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_22()
    local params;
    params = {
        -- blendTime,
        [1] = 1.25,
        -- endTarget,
        [4] = "2109664587696585844",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109664945976135799",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|391312427");
    l0:SetConnections({
    });
    params = {
        -- bool,
        [0] = Globals.Lib_Brick_DearPhotograph.AdditionalStep,
        -- color,
        [1] = "magenta",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_98()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|471285761");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_66_Out,
    });
    params = {
        -- Entity,
        [0] = "2107661128627655863",
    };
    return params;
end;

function export:OnEnter_box_Switch_64()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_95()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_35()
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
        [4] = "2109388809203362806",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_68()
    local params;
    params = {
        -- usableEntity,
        [4] = "2109388809203362806",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_73()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#51AF13C2",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_74()
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
        [4] = "2109388809203362806",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_34()
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
        [4] = "2109388809203362806",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_61()
    local params;
    params = {
        -- CustomRingInSound,
        [0] = "3763027159",
        -- CustomRingOutSound,
        [1] = "3763027159",
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "302454436",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_46()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = self.RotationPoint,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107660900130362533",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|772974939");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "B30HintActivated",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = l0:GetDataOutValue(0),
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109399138478084660",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|842284061");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "B30_Start",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_80()
    local params;
    params = {
        -- Pawns,
        [0] = "2109694266730108356",
        -- SoundId,
        [1] = "435024961",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|888437823");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_77_Out,
    });
    params = {
        -- Entity,
        [0] = "2107661138377315527",
    };
    return params;
end;

function export:OnEnter_box_MIS_200_PuzzleLightFX_Manager_15()
    local params;
    params = {
        -- eAmulet,
        [2] = "2108750649022786580",
        -- eLamp01_Light,
        [8] = "2107576298728593936",
        -- eLamp01_OFF,
        [9] = "2108750337096583429",
        -- eLamp01_ON,
        [10] = "2108750336572295428",
        -- eLamp02_Light,
        [11] = "2107576292321794564",
        -- eLamp02_OFF,
        [12] = "2108750339348924679",
        -- eLamp02_ON,
        [13] = "2108750338445052166",
        -- ePuzzleParticles_01,
        [15] = "2107576169667762660",
        -- ePuzzleParticles_02,
        [16] = "2108750452775487782",
        -- ePuzzleParticles_03,
        [17] = "2108750463288510760",
        -- ePuzzleParticles_04,
        [18] = "2108750471817627946",
        -- ePuzzleParticles_05,
        [19] = "2109677078797369814",
        -- ePuzzleParticles_06,
        [20] = "2109677086588289496",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|959873189");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_39_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.MIS_200_MASTER.B30Running,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|961800568");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
                [3] = self.f_box_OutputOrder_v2_19_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|986266768");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|992889023");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2109166108616441818",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1043564149");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_53_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_DearPhotograph_CORE_71()
    local params;
    params = {
        -- eLookAt,
        [0] = "2107271418235334818",
        -- ePosition,
        [2] = "2107550294259807451",
        -- fFeedbackThreshold,
        [3] = 3,
        -- fPositionThreshold,
        [4] = 0.09,
        -- ItemDescriptor,
        [5] = "9015341364764952",
        -- Objective,
        [6] = {
            section = "BIRCK_DearPhotograph",
            item = "BRICK_DearPhoto_OBJ",
            id = "373024",
        },
        -- RequiresAdditionalStep,
        [7] = true,
        -- RequiresObjective,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_75()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#CD60B0BD",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1127088041");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_30_Out,
    });
    params = {
        -- Message,
        [0] = "mis_200_b30b_done",
    };
    return params;
end;

function export:OnEnter_box_MIS_200_PUZZLEHINTS_40()
    local params;
    params = {
        -- eFatherSpawner01,
        [0] = "2109706481096985921",
        -- eFatherSpawner02,
        [1] = "2109763040005091843",
        -- FatherGroup,
        [2] = "#F77EC97F",
        -- gPlayers,
        [3] = self.PlayerGroup,
        -- Hint_1,
        [4] = "2025533193",
        -- Hint_2,
        [5] = "1924257166",
        -- Hint_3,
        [6] = "3345814498",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1234826081");
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

function export:OnEnter_box_MultipleAND_v2_42()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_60()
    local params;
    params = {
        -- Pawns,
        [0] = "2108818862909701921",
        -- SoundId,
        [1] = "2964517945",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_52()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109388809203362806",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_17()
    local params;
    params = {
        -- EntityA,
        [1] = "2109664945976135799",
        -- EntityB,
        [2] = "2109388809203362806",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1362218933");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1439567062");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
                [3] = self.f_box_OutputOrder_v2_5_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_27()
    local params;
    params = {
        -- usableEntity,
        [4] = "2109388809203362806",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1485789247");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1493442916");
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
                [0] = self.f_box_OutputOrder_v2_78_Out_0,
                [1] = self.f_box_OutputOrder_v2_78_Out_1,
                [2] = self.f_box_OutputOrder_v2_78_Out_2,
                [3] = self.f_box_OutputOrder_v2_78_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1541261359");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_59_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_59_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.RotationPoint,
        -- Entity2,
        [1] = "2107661128627655863",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1581657323");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [2] = self.f_box_OutputOrder_v2_57_Out_2,
                [3] = self.f_box_OutputOrder_v2_57_Out_3,
                [4] = self.f_box_OutputOrder_v2_57_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1609813292");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_96_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_72()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1612987346");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1617471825");
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
        [8] = "MIS_200_B30B script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1624518813");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_31_Out,
    });
    params = {
        -- Entity,
        [0] = "2107661146577179855",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1651445712");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1671741925");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PuzzleCelebration_9()
    local params;
    params = {
        -- eCelebrationFX_01,
        [0] = "2108721660679950671",
        -- eCelebrationFX_02,
        [1] = "2108721660679950673",
        -- eCelebrationFX_03,
        [2] = "2108721660679950675",
        -- eCelebrationFX_04,
        [3] = "2108721660682047829",
        -- ePlayer,
        [4] = self.LocalPlayer,
        -- ePlayerPos,
        [5] = "2107550294259807451",
        -- eTarget,
        [6] = "2109496565530899403",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_70()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- usableEntityId,
        [1] = "2109388809203362806",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1797105763");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_93_Out,
    });
    params = {
        -- Message,
        [0] = "B30HintReset",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1800221347");
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

function export:OnEnter_box_BroadcastMessage_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1824138339");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_26_Out,
    });
    params = {
        -- Message,
        [0] = "B30_Left",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1834843985");
    l0:SetConnections({
    });
    params = {
        -- bool,
        [0] = Globals.Lib_Brick_DearPhotograph.AdditionalStep,
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- id,
        [5] = self.RotationPoint,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1857504001");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_81_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1965150853");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_20_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|1979965396");
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
                [0] = self.f_box_OutputOrder_v2_37_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_32()
    local params;
    params = {
        -- CustomRingInSound,
        [0] = "3763027159",
        -- CustomRingOutSound,
        [1] = "3763027159",
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1715626660",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_36()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "OBJECTIVES",
            item = "MIS_200_Interaction_Pull",
            id = "1036057",
        },
        -- usableEntity,
        [4] = "2109388809203362806",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_2()
    local params;
    params = {
        -- Pawns,
        [0] = "2108818862909701921",
        -- SoundId,
        [1] = "2103007581",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_B30B|2098834473");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_50_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_94_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_ProximityTrigger_v3_11;
    l1:GetLuaBox().colliderFilterId = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.RotationPoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_66_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.RotationPoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_77_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.RotationPoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_53_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.MIS_200_MASTER.B30Running = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.Lib_Brick_DearPhotograph.AdditionalStep = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_96_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.Lib_Brick_DearPhotograph.AdditionalStep = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_43_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.LocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.RotationPoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.MIS_200_MASTER.B30Running = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.MIS_200_MASTER.B30Running = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_50_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.Lib_Brick_DearPhotograph.AdditionalStep = l0:GetDataOutValue(0);
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
