LUAC�D -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_dominoentities/i4_vetcentre_onlyyou.domino
-- User graph: I4_VetCentre_OnlyYou
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="CenterScene_HardCapture" Type="Nomad|entity{}" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ExoticPlayerKidnapConditionCheck.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3074360545.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2430786186.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_DominoEntities/I4_VetCentre_OnlyYou.I4_VetCentre_OnlyYou.debug.lua")] = {
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
            [0] = {
                name = "CenterScene_HardCapture",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua")] = {
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
                name = "KeepGodMode",
                type = "bool",
            },
            [2] = {
                name = "KeepHUDMode",
                type = "bool",
            },
            [3] = {
                name = "KeepWeaponHolstered",
                type = "bool",
            },
        },
        dataInCount = 4,
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
    self._name = "I4_VetCentre_OnlyYou";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou";
    self.gPlayers = nil;
    self.Player = nil;
    self.box_ProximityRadiusListener_v3_39 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|36971650");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_39_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_39_SomeoneNear,
    });
    self.box_OnceOnly_v3_24 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|48296619");
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
                [0] = self.f_box_OnceOnly_v3_24_Out_0,
            },
            count = 1,
        },
    });
    self.box_EntityStatusListener_61 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|56705144");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_61_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_61_Unloaded,
    });
    self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|118688935");
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
        [0] = self.f_box_MultipleOR_60_Out,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|142601438");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_Delay_v5_78 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|146590567");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_78_TimeElapsed,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|167522782");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_PostFx_v3_44 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|173395944");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_44_Disabled,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|210419441");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|229754162");
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
    self.box_PositionModifier_v2_42 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|274260965");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_42_Done,
    });
    self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|324073442");
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
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|345774439");
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
        [0] = self.f_box_MultipleOR_18_Out,
    });
    self.box_NarrativeSceneSetup_19 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|408721396");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_19_Out,
    });
    self.box_OnceOnly_v3_25 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|436441658");
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
                [0] = self.f_box_OnceOnly_v3_25_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|437556779");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box_Delay_v5_80 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|491075770");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_80_TimeElapsed,
    });
    self.box_Delay_v5_71 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|491098214");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_71_TimeElapsed,
    });
    self.box_Gate_v3_81 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|563226586");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_81_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_81_Out,
    });
    self.box_VehicleListener_v3_53 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|627588822");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_53_Enabled,
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_53_OnAllSitting,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_53_OnSit,
    });
    self.box_NarrativeFade_51 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|807564590");
    l0:SetConnections({
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|837321073");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_NarrativeSceneSetup_13 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|857967459");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_13_Out,
    });
    self.box_ExoticPlayerKidnapConditionCheck_45 = cbox:CreateBox("Domino/System/ExoticPlayerKidnapConditionCheck.lua");
    l0 = self.box_ExoticPlayerKidnapConditionCheck_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExoticPlayerKidnapConditionCheck_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|891934106");
    l0:SetConnections({
        -- Invalid,
        [2] = self.f_box_ExoticPlayerKidnapConditionCheck_45_Invalid,
        -- Valid,
        [3] = self.f_box_ExoticPlayerKidnapConditionCheck_45_Valid,
    });
    self.box_PostFx_v3_40 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1001378516");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_41 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1080291857");
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
                [0] = self.f_box_OnceOnly_v3_41_Out_0,
            },
            count = 2,
        },
    });
    self.box_Music_Quest_v2_27 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1260464036");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_8 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1304434984");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_8_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_8_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_8_SomeoneNear,
    });
    self.box_TeleportPawns_33 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1304780594");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_33_Out,
    });
    self.box_Music_Quest_v2_30 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1402301643");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_Music_Quest_v2_30_Started,
    });
    self.box_Delay_v5_82 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1420694953");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_82_TimeElapsed,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1451657133");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1477788405");
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
    self.box_ProximityRadiusListener_v3_70 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1550219893");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_70_SomeoneNear,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1739097142");
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
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1780435181");
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
    self.box_EntityStatusListener_5 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1793496501");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_5_Loaded,
    });
    self.box_PostFx_v3_1 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1800252924");
    l0:SetConnections({
    });
    self.box_NarrativeFade_68 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1833981963");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_68_FadedIn,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1993842901");
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
    self.box_PlaySequence_v8_28 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|2012927145");
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
        [0] = self.f_box_PlaySequence_v8_28_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_28_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "StartPOSTFX",
                    value = self.f_box_PlaySequence_v8_28_SPOut__StartPOSTFX_,
                },
                [1] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_28_SPOut__FadeOut_,
                },
            },
            count = 2,
        },
    });
    self.box_TeleportPawns_63 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|2094172206");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_63_Out,
    });
    self.box_NarrativeSceneCleanUp_55 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|2095721701");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_55_Out,
    });
    self.box_NarrativeSceneCleanUp_9 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|2113162832");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_9_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_61();
    l0 = self.box_EntityStatusListener_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1346690824", "1346690824", "I4_VetCentre_OnlyYou", "In", "box_EntityStatusListener_61.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_66_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|2033320642", "2033320642", "I4_VetCentre_OnlyYou", "box_Simple_Node_66.Out", "box_OnceOnly_v3_24.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
    params = self:OnEnter_box_Gate_v3_81();
    l0 = self.box_Gate_v3_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1425746932", "1425746932", "I4_VetCentre_OnlyYou", "box_Simple_Node_66.Out", "box_Gate_v3_81.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    l0 = self.box_OnceOnly_v3_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1745652007", "1745652007", "I4_VetCentre_OnlyYou", "box_Simple_Node_66.Out", "box_OnceOnly_v3_25.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
    l0 = self.box_OnceOnly_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1407423117", "1407423117", "I4_VetCentre_OnlyYou", "box_Simple_Node_66.Out", "box_OnceOnly_v3_41.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
    params = self:OnEnter_box_PostFx_v3_1();
    l0 = self.box_PostFx_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|518648190", "518648190", "I4_VetCentre_OnlyYou", "box_Simple_Node_66.Out", "box_PostFx_v3_1.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_75_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_40();
    l0 = self.box_PostFx_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|707382434", "707382434", "I4_VetCentre_OnlyYou", "box_Simple_Node_75.Out", "box_PostFx_v3_40.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_70();
    l0 = self.box_ProximityRadiusListener_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|736366882", "736366882", "I4_VetCentre_OnlyYou", "box_Simple_Node_67.Out", "box_ProximityRadiusListener_v3_70.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ExoticPlayerKidnapConditionCheck_45();
    l0 = self.box_ExoticPlayerKidnapConditionCheck_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1697272178", "1697272178", "I4_VetCentre_OnlyYou", "box_Simple_Node_67.Out", "box_ExoticPlayerKidnapConditionCheck_45.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_VehicleListener_v3_53();
    l0 = self.box_VehicleListener_v3_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1527808932", "1527808932", "I4_VetCentre_OnlyYou", "box_Simple_Node_67.Out", "box_VehicleListener_v3_53.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_39();
    l0 = self.box_ProximityRadiusListener_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|254139845", "254139845", "I4_VetCentre_OnlyYou", "box_Simple_Node_22.Out", "box_ProximityRadiusListener_v3_39.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_8();
    l0 = self.box_ProximityRadiusListener_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1951470600", "1951470600", "I4_VetCentre_OnlyYou", "box_Simple_Node_22.Out", "box_ProximityRadiusListener_v3_8.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|537231654", "537231654", "I4_VetCentre_OnlyYou", "box_Simple_Node_22.Out", "box_MultipleOR_32.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_EntityStatusListener_5();
    l0 = self.box_EntityStatusListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1184005817", "1184005817", "I4_VetCentre_OnlyYou", "box_Simple_Node_22.Out", "box_EntityStatusListener_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1094723333", "1094723333", "I4_VetCentre_OnlyYou", "box_Simple_Node_15.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_39_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_39;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1024890082", "1024890082", "I4_VetCentre_OnlyYou", "box_ProximityRadiusListener_v3_39.Disabled", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_39_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_39;
    l1 = self.box_OnceOnly_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|154138443", "154138443", "I4_VetCentre_OnlyYou", "box_ProximityRadiusListener_v3_39.SomeoneNear", "box_OnceOnly_v3_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_24_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_OnceOnly_v3_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1030590177", "1030590177", "I4_VetCentre_OnlyYou", "box_OnceOnly_v3_24.Out", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_43_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1980113257", "1980113257", "I4_VetCentre_OnlyYou", "box_GetActivityState_v2_43.Completed", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_43_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|790589567", "790589567", "I4_VetCentre_OnlyYou", "box_GetActivityState_v2_43.Unavailable", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_61_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_49();
    l0 = self.box_EntityStatusListener_61;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|620750137", "620750137", "I4_VetCentre_OnlyYou", "box_EntityStatusListener_61.Loaded", "box_GetActivityState_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_61_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_EntityStatusListener_61;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1176800951", "1176800951", "I4_VetCentre_OnlyYou", "box_EntityStatusListener_61.Unloaded", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AgentGroupModifier_79_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_69();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|632155659", "632155659", "I4_VetCentre_OnlyYou", "box_AgentGroupModifier_79.Out", "box_IsEntityLoaded_v3_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_3();
    l0 = self.box_MultipleOR_60;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1380219960", "1380219960", "I4_VetCentre_OnlyYou", "box_MultipleOR_60.Out", "box_GetActivityState_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_11_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_11;
    l1 = self.box_OnceOnly_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|403644100", "403644100", "I4_VetCentre_OnlyYou", "box_MultipleOR_11.Out", "box_OnceOnly_v3_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_78_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_9();
    l0 = self.box_Delay_v5_78;
    l1 = self.box_NarrativeSceneCleanUp_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1578157244", "1578157244", "I4_VetCentre_OnlyYou", "box_Delay_v5_78.TimeElapsed", "box_NarrativeSceneCleanUp_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_74();
    l0 = self.box_MultipleOR_17;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|299451813", "299451813", "I4_VetCentre_OnlyYou", "box_MultipleOR_17.Out", "box_IsEntityLoaded_v3_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_44_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_51();
    l0 = self.box_PostFx_v3_44;
    l1 = self.box_NarrativeFade_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|668049937", "668049937", "I4_VetCentre_OnlyYou", "box_PostFx_v3_44.Disabled", "box_NarrativeFade_51.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_77_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_71();
    l0 = self.box_Delay_v5_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1262257447", "1262257447", "I4_VetCentre_OnlyYou", "box_SetContextualStrategy_77.Out", "box_Delay_v5_71.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_43();
    l0 = self.box_MultipleOR_7;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1617795204", "1617795204", "I4_VetCentre_OnlyYou", "box_MultipleOR_7.Out", "box_GetActivityState_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_27();
    l0 = self.box_MultipleOR_32;
    l1 = self.box_Music_Quest_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|120994908", "120994908", "I4_VetCentre_OnlyYou", "box_MultipleOR_32.Out", "box_Music_Quest_v2_27.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_PositionModifier_v2_42_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_PositionModifier_v2_42;
    l1 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1472369381", "1472369381", "I4_VetCentre_OnlyYou", "box_PositionModifier_v2_42.Done", "box_Delay_v5_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_76_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|718220021", "718220021", "I4_VetCentre_OnlyYou", "box_SetContextualStrategy_76.Out", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_68();
    l0 = self.box_NarrativeFade_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1183534472", "1183534472", "I4_VetCentre_OnlyYou", "box_SetContextualStrategy_38.Out", "box_NarrativeFade_68.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_23();
    l0 = self.box_MultipleOR_59;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|750629498", "750629498", "I4_VetCentre_OnlyYou", "box_MultipleOR_59.Out", "box_IsEntityLoaded_v3_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_53();
    l0 = self.box_VehicleListener_v3_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1684464752", "1684464752", "I4_VetCentre_OnlyYou", "box_OutputOrder_v2_34.Out", "box_VehicleListener_v3_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_70();
    l0 = self.box_ProximityRadiusListener_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|2004821879", "2004821879", "I4_VetCentre_OnlyYou", "box_OutputOrder_v2_34.Out", "box_ProximityRadiusListener_v3_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_36();
    l0 = self.box_MultipleOR_18;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|951171017", "951171017", "I4_VetCentre_OnlyYou", "box_MultipleOR_18.Out", "box_GetPlayerGroup_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_NarrativeSceneSetup_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1295377835", "1295377835", "I4_VetCentre_OnlyYou", "box_NarrativeSceneSetup_19.Out", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_73_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_72();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|109984655", "109984655", "I4_VetCentre_OnlyYou", "box_SetContextualStrategy_73.Out", "box_SetContextualStrategy_72.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_25_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_27();
    l0 = self.box_OnceOnly_v3_25;
    l1 = self.box_Music_Quest_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|2036410447", "2036410447", "I4_VetCentre_OnlyYou", "box_OnceOnly_v3_25.Out", "box_Music_Quest_v2_27.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_55();
    l0 = self.box_MultipleOR_29;
    l1 = self.box_NarrativeSceneCleanUp_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|74987255", "74987255", "I4_VetCentre_OnlyYou", "box_MultipleOR_29.Out", "box_NarrativeSceneCleanUp_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_80_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_63();
    l0 = self.box_Delay_v5_80;
    l1 = self.box_TeleportPawns_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1828561500", "1828561500", "I4_VetCentre_OnlyYou", "box_Delay_v5_80.TimeElapsed", "box_TeleportPawns_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_71_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_37();
    l0 = self.box_Delay_v5_71;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1440660198", "1440660198", "I4_VetCentre_OnlyYou", "box_Delay_v5_71.TimeElapsed", "box_Simple_Node_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|2108305334", "2108305334", "I4_VetCentre_OnlyYou", "box_OutputOrder_v2_64.Out", "box_Simple_Node_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_66();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|364633892", "364633892", "I4_VetCentre_OnlyYou", "box_OutputOrder_v2_64.Out", "box_Simple_Node_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_81_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_67();
    l0 = self.box_Gate_v3_81;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1287232368", "1287232368", "I4_VetCentre_OnlyYou", "box_Gate_v3_81.Closed", "box_Simple_Node_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ExoticPlayerKidnapConditionCheck_45();
    l0 = self.box_Gate_v3_81;
    l1 = self.box_ExoticPlayerKidnapConditionCheck_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1871814058", "1871814058", "I4_VetCentre_OnlyYou", "box_Gate_v3_81.Out", "box_ExoticPlayerKidnapConditionCheck_45.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_69_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1210607123", "1210607123", "I4_VetCentre_OnlyYou", "box_IsEntityLoaded_v3_69.False", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_69_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_76();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|24658819", "24658819", "I4_VetCentre_OnlyYou", "box_IsEntityLoaded_v3_69.True", "box_SetContextualStrategy_76.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_52_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1856099689", "1856099689", "I4_VetCentre_OnlyYou", "box_IsEntityLoaded_v3_52.False", "box_MultipleOR_59.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_52_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_47();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1366450571", "1366450571", "I4_VetCentre_OnlyYou", "box_IsEntityLoaded_v3_52.True", "box_SetContextualStrategy_47.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_58_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1976197600", "1976197600", "I4_VetCentre_OnlyYou", "box_SetContextualStrategy_58.Out", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_53_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_82();
    l0 = self.box_VehicleListener_v3_53;
    l1 = self.box_Delay_v5_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|752653622", "752653622", "I4_VetCentre_OnlyYou", "box_VehicleListener_v3_53.Enabled", "box_Delay_v5_82.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_VehicleListener_v3_53_OnAllSitting()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_53;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|347192483", "347192483", "I4_VetCentre_OnlyYou", "box_VehicleListener_v3_53.OnAllSitting", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleListener_v3_53_OnSit()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_53;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|19868126", "19868126", "I4_VetCentre_OnlyYou", "box_VehicleListener_v3_53.OnSit", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_75();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1442716330", "1442716330", "I4_VetCentre_OnlyYou", "box_OutputOrder_v2_48.Out", "box_Simple_Node_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_78();
    l0 = self.box_Delay_v5_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1279547068", "1279547068", "I4_VetCentre_OnlyYou", "box_OutputOrder_v2_48.Out", "box_Delay_v5_78.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetActivityState_v2_3_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1103247611", "1103247611", "I4_VetCentre_OnlyYou", "box_GetActivityState_v2_3.Completed", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_3_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1083449678", "1083449678", "I4_VetCentre_OnlyYou", "box_GetActivityState_v2_3.Unavailable", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_67();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1884777424", "1884777424", "I4_VetCentre_OnlyYou", "box_OutputOrder_v2_16.Out", "box_Simple_Node_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|295191812", "295191812", "I4_VetCentre_OnlyYou", "box_OutputOrder_v2_16.Out", "box_GetLocalPlayer_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_31();
    l0 = self.box_Delay_v5_20;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1611789212", "1611789212", "I4_VetCentre_OnlyYou", "box_Delay_v5_20.TimeElapsed", "box_AgentGroupModifier_31.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_23_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|207567773", "207567773", "I4_VetCentre_OnlyYou", "box_IsEntityLoaded_v3_23.False", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_23_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_58();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1060299122", "1060299122", "I4_VetCentre_OnlyYou", "box_IsEntityLoaded_v3_23.True", "box_SetContextualStrategy_58.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_28();
    l0 = self.box_NarrativeSceneSetup_13;
    l1 = self.box_PlaySequence_v8_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|158941360", "158941360", "I4_VetCentre_OnlyYou", "box_NarrativeSceneSetup_13.Out", "box_PlaySequence_v8_28.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_ExoticPlayerKidnapConditionCheck_45_Invalid()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_57();
    l0 = self.box_ExoticPlayerKidnapConditionCheck_45;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|2012851699", "2012851699", "I4_VetCentre_OnlyYou", "box_ExoticPlayerKidnapConditionCheck_45.Invalid", "box_Print_v2_57.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExoticPlayerKidnapConditionCheck_45_Valid()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_ExoticPlayerKidnapConditionCheck_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|108068688", "108068688", "I4_VetCentre_OnlyYou", "box_ExoticPlayerKidnapConditionCheck_45.Valid", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_37_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_33();
    l0 = self.box_TeleportPawns_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1198777486", "1198777486", "I4_VetCentre_OnlyYou", "box_Simple_Node_37.Out", "box_TeleportPawns_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_2_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_5();
    l0 = self.box_EntityStatusListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1163799493", "1163799493", "I4_VetCentre_OnlyYou", "box_GetLocalPlayer_v2_2.Out", "box_EntityStatusListener_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_81();
    l0 = self.box_Gate_v3_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1700504450", "1700504450", "I4_VetCentre_OnlyYou", "box_OutputOrder_v2_56.Out", "box_Gate_v3_81.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneSetup_19();
    l0 = self.box_NarrativeSceneSetup_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|46567620", "46567620", "I4_VetCentre_OnlyYou", "box_OutputOrder_v2_56.Out", "box_NarrativeSceneSetup_19.BasicSetup", clone:GetLuaBox(), l0:GetLuaBox());
    -- BasicSetup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_26();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1009772369", "1009772369", "I4_VetCentre_OnlyYou", "box_OutputOrder_v2_56.Out", "box_Print_v2_26.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_62_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1490975883", "1490975883", "I4_VetCentre_OnlyYou", "box_GetActivityState_v2_62.Completed", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_62_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|90843238", "90843238", "I4_VetCentre_OnlyYou", "box_GetActivityState_v2_62.Unavailable", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_41_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_30();
    l0 = self.box_OnceOnly_v3_41;
    l1 = self.box_Music_Quest_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1756055625", "1756055625", "I4_VetCentre_OnlyYou", "box_OnceOnly_v3_41.Out", "box_Music_Quest_v2_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_49_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1644442231", "1644442231", "I4_VetCentre_OnlyYou", "box_GetActivityState_v2_49.Completed", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_49_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1549898680", "1549898680", "I4_VetCentre_OnlyYou", "box_GetActivityState_v2_49.Unavailable", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_8_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_39();
    l0 = self.box_ProximityRadiusListener_v3_8;
    l1 = self.box_ProximityRadiusListener_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|91202253", "91202253", "I4_VetCentre_OnlyYou", "box_ProximityRadiusListener_v3_8.Enabled", "box_ProximityRadiusListener_v3_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_8_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_8;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|759274577", "759274577", "I4_VetCentre_OnlyYou", "box_ProximityRadiusListener_v3_8.SomeoneFar", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_8_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_8;
    l1 = self.box_OnceOnly_v3_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|973136910", "973136910", "I4_VetCentre_OnlyYou", "box_ProximityRadiusListener_v3_8.SomeoneNear", "box_OnceOnly_v3_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TeleportPawns_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_TeleportPawns_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|831409105", "831409105", "I4_VetCentre_OnlyYou", "box_TeleportPawns_33.Out", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_54_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|198711939", "198711939", "I4_VetCentre_OnlyYou", "box_Simple_Node_54.Out", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_65_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_38();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1910080094", "1910080094", "I4_VetCentre_OnlyYou", "box_SetContextualStrategy_65.Out", "box_SetContextualStrategy_38.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_36_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_36_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_8();
    l0 = self.box_ProximityRadiusListener_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|2085404117", "2085404117", "I4_VetCentre_OnlyYou", "box_GetPlayerGroup_v2_36.Out", "box_ProximityRadiusListener_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Music_Quest_v2_30_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_50();
    l0 = self.box_Music_Quest_v2_30;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1000238131", "1000238131", "I4_VetCentre_OnlyYou", "box_Music_Quest_v2_30.Started", "box_Simple_Node_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_82_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_81();
    l0 = self.box_Delay_v5_82;
    l1 = self.box_Gate_v3_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|895026196", "895026196", "I4_VetCentre_OnlyYou", "box_Delay_v5_82.TimeElapsed", "box_Gate_v3_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_62();
    l0 = self.box_MultipleOR_21;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|669313574", "669313574", "I4_VetCentre_OnlyYou", "box_MultipleOR_21.Out", "box_GetActivityState_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_47_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1814638830", "1814638830", "I4_VetCentre_OnlyYou", "box_SetContextualStrategy_47.Out", "box_MultipleOR_59.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_10();
    l0 = self.box_MultipleOR_6;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|386867843", "386867843", "I4_VetCentre_OnlyYou", "box_MultipleOR_6.Out", "box_GetActivityState_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_70_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_70;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1059898768", "1059898768", "I4_VetCentre_OnlyYou", "box_ProximityRadiusListener_v3_70.SomeoneNear", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetContextualStrategy_72_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_54();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|225131986", "225131986", "I4_VetCentre_OnlyYou", "box_SetContextualStrategy_72.Out", "box_Simple_Node_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1378772734", "1378772734", "I4_VetCentre_OnlyYou", "box_Simple_Node_50.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_74_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_77();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|434784692", "434784692", "I4_VetCentre_OnlyYou", "box_IsEntityLoaded_v3_74.True", "box_SetContextualStrategy_77.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_30();
    l0 = self.box_MultipleOR_46;
    l1 = self.box_Music_Quest_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1957969658", "1957969658", "I4_VetCentre_OnlyYou", "box_MultipleOR_46.Out", "box_Music_Quest_v2_30.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = self.box_MultipleOR_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1279835319", "1279835319", "I4_VetCentre_OnlyYou", "box_MultipleOR_14.Out", "box_OutputOrder_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_5_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_42();
    l0 = self.box_EntityStatusListener_5;
    l1 = self.box_PositionModifier_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1796930466", "1796930466", "I4_VetCentre_OnlyYou", "box_EntityStatusListener_5.Loaded", "box_PositionModifier_v2_42.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_NarrativeFade_68_FadedIn()
    local l0, l1;
    l0 = self.box_NarrativeFade_68;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|944727369", "944727369", "I4_VetCentre_OnlyYou", "box_NarrativeFade_68.FadedIn", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_10_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1906334654", "1906334654", "I4_VetCentre_OnlyYou", "box_GetActivityState_v2_10.Completed", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_10_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1777932761", "1777932761", "I4_VetCentre_OnlyYou", "box_GetActivityState_v2_10.Unavailable", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_13();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_NarrativeSceneSetup_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1173468506", "1173468506", "I4_VetCentre_OnlyYou", "box_MultipleOR_4.Out", "box_NarrativeSceneSetup_13.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_40();
    l0 = self.box_PostFx_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1567708294", "1567708294", "I4_VetCentre_OnlyYou", "box_OutputOrder_v2_35.Out", "box_PostFx_v3_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentGroupModifier_79();
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|2129859782", "2129859782", "I4_VetCentre_OnlyYou", "box_OutputOrder_v2_35.Out", "box_AgentGroupModifier_79.AddGroup", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddGroup
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_28_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_28;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1238007075", "1238007075", "I4_VetCentre_OnlyYou", "box_PlaySequence_v8_28.Finished", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_28_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_28;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|311727946", "311727946", "I4_VetCentre_OnlyYou", "box_PlaySequence_v8_28.Skipped", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_28_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_44();
    l0 = self.box_PlaySequence_v8_28;
    l1 = self.box_PostFx_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|5112370", "5112370", "I4_VetCentre_OnlyYou", "box_PlaySequence_v8_28.SPOut", "box_PostFx_v3_44.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_28_SPOut__StartPOSTFX_()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_1();
    l0 = self.box_PlaySequence_v8_28;
    l1 = self.box_PostFx_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|217230743", "217230743", "I4_VetCentre_OnlyYou", "box_PlaySequence_v8_28.SPOut", "box_PostFx_v3_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_AgentGroupModifier_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_52();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|807116374", "807116374", "I4_VetCentre_OnlyYou", "box_AgentGroupModifier_31.Out", "box_IsEntityLoaded_v3_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_65();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|395533727", "395533727", "I4_VetCentre_OnlyYou", "box_Simple_Node_12.Out", "box_SetContextualStrategy_65.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_12();
    l0 = self.box_TeleportPawns_63;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|149272704", "149272704", "I4_VetCentre_OnlyYou", "box_TeleportPawns_63.Out", "box_Simple_Node_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_80();
    l0 = self.box_NarrativeSceneCleanUp_55;
    l1 = self.box_Delay_v5_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1692825095", "1692825095", "I4_VetCentre_OnlyYou", "box_NarrativeSceneCleanUp_55.Out", "box_Delay_v5_80.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_NarrativeSceneCleanUp_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_73();
    l0 = self.box_NarrativeSceneCleanUp_9;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1644633303", "1644633303", "I4_VetCentre_OnlyYou", "box_NarrativeSceneCleanUp_9.Out", "box_SetContextualStrategy_73.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|@disableFX");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_66_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|@disableInCarFX");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_75_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|@disableListeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_67_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|@StopAll");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|@StopMusic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_15_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_39()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayers,
        -- id2,
        [3] = "2104660617932585887",
        -- nearZone,
        [4] = 100,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|55516295");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_43_Completed,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_43_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015202450425149",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_61()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104660617932585887",
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|102296465");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_79_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A21DD84E",
        -- PawnGroup,
        [1] = "#09700312",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_78()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_44()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "jacobmusicbox",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|205780254");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_77_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104854646890699132",
        -- Group,
        [1] = "#A21DD84E",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|258412669");
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

function export:OnEnter_box_PositionModifier_v2_42()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = self.Player,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101093905681384112",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|298830819");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_76_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104854646355925370",
        -- Group,
        [1] = "#09700312",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|304074958");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_38_Out,
    });
    params = {
        -- Group,
        [1] = "#A21DD84E",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|337072813");
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

function export:OnEnter_box_NarrativeSceneSetup_19()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|417053725");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_73_Out,
    });
    params = {
        -- Group,
        [1] = "#09700312",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_80()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_71()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|523284675");
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
                [0] = self.f_box_OutputOrder_v2_64_Out_0,
                [1] = self.f_box_OutputOrder_v2_64_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_81()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|574664471");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_69_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_69_True,
    });
    params = {
        -- entityId,
        [0] = "2104854646355925370",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|585316883");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_52_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_52_True,
    });
    params = {
        -- entityId,
        [0] = "2104854646355925370",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|611381947");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_58_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104854646890699132",
        -- Group,
        [1] = "#A21DD84E",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_53()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|672188402");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|766934085");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_3_Completed,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_3_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015213435504334",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|772650897");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_51()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.05,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|844745628");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_23_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_23_True,
    });
    params = {
        -- entityId,
        [0] = "2104854646890699132",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_13()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ExoticPlayerKidnapConditionCheck_45()
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

function export:OnEnter_box_Simple_Node_37()
    local params, l0;
    DrawTextToScreen("Comment: teleport ouf of vehicle here", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: teleport ouf of vehicle here");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|949338596");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_40()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "jacobplayercaptureaction",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1017179595");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_2_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1049154119");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
                [2] = self.f_box_OutputOrder_v2_56_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1062644720");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_62_Completed,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_62_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015213435420259",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_27()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 1,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3074360545",
        -- StopEvent,
        [7] = "2430786186",
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

function export:OnEnter_box_GetActivityState_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1274230672");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_49_Completed,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_49_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015248886595931",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_8()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayers,
        -- farZone,
        [2] = 180,
        -- id2,
        [3] = "2104660617932585887",
        -- nearZone,
        [4] = 160,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_33()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "2105835657218768268",
        -- Destination,
        [1] = "2105835654142246280",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1314869586");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_54_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1333571282");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_65_Out,
    });
    params = {
        -- Group,
        [1] = "#09700312",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1393075654");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_30()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 2,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3074360545",
        -- StopEvent,
        [7] = "2430786186",
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

function export:OnEnter_box_Print_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1411446516");
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

function export:OnEnter_box_Delay_v5_82()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1475532327");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_47_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104854646355925370",
        -- Group,
        [1] = "#09700312",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_70()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayers,
        -- id2,
        [3] = "2104660617932585887",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1579986622");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_72_Out,
    });
    params = {
        -- Group,
        [1] = "#A21DD84E",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1659222186");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_50_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1681361179");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_74_True,
    });
    params = {
        -- entityId,
        [0] = "2104854646890699132",
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
        [2] = "2101093905681384112",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_1()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "jacobmusicbox",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_68()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|1866689939");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_10_Completed,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_10_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015221228520992",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|2001737985");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_28()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2101093905681384112",
        -- SequenceFile,
        [4] = "sequences/zeta_main/cin_lt02_030_playercapture/cin_lt02_030_playercapture.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|2019385550");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_31_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A21DD84E",
        -- PawnGroup,
        [1] = "#09700312",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_12()
    local params, l0;
    DrawTextToScreen("Comment: deal with GFH here", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: deal with GFH here");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\I4_VetCentre_OnlyYou.domino|@I4_VetCentre_OnlyYou|2067992299");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_63()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "2105835657218768268",
        -- Destination,
        [1] = "2105835654142246280",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_55()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGodMode,
        [1] = false,
        -- KeepHUDMode,
        [2] = false,
        -- KeepWeaponHolstered,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_9()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGodMode,
        [1] = false,
        -- KeepHUDMode,
        [2] = false,
        -- KeepWeaponHolstered,
        [3] = false,
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.Player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayers = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="CenterScene_HardCapture" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
