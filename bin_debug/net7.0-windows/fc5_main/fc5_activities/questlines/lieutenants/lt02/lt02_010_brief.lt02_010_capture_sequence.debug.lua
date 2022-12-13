LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_010_brief.domino
-- User graph: LT02_010_Capture_Sequence
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetPreconditionState.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ExoticPlayerKidnapConditionCheck.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ResetInputs.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        
        -- Load resources
        cboxRes:LoadResource([[4013743081.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1166935542.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1078125062.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3020641943.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_010_BRIEF.LT02_010_Capture_Sequence.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/AgentGroupModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "AddGroup",
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
                name = "AnimalGroup",
                type = "group",
            },
            [1] = {
                name = "PawnGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/Coop/CoopActivePlayers.lua")] = {
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
                name = "OnePlayer",
                delayed = false,
            },
            [1] = {
                name = "PlayerAdded",
                delayed = true,
            },
            [2] = {
                name = "PlayerRemoved",
                delayed = true,
            },
            [3] = {
                name = "TwoPlayers",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Player1",
                type = "entity",
            },
            [1] = {
                name = "Player2",
                type = "entity",
            },
            [2] = {
                name = "PlayerAddedOrRemoved",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/ExoticPlayerKidnapConditionCheck.lua")] = {
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
                name = "Invalid",
                delayed = true,
            },
            [3] = {
                name = "Valid",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "AllowInCombat",
                type = "bool",
            },
            [1] = {
                name = "AutoDisable",
                type = "bool",
            },
            [2] = {
                name = "CheckFrequency",
                type = "float",
            },
            [3] = {
                name = "CollisionRadiusCheck",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/ResetInputs.lua")] = {
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
    metadataTable[GetPathID("Domino/System/VehicleListener_v3.lua")] = {
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
                name = "OnAllSitting",
                delayed = true,
            },
            [3] = {
                name = "OnAllStanding",
                delayed = true,
            },
            [4] = {
                name = "OnChangeSeat",
                delayed = true,
            },
            [5] = {
                name = "OnInteract",
                delayed = true,
            },
            [6] = {
                name = "OnSit",
                delayed = true,
            },
            [7] = {
                name = "OnStandUp",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicle",
                type = "entity",
            },
            [5] = {
                name = "vehicleTypeFilter",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "activePawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "LT02_010_Capture_Sequence";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence";
    self.Out = DummyFunction;
    self.skipCS = false;
    self.ePlayerID = nil;
    self.isCoop = false;
    self.Host = nil;
    self.Client = nil;
    self.box_ExoticPlayerKidnapConditionCheck_35 = cbox:CreateBox("Domino/System/ExoticPlayerKidnapConditionCheck.lua");
    l0 = self.box_ExoticPlayerKidnapConditionCheck_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExoticPlayerKidnapConditionCheck_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|109366927");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ExoticPlayerKidnapConditionCheck_35_Enabled,
        -- Invalid,
        [2] = self.f_box_ExoticPlayerKidnapConditionCheck_35_Invalid,
        -- Valid,
        [3] = self.f_box_ExoticPlayerKidnapConditionCheck_35_Valid,
    });
    self.box_NarrativeSceneSetup_3 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|202565734");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_3_Out,
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|397252368");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_EntityStatusListener_5 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|524571092");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_5_Loaded,
    });
    self.box_SoundModifier_v2_44 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|541506071");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_44_Started,
    });
    self.box_VehicleListener_v3_37 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|659437870");
    l0:SetConnections({
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_37_OnAllSitting,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_37_OnSit,
    });
    self.box_PostFx_v3_25 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|664331252");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_25_Enabled,
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|678065427");
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
        [0] = self.f_box_MultipleOR_19_Out,
    });
    self.box_PostFx_v3_8 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|784674282");
    l0:SetConnections({
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|789175629");
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
    self.box_NarrativeSceneSetup_12 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|835014042");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_12_Out,
    });
    self.box_SoundModifier_v2_16 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|918734117");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_27 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|957093585");
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
                [0] = self.f_box_OnceOnly_v3_27_Out_0,
            },
            count = 1,
        },
    });
    self.box_PositionModifier_v2_15 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|998283198");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_15_Done,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1011367138");
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
        [0] = self.f_box_MultipleOR_46_Out,
    });
    self.box_Delay_v5_22 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1083580492");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_22_TimeElapsed,
    });
    self.box_PositionModifier_v2_4 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1095362012");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_4_Done,
    });
    self.box_CoopActivePlayers_47 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1449865157");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_47_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_47_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_47_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_47_TwoPlayers,
    });
    self.box_PositionModifier_v2_18 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1656689752");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_18_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_18_StartOut,
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1663895377");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_PlaySequence_v8_34 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1678422303");
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
        [0] = self.f_box_PlaySequence_v8_34_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_34_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "StartPOSTFX",
                    value = self.f_box_PlaySequence_v8_34_SPOut__StartPOSTFX_,
                },
                [1] = {
                    string = "FadeOut",
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_34_Started,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1784538558");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_SoundModifier_v2_38 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1812502046");
    l0:SetConnections({
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1871237730");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
    self.box_Music_Quest_v2_42 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1873169743");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|2143008922", "2143008922", "LT02_010_Capture_Sequence", "In", "box_OutputOrder_v2_29.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_39_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_37();
    l0 = self.box_VehicleListener_v3_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1114674796", "1114674796", "LT02_010_Capture_Sequence", "box_Simple_Node_39.Out", "box_VehicleListener_v3_37.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ExoticPlayerKidnapConditionCheck_35();
    l0 = self.box_ExoticPlayerKidnapConditionCheck_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1439037350", "1439037350", "LT02_010_Capture_Sequence", "box_Simple_Node_39.Out", "box_ExoticPlayerKidnapConditionCheck_35.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|844521908", "844521908", "LT02_010_Capture_Sequence", "box_Simple_Node_39.Out", "box_Delay_v5_41.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_ExoticPlayerKidnapConditionCheck_35_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_ExoticPlayerKidnapConditionCheck_35;
    l1 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|863678201", "863678201", "LT02_010_Capture_Sequence", "box_ExoticPlayerKidnapConditionCheck_35.Enabled", "box_Delay_v5_41.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ExoticPlayerKidnapConditionCheck_35_Invalid()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_40();
    l0 = self.box_ExoticPlayerKidnapConditionCheck_35;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1698726846", "1698726846", "LT02_010_Capture_Sequence", "box_ExoticPlayerKidnapConditionCheck_35.Invalid", "box_Print_v2_40.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExoticPlayerKidnapConditionCheck_35_Valid()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_ExoticPlayerKidnapConditionCheck_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|736582562", "736582562", "LT02_010_Capture_Sequence", "box_ExoticPlayerKidnapConditionCheck_35.Valid", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_NarrativeSceneSetup_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|508528466", "508528466", "LT02_010_Capture_Sequence", "box_NarrativeSceneSetup_3.Out", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_20();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|2065713608", "2065713608", "LT02_010_Capture_Sequence", "box_SetContextualStrategy_26.Out", "box_SetContextualStrategy_20.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_17_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_2();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1781745120", "1781745120", "LT02_010_Capture_Sequence", "box_GetPreconditionState_17.NotValid", "box_SetBoolean_v2_2.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_17_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_2();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|2078980724", "2078980724", "LT02_010_Capture_Sequence", "box_GetPreconditionState_17.Valid", "box_SetBoolean_v2_2.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_32_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_32;
    l1 = self.box_OnceOnly_v3_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|9706451", "9706451", "LT02_010_Capture_Sequence", "box_MultipleOR_32.Out", "box_OnceOnly_v3_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_5_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_5;
    l1 = self.box_CoopActivePlayers_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|205979445", "205979445", "LT02_010_Capture_Sequence", "box_EntityStatusListener_5.Loaded", "box_CoopActivePlayers_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_SoundModifier_v2_44_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_16();
    l0 = self.box_SoundModifier_v2_44;
    l1 = self.box_SoundModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|951501075", "951501075", "LT02_010_Capture_Sequence", "box_SoundModifier_v2_44.Started", "box_SoundModifier_v2_16.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_AgentGroupModifier_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_30();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|581397193", "581397193", "LT02_010_Capture_Sequence", "box_AgentGroupModifier_28.Out", "box_SetContextualStrategy_30.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_37_OnAllSitting()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_37;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1753999233", "1753999233", "LT02_010_Capture_Sequence", "box_VehicleListener_v3_37.OnAllSitting", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleListener_v3_37_OnSit()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_37;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1970236649", "1970236649", "LT02_010_Capture_Sequence", "box_VehicleListener_v3_37.OnSit", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PostFx_v3_25_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_PostFx_v3_25;
    l1 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|617393300", "617393300", "LT02_010_Capture_Sequence", "box_PostFx_v3_25.Enabled", "box_Delay_v5_22.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_19_Out()
    local l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|539705245", "539705245", "LT02_010_Capture_Sequence", "box_MultipleOR_19.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_SetContextualStrategy_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1182123491", "1182123491", "LT02_010_Capture_Sequence", "box_SetContextualStrategy_20.Out", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_31();
    l0 = self.box_MultipleOR_14;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1174794415", "1174794415", "LT02_010_Capture_Sequence", "box_MultipleOR_14.Out", "box_Compare_Boolean_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_7_Out()
    local l0;
    self:OnExit_box_GetLocalPlayer_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1728081177", "1728081177", "LT02_010_Capture_Sequence", "box_GetLocalPlayer_v2_7.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_21();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1610640799", "1610640799", "LT02_010_Capture_Sequence", "box_SetContextualStrategy_30.Out", "box_SetContextualStrategy_21.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_5();
    l0 = self.box_NarrativeSceneSetup_12;
    l1 = self.box_EntityStatusListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1003743889", "1003743889", "LT02_010_Capture_Sequence", "box_NarrativeSceneSetup_12.Out", "box_EntityStatusListener_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_27_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_OnceOnly_v3_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1897560771", "1897560771", "LT02_010_Capture_Sequence", "box_OnceOnly_v3_27.Out", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_15_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_4();
    l0 = self.box_PositionModifier_v2_15;
    l1 = self.box_PositionModifier_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|598152164", "598152164", "LT02_010_Capture_Sequence", "box_PositionModifier_v2_15.Done", "box_PositionModifier_v2_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_18();
    l0 = self.box_MultipleOR_46;
    l1 = self.box_PositionModifier_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1649300749", "1649300749", "LT02_010_Capture_Sequence", "box_MultipleOR_46.Out", "box_PositionModifier_v2_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExoticPlayerKidnapConditionCheck_35();
    l0 = self.box_ExoticPlayerKidnapConditionCheck_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|183369726", "183369726", "LT02_010_Capture_Sequence", "box_OutputOrder_v2_29.Out", "box_ExoticPlayerKidnapConditionCheck_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_37();
    l0 = self.box_VehicleListener_v3_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|790806195", "790806195", "LT02_010_Capture_Sequence", "box_OutputOrder_v2_29.Out", "box_VehicleListener_v3_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_22_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_24();
    l0 = self.box_Delay_v5_22;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1593371539", "1593371539", "LT02_010_Capture_Sequence", "box_Delay_v5_22.TimeElapsed", "box_HealthModifier_v2_24.Heal", l0:GetLuaBox(), l1:GetLuaBox());
    -- Heal
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_4_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_PositionModifier_v2_4;
    l1 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|74464968", "74464968", "LT02_010_Capture_Sequence", "box_PositionModifier_v2_4.Done", "box_Delay_v5_33.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthModifier_v2_24_Healed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|692927325", "692927325", "LT02_010_Capture_Sequence", "box_HealthModifier_v2_24.Healed", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ResetInputs_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ResetInputs.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneSetup_12();
    l0 = self.box_NarrativeSceneSetup_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|260890628", "260890628", "LT02_010_Capture_Sequence", "box_ResetInputs_45.Out", "box_NarrativeSceneSetup_12.HolsterWeapon", clone:GetLuaBox(), l0:GetLuaBox());
    -- HolsterWeapon
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_42();
    l0 = self.box_Music_Quest_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|2001847423", "2001847423", "LT02_010_Capture_Sequence", "box_OutputOrder_v2_43.Out", "box_Music_Quest_v2_42.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_38();
    l0 = self.box_SoundModifier_v2_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1832723284", "1832723284", "LT02_010_Capture_Sequence", "box_OutputOrder_v2_43.Out", "box_SoundModifier_v2_38.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_44();
    l0 = self.box_SoundModifier_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1316718606", "1316718606", "LT02_010_Capture_Sequence", "box_OutputOrder_v2_23.Out", "box_SoundModifier_v2_44.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_25();
    l0 = self.box_PostFx_v3_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|34100331", "34100331", "LT02_010_Capture_Sequence", "box_OutputOrder_v2_23.Out", "box_PostFx_v3_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_39();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1171663260", "1171663260", "LT02_010_Capture_Sequence", "box_OutputOrder_v2_11.Out", "box_Simple_Node_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ResetInputs_45();
    l0 = Boxes[GetPathID("Domino/System/ResetInputs.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|813368549", "813368549", "LT02_010_Capture_Sequence", "box_OutputOrder_v2_11.Out", "box_ResetInputs_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_47_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_47_OnePlayer();
    l0 = self.box_CoopActivePlayers_47;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1781895066", "1781895066", "LT02_010_Capture_Sequence", "box_CoopActivePlayers_47.OnePlayer", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_47_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_48();
    l0 = self.box_CoopActivePlayers_47;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1341595567", "1341595567", "LT02_010_Capture_Sequence", "box_CoopActivePlayers_47.PlayerAdded", "box_Simple_Node_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_47_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_47_TwoPlayers();
    params = self:OnEnter_box_GetLocalPlayer_v2_7();
    l0 = self.box_CoopActivePlayers_47;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|2066017337", "2066017337", "LT02_010_Capture_Sequence", "box_CoopActivePlayers_47.TwoPlayers", "box_GetLocalPlayer_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_18_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_PositionModifier_v2_18;
    l1 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1723255015", "1723255015", "LT02_010_Capture_Sequence", "box_PositionModifier_v2_18.Done", "box_Delay_v5_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_18_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_15();
    l0 = self.box_PositionModifier_v2_18;
    l1 = self.box_PositionModifier_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|502685623", "502685623", "LT02_010_Capture_Sequence", "box_PositionModifier_v2_18.StartOut", "box_PositionModifier_v2_15.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_41;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1924667119", "1924667119", "LT02_010_Capture_Sequence", "box_Delay_v5_41.TimeElapsed", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_34_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_34;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1333379805", "1333379805", "LT02_010_Capture_Sequence", "box_PlaySequence_v8_34.Finished", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_34_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_34;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|2139720808", "2139720808", "LT02_010_Capture_Sequence", "box_PlaySequence_v8_34.Skipped", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_34_SPOut__StartPOSTFX_()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_8();
    l0 = self.box_PlaySequence_v8_34;
    l1 = self.box_PostFx_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1172928296", "1172928296", "LT02_010_Capture_Sequence", "box_PlaySequence_v8_34.SPOut", "box_PostFx_v3_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_34_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_PlaySequence_v8_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|623098765", "623098765", "LT02_010_Capture_Sequence", "box_PlaySequence_v8_34.Started", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_39();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1289519946", "1289519946", "LT02_010_Capture_Sequence", "box_OutputOrder_v2_9.Out", "box_Simple_Node_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneSetup_3();
    l0 = self.box_NarrativeSceneSetup_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1309278484", "1309278484", "LT02_010_Capture_Sequence", "box_OutputOrder_v2_9.Out", "box_NarrativeSceneSetup_3.BasicSetup", clone:GetLuaBox(), l0:GetLuaBox());
    -- BasicSetup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|274078582", "274078582", "LT02_010_Capture_Sequence", "box_OutputOrder_v2_9.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_31_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_26();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1809811382", "1809811382", "LT02_010_Capture_Sequence", "box_Compare_Boolean_31.A_is_False", "box_SetContextualStrategy_26.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_31_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|973773538", "973773538", "LT02_010_Capture_Sequence", "box_Compare_Boolean_31.A_is_True", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_34();
    l0 = self.box_Delay_v5_6;
    l1 = self.box_PlaySequence_v8_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1730714033", "1730714033", "LT02_010_Capture_Sequence", "box_Delay_v5_6.TimeElapsed", "box_PlaySequence_v8_34.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_2_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_36();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1982159219", "1982159219", "LT02_010_Capture_Sequence", "box_SetBoolean_v2_2.Out", "box_Compare_Boolean_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetPreconditionState_17();
    l0 = self.box_Delay_v5_33;
    l1 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|2064100641", "2064100641", "LT02_010_Capture_Sequence", "box_Delay_v5_33.TimeElapsed", "box_GetPreconditionState_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_36_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentGroupModifier_28();
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1261967094", "1261967094", "LT02_010_Capture_Sequence", "box_Compare_Boolean_36.A_is_False", "box_AgentGroupModifier_28.AddGroup", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddGroup
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|@disableListeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_39_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ExoticPlayerKidnapConditionCheck_35()
    local params;
    params = {
        -- AllowInCombat,
        [0] = true,
        -- AutoDisable,
        [1] = false,
        -- CheckFrequency,
        [2] = 1,
        -- CollisionRadiusCheck,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_3()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|266315743");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_26_Out,
    });
    params = {
        -- Group,
        [1] = "#09700312",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_17()
    local params, l0;
    DrawTextToScreen("Comment: Check for player being in outpost activity - ZET-354158", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetPreconditionState')-- Comment: Check for player being in outpost activity - ZET-354158");
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|308342938");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_17_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_17_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015224981706192",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101079026459247780",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_44()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "3020641943",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|593355183");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_28_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A21DD84E",
        -- PawnGroup,
        [1] = "#09700312",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_37()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_25()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "jacobplayercaptureaction",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|684070057");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_20_Out,
    });
    params = {
        -- Group,
        [1] = "#A21DD84E",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_8()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "jacobplayercaptureone",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|824389554");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|824830095");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_30_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104655893453890919",
        -- Group,
        [1] = "#09700312",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_12()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_16()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1078125062",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_15()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = self.ePlayerID,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104655895867712874",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1047138036");
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

function export:OnEnter_box_Delay_v5_22()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_4()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = self.ePlayerID,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104655893453890919",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1164487494");
    l0:SetConnections({
        -- Healed,
        [1] = self.f_box_HealthModifier_v2_24_Healed,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#ED455357",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_ResetInputs_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ResetInputs.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ResetInputs_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1174524709");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ResetInputs_45_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1188250170");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1258012421");
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

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1276217591");
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

function export:OnEnter_box_SetContextualStrategy_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1363695148");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104655895867712874",
        -- Group,
        [1] = "#A21DD84E",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1381065556");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_18()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = self.ePlayerID,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101079026459247780",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_41()
    local params;
    DrawTextToScreen("Comment: safety timer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Delay_v5')-- Comment: safety timer");
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_34()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2101079026459247780",
        -- SequenceFile,
        [4] = "sequences/zeta_main/cin_lt02_010_playercapture/cin_lt02_010_playercapture.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1711246019");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
            },
            count = 3,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1736603015");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_31_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_31_A_is_True,
    });
    params = {
        -- A,
        [0] = self.skipCS,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.05,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1803500168");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_38()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1078125062",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_33()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.05,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_42()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 10,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1166935542",
        -- StopEvent,
        [7] = "4013743081",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|1990016513");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 1,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "ExoticPlayerKidnapConditionCheck - Invalid",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|2077560576");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "One or both players are in a vehicle, can't do the LT02 hunting cinematic capture sequence!going smash cut",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_010_BRIEF.domino|@LT02_010_Capture_Sequence|2094109616");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_36_A_is_False,
    });
    params = {
        -- A,
        [0] = self.skipCS,
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.ePlayerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_47_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_47;
    self.ePlayerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_47_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_47;
    self.ePlayerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.skipCS = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
