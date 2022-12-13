LUAC+ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_015/lt01_015_b10.domino
-- User graph: LT01_015_B10
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/ExtinguishAllFires.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/LeashOverride.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayerExtinguishFire_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_015/LT01_015_B10.Petals_Manager.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1828168742.bnk]], "CSoundResource");
        cboxRes:LoadResource([[323211064.bnk]], "CSoundResource");
        cboxRes:LoadResource([[777406595.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_015/LT01_015_B10.LT01_015_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua")] = {
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
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "b_CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "b_EntityIsProximityTrigger",
                type = "bool",
            },
            [2] = {
                name = "b_SkipObjectiveFlow",
                type = "bool",
            },
            [3] = {
                name = "e_EntityToInteractWith",
                type = "entity",
            },
            [4] = {
                name = "e_ObjectiveMarker",
                type = "entity",
            },
            [5] = {
                name = "InteractionHUD",
                type = "oasis",
            },
            [6] = {
                name = "o_ObjectiveText",
                type = "oasis",
            },
        },
        dataInCount = 7,
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
    metadataTable[GetPathID("Domino/System/ExtinguishAllFires.lua")] = {
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
    metadataTable[GetPathID("Domino/System/LeashOverride.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableDefaultLeash",
            },
            [1] = {
                name = "EnableDefaultLeash",
            },
            [2] = {
                name = "RemoveCustomLeash",
            },
            [3] = {
                name = "UseCustomLeash",
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
                name = "LeashCreated",
                delayed = false,
            },
            [3] = {
                name = "LeashRemoved",
                delayed = false,
            },
            [4] = {
                name = "OnLeashBroken",
                delayed = true,
            },
            [5] = {
                name = "OnLeashFinalWarning",
                delayed = true,
            },
            [6] = {
                name = "OnLeashWarning",
                delayed = true,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "CustomLeashDistance",
                type = "float",
            },
            [1] = {
                name = "CustomLeashFinalWarningDistance",
                type = "float",
            },
            [2] = {
                name = "CustomLeashWarningDistance",
                type = "float",
            },
            [3] = {
                name = "WarningText",
                type = "oasis",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "PlayerToTeleport",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Player/PlayerExtinguishFire_v2.lua")] = {
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
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/TriggerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsUnusable",
            },
            [1] = {
                name = "SetAsUsable",
            },
            [2] = {
                name = "SetDisabled",
            },
            [3] = {
                name = "SetEnabled",
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
                name = "OnSetUnusable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUsable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "CheckAngle",
                type = "bool",
            },
            [1] = {
                name = "CheckLookAt",
                type = "bool",
            },
            [2] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_015/LT01_015_B10.Petals_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start_PetalsScopo",
            },
            [1] = {
                name = "Stop_PetalsScopo",
            },
        },
        controlInCount = 2,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "SFX_PetalsScopo",
                type = "entity",
            },
            [1] = {
                name = "VFX_PetalsScopo",
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
    self._name = "LT01_015_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10";
    self.Player1 = nil;
    self.Players = nil;
    self.box_ProximityRadiusListener_v3_49 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|14784183");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_49_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_61 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|15141141");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_61_SomeoneNear,
    });
    self.box_Petals_Manager_40 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_015/LT01_015_B10.Petals_Manager.debug.lua");
    l0 = self.box_Petals_Manager_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Petals_Manager_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|40684562");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_31 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|45163480");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_31_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_48 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|82380679");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_48_SomeoneNear,
    });
    self.box_Petals_Manager_54 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_015/LT01_015_B10.Petals_Manager.debug.lua");
    l0 = self.box_Petals_Manager_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Petals_Manager_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|103062572");
    l0:SetConnections({
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|145682711");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_Music_Quest_v2_65 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|167463008");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_42 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|186274990");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_42_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_41 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|219008160");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_41_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_44 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|247918047");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_44_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_52 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|582594940");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_52_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_55 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|680006964");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_55_SomeoneNear,
    });
    self.box_LeashOverride_70 = cbox:CreateBox("Domino/System/LeashOverride.lua");
    l0 = self.box_LeashOverride_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LeashOverride_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|749975042");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LeashOverride_70_Disabled,
    });
    self.box_ProximityRadiusListener_v3_21 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|781851657");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_21_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_22 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|825847514");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_22_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_38 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|825900174");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_38_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_26 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|868113514");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_26_SomeoneNear,
    });
    self.box_SoundModifier_v2_73 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|896977306");
    l0:SetConnections({
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|911092626");
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_ProximityRadiusListener_v3_37 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|951918282");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_37_SomeoneNear,
    });
    self.box_Petals_Manager_32 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_015/LT01_015_B10.Petals_Manager.debug.lua");
    l0 = self.box_Petals_Manager_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Petals_Manager_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1037331356");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_57 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1047514881");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_57_Holstered,
    });
    self.box_Petals_Manager_46 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_015/LT01_015_B10.Petals_Manager.debug.lua");
    l0 = self.box_Petals_Manager_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Petals_Manager_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1074421243");
    l0:SetConnections({
    });
    self.box_Brick_Interact_With_Object_V5_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1167980049");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_17_Success,
    });
    self.box_ProximityRadiusListener_v3_66 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1227278802");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_66_AllNear,
    });
    self.box_ProximityRadiusListener_v3_58 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1257353727");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_58_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_28 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1275247601");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_28_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_56 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1287976771");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_56_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_30 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1438299347");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_30_SomeoneNear,
    });
    self.box_SpawnAI_63 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1447283799");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_7 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1447653633");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_7_Out,
    });
    self.box_Petals_Manager_53 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_015/LT01_015_B10.Petals_Manager.debug.lua");
    l0 = self.box_Petals_Manager_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Petals_Manager_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1528982370");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_51 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1580551598");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_51_SomeoneNear,
    });
    self.box_NarrativeFade_3 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1592964296");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_3_FadedOut,
    });
    self.box_Petals_Manager_27 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_015/LT01_015_B10.Petals_Manager.debug.lua");
    l0 = self.box_Petals_Manager_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Petals_Manager_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1615444990");
    l0:SetConnections({
    });
    self.box_Petals_Manager_39 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_015/LT01_015_B10.Petals_Manager.debug.lua");
    l0 = self.box_Petals_Manager_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Petals_Manager_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1651472957");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_45 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1720415888");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_45_SomeoneNear,
    });
    self.box_Petals_Manager_64 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_015/LT01_015_B10.Petals_Manager.debug.lua");
    l0 = self.box_Petals_Manager_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Petals_Manager_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1863314474");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1905110154");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_Petals_Manager_20 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_015/LT01_015_B10.Petals_Manager.debug.lua");
    l0 = self.box_Petals_Manager_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Petals_Manager_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1945257431");
    l0:SetConnections({
    });
    self.box_Petals_Manager_43 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_015/LT01_015_B10.Petals_Manager.debug.lua");
    l0 = self.box_Petals_Manager_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Petals_Manager_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|2043146813");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_2 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|2081317366");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_2_SomeoneNear,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|144053125", "144053125", "LT01_015_B10", "In", "box_OutputOrder_v2_14.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_75();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|597084745", "597084745", "LT01_015_B10", "OnLeaveZone", "box_Simple_Node_75.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|935250008", "935250008", "LT01_015_B10", "box_Simple_Node_33.Out", "box_OutputOrder_v2_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|235380039", "235380039", "LT01_015_B10", "box_Simple_Node_33.Out", "box_OutputOrder_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_75_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_65();
    l0 = self.box_Music_Quest_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1913633902", "1913633902", "LT01_015_B10", "box_Simple_Node_75.Out", "box_Music_Quest_v2_65.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_ActivityRetry_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|320756046", "320756046", "LT01_015_B10", "box_Simple_Node_75.Out", "box_ActivityRetry_4.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_49_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_46();
    l0 = self.box_ProximityRadiusListener_v3_49;
    l1 = self.box_Petals_Manager_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|117985853", "117985853", "LT01_015_B10", "box_ProximityRadiusListener_v3_49.SomeoneNear", "box_Petals_Manager_46.Stop_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop_PetalsScopo
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_61_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_53();
    l0 = self.box_ProximityRadiusListener_v3_61;
    l1 = self.box_Petals_Manager_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|698670757", "698670757", "LT01_015_B10", "box_ProximityRadiusListener_v3_61.SomeoneNear", "box_Petals_Manager_53.Stop_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop_PetalsScopo
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_31_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_27();
    l0 = self.box_ProximityRadiusListener_v3_31;
    l1 = self.box_Petals_Manager_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1048941952", "1048941952", "LT01_015_B10", "box_ProximityRadiusListener_v3_31.SomeoneNear", "box_Petals_Manager_27.Stop_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop_PetalsScopo
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_48_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_54();
    l0 = self.box_ProximityRadiusListener_v3_48;
    l1 = self.box_Petals_Manager_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1091915794", "1091915794", "LT01_015_B10", "box_ProximityRadiusListener_v3_48.SomeoneNear", "box_Petals_Manager_54.Stop_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop_PetalsScopo
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_Delay_v5_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|453170107", "453170107", "LT01_015_B10", "box_Delay_v5_12.TimeElapsed", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_42();
    l0 = self.box_ProximityRadiusListener_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1130055933", "1130055933", "LT01_015_B10", "box_OutputOrder_v2_35.Out", "box_ProximityRadiusListener_v3_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_41();
    l0 = self.box_ProximityRadiusListener_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|212181004", "212181004", "LT01_015_B10", "box_OutputOrder_v2_35.Out", "box_ProximityRadiusListener_v3_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_42_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_39();
    l0 = self.box_ProximityRadiusListener_v3_42;
    l1 = self.box_Petals_Manager_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|171446540", "171446540", "LT01_015_B10", "box_ProximityRadiusListener_v3_42.SomeoneNear", "box_Petals_Manager_39.Start_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start_PetalsScopo
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_11_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|788082902", "788082902", "LT01_015_B10", "box_GetPlayerGroup_v2_11.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_41_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_39();
    l0 = self.box_ProximityRadiusListener_v3_41;
    l1 = self.box_Petals_Manager_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1197366594", "1197366594", "LT01_015_B10", "box_ProximityRadiusListener_v3_41.SomeoneNear", "box_Petals_Manager_39.Stop_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop_PetalsScopo
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_44_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_40();
    l0 = self.box_ProximityRadiusListener_v3_44;
    l1 = self.box_Petals_Manager_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1284307033", "1284307033", "LT01_015_B10", "box_ProximityRadiusListener_v3_44.SomeoneNear", "box_Petals_Manager_40.Start_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start_PetalsScopo
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_58();
    l0 = self.box_ProximityRadiusListener_v3_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1414649628", "1414649628", "LT01_015_B10", "box_OutputOrder_v2_60.Out", "box_ProximityRadiusListener_v3_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_51();
    l0 = self.box_ProximityRadiusListener_v3_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|693795000", "693795000", "LT01_015_B10", "box_OutputOrder_v2_60.Out", "box_ProximityRadiusListener_v3_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1646874177", "1646874177", "LT01_015_B10", "box_OutputOrder_v2_14.Out", "box_Print_v2_9.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1160027841", "1160027841", "LT01_015_B10", "box_OutputOrder_v2_14.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_56();
    l0 = self.box_ProximityRadiusListener_v3_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1842634502", "1842634502", "LT01_015_B10", "box_OutputOrder_v2_62.Out", "box_ProximityRadiusListener_v3_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_61();
    l0 = self.box_ProximityRadiusListener_v3_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1370104578", "1370104578", "LT01_015_B10", "box_OutputOrder_v2_62.Out", "box_ProximityRadiusListener_v3_61.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_52_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_54();
    l0 = self.box_ProximityRadiusListener_v3_52;
    l1 = self.box_Petals_Manager_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|536687126", "536687126", "LT01_015_B10", "box_ProximityRadiusListener_v3_52.SomeoneNear", "box_Petals_Manager_54.Start_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start_PetalsScopo
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_17();
    l0 = self.box_Brick_Interact_With_Object_V5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1297996069", "1297996069", "LT01_015_B10", "box_OutputOrder_v2_13.Out", "box_Brick_Interact_With_Object_V5_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_63();
    l0 = self.box_SpawnAI_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|747279400", "747279400", "LT01_015_B10", "box_OutputOrder_v2_13.Out", "box_SpawnAI_63.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1907102937", "1907102937", "LT01_015_B10", "box_OutputOrder_v2_13.Out", "box_Simple_Node_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_2();
    l0 = self.box_ProximityRadiusListener_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1670495629", "1670495629", "LT01_015_B10", "box_OutputOrder_v2_13.Out", "box_ProximityRadiusListener_v3_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_65();
    l0 = self.box_Music_Quest_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|691222148", "691222148", "LT01_015_B10", "box_OutputOrder_v2_13.Out", "box_Music_Quest_v2_65.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_66();
    l0 = self.box_ProximityRadiusListener_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|264959457", "264959457", "LT01_015_B10", "box_OutputOrder_v2_13.Out", "box_ProximityRadiusListener_v3_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_55_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_46();
    l0 = self.box_ProximityRadiusListener_v3_55;
    l1 = self.box_Petals_Manager_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|633121655", "633121655", "LT01_015_B10", "box_ProximityRadiusListener_v3_55.SomeoneNear", "box_Petals_Manager_46.Start_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start_PetalsScopo
    l1:Exec(0, params);
end;

function export:f_box_LeashOverride_70_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_3();
    l0 = self.box_LeashOverride_70;
    l1 = self.box_NarrativeFade_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1624028432", "1624028432", "LT01_015_B10", "box_LeashOverride_70.Disabled", "box_NarrativeFade_3.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_21_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_43();
    l0 = self.box_ProximityRadiusListener_v3_21;
    l1 = self.box_Petals_Manager_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|996913063", "996913063", "LT01_015_B10", "box_ProximityRadiusListener_v3_21.SomeoneNear", "box_Petals_Manager_43.Start_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start_PetalsScopo
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_22_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_43();
    l0 = self.box_ProximityRadiusListener_v3_22;
    l1 = self.box_Petals_Manager_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|788536623", "788536623", "LT01_015_B10", "box_ProximityRadiusListener_v3_22.SomeoneNear", "box_Petals_Manager_43.Stop_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop_PetalsScopo
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_38_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_32();
    l0 = self.box_ProximityRadiusListener_v3_38;
    l1 = self.box_Petals_Manager_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1248279066", "1248279066", "LT01_015_B10", "box_ProximityRadiusListener_v3_38.SomeoneNear", "box_Petals_Manager_32.Start_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start_PetalsScopo
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_26_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_20();
    l0 = self.box_ProximityRadiusListener_v3_26;
    l1 = self.box_Petals_Manager_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1067307255", "1067307255", "LT01_015_B10", "box_ProximityRadiusListener_v3_26.SomeoneNear", "box_Petals_Manager_20.Stop_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop_PetalsScopo
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_30();
    l0 = self.box_ProximityRadiusListener_v3_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|535199197", "535199197", "LT01_015_B10", "box_OutputOrder_v2_29.Out", "box_ProximityRadiusListener_v3_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_31();
    l0 = self.box_ProximityRadiusListener_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1600875891", "1600875891", "LT01_015_B10", "box_OutputOrder_v2_29.Out", "box_ProximityRadiusListener_v3_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_10_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_10;
    l1 = self.box_ActivityInitialized_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1468980928", "1468980928", "LT01_015_B10", "box_MultipleOR_10.Out", "box_ActivityInitialized_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_52();
    l0 = self.box_ProximityRadiusListener_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1856859983", "1856859983", "LT01_015_B10", "box_OutputOrder_v2_47.Out", "box_ProximityRadiusListener_v3_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_48();
    l0 = self.box_ProximityRadiusListener_v3_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1499638414", "1499638414", "LT01_015_B10", "box_OutputOrder_v2_47.Out", "box_ProximityRadiusListener_v3_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_37_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_32();
    l0 = self.box_ProximityRadiusListener_v3_37;
    l1 = self.box_Petals_Manager_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|531689644", "531689644", "LT01_015_B10", "box_ProximityRadiusListener_v3_37.SomeoneNear", "box_Petals_Manager_32.Stop_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop_PetalsScopo
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_21();
    l0 = self.box_ProximityRadiusListener_v3_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1723311981", "1723311981", "LT01_015_B10", "box_OutputOrder_v2_23.Out", "box_ProximityRadiusListener_v3_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_22();
    l0 = self.box_ProximityRadiusListener_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1123049952", "1123049952", "LT01_015_B10", "box_OutputOrder_v2_23.Out", "box_ProximityRadiusListener_v3_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|610035500", "610035500", "LT01_015_B10", "box_OutputOrder_v2_25.Out", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|731271693", "731271693", "LT01_015_B10", "box_OutputOrder_v2_25.Out", "box_OutputOrder_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|2073515670", "2073515670", "LT01_015_B10", "box_OutputOrder_v2_25.Out", "box_OutputOrder_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|695353738", "695353738", "LT01_015_B10", "box_OutputOrder_v2_25.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|63301598", "63301598", "LT01_015_B10", "box_OutputOrder_v2_25.Out", "box_OutputOrder_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|356215320", "356215320", "LT01_015_B10", "box_OutputOrder_v2_25.Out", "box_OutputOrder_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_57_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_LeashOverride_70();
    l0 = self.box_NarrativeSceneSetup_57;
    l1 = self.box_LeashOverride_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|2004256310", "2004256310", "LT01_015_B10", "box_NarrativeSceneSetup_57.Holstered", "box_LeashOverride_70.DisableDefaultLeash", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableDefaultLeash
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_38();
    l0 = self.box_ProximityRadiusListener_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|213674633", "213674633", "LT01_015_B10", "box_OutputOrder_v2_34.Out", "box_ProximityRadiusListener_v3_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_37();
    l0 = self.box_ProximityRadiusListener_v3_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|75821722", "75821722", "LT01_015_B10", "box_OutputOrder_v2_34.Out", "box_ProximityRadiusListener_v3_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Interact_With_Object_V5_17_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_72();
    l0 = self.box_Brick_Interact_With_Object_V5_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1339983314", "1339983314", "LT01_015_B10", "box_Brick_Interact_With_Object_V5_17.Success", "box_OutputOrder_v2_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_66_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerExtinguishFire_v2_71();
    l0 = self.box_ProximityRadiusListener_v3_66;
    l1 = Boxes[GetPathID("Domino/System/Player/PlayerExtinguishFire_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|181083828", "181083828", "LT01_015_B10", "box_ProximityRadiusListener_v3_66.AllNear", "box_PlayerExtinguishFire_v2_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_58_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_64();
    l0 = self.box_ProximityRadiusListener_v3_58;
    l1 = self.box_Petals_Manager_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|186106225", "186106225", "LT01_015_B10", "box_ProximityRadiusListener_v3_58.SomeoneNear", "box_Petals_Manager_64.Start_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start_PetalsScopo
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_44();
    l0 = self.box_ProximityRadiusListener_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1599253690", "1599253690", "LT01_015_B10", "box_OutputOrder_v2_36.Out", "box_ProximityRadiusListener_v3_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_45();
    l0 = self.box_ProximityRadiusListener_v3_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|688469694", "688469694", "LT01_015_B10", "box_OutputOrder_v2_36.Out", "box_ProximityRadiusListener_v3_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_28_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_20();
    l0 = self.box_ProximityRadiusListener_v3_28;
    l1 = self.box_Petals_Manager_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|474725104", "474725104", "LT01_015_B10", "box_ProximityRadiusListener_v3_28.SomeoneNear", "box_Petals_Manager_20.Start_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start_PetalsScopo
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_56_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_53();
    l0 = self.box_ProximityRadiusListener_v3_56;
    l1 = self.box_Petals_Manager_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1138931480", "1138931480", "LT01_015_B10", "box_ProximityRadiusListener_v3_56.SomeoneNear", "box_Petals_Manager_53.Start_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start_PetalsScopo
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_30_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_27();
    l0 = self.box_ProximityRadiusListener_v3_30;
    l1 = self.box_Petals_Manager_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|943468097", "943468097", "LT01_015_B10", "box_ProximityRadiusListener_v3_30.SomeoneNear", "box_Petals_Manager_27.Start_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start_PetalsScopo
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_69();
    l0 = self.box_ActivityInitialized_7;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|460705860", "460705860", "LT01_015_B10", "box_ActivityInitialized_7.Out", "box_BroadcastMessage_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1413622169", "1413622169", "LT01_015_B10", "box_OutputOrder_v2_59.Out", "box_OutputOrder_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1830299423", "1830299423", "LT01_015_B10", "box_OutputOrder_v2_59.Out", "box_OutputOrder_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|169324760", "169324760", "LT01_015_B10", "box_OutputOrder_v2_59.Out", "box_OutputOrder_v2_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1994220953", "1994220953", "LT01_015_B10", "box_OutputOrder_v2_59.Out", "box_OutputOrder_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_51_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_64();
    l0 = self.box_ProximityRadiusListener_v3_51;
    l1 = self.box_Petals_Manager_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|898007871", "898007871", "LT01_015_B10", "box_ProximityRadiusListener_v3_51.SomeoneNear", "box_Petals_Manager_64.Stop_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop_PetalsScopo
    l1:Exec(1, params);
end;

function export:f_box_NarrativeFade_3_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = self.box_NarrativeFade_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|2064293986", "2064293986", "LT01_015_B10", "box_NarrativeFade_3.FadedOut", "box_OutputOrder_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerExtinguishFire_v2_71_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/PlayerExtinguishFire_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExtinguishAllFires_67();
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|436307841", "436307841", "LT01_015_B10", "box_PlayerExtinguishFire_v2_71.Out", "box_ExtinguishAllFires_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_45_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Petals_Manager_40();
    l0 = self.box_ProximityRadiusListener_v3_45;
    l1 = self.box_Petals_Manager_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1600560485", "1600560485", "LT01_015_B10", "box_ProximityRadiusListener_v3_45.SomeoneNear", "box_Petals_Manager_40.Stop_PetalsScopo", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop_PetalsScopo
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_28();
    l0 = self.box_ProximityRadiusListener_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1528365193", "1528365193", "LT01_015_B10", "box_OutputOrder_v2_24.Out", "box_ProximityRadiusListener_v3_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_26();
    l0 = self.box_ProximityRadiusListener_v3_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|706470029", "706470029", "LT01_015_B10", "box_OutputOrder_v2_24.Out", "box_ProximityRadiusListener_v3_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_15_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_8();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1984781138", "1984781138", "LT01_015_B10", "box_MissionBlockLayer_15.Disabled", "box_TriggerState_v2_8.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1231823224", "1231823224", "LT01_015_B10", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1619541117", "1619541117", "LT01_015_B10", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_5();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1608891333", "1608891333", "LT01_015_B10", "box_OutputOrder_v2_16.Out", "box_MissionBlockLayer_5.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_15();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|868962181", "868962181", "LT01_015_B10", "box_OutputOrder_v2_16.Out", "box_MissionBlockLayer_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_1();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|473313987", "473313987", "LT01_015_B10", "box_OutputOrder_v2_16.Out", "box_ActivityEnd_1.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_69_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_11();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|109502082", "109502082", "LT01_015_B10", "box_BroadcastMessage_69.Out", "box_GetPlayerGroup_v2_11.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_55();
    l0 = self.box_ProximityRadiusListener_v3_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|684870980", "684870980", "LT01_015_B10", "box_OutputOrder_v2_50.Out", "box_ProximityRadiusListener_v3_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_49();
    l0 = self.box_ProximityRadiusListener_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|182200293", "182200293", "LT01_015_B10", "box_OutputOrder_v2_50.Out", "box_ProximityRadiusListener_v3_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_73();
    l0 = self.box_SoundModifier_v2_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|94018537", "94018537", "LT01_015_B10", "box_OutputOrder_v2_74.Out", "box_SoundModifier_v2_73.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|2033125744", "2033125744", "LT01_015_B10", "box_OutputOrder_v2_74.Out", "box_Delay_v5_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_72_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerExtinguishFire_v2_68();
    l0 = Boxes[GetPathID("Domino/System/Player/PlayerExtinguishFire_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1123376128", "1123376128", "LT01_015_B10", "box_OutputOrder_v2_72.Out", "box_PlayerExtinguishFire_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_72_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_66();
    l0 = self.box_ProximityRadiusListener_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|430511444", "430511444", "LT01_015_B10", "box_OutputOrder_v2_72.Out", "box_ProximityRadiusListener_v3_66.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_2_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_18();
    l0 = self.box_ProximityRadiusListener_v3_2;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1324335418", "1324335418", "LT01_015_B10", "box_ProximityRadiusListener_v3_2.SomeoneNear", "box_SetContextualStrategy_18.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerExtinguishFire_v2_68_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/PlayerExtinguishFire_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneSetup_57();
    l0 = self.box_NarrativeSceneSetup_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1178353499", "1178353499", "LT01_015_B10", "box_PlayerExtinguishFire_v2_68.Out", "box_NarrativeSceneSetup_57.HolsterWeapon", clone:GetLuaBox(), l0:GetLuaBox());
    -- HolsterWeapon
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|@n_FXScopoPetals");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_33_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|@n_OnLeaveZone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_75_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_49()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103995514570699692",
        -- nearZone,
        [4] = 4,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_61()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103995518930678704",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Petals_Manager_40()
    local params;
    params = {
        -- SFX_PetalsScopo,
        [0] = "2104829293925243187",
        -- VFX_PetalsScopo,
        [1] = "2103995512123323306",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103123469381188417",
        -- nearZone,
        [4] = 4,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_48()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103995520583234482",
        -- nearZone,
        [4] = 4,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Petals_Manager_54()
    local params;
    params = {
        -- SFX_PetalsScopo,
        [0] = "2104829254979033370",
        -- VFX_PetalsScopo,
        [1] = "2103995520583234482",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|156255329");
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

function export:OnEnter_box_Music_Quest_v2_65()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 9,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "323211064",
        -- StopEvent,
        [7] = "1828168742",
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

function export:OnEnter_box_ProximityRadiusListener_v3_42()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103995510479156136",
        -- nearZone,
        [4] = 12,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|202664836");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_41()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103995510479156136",
        -- nearZone,
        [4] = 4,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_44()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103995512123323306",
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|252094914");
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

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|319432144");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|322492543");
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

function export:OnEnter_box_ProximityRadiusListener_v3_52()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103995520583234482",
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|638812545");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
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
                [2] = self.f_box_OutputOrder_v2_13_Out_2,
                [3] = self.f_box_OutputOrder_v2_13_Out_3,
                [4] = self.f_box_OutputOrder_v2_13_Out_4,
                [5] = self.f_box_OutputOrder_v2_13_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103995514570699692",
        -- nearZone,
        [4] = 12,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_LeashOverride_70()
    local params;
    params = {
        -- CustomLeashDistance,
        [0] = 150,
        -- CustomLeashWarningDistance,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103123471094561603",
        -- nearZone,
        [4] = 12,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_22()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103123471094561603",
        -- nearZone,
        [4] = 4,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103995508249883558",
        -- nearZone,
        [4] = 16,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_26()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103123472027794245",
        -- nearZone,
        [4] = 4,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|883376941");
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

function export:OnEnter_box_SoundModifier_v2_73()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "777406595",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|915804470");
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

function export:OnEnter_box_ProximityRadiusListener_v3_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103995508249883558",
        -- nearZone,
        [4] = 4,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|952784053");
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

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|961407391");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
                [2] = self.f_box_OutputOrder_v2_25_Out_2,
                [3] = self.f_box_OutputOrder_v2_25_Out_3,
                [4] = self.f_box_OutputOrder_v2_25_Out_4,
                [5] = self.f_box_OutputOrder_v2_25_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Petals_Manager_32()
    local params;
    params = {
        -- SFX_PetalsScopo,
        [0] = "2104829285079456047",
        -- VFX_PetalsScopo,
        [1] = "2103995508249883558",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_57()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Petals_Manager_46()
    local params;
    params = {
        -- SFX_PetalsScopo,
        [0] = "2104828903603332257",
        -- VFX_PetalsScopo,
        [1] = "2103995514570699692",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1128068764");
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

function export:OnEnter_box_Brick_Interact_With_Object_V5_17()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = true,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- b_SkipObjectiveFlow,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2099974512970859935",
        -- e_ObjectiveMarker,
        [4] = "2099907929785244360",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "LT01_015_B10_Reach",
            id = "467376",
        },
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1204680487");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_66()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2099974512970859935",
        -- nearZone,
        [4] = 10,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_58()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103995518345573294",
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1257537028");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2099974512970859935",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1263973282");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1270396912");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103967643204630729",
        -- Group,
        [1] = "#D9BA2A48",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_28()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103123472027794245",
        -- nearZone,
        [4] = 12,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_56()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103995518930678704",
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103123469381188417",
        -- nearZone,
        [4] = 12,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_63()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103982542752342528",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1466406148");
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

function export:OnEnter_box_MissionBlockLayer_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1493712212");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "18152971811731204",
        -- missionLayerId,
        [1] = "27160171066472197",
    };
    return params;
end;

function export:OnEnter_box_Petals_Manager_53()
    local params;
    params = {
        -- SFX_PetalsScopo,
        [0] = "2104829247743858968",
        -- VFX_PetalsScopo,
        [1] = "2103995518930678704",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1566855805");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1568965731");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
                [1] = self.f_box_OutputOrder_v2_59_Out_1,
                [2] = self.f_box_OutputOrder_v2_59_Out_2,
                [3] = self.f_box_OutputOrder_v2_59_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1569699809");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "---- LT01_015_B10 ---- SCRIPT IS RUNNING",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103995518345573294",
        -- nearZone,
        [4] = 4,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_3()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Petals_Manager_27()
    local params;
    params = {
        -- SFX_PetalsScopo,
        [0] = "2104829266196699427",
        -- VFX_PetalsScopo,
        [1] = "2103123469381188417",
    };
    return params;
end;

function export:OnEnter_box_PlayerExtinguishFire_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/PlayerExtinguishFire_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerExtinguishFire_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1637434289");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_PlayerExtinguishFire_v2_71_Out,
    });
    params = {
        -- pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Petals_Manager_39()
    local params;
    params = {
        -- SFX_PetalsScopo,
        [0] = "2104829270774782247",
        -- VFX_PetalsScopo,
        [1] = "2103995510479156136",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_45()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103995512123323306",
        -- nearZone,
        [4] = 4,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Petals_Manager_64()
    local params;
    params = {
        -- SFX_PetalsScopo,
        [0] = "2104829238176651542",
        -- VFX_PetalsScopo,
        [1] = "2103995518345573294",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1865268567");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1892407394");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_15_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "18152984144778381",
        -- missionLayerId,
        [1] = "27160221132098211",
    };
    return params;
end;

function export:OnEnter_box_Petals_Manager_20()
    local params;
    params = {
        -- SFX_PetalsScopo,
        [0] = "2104829273511565611",
        -- VFX_PetalsScopo,
        [1] = "2103123472027794245",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|1993833994");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|2014161867");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_69_Out,
    });
    params = {
        -- Message,
        [0] = "JukeBox_Disable_And_Stop",
    };
    return params;
end;

function export:OnEnter_box_Petals_Manager_43()
    local params;
    params = {
        -- SFX_PetalsScopo,
        [0] = "2104828906023445669",
        -- VFX_PetalsScopo,
        [1] = "2103123471094561603",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|2049072117");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|2055023630");
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
                [0] = self.f_box_OutputOrder_v2_74_Out_0,
                [1] = self.f_box_OutputOrder_v2_74_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|2081175810");
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

function export:OnEnter_box_ProximityRadiusListener_v3_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103967581344938085",
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayerExtinguishFire_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/PlayerExtinguishFire_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerExtinguishFire_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_015\\LT01_015_B10.domino|@LT01_015_B10|2102073607");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_PlayerExtinguishFire_v2_68_Out,
    });
    params = {
        -- pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
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
