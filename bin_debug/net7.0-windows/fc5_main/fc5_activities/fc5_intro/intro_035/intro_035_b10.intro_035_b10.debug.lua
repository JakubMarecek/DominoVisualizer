LUAC�s -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_035/intro_035_b10.domino
-- User graph: INTRO_035_B10
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
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetMissionLayerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility.lua");
        
        -- Load resources
        cboxRes:LoadResource([[965122731.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2248944541.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2892310692.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_035/INTRO_035_B10.INTRO_035_B10.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeavingZone",
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
    metadataTable[GetPathID("Domino/System/GetMissionLayerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
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
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Narrative/StartMetaSequence.lua")] = {
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
            [0] = {
                name = "ID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Interrupt",
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
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ContextFlags",
                type = "list",
            },
            [1] = {
                name = "ID",
                type = "int",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/PhoneCallExclusivityModifier.lua")] = {
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
    metadataTable[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "AreaMessage",
            },
            [1] = {
                name = "Cinematic",
            },
            [2] = {
                name = "Compass",
            },
            [3] = {
                name = "DetectionMeter",
            },
            [4] = {
                name = "EnergyGauge",
            },
            [5] = {
                name = "Health",
            },
            [6] = {
                name = "HelmetMask",
            },
            [7] = {
                name = "Hiring",
            },
            [8] = {
                name = "HudActivityStatus",
            },
            [9] = {
                name = "HudAutodriveStatus",
            },
            [10] = {
                name = "HudChallenge",
            },
            [11] = {
                name = "HudDiscovery",
            },
            [12] = {
                name = "HudGunsForHire",
            },
            [13] = {
                name = "HudHint",
            },
            [14] = {
                name = "HudLocationDiscovery",
            },
            [15] = {
                name = "HudNewCharacterDiscovery",
            },
            [16] = {
                name = "HudNotifGFH",
            },
            [17] = {
                name = "HudNotificationsQueue",
            },
            [18] = {
                name = "HudNotificationsQueueCenterMessage",
            },
            [19] = {
                name = "HudNotificationsQueueDiscovery",
            },
            [20] = {
                name = "HudNotificationsQueueGMS",
            },
            [21] = {
                name = "HudNotificationsQueuePlayerPoints",
            },
            [22] = {
                name = "HudNotificationsQueueWarning",
            },
            [23] = {
                name = "HudObjective",
            },
            [24] = {
                name = "HudObjectiveRewards",
            },
            [25] = {
                name = "HudOpenWorld",
            },
            [26] = {
                name = "HudOutpostSuccess",
            },
            [27] = {
                name = "HudPerkPoints",
            },
            [28] = {
                name = "HudSurvivalInstinct",
            },
            [29] = {
                name = "Interaction",
            },
            [30] = {
                name = "Looting",
            },
            [31] = {
                name = "MissionGiver",
            },
            [32] = {
                name = "ObjectiveProgress",
            },
            [33] = {
                name = "ObjectiveTracked",
            },
            [34] = {
                name = "PlayerBuffs",
            },
            [35] = {
                name = "RepairBar",
            },
            [36] = {
                name = "Reputation",
            },
            [37] = {
                name = "Reticle",
            },
            [38] = {
                name = "Tag",
            },
            [39] = {
                name = "TopCenterTimer",
            },
            [40] = {
                name = "Tutorial",
            },
        },
        controlInCount = 41,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "disableUI",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/OverrideMenuAccessibility.lua")] = {
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
                name = "LootMenuEnabled",
                type = "bool",
            },
            [5] = {
                name = "OnlineMenuEnabled",
                type = "bool",
            },
            [6] = {
                name = "PerksMenuEnabled",
                type = "bool",
            },
            [7] = {
                name = "ResistanceMenuEnabled",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "INTRO_035_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10";
    self.gPlayerGroup = nil;
    self.MetaSequenceID = 0;
    self.gPlayer = nil;
    self.box_MultipleAND_v2_27 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|59807816");
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
        [0] = self.f_box_MultipleAND_v2_27_Out,
    });
    self.box_StartMetaSequence_4 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|82346763");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_4_Out,
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|354569324");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_ActivityInitialized_40 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|420215718");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_40_Out,
    });
    self.box_PlaySequence_v8_6 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|448710919");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 0,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_6_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_6_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_6_Started,
    });
    self.box_ActivityAcknowledgeGate_44 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|472365401");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_44_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_44_Reloaded,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|574155923");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_Delay_v5_38 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|709209002");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_38_TimeElapsed,
    });
    self.box_OnceOnly_v3_15 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|724137160");
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
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|811591361");
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
        [0] = self.f_box_MultipleOR_39_Out,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|861841008");
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
        [0] = self.f_box_MultipleOR_31_Out,
    });
    self.box_PhoneCallExclusivityModifier_12 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1000529218");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_12_Enabled,
    });
    self.box_RequestPhoneCall_v2_14 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1058003434");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_14_Completed,
    });
    self.box_Delay_v5_47 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1159970663");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_47_TimeElapsed,
    });
    self.box_EntityStatusListener_26 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1165860868");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_26_Loaded,
    });
    self.box_ProximityTrigger_v2_20 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1409978560");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_20_Enter,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_20_OnOccupied,
    });
    self.box_EntityStatusListener_22 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1471829770");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_22_Loaded,
    });
    self.box_EntityStatusListener_3 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1546150966");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_3_Loaded,
    });
    self.box_PhoneCallExclusivityModifier_21 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1822489906");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhoneCallExclusivityModifier_21_Disabled,
    });
    self.box_RequestTutorial_v3_17 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1951374536");
    l0:SetConnections({
        -- OnHidden,
        [1] = self.f_box_RequestTutorial_v3_17_OnHidden,
        -- RequestFailure,
        [3] = self.f_box_RequestTutorial_v3_17_RequestFailure,
    });
    self.box_OnceOnly_v3_25 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1953579817");
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
    self.box_Music_Quest_v2_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1974404175");
    l0:SetConnections({
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|2007958731");
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
    self.box_OverrideMenuAccessibility_41 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|2085271573");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_41_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|990647361", "990647361", "INTRO_035_B10", "In", "box_ActivityAcknowledgeGate_44.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeavingZone()
    
end;

function export:f_box_MultipleAND_v2_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_30();
    l0 = self.box_MultipleAND_v2_27;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|229035929", "229035929", "INTRO_035_B10", "box_MultipleAND_v2_27.Out", "box_BroadcastMessage_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_4_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_4_Out();
    params = self:OnEnter_box_PlaySequence_v8_6();
    l0 = self.box_StartMetaSequence_4;
    l1 = self.box_PlaySequence_v8_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|244461920", "244461920", "INTRO_035_B10", "box_StartMetaSequence_4.Out", "box_PlaySequence_v8_6.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_28();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|2095139504", "2095139504", "INTRO_035_B10", "box_OutputOrder_v2_23.Out", "box_GetPlayerGroup_v2_28.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetMissionLayerState_v2_24();
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|791701831", "791701831", "INTRO_035_B10", "box_OutputOrder_v2_23.Out", "box_GetMissionLayerState_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetMissionLayerState_v2_49();
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|29803726", "29803726", "INTRO_035_B10", "box_OutputOrder_v2_23.Out", "box_GetMissionLayerState_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_16();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|278104919", "278104919", "INTRO_035_B10", "box_OutputOrder_v2_23.Out", "box_BroadcastMessage_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|2118723687", "2118723687", "INTRO_035_B10", "box_OutputOrder_v2_9.Out", "box_Delay_v5_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_35();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|252418701", "252418701", "INTRO_035_B10", "box_OutputOrder_v2_9.Out", "box_MissionBlockLayer_35.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_27();
    l0 = self.box_Delay_v5_10;
    l1 = self.box_MultipleAND_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|526301201", "526301201", "INTRO_035_B10", "box_Delay_v5_10.TimeElapsed", "box_MultipleAND_v2_27.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MissionBlockLayer_42_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_37();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1915528563", "1915528563", "INTRO_035_B10", "box_MissionBlockLayer_42.Disabled", "box_MissionBlockLayer_37.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_ActivityInitialized_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1670754052", "1670754052", "INTRO_035_B10", "box_ActivityInitialized_40.Out", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_6_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_6;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|437743585", "437743585", "INTRO_035_B10", "box_PlaySequence_v8_6.Finished", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_6_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_6;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|534144946", "534144946", "INTRO_035_B10", "box_PlaySequence_v8_6.Skipped", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_6_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_PlaySequence_v8_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1572006550", "1572006550", "INTRO_035_B10", "box_PlaySequence_v8_6.Started", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestTutorial_v3_17();
    l0 = self.box_RequestTutorial_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|118983543", "118983543", "INTRO_035_B10", "box_OutputOrder_v2_46.Out", "box_RequestTutorial_v3_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_8();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|2090207238", "2090207238", "INTRO_035_B10", "box_OutputOrder_v2_46.Out", "box_OverrideDisabledLogicId_8.HudLocationDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudLocationDiscovery
    l0:Exec(14, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_8();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|706328699", "706328699", "INTRO_035_B10", "box_OutputOrder_v2_46.Out", "box_OverrideDisabledLogicId_8.HudObjective", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudObjective
    l0:Exec(23, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_44_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_44;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|672137900", "672137900", "INTRO_035_B10", "box_ActivityAcknowledgeGate_44.Acknowledged", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_44_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_41();
    l0 = self.box_ActivityAcknowledgeGate_44;
    l1 = self.box_OverrideMenuAccessibility_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|2075143135", "2075143135", "INTRO_035_B10", "box_ActivityAcknowledgeGate_44.Reloaded", "box_OverrideMenuAccessibility_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_2();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1208651621", "1208651621", "INTRO_035_B10", "box_MultipleOR_1.Out", "box_StopMetaSequence_v4_2.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_33_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_42();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|797693643", "797693643", "INTRO_035_B10", "box_MissionBlockLayer_33.Activated", "box_MissionBlockLayer_42.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_38_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = self.box_Delay_v5_38;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|2058305328", "2058305328", "INTRO_035_B10", "box_Delay_v5_38.TimeElapsed", "box_ActivityEnd_5.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_15_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_15;
    l1 = self.box_PhoneCallExclusivityModifier_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1091043445", "1091043445", "INTRO_035_B10", "box_OnceOnly_v3_15.Out", "box_PhoneCallExclusivityModifier_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_MultipleOR_39_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_39;
    l1 = self.box_PhoneCallExclusivityModifier_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|883026035", "883026035", "INTRO_035_B10", "box_MultipleOR_39.Out", "box_PhoneCallExclusivityModifier_21.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_31_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_31;
    l1 = self.box_ActivityInitialized_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|236003877", "236003877", "INTRO_035_B10", "box_MultipleOR_31.Out", "box_ActivityInitialized_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PhoneCallExclusivityModifier_12_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_14();
    l0 = self.box_PhoneCallExclusivityModifier_12;
    l1 = self.box_RequestPhoneCall_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1782009216", "1782009216", "INTRO_035_B10", "box_PhoneCallExclusivityModifier_12.Enabled", "box_RequestPhoneCall_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_3();
    l0 = self.box_EntityStatusListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|700824442", "700824442", "INTRO_035_B10", "box_OutputOrder_v2_18.Out", "box_EntityStatusListener_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_22();
    l0 = self.box_EntityStatusListener_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|533303847", "533303847", "INTRO_035_B10", "box_OutputOrder_v2_18.Out", "box_EntityStatusListener_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_29();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1201397401", "1201397401", "INTRO_035_B10", "box_OutputOrder_v2_18.Out", "box_OverrideDisabledLogicId_29.HudObjective", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudObjective
    l0:Exec(23, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_29();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1989807389", "1989807389", "INTRO_035_B10", "box_OutputOrder_v2_18.Out", "box_OverrideDisabledLogicId_29.HudLocationDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudLocationDiscovery
    l0:Exec(14, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_14_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_RequestPhoneCall_v2_14;
    l1 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|471714006", "471714006", "INTRO_035_B10", "box_RequestPhoneCall_v2_14.Completed", "box_Delay_v5_47.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_47_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = self.box_Delay_v5_47;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|944976662", "944976662", "INTRO_035_B10", "box_Delay_v5_47.TimeElapsed", "box_OutputOrder_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_26_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_EntityStatusListener_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1104415441", "1104415441", "INTRO_035_B10", "box_EntityStatusListener_26.Loaded", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_35_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_36();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|385993954", "385993954", "INTRO_035_B10", "box_MissionBlockLayer_35.Deactivated", "box_MissionBlockLayer_36.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_43_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_33();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1085549857", "1085549857", "INTRO_035_B10", "box_MissionBlockLayer_43.Activated", "box_MissionBlockLayer_33.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_20_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_20;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1604521142", "1604521142", "INTRO_035_B10", "box_ProximityTrigger_v2_20.Enter", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_20_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_20;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1616419036", "1616419036", "INTRO_035_B10", "box_ProximityTrigger_v2_20.OnOccupied", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_37_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|405071483", "405071483", "INTRO_035_B10", "box_MissionBlockLayer_37.Disabled", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_22_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_20();
    l0 = self.box_EntityStatusListener_22;
    l1 = self.box_ProximityTrigger_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|849623777", "849623777", "INTRO_035_B10", "box_EntityStatusListener_22.Loaded", "box_ProximityTrigger_v2_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_3_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_3;
    l1 = self.box_StartMetaSequence_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|490735644", "490735644", "INTRO_035_B10", "box_EntityStatusListener_3.Loaded", "box_StartMetaSequence_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_BroadcastMessage_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_38();
    l0 = self.box_Delay_v5_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1921375401", "1921375401", "INTRO_035_B10", "box_BroadcastMessage_30.Out", "box_Delay_v5_38.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PhoneCallExclusivityModifier_21_Disabled()
    local l0, l1;
    l0 = self.box_PhoneCallExclusivityModifier_21;
    l1 = self.box_OnceOnly_v3_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1305875630", "1305875630", "INTRO_035_B10", "box_PhoneCallExclusivityModifier_21.Disabled", "box_OnceOnly_v3_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StopMetaSequence_v4_2_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1838886317", "1838886317", "INTRO_035_B10", "box_StopMetaSequence_v4_2.Stopped", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_32_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_43();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|310407354", "310407354", "INTRO_035_B10", "box_MissionBlockLayer_32.Activated", "box_MissionBlockLayer_43.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_28_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_26();
    l0 = self.box_EntityStatusListener_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1273737880", "1273737880", "INTRO_035_B10", "box_GetPlayerGroup_v2_28.Out", "box_EntityStatusListener_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetMissionLayerState_v2_49_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_48();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1625252852", "1625252852", "INTRO_035_B10", "box_GetMissionLayerState_v2_49.Enabled", "box_MissionBlockLayer_48.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetMissionLayerState_v2_24_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_34();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1428137038", "1428137038", "INTRO_035_B10", "box_GetMissionLayerState_v2_24.Disabled", "box_MissionBlockLayer_34.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestTutorial_v3_17_OnHidden()
    local l0, l1;
    l0 = self.box_RequestTutorial_v3_17;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1383236939", "1383236939", "INTRO_035_B10", "box_RequestTutorial_v3_17.OnHidden", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestTutorial_v3_17_RequestFailure()
    local l0, l1;
    l0 = self.box_RequestTutorial_v3_17;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|950067149", "950067149", "INTRO_035_B10", "box_RequestTutorial_v3_17.RequestFailure", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_25_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_27();
    l0 = self.box_OnceOnly_v3_25;
    l1 = self.box_MultipleAND_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|48231625", "48231625", "INTRO_035_B10", "box_OnceOnly_v3_25.Out", "box_MultipleAND_v2_27.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_19_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_19;
    l1 = self.box_OnceOnly_v3_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|382767792", "382767792", "INTRO_035_B10", "box_MultipleOR_19.Out", "box_OnceOnly_v3_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OverrideMenuAccessibility_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_32();
    l0 = self.box_OverrideMenuAccessibility_41;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|902140763", "902140763", "INTRO_035_B10", "box_OverrideMenuAccessibility_41.Out", "box_MissionBlockLayer_32.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_7();
    l0 = self.box_Music_Quest_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|653792585", "653792585", "INTRO_035_B10", "box_OutputOrder_v2_13.Out", "box_Music_Quest_v2_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_36();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|2008219880", "2008219880", "INTRO_035_B10", "box_OutputOrder_v2_13.Out", "box_MissionBlockLayer_36.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_MultipleAND_v2_27()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|299027748");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
                [2] = self.f_box_OutputOrder_v2_23_Out_2,
                [3] = self.f_box_OutputOrder_v2_23_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|322611931");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_42()
    local params, l0;
    DrawTextToScreen("Comment: SAFEDOOR_BEFORE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: SAFEDOOR_BEFORE");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|364648646");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_42_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253210629666",
        -- missionLayerId,
        [1] = "36167452465370658",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_6()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2103454627742630786",
        -- SequenceFile,
        [4] = "sequences/zeta_main/Intro_012/intro_012_doorbunker.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|470355434");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
                [2] = self.f_box_OutputOrder_v2_46_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|475273007");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160253335547570",
        -- missionLayerId,
        [1] = "45174651845044507",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_33()
    local params, l0;
    DrawTextToScreen("Comment: BUNKERDOOR_BEFORE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: BUNKERDOOR_BEFORE");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|592037233");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_33_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253335547570",
        -- missionLayerId,
        [1] = "45174651845044507",
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|652085351");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_38()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_48()
    local params, l0;
    DrawTextToScreen("Comment: BUNKERDOOR_AFTER", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: BUNKERDOOR_AFTER");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|763624352");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160253335547570",
        -- missionLayerId,
        [1] = "36167452590288562",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_36()
    local params, l0;
    DrawTextToScreen("Comment: BUNKERDOOR_AFTER", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: BUNKERDOOR_AFTER");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|826254677");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160253335547570",
        -- missionLayerId,
        [1] = "36167452590288562",
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|946900396");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1052196333");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
                [3] = self.f_box_OutputOrder_v2_18_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_14()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "965122731",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_47()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_26()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103193965896406339",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_35()
    local params, l0;
    DrawTextToScreen("Comment: BUNKERDOOR_BEFORE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: BUNKERDOOR_BEFORE");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1233345354");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_35_Deactivated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253335547570",
        -- missionLayerId,
        [1] = "45174651845044507",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_43()
    local params, l0;
    DrawTextToScreen("Comment: SAFEDOOR_AFTER", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: SAFEDOOR_AFTER");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1276800700");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_43_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253210629666",
        -- missionLayerId,
        [1] = "45174651720232920",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.gPlayer,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104742597632221563",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_37()
    local params, l0;
    DrawTextToScreen("Comment: BUNKERDOOR_AFTER", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: BUNKERDOOR_AFTER");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1418286290");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_37_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253335547570",
        -- missionLayerId,
        [1] = "36167452590288562",
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
        [2] = "2104742597632221563",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_16()
    local params, l0;
    DrawTextToScreen("Comment: BROADCAST FOR THE BUNKER DOOR", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'BroadcastMessage')-- Comment: BROADCAST FOR THE BUNKER DOOR");
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1518679225");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "INTRO_012_BUNKERDOOR_OPEN",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103454627742630786",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1790989582");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_30_Out,
    });
    params = {
        -- Message,
        [0] = "INTRO_012_Door_Opened",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1844646216");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_2_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_32()
    local params, l0;
    DrawTextToScreen("Comment: COMMON_BEFORE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: COMMON_BEFORE");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1864551748");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_32_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "54181820388102972",
        -- missionLayerId,
        [1] = "63189019642843965",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1877400417");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetMissionLayerState_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetMissionLayerState_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1892640187");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GetMissionLayerState_v2_49_Enabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253335547570",
        -- missionBlockLayerId,
        [1] = "36167452590288562",
    };
    return params;
end;

function export:OnEnter_box_GetMissionLayerState_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetMissionLayerState_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|1948376604");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GetMissionLayerState_v2_24_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253335547570",
        -- missionBlockLayerId,
        [1] = "45174651845044507",
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_17()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015280990085747",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_7()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 24,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2892310692",
        -- StopEvent,
        [7] = "2248944541",
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

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|2055113284");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_41()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = false,
        -- AvatarCustomizationMenuEnabled,
        [2] = true,
        -- ChallengeMenuEnabled,
        [3] = false,
        -- LootMenuEnabled,
        [4] = true,
        -- OnlineMenuEnabled,
        [5] = false,
        -- PerksMenuEnabled,
        [6] = false,
        -- ResistanceMenuEnabled,
        [7] = false,
        -- SquadMenuEnabled,
        [8] = false,
        -- WorldmapMenuEnabled,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_035\\INTRO_035_B10.domino|@INTRO_035_B10|2108334737");
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

function export:OnExit_box_StartMetaSequence_4_Out()
    local l0;
    l0 = self.box_StartMetaSequence_4;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeavingZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
