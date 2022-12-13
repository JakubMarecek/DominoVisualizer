LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni49/uni49_010/uni49_010_doors.domino
-- User graph: UNI49_010_DOORS_main
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
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetPreconditionState.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/CameraShakeAndRumble_V2.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/System/VisionModeModifier_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Master.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3736662617.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2690773750.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1414854136.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3024109683.bnk]], "CSoundResource");
        cboxRes:LoadResource([[787920718.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2527155367.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3748131841.bnk]], "CSoundResource");
        cboxRes:LoadResource([[297795456.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1048371706.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1353545866.bnk]], "CSoundResource");
        cboxRes:LoadResource([[620881151.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2644146809.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2395499080.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS.UNI49_010_DOORS_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/RegenerateNavmesh.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Completed",
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
                name = "RegionEntity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
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
                name = "message",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SendEvent",
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
                name = "EventName",
                type = "string",
            },
            [1] = {
                name = "IntensityModifier",
                type = "float",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayerSpeedModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ApplySpeedFactor",
            },
            [1] = {
                name = "ForceWalk",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "ApplySpeedFactorOut",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "ForceWalkOut",
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
                name = "blendTime",
                type = "float",
            },
            [1] = {
                name = "factor",
                type = "float",
            },
            [2] = {
                name = "Players",
                type = "group",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/VisionModeModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "StartBliss",
            },
            [1] = {
                name = "StartCustomIntoxication",
            },
            [2] = {
                name = "StartDrunk",
            },
            [3] = {
                name = "StartHigh",
            },
            [4] = {
                name = "StartScopolamine",
            },
            [5] = {
                name = "StartScopolamineHeavy",
            },
            [6] = {
                name = "StartScopolamineMedium",
            },
            [7] = {
                name = "Stop",
            },
        },
        controlInCount = 8,
        controlOut = {
            [0] = {
                name = "StartedBliss",
                delayed = false,
            },
            [1] = {
                name = "StartedCustomIntoxication",
                delayed = false,
            },
            [2] = {
                name = "StartedDrunk",
                delayed = false,
            },
            [3] = {
                name = "StartedHigh",
                delayed = false,
            },
            [4] = {
                name = "StartedScopolamine",
                delayed = false,
            },
            [5] = {
                name = "StartedScopolamineHeavy",
                delayed = false,
            },
            [6] = {
                name = "StartedScopolamineMedium",
                delayed = false,
            },
            [7] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "intoxicationAmount",
                type = "float",
            },
            [1] = {
                name = "players",
                type = "group",
            },
            [2] = {
                name = "useAsPercent",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Master.debug.lua")] = {
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
                name = "TimerFireDuration",
                type = "float",
            },
            [1] = {
                name = "TimerFireStart",
                type = "float",
            },
            [2] = {
                name = "TimerSparksStart",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI49_010_DOORS_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main";
    self.gFriendlyPlayers = nil;
    self.ePlayer = nil;
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|67422452");
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
    self.box_Random_206 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|127709974");
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
                [0] = self.f_box_Random_206_Output_0,
                [1] = self.f_box_Random_206_Output_1,
            },
            count = 2,
        },
    });
    self.box_MessageListener_v3_81 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|146443300");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_81_Received,
    });
    self.box_SoundModifier_v2_233 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|148462553");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_215 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|157835194");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_215_Started,
    });
    self.box_SoundModifier_v2_250 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_250");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|182959601");
    l0:SetConnections({
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|193702490");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_UniversalInteractionListener_187 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|194893496");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_187_Interacted,
    });
    self.box_ProximityTrigger_v2_212 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|214235838");
    l0:SetConnections({
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_212_Leave,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_212_OnOccupied,
    });
    self.box_SoundModifier_v2_247 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|220866125");
    l0:SetConnections({
    });
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|226455691");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_SoundModifier_v2_209 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|226472240");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_71 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|239381774");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_191 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|286808362");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_69 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|288387814");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_144 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|298739724");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_134 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|320907806");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_134_Deactivated,
    });
    self.box_SoundModifier_v2_62 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|349982009");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_255 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_255");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|351412391");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_262 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_262;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_262");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|354348896");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_78 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|397103500");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_143 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|458423624");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_143_Disabled,
    });
    self.box_SoundModifier_v2_211 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|473837419");
    l0:SetConnections({
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|478453919");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_Delay_v5_273 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_273;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_273");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|492368908");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_273_TimeElapsed,
    });
    self.box_MessageListener_v3_170 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|496539299");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_170_Received,
    });
    self.box_MultipleOR_281 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_281;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_281");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|501500717");
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
        [0] = self.f_box_MultipleOR_281_Out,
    });
    self.box_UniversalInteractionListener_14 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|503808140");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionListener_14_Disabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_14_Interacted,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|522850211");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|549213435");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_Delay_v5_42 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|595156983");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_42_TimeElapsed,
    });
    self.box_MessageListener_v3_280 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_280;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_280");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|653535494");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_280_Received,
    });
    self.box_Gate_v3_270 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_270;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_270");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|661943063");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_270_Out,
    });
    self.box_SoundModifier_v2_242 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_242;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_242");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|669213273");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_181 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|672103039");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_181_Received,
    });
    self.box_ProximityTrigger_v2_214 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|679382608");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_214_Enter,
    });
    self.box_MultipleOR_189 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|689142826");
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
        [0] = self.f_box_MultipleOR_189_Out,
    });
    self.box_MessageListener_v3_105 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|703215472");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_105_Received,
    });
    self.box_SoundModifier_v2_75 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|708657609");
    l0:SetConnections({
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|716620463");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|757413567");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_Delay_v5_58 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|823335660");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_58_TimeElapsed,
    });
    self.box_SoundModifier_v2_64 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|839756254");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_59 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|848882665");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_79 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|875426267");
    l0:SetConnections({
    });
    self.box_UniversalInteractionListener_11 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|905187793");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionListener_11_Disabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_11_Interacted,
    });
    self.box_SoundModifier_v2_266 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_266;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_266");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|909059122");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_73 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|934097809");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_259 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_259");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|957671004");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_253 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_253");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|989631594");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_68 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1002653837");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_7 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1013246769");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_7_Received,
    });
    self.box_EntityStatusListener_151 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1042812332");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_151_Loaded,
    });
    self.box_UniversalInteractionModifier_v2_12 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1044018344");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_12_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_12_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_149 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1055221330");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_149_Disabled,
    });
    self.box_MessageListener_v3_150 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1094652712");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_150_Received,
    });
    self.box_UniversalInteractionModifier_v2_18 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1101665635");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_18_Enabled,
    });
    self.box_MultipleOR_202 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1129752784");
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
        [0] = self.f_box_MultipleOR_202_Out,
    });
    self.box_ActivityAcknowledgeGate_36 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1132644382");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_36_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_36_Reloaded,
    });
    self.box_Random_200 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1139653958");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_200_Output_0,
                [1] = self.f_box_Random_200_Output_1,
                [2] = self.f_box_Random_200_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_177 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1142827551");
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
        [0] = self.f_box_MultipleOR_177_Out,
    });
    self.box_SoundModifier_v2_228 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1157722278");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_15 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1174857874");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_15_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_15_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_112 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1178703732");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_238 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1221931445");
    l0:SetConnections({
    });
    self.box_UniversalInteractionListener_220 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1245325247");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_220_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_17 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1258675688");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_17_Disabled,
    });
    self.box_SoundModifier_v2_72 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1291787965");
    l0:SetConnections({
    });
    self.box_Delay_v5_94 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1295090924");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_94_TimeElapsed,
    });
    self.box_SoundModifier_v2_60 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1306379237");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_234 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1355631021");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_278 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_278");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1362333554");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_278_Received,
    });
    self.box_VisionModeModifier_v2_272 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_272;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_272");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1372233897");
    l0:SetConnections({
        -- StartedBliss,
        [0] = self.f_box_VisionModeModifier_v2_272_StartedBliss,
    });
    self.box_SoundModifier_v2_63 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1376362101");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_74 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1382792668");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_275 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_275;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_275");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1384214938");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_275_Received,
    });
    self.box_UniversalInteractionModifier_v2_224 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1388243146");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_224_Disabled,
    });
    self.box_SoundModifier_v2_258 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_258");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1410170278");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_108 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1448211271");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_108_Loaded,
    });
    self.box__SafetyValves_Master_52 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Master.debug.lua");
    l0 = self.box__SafetyValves_Master_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__SafetyValves_Master_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1454322654");
    l0:SetConnections({
    });
    self.box_PlayerSpeedModifier_v3_171 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1470603835");
    l0:SetConnections({
        -- ForceWalkOut,
        [2] = self.f_box_PlayerSpeedModifier_v3_171_ForceWalkOut,
    });
    self.box_MultipleOR_196 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1475497843");
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
        [0] = self.f_box_MultipleOR_196_Out,
    });
    self.box_MultipleOR_159 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1477459315");
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
        [0] = self.f_box_MultipleOR_159_Out,
    });
    self.box_Delay_v5_180 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1487340914");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_180_TimeElapsed,
    });
    self.box_SoundModifier_v2_232 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1489617344");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_46 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1494615593");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_46_Started,
    });
    self.box_SoundModifier_v2_77 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1518518115");
    l0:SetConnections({
    });
    self.box_MultipleOR_223 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1519408354");
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
        [0] = self.f_box_MultipleOR_223_Out,
    });
    self.box_NavLinkModifier_221 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1526628373");
    l0:SetConnections({
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1538481845");
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
    self.box_NavLinkModifier_133 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1555008377");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_66 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1560393156");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_25 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1581814041");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_25_Received,
    });
    self.box_SoundModifier_v2_80 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1593977758");
    l0:SetConnections({
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1594168105");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_128 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1594280721");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_128_Enter,
    });
    self.box_Delay_v5_208 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1594444923");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_208_TimeElapsed,
    });
    self.box_MultipleOR_274 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_274;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_274");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1615850854");
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
        [0] = self.f_box_MultipleOR_274_Out,
    });
    self.box_RegenerateNavmesh_9 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1637802304");
    l0:SetConnections({
    });
    self.box_MultipleOR_279 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_279;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1651182377");
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
        [0] = self.f_box_MultipleOR_279_Out,
    });
    self.box_MessageListener_v3_222 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1659255786");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_222_Received,
    });
    self.box_MessageListener_v3_205 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1662214632");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_205_Received,
    });
    self.box_MessageListener_v3_6 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1666389242");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_6_Received,
    });
    self.box_Delay_v5_5 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1731063995");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_5_TimeElapsed,
    });
    self.box_OnceOnly_v3_24 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1741745103");
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
                [0] = self.f_box_OnceOnly_v3_24_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_113 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1749889144");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_113_Loaded,
    });
    self.box_UniversalInteractionModifier_v2_152 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1756526596");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_152_Enabled,
    });
    self.box_UniversalInteractionListener_20 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1772263989");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_20_Interacted,
    });
    self.box_SoundModifier_v2_257 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_257");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1772874243");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_110 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1798789201");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_110_Loaded,
    });
    self.box_SoundModifier_v2_229 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1804031512");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_109 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1852937567");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_109_Disabled,
    });
    self.box_NavLinkModifier_147 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1873391398");
    l0:SetConnections({
    });
    self.box_Delay_v5_97 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1874127849");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_97_TimeElapsed,
    });
    self.box_SoundModifier_v2_245 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_245;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1878316775");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_236 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1920819573");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_33 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1922965040");
    l0:SetConnections({
    });
    self.box_Delay_v5_1 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1926621034");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_1_TimeElapsed,
    });
    self.box_MessageListener_v3_114 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1950718295");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_114_Received,
    });
    self.box_SoundModifier_v2_213 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1960380882");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_65 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1962370693");
    l0:SetConnections({
    });
    self.box_MultipleOR_127 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1990138016");
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
        [0] = self.f_box_MultipleOR_127_Out,
    });
    self.box_Delay_v5_185 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1994435820");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_185_TimeElapsed,
    });
    self.box_SoundModifier_v2_70 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1996740944");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_260 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2008367568");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_28 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2009489086");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_217 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2077681036");
    l0:SetConnections({
    });
    self.box_Delay_v5_47 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2109648481");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_47_TimeElapsed,
    });
    self.box_SoundModifier_v2_225 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2126391783");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_67 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2142429524");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_158();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|111944420", "111944420", "UNI49_010_DOORS_main", "In", "box_GetPlayerGroup_v2_158.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_99_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_274;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|876221764", "876221764", "UNI49_010_DOORS_main", "box_Simple_Node_99.Out", "box_MultipleOR_274.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_198_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_270();
    l0 = self.box_Gate_v3_270;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1351781559", "1351781559", "UNI49_010_DOORS_main", "box_Simple_Node_198.Out", "box_Gate_v3_270.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_197_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_270();
    l0 = self.box_Gate_v3_270;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1990361537", "1990361537", "UNI49_010_DOORS_main", "box_Simple_Node_197.Out", "box_Gate_v3_270.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_91();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2080826563", "2080826563", "UNI49_010_DOORS_main", "box_Simple_Node_92.Out", "box_OutputOrder_v2_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_210_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_209();
    l0 = self.box_SoundModifier_v2_209;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|335086325", "335086325", "UNI49_010_DOORS_main", "box_Simple_Node_210.Out", "box_SoundModifier_v2_209.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_207_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_172();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1936987761", "1936987761", "UNI49_010_DOORS_main", "box_Simple_Node_207.Out", "box_GetPreconditionState_172.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_284_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_230();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|55025585", "55025585", "UNI49_010_DOORS_main", "box_Simple_Node_284.Out", "box_OutputOrder_v2_230.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_264();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|584539343", "584539343", "UNI49_010_DOORS_main", "box_Simple_Node_284.Out", "box_OutputOrder_v2_264.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_256();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|258259485", "258259485", "UNI49_010_DOORS_main", "box_Simple_Node_284.Out", "box_OutputOrder_v2_256.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_265();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1497530406", "1497530406", "UNI49_010_DOORS_main", "box_Simple_Node_284.Out", "box_OutputOrder_v2_265.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_267();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1393469330", "1393469330", "UNI49_010_DOORS_main", "box_Simple_Node_284.Out", "box_OutputOrder_v2_267.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_249();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|645568782", "645568782", "UNI49_010_DOORS_main", "box_Simple_Node_284.Out", "box_OutputOrder_v2_249.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_241();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1720739566", "1720739566", "UNI49_010_DOORS_main", "box_Simple_Node_284.Out", "box_OutputOrder_v2_241.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_251();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1522025329", "1522025329", "UNI49_010_DOORS_main", "box_Simple_Node_284.Out", "box_OutputOrder_v2_251.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_239();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1320116945", "1320116945", "UNI49_010_DOORS_main", "box_Simple_Node_284.Out", "box_OutputOrder_v2_239.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_231();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|297729474", "297729474", "UNI49_010_DOORS_main", "box_Simple_Node_284.Out", "box_OutputOrder_v2_231.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_248();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1580720249", "1580720249", "UNI49_010_DOORS_main", "box_Simple_Node_284.Out", "box_OutputOrder_v2_248.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_227();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1526012676", "1526012676", "UNI49_010_DOORS_main", "box_Simple_Node_284.Out", "box_OutputOrder_v2_227.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_219_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_215();
    l0 = self.box_SoundModifier_v2_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|374826196", "374826196", "UNI49_010_DOORS_main", "box_Simple_Node_219.Out", "box_SoundModifier_v2_215.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_178_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_169();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1961241917", "1961241917", "UNI49_010_DOORS_main", "box_Simple_Node_178.Out", "box_GetPreconditionState_169.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_89_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|211586436", "211586436", "UNI49_010_DOORS_main", "box_Simple_Node_89.Out", "box_OutputOrder_v2_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_90_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|896646877", "896646877", "UNI49_010_DOORS_main", "box_Simple_Node_90.Out", "box_OutputOrder_v2_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_111_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_49();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1690923547", "1690923547", "UNI49_010_DOORS_main", "box_Simple_Node_111.Out", "box_GetPreconditionState_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_GetPreconditionState_8();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2057799908", "2057799908", "UNI49_010_DOORS_main", "box_Simple_Node_111.Out", "box_GetPreconditionState_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_GetPreconditionState_184();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|593628949", "593628949", "UNI49_010_DOORS_main", "box_Simple_Node_111.Out", "box_GetPreconditionState_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_58();
    l0 = self.box_Delay_v5_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|153930037", "153930037", "UNI49_010_DOORS_main", "box_Simple_Node_40.Out", "box_Delay_v5_58.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_156_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_94();
    l0 = self.box_Delay_v5_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|878351807", "878351807", "UNI49_010_DOORS_main", "box_Simple_Node_156.Out", "box_Delay_v5_94.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_93_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_22();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|45125707", "45125707", "UNI49_010_DOORS_main", "box_Simple_Node_93.Out", "box_GetActivityState_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Delay_v5_97();
    l0 = self.box_Delay_v5_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|438713961", "438713961", "UNI49_010_DOORS_main", "box_Simple_Node_93.Out", "box_Delay_v5_97.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_140_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box__SafetyValves_Master_52();
    l0 = self.box__SafetyValves_Master_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|625504670", "625504670", "UNI49_010_DOORS_main", "box_Simple_Node_140.Out", "box__SafetyValves_Master_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_55_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_55();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1425766401", "1425766401", "UNI49_010_DOORS_main", "box_MissionBlockLayer_55.Deactivated", "box_MissionBlockLayer_55.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_154_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_154();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1492489931", "1492489931", "UNI49_010_DOORS_main", "box_MissionBlockLayer_154.Deactivated", "box_MissionBlockLayer_154.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_154_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_224();
    l0 = self.box_UniversalInteractionModifier_v2_224;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1196283616", "1196283616", "UNI49_010_DOORS_main", "box_MissionBlockLayer_154.Disabled", "box_UniversalInteractionModifier_v2_224.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SoundShapeModifier_240_Resumed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_246();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1140719592", "1140719592", "UNI49_010_DOORS_main", "box_SoundShapeModifier_240.Resumed", "box_SoundShapeModifier_246.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_MultipleOR_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|988349555", "988349555", "UNI49_010_DOORS_main", "box_MultipleOR_37.Out", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_179_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|159901682", "159901682", "UNI49_010_DOORS_main", "box_Simple_Node_179.Out", "box_MultipleOR_177.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_256_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_234();
    l0 = self.box_SoundModifier_v2_234;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1963957029", "1963957029", "UNI49_010_DOORS_main", "box_OutputOrder_v2_256.Out", "box_SoundModifier_v2_234.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_256_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_259();
    l0 = self.box_SoundModifier_v2_259;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1194811791", "1194811791", "UNI49_010_DOORS_main", "box_OutputOrder_v2_256.Out", "box_SoundModifier_v2_259.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Random_206_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_185();
    l0 = self.box_Random_206;
    l1 = self.box_Delay_v5_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1848075899", "1848075899", "UNI49_010_DOORS_main", "box_Random_206.Output", "box_Delay_v5_185.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_206_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_208();
    l0 = self.box_Random_206;
    l1 = self.box_Delay_v5_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2065946429", "2065946429", "UNI49_010_DOORS_main", "box_Random_206.Output", "box_Delay_v5_208.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Simple_Node_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1592881418", "1592881418", "UNI49_010_DOORS_main", "box_Simple_Node_10.Out", "box_Delay_v5_42.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MessageListener_v3_81_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_MessageListener_v3_81;
    l1 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1681091021", "1681091021", "UNI49_010_DOORS_main", "box_MessageListener_v3_81.Received", "box_Delay_v5_34.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SoundModifier_v2_215_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_214();
    l0 = self.box_SoundModifier_v2_215;
    l1 = self.box_ProximityTrigger_v2_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1408656150", "1408656150", "UNI49_010_DOORS_main", "box_SoundModifier_v2_215.Started", "box_ProximityTrigger_v2_214.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPreconditionState_276_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_271();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2034974812", "2034974812", "UNI49_010_DOORS_main", "box_GetPreconditionState_276.NotValid", "box_OutputOrder_v2_271.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_105();
    l0 = self.box_MultipleOR_26;
    l1 = self.box_MessageListener_v3_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|934605964", "934605964", "UNI49_010_DOORS_main", "box_MultipleOR_26.Out", "box_MessageListener_v3_105.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_187_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_191();
    l0 = self.box_UniversalInteractionListener_187;
    l1 = self.box_NavLinkModifier_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|811606367", "811606367", "UNI49_010_DOORS_main", "box_UniversalInteractionListener_187.Interacted", "box_NavLinkModifier_191.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_212_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_ProximityTrigger_v2_212;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|844590941", "844590941", "UNI49_010_DOORS_main", "box_ProximityTrigger_v2_212.Leave", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_212_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_211();
    l0 = self.box_ProximityTrigger_v2_212;
    l1 = self.box_SoundModifier_v2_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1627436208", "1627436208", "UNI49_010_DOORS_main", "box_ProximityTrigger_v2_212.OnOccupied", "box_SoundModifier_v2_211.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_249_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_245();
    l0 = self.box_SoundModifier_v2_245;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|311787181", "311787181", "UNI49_010_DOORS_main", "box_OutputOrder_v2_249.Out", "box_SoundModifier_v2_245.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_249_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_228();
    l0 = self.box_SoundModifier_v2_228;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|383747176", "383747176", "UNI49_010_DOORS_main", "box_OutputOrder_v2_249.Out", "box_SoundModifier_v2_228.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_264_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_238();
    l0 = self.box_SoundModifier_v2_238;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1992007501", "1992007501", "UNI49_010_DOORS_main", "box_OutputOrder_v2_264.Out", "box_SoundModifier_v2_238.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_264_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_266();
    l0 = self.box_SoundModifier_v2_266;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2141348989", "2141348989", "UNI49_010_DOORS_main", "box_OutputOrder_v2_264.Out", "box_SoundModifier_v2_266.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_6();
    l0 = self.box_Delay_v5_4;
    l1 = self.box_MessageListener_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1851880716", "1851880716", "UNI49_010_DOORS_main", "box_Delay_v5_4.TimeElapsed", "box_MessageListener_v3_6.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_271_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_281;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1691184682", "1691184682", "UNI49_010_DOORS_main", "box_OutputOrder_v2_271.Out", "box_MultipleOR_281.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_271_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_275();
    l0 = self.box_MessageListener_v3_275;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1371287637", "1371287637", "UNI49_010_DOORS_main", "box_OutputOrder_v2_271.Out", "box_MessageListener_v3_275.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_126_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_129();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1680552102", "1680552102", "UNI49_010_DOORS_main", "box_GetPreconditionState_126.NotValid", "box_Simple_Node_129.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_126_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|869657876", "869657876", "UNI49_010_DOORS_main", "box_GetPreconditionState_126.Valid", "box_MultipleOR_127.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NavLinkModifier_134_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_144();
    l0 = self.box_NavLinkModifier_134;
    l1 = self.box_NavLinkModifier_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1600969477", "1600969477", "UNI49_010_DOORS_main", "box_NavLinkModifier_134.Deactivated", "box_NavLinkModifier_144.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_251_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_242();
    l0 = self.box_SoundModifier_v2_242;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1097730596", "1097730596", "UNI49_010_DOORS_main", "box_OutputOrder_v2_251.Out", "box_SoundModifier_v2_242.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_251_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_225();
    l0 = self.box_SoundModifier_v2_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|3816930", "3816930", "UNI49_010_DOORS_main", "box_OutputOrder_v2_251.Out", "box_SoundModifier_v2_225.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_2_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_17();
    l0 = self.box_UniversalInteractionModifier_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1326796060", "1326796060", "UNI49_010_DOORS_main", "box_Simple_Node_2.Out", "box_UniversalInteractionModifier_v2_17.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_53_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_51();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1795457848", "1795457848", "UNI49_010_DOORS_main", "box_MissionBlockLayer_53.Activated", "box_MissionBlockLayer_51.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_53_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_53();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|41096872", "41096872", "UNI49_010_DOORS_main", "box_MissionBlockLayer_53.Deactivated", "box_MissionBlockLayer_53.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_53_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_51();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|565726764", "565726764", "UNI49_010_DOORS_main", "box_MissionBlockLayer_53.Disabled", "box_MissionBlockLayer_51.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_22_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|839616242", "839616242", "UNI49_010_DOORS_main", "box_GetActivityState_v2_22.Active", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_22_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2092675594", "2092675594", "UNI49_010_DOORS_main", "box_GetActivityState_v2_22.Inactive", "box_MultipleOR_159.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_22_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|760164291", "760164291", "UNI49_010_DOORS_main", "box_GetActivityState_v2_22.Unavailable", "box_MultipleOR_159.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_267_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_240();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1647474444", "1647474444", "UNI49_010_DOORS_main", "box_OutputOrder_v2_267.Out", "box_SoundShapeModifier_240.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_267_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_252();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1040355335", "1040355335", "UNI49_010_DOORS_main", "box_OutputOrder_v2_267.Out", "box_SoundShapeModifier_252.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_267_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_226();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1214304654", "1214304654", "UNI49_010_DOORS_main", "box_OutputOrder_v2_267.Out", "box_SoundShapeModifier_226.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_267_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_244();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1769365209", "1769365209", "UNI49_010_DOORS_main", "box_OutputOrder_v2_267.Out", "box_SoundShapeModifier_244.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_143_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_134();
    l0 = self.box_UniversalInteractionModifier_v2_143;
    l1 = self.box_NavLinkModifier_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1654907983", "1654907983", "UNI49_010_DOORS_main", "box_UniversalInteractionModifier_v2_143.Disabled", "box_NavLinkModifier_134.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_13_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_13;
    l1 = self.box_OnceOnly_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|332242215", "332242215", "UNI49_010_DOORS_main", "box_MultipleOR_13.Out", "box_OnceOnly_v3_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_227_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_233();
    l0 = self.box_SoundModifier_v2_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|423199182", "423199182", "UNI49_010_DOORS_main", "box_OutputOrder_v2_227.Out", "box_SoundModifier_v2_233.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_227_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_253();
    l0 = self.box_SoundModifier_v2_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1856548453", "1856548453", "UNI49_010_DOORS_main", "box_OutputOrder_v2_227.Out", "box_SoundModifier_v2_253.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_96_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_135();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|469704905", "469704905", "UNI49_010_DOORS_main", "box_MissionBlockLayer_96.Activated", "box_MissionBlockLayer_135.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_273_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_198();
    l0 = self.box_Delay_v5_273;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1429192930", "1429192930", "UNI49_010_DOORS_main", "box_Delay_v5_273.TimeElapsed", "box_Simple_Node_198.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_170_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_179();
    l0 = self.box_MessageListener_v3_170;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|326139219", "326139219", "UNI49_010_DOORS_main", "box_MessageListener_v3_170.Received", "box_Simple_Node_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_281_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_272();
    l0 = self.box_MultipleOR_281;
    l1 = self.box_VisionModeModifier_v2_272;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1356120463", "1356120463", "UNI49_010_DOORS_main", "box_MultipleOR_281.Out", "box_VisionModeModifier_v2_272.StartBliss", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartBliss
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionListener_14_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_UniversalInteractionListener_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1562218956", "1562218956", "UNI49_010_DOORS_main", "box_UniversalInteractionListener_14.Disabled", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_14_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_12();
    l0 = self.box_UniversalInteractionListener_14;
    l1 = self.box_UniversalInteractionModifier_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|639201487", "639201487", "UNI49_010_DOORS_main", "box_UniversalInteractionListener_14.Interacted", "box_UniversalInteractionModifier_v2_12.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_18();
    l0 = self.box_MultipleOR_3;
    l1 = self.box_UniversalInteractionModifier_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1847919136", "1847919136", "UNI49_010_DOORS_main", "box_MultipleOR_3.Out", "box_UniversalInteractionModifier_v2_18.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_39_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_45();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1065570460", "1065570460", "UNI49_010_DOORS_main", "box_MissionBlockLayer_39.Activated", "box_MissionBlockLayer_45.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_39_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_39();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|190560379", "190560379", "UNI49_010_DOORS_main", "box_MissionBlockLayer_39.Deactivated", "box_MissionBlockLayer_39.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_39_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_45();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2146084496", "2146084496", "UNI49_010_DOORS_main", "box_MissionBlockLayer_39.Disabled", "box_MissionBlockLayer_45.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_132_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_132();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1723675581", "1723675581", "UNI49_010_DOORS_main", "box_MissionBlockLayer_132.Deactivated", "box_MissionBlockLayer_132.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_132_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_131();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1426228509", "1426228509", "UNI49_010_DOORS_main", "box_MissionBlockLayer_132.Disabled", "box_MissionBlockLayer_131.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_81();
    l0 = self.box_Delay_v5_41;
    l1 = self.box_MessageListener_v3_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1358139214", "1358139214", "UNI49_010_DOORS_main", "box_Delay_v5_41.TimeElapsed", "box_MessageListener_v3_81.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CameraShakeAndRumble_V2_201_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|258120648", "258120648", "UNI49_010_DOORS_main", "box_CameraShakeAndRumble_V2_201.Out", "box_MultipleOR_196.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1346615163", "1346615163", "UNI49_010_DOORS_main", "box_OutputOrder_v2_32.Out", "box_OutputOrder_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|349800256", "349800256", "UNI49_010_DOORS_main", "box_OutputOrder_v2_32.Out", "box_OutputOrder_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_42_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_7();
    l0 = self.box_Delay_v5_42;
    l1 = self.box_MessageListener_v3_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1817842881", "1817842881", "UNI49_010_DOORS_main", "box_Delay_v5_42.TimeElapsed", "box_MessageListener_v3_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPreconditionState_38_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_2();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|174010814", "174010814", "UNI49_010_DOORS_main", "box_GetPreconditionState_38.NotValid", "box_Simple_Node_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_38_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|143618927", "143618927", "UNI49_010_DOORS_main", "box_GetPreconditionState_38.Valid", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_51_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_30();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|867514765", "867514765", "UNI49_010_DOORS_main", "box_MissionBlockLayer_51.Activated", "box_MissionBlockLayer_30.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_51_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_51();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1434637614", "1434637614", "UNI49_010_DOORS_main", "box_MissionBlockLayer_51.Deactivated", "box_MissionBlockLayer_51.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_51_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_30();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|694708462", "694708462", "UNI49_010_DOORS_main", "box_MissionBlockLayer_51.Disabled", "box_MissionBlockLayer_30.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_230_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_247();
    l0 = self.box_SoundModifier_v2_247;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1865564730", "1865564730", "UNI49_010_DOORS_main", "box_OutputOrder_v2_230.Out", "box_SoundModifier_v2_247.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_230_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_236();
    l0 = self.box_SoundModifier_v2_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1608455006", "1608455006", "UNI49_010_DOORS_main", "box_OutputOrder_v2_230.Out", "box_SoundModifier_v2_236.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_21();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|30238490", "30238490", "UNI49_010_DOORS_main", "box_OutputOrder_v2_56.Out", "box_MissionBlockLayer_21.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_53();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1181491911", "1181491911", "UNI49_010_DOORS_main", "box_OutputOrder_v2_56.Out", "box_MissionBlockLayer_53.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_280_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_280;
    l1 = self.box_MultipleOR_281;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|423427863", "423427863", "UNI49_010_DOORS_main", "box_MessageListener_v3_280.Received", "box_MultipleOR_281.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_203_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_200();
    l0 = self.box_Random_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1537117873", "1537117873", "UNI49_010_DOORS_main", "box_OutputOrder_v2_203.Out", "box_Random_200.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_203_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_210();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2131337196", "2131337196", "UNI49_010_DOORS_main", "box_OutputOrder_v2_203.Out", "box_Simple_Node_210.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_270_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_270;
    l1 = self.box_MultipleOR_274;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1283369178", "1283369178", "UNI49_010_DOORS_main", "box_Gate_v3_270.Out", "box_MultipleOR_274.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MessageListener_v3_181_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_181;
    l1 = self.box_MultipleOR_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|622811790", "622811790", "UNI49_010_DOORS_main", "box_MessageListener_v3_181.Received", "box_MultipleOR_189.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_214_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_216();
    l0 = self.box_ProximityTrigger_v2_214;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|799373040", "799373040", "UNI49_010_DOORS_main", "box_ProximityTrigger_v2_214.Enter", "box_OutputOrder_v2_216.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_248_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_261();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1099259157", "1099259157", "UNI49_010_DOORS_main", "box_OutputOrder_v2_248.Out", "box_SoundShapeModifier_261.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_248_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_235();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|699012998", "699012998", "UNI49_010_DOORS_main", "box_OutputOrder_v2_248.Out", "box_SoundShapeModifier_235.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_248_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_243();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2005691603", "2005691603", "UNI49_010_DOORS_main", "box_OutputOrder_v2_248.Out", "box_SoundShapeModifier_243.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_248_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_237();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2127582368", "2127582368", "UNI49_010_DOORS_main", "box_OutputOrder_v2_248.Out", "box_SoundShapeModifier_237.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_189_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_171();
    l0 = self.box_MultipleOR_189;
    l1 = self.box_PlayerSpeedModifier_v3_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2009461686", "2009461686", "UNI49_010_DOORS_main", "box_MultipleOR_189.Out", "box_PlayerSpeedModifier_v3_171.ForceWalk", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceWalk
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_105_Received()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_15();
    l0 = self.box_MessageListener_v3_105;
    l1 = self.box_UniversalInteractionModifier_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1034433693", "1034433693", "UNI49_010_DOORS_main", "box_MessageListener_v3_105.Received", "box_UniversalInteractionModifier_v2_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_34;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1238427141", "1238427141", "UNI49_010_DOORS_main", "box_Delay_v5_34.TimeElapsed", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_44();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1113918996", "1113918996", "UNI49_010_DOORS_main", "box_OutputOrder_v2_31.Out", "box_GetPreconditionState_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_99();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1573581175", "1573581175", "UNI49_010_DOORS_main", "box_OutputOrder_v2_31.Out", "box_Simple_Node_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_207();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|990493114", "990493114", "UNI49_010_DOORS_main", "box_OutputOrder_v2_31.Out", "box_Simple_Node_207.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1358113802", "1358113802", "UNI49_010_DOORS_main", "box_OutputOrder_v2_31.Out", "box_Simple_Node_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1583075265", "1583075265", "UNI49_010_DOORS_main", "box_OutputOrder_v2_31.Out", "box_Simple_Node_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_156();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|529295818", "529295818", "UNI49_010_DOORS_main", "box_OutputOrder_v2_31.Out", "box_Simple_Node_156.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_93();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|126556691", "126556691", "UNI49_010_DOORS_main", "box_OutputOrder_v2_31.Out", "box_Simple_Node_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_140();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1684029457", "1684029457", "UNI49_010_DOORS_main", "box_OutputOrder_v2_31.Out", "box_Simple_Node_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_178();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|555206818", "555206818", "UNI49_010_DOORS_main", "box_OutputOrder_v2_31.Out", "box_Simple_Node_178.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|936299855", "936299855", "UNI49_010_DOORS_main", "box_Delay_v5_19.TimeElapsed", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_49_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_1();
    l0 = self.box_Delay_v5_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|64960176", "64960176", "UNI49_010_DOORS_main", "box_GetPreconditionState_49.NotValid", "box_Delay_v5_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetPreconditionState_49_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1592540625", "1592540625", "UNI49_010_DOORS_main", "box_GetPreconditionState_49.Valid", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_48_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_48();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|966062734", "966062734", "UNI49_010_DOORS_main", "box_MissionBlockLayer_48.Deactivated", "box_MissionBlockLayer_48.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_58_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetPreconditionState_145();
    l0 = self.box_Delay_v5_58;
    l1 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|221882296", "221882296", "UNI49_010_DOORS_main", "box_Delay_v5_58.TimeElapsed", "box_GetPreconditionState_145.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_130_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_128();
    l0 = self.box_ProximityTrigger_v2_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1135406569", "1135406569", "UNI49_010_DOORS_main", "box_MissionBlockLayer_130.Activated", "box_ProximityTrigger_v2_128.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_158_Out()
    local l0;
    self:OnExit_box_GetPlayerGroup_v2_158_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2081027526", "2081027526", "UNI49_010_DOORS_main", "box_GetPlayerGroup_v2_158.Out", "box_ActivityAcknowledgeGate_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MissionBlockLayer_153_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_154();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1959343399", "1959343399", "UNI49_010_DOORS_main", "box_MissionBlockLayer_153.Activated", "box_MissionBlockLayer_154.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_11_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_83();
    l0 = self.box_UniversalInteractionListener_11;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1965283510", "1965283510", "UNI49_010_DOORS_main", "box_UniversalInteractionListener_11.Disabled", "box_Simple_Node_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_11_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_15();
    l0 = self.box_UniversalInteractionListener_11;
    l1 = self.box_UniversalInteractionModifier_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|501387352", "501387352", "UNI49_010_DOORS_main", "box_UniversalInteractionListener_11.Interacted", "box_UniversalInteractionModifier_v2_15.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_GetPreconditionState_184_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_205();
    l0 = self.box_MessageListener_v3_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1264910286", "1264910286", "UNI49_010_DOORS_main", "box_GetPreconditionState_184.NotValid", "box_MessageListener_v3_205.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_184_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1046584992", "1046584992", "UNI49_010_DOORS_main", "box_GetPreconditionState_184.Valid", "box_MultipleOR_202.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_43_NotValid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1527454900", "1527454900", "UNI49_010_DOORS_main", "box_GetPreconditionState_43.NotValid", "box_MultipleOR_189.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MessageListener_v3_7_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_7;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|466102961", "466102961", "UNI49_010_DOORS_main", "box_MessageListener_v3_7.Received", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPreconditionState_254_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_284();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|27217726", "27217726", "UNI49_010_DOORS_main", "box_GetPreconditionState_254.Valid", "box_Simple_Node_284.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_151_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_149();
    l0 = self.box_EntityStatusListener_151;
    l1 = self.box_UniversalInteractionModifier_v2_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2053657565", "2053657565", "UNI49_010_DOORS_main", "box_EntityStatusListener_151.Loaded", "box_UniversalInteractionModifier_v2_149.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_12_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_14();
    l0 = self.box_UniversalInteractionModifier_v2_12;
    l1 = self.box_UniversalInteractionListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|349027148", "349027148", "UNI49_010_DOORS_main", "box_UniversalInteractionModifier_v2_12.Disabled", "box_UniversalInteractionListener_14.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_12_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_14();
    l0 = self.box_UniversalInteractionModifier_v2_12;
    l1 = self.box_UniversalInteractionListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|124649786", "124649786", "UNI49_010_DOORS_main", "box_UniversalInteractionModifier_v2_12.Enabled", "box_UniversalInteractionListener_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_149_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_150();
    l0 = self.box_UniversalInteractionModifier_v2_149;
    l1 = self.box_MessageListener_v3_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|44849102", "44849102", "UNI49_010_DOORS_main", "box_UniversalInteractionModifier_v2_149.Disabled", "box_MessageListener_v3_150.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_146_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_222();
    l0 = self.box_MessageListener_v3_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|723424190", "723424190", "UNI49_010_DOORS_main", "box_OutputOrder_v2_146.Out", "box_MessageListener_v3_222.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_146_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_148();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|355803502", "355803502", "UNI49_010_DOORS_main", "box_OutputOrder_v2_146.Out", "box_MissionBlockLayer_148.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_265_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_255();
    l0 = self.box_SoundModifier_v2_255;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2083641695", "2083641695", "UNI49_010_DOORS_main", "box_OutputOrder_v2_265.Out", "box_SoundModifier_v2_255.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_265_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_232();
    l0 = self.box_SoundModifier_v2_232;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1220007196", "1220007196", "UNI49_010_DOORS_main", "box_OutputOrder_v2_265.Out", "box_SoundModifier_v2_232.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MessageListener_v3_150_Received()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_152();
    l0 = self.box_MessageListener_v3_150;
    l1 = self.box_UniversalInteractionModifier_v2_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|433242517", "433242517", "UNI49_010_DOORS_main", "box_MessageListener_v3_150.Received", "box_UniversalInteractionModifier_v2_152.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CameraShakeAndRumble_V2_199_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|607225431", "607225431", "UNI49_010_DOORS_main", "box_CameraShakeAndRumble_V2_199.Out", "box_MultipleOR_196.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UniversalInteractionModifier_v2_18_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_20();
    l0 = self.box_UniversalInteractionModifier_v2_18;
    l1 = self.box_UniversalInteractionListener_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1833905383", "1833905383", "UNI49_010_DOORS_main", "box_UniversalInteractionModifier_v2_18.Enabled", "box_UniversalInteractionListener_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_202_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_203();
    l0 = self.box_MultipleOR_202;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|724815681", "724815681", "UNI49_010_DOORS_main", "box_MultipleOR_202.Out", "box_OutputOrder_v2_203.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_36_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_36;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|837950380", "837950380", "UNI49_010_DOORS_main", "box_ActivityAcknowledgeGate_36.Acknowledged", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_36_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_268();
    l0 = self.box_ActivityAcknowledgeGate_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1386174478", "1386174478", "UNI49_010_DOORS_main", "box_ActivityAcknowledgeGate_36.Reloaded", "box_OutputOrder_v2_268.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_200_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_204();
    l0 = self.box_Random_200;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2056966609", "2056966609", "UNI49_010_DOORS_main", "box_Random_200.Output", "box_CameraShakeAndRumble_V2_204.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_200_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_199();
    l0 = self.box_Random_200;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|108002144", "108002144", "UNI49_010_DOORS_main", "box_Random_200.Output", "box_CameraShakeAndRumble_V2_199.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_200_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_201();
    l0 = self.box_Random_200;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1163908844", "1163908844", "UNI49_010_DOORS_main", "box_Random_200.Output", "box_CameraShakeAndRumble_V2_201.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_177_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_173();
    l0 = self.box_MultipleOR_177;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|161500007", "161500007", "UNI49_010_DOORS_main", "box_MultipleOR_177.Out", "box_MissionBlockLayer_173.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_148_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_151();
    l0 = self.box_EntityStatusListener_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1845281125", "1845281125", "UNI49_010_DOORS_main", "box_MissionBlockLayer_148.Activated", "box_EntityStatusListener_151.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_15_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_11();
    l0 = self.box_UniversalInteractionModifier_v2_15;
    l1 = self.box_UniversalInteractionListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|309595935", "309595935", "UNI49_010_DOORS_main", "box_UniversalInteractionModifier_v2_15.Disabled", "box_UniversalInteractionListener_11.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_15_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_11();
    l0 = self.box_UniversalInteractionModifier_v2_15;
    l1 = self.box_UniversalInteractionListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1274318437", "1274318437", "UNI49_010_DOORS_main", "box_UniversalInteractionModifier_v2_15.Enabled", "box_UniversalInteractionListener_11.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_43();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1398641315", "1398641315", "UNI49_010_DOORS_main", "box_OutputOrder_v2_182.Out", "box_GetPreconditionState_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_182_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_181();
    l0 = self.box_MessageListener_v3_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|509991936", "509991936", "UNI49_010_DOORS_main", "box_OutputOrder_v2_182.Out", "box_MessageListener_v3_181.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_141_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_141();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|734575634", "734575634", "UNI49_010_DOORS_main", "box_MissionBlockLayer_141.Deactivated", "box_MissionBlockLayer_141.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_141_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_108();
    l0 = self.box_EntityStatusListener_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1204490715", "1204490715", "UNI49_010_DOORS_main", "box_MissionBlockLayer_141.Disabled", "box_EntityStatusListener_108.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_54_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_55();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1393500582", "1393500582", "UNI49_010_DOORS_main", "box_MissionBlockLayer_54.Activated", "box_MissionBlockLayer_55.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_54_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_54();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1535591806", "1535591806", "UNI49_010_DOORS_main", "box_MissionBlockLayer_54.Deactivated", "box_MissionBlockLayer_54.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_54_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_55();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1006442251", "1006442251", "UNI49_010_DOORS_main", "box_MissionBlockLayer_54.Disabled", "box_MissionBlockLayer_55.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_269_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_279;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|603000234", "603000234", "UNI49_010_DOORS_main", "box_OutputOrder_v2_269.Out", "box_MultipleOR_279.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_269_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_197();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1101942442", "1101942442", "UNI49_010_DOORS_main", "box_OutputOrder_v2_269.Out", "box_Simple_Node_197.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_220();
    l0 = self.box_UniversalInteractionListener_220;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2138214425", "2138214425", "UNI49_010_DOORS_main", "box_OutputOrder_v2_188.Out", "box_UniversalInteractionListener_220.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_188_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_187();
    l0 = self.box_UniversalInteractionListener_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1782041821", "1782041821", "UNI49_010_DOORS_main", "box_OutputOrder_v2_188.Out", "box_UniversalInteractionListener_187.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_220_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_221();
    l0 = self.box_UniversalInteractionListener_220;
    l1 = self.box_NavLinkModifier_221;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1505691800", "1505691800", "UNI49_010_DOORS_main", "box_UniversalInteractionListener_220.Interacted", "box_NavLinkModifier_221.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_17_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_UniversalInteractionModifier_v2_17;
    l1 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1626919253", "1626919253", "UNI49_010_DOORS_main", "box_UniversalInteractionModifier_v2_17.Disabled", "box_Delay_v5_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MissionBlockLayer_98_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_98();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|381456936", "381456936", "UNI49_010_DOORS_main", "box_MissionBlockLayer_98.Deactivated", "box_MissionBlockLayer_98.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_98_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_141();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1911338974", "1911338974", "UNI49_010_DOORS_main", "box_MissionBlockLayer_98.Disabled", "box_MissionBlockLayer_141.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_94_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetPreconditionState_38();
    l0 = self.box_Delay_v5_94;
    l1 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1948716277", "1948716277", "UNI49_010_DOORS_main", "box_Delay_v5_94.TimeElapsed", "box_GetPreconditionState_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_217();
    l0 = self.box_SoundModifier_v2_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1749577297", "1749577297", "UNI49_010_DOORS_main", "box_OutputOrder_v2_35.Out", "box_SoundModifier_v2_217.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_28();
    l0 = self.box_SoundModifier_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1876327791", "1876327791", "UNI49_010_DOORS_main", "box_OutputOrder_v2_35.Out", "box_SoundModifier_v2_28.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_CameraShakeAndRumble_V2_204_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|309535226", "309535226", "UNI49_010_DOORS_main", "box_CameraShakeAndRumble_V2_204.Out", "box_MultipleOR_196.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MessageListener_v3_278_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_278;
    l1 = self.box_MultipleOR_279;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|617013987", "617013987", "UNI49_010_DOORS_main", "box_MessageListener_v3_278.Received", "box_MultipleOR_279.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VisionModeModifier_v2_272_StartedBliss()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_273();
    l0 = self.box_VisionModeModifier_v2_272;
    l1 = self.box_Delay_v5_273;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2133845301", "2133845301", "UNI49_010_DOORS_main", "box_VisionModeModifier_v2_272.StartedBliss", "box_Delay_v5_273.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MessageListener_v3_275_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_269();
    l0 = self.box_MessageListener_v3_275;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|940895490", "940895490", "UNI49_010_DOORS_main", "box_MessageListener_v3_275.Received", "box_OutputOrder_v2_269.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_224_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_147();
    l0 = self.box_UniversalInteractionModifier_v2_224;
    l1 = self.box_NavLinkModifier_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1748941014", "1748941014", "UNI49_010_DOORS_main", "box_UniversalInteractionModifier_v2_224.Disabled", "box_NavLinkModifier_147.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_108_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_109();
    l0 = self.box_EntityStatusListener_108;
    l1 = self.box_UniversalInteractionModifier_v2_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2049703411", "2049703411", "UNI49_010_DOORS_main", "box_EntityStatusListener_108.Loaded", "box_UniversalInteractionModifier_v2_109.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_241_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_257();
    l0 = self.box_SoundModifier_v2_257;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|599021994", "599021994", "UNI49_010_DOORS_main", "box_OutputOrder_v2_241.Out", "box_SoundModifier_v2_257.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_241_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_229();
    l0 = self.box_SoundModifier_v2_229;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1865173841", "1865173841", "UNI49_010_DOORS_main", "box_OutputOrder_v2_241.Out", "box_SoundModifier_v2_229.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_PlayerSpeedModifier_v3_171_ForceWalkOut()
    local params, l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_171();
    l0 = self.box_PlayerSpeedModifier_v3_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|42415531", "42415531", "UNI49_010_DOORS_main", "box_PlayerSpeedModifier_v3_171.ForceWalkOut", "box_PlayerSpeedModifier_v3_171.ApplySpeedFactor", l0:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_196_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_206();
    l0 = self.box_MultipleOR_196;
    l1 = self.box_Random_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|423026853", "423026853", "UNI49_010_DOORS_main", "box_MultipleOR_196.Out", "box_Random_206.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_159_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_25();
    l0 = self.box_MultipleOR_159;
    l1 = self.box_MessageListener_v3_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|362078814", "362078814", "UNI49_010_DOORS_main", "box_MultipleOR_159.Out", "box_MessageListener_v3_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_180_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_170();
    l0 = self.box_Delay_v5_180;
    l1 = self.box_MessageListener_v3_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|112788352", "112788352", "UNI49_010_DOORS_main", "box_Delay_v5_180.TimeElapsed", "box_MessageListener_v3_170.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_268_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|532146251", "532146251", "UNI49_010_DOORS_main", "box_OutputOrder_v2_268.Out", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_268_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_254();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1000356677", "1000356677", "UNI49_010_DOORS_main", "box_OutputOrder_v2_268.Out", "box_GetPreconditionState_254.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_46_Started()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_133();
    l0 = self.box_SoundModifier_v2_46;
    l1 = self.box_NavLinkModifier_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|507213743", "507213743", "UNI49_010_DOORS_main", "box_SoundModifier_v2_46.Started", "box_NavLinkModifier_133.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_223_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_153();
    l0 = self.box_MultipleOR_223;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|890931760", "890931760", "UNI49_010_DOORS_main", "box_MultipleOR_223.Out", "box_MissionBlockLayer_153.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_216_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_213();
    l0 = self.box_SoundModifier_v2_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|917482955", "917482955", "UNI49_010_DOORS_main", "box_OutputOrder_v2_216.Out", "box_SoundModifier_v2_213.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_216_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_212();
    l0 = self.box_ProximityTrigger_v2_212;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|803587234", "803587234", "UNI49_010_DOORS_main", "box_OutputOrder_v2_216.Out", "box_ProximityTrigger_v2_212.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_142();
    l0 = self.box_MultipleOR_23;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1389359312", "1389359312", "UNI49_010_DOORS_main", "box_MultipleOR_23.Out", "box_MissionBlockLayer_142.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_45_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_48();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1953301377", "1953301377", "UNI49_010_DOORS_main", "box_MissionBlockLayer_45.Activated", "box_MissionBlockLayer_48.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_45_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_45();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|216471379", "216471379", "UNI49_010_DOORS_main", "box_MissionBlockLayer_45.Deactivated", "box_MissionBlockLayer_45.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_45_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_48();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|785713800", "785713800", "UNI49_010_DOORS_main", "box_MissionBlockLayer_45.Disabled", "box_MissionBlockLayer_48.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1131366990", "1131366990", "UNI49_010_DOORS_main", "box_OutputOrder_v2_50.Out", "box_Delay_v5_47.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_46();
    l0 = self.box_SoundModifier_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|186278170", "186278170", "UNI49_010_DOORS_main", "box_OutputOrder_v2_50.Out", "box_SoundModifier_v2_46.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MessageListener_v3_25_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_25;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|202589675", "202589675", "UNI49_010_DOORS_main", "box_MessageListener_v3_25.Received", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_110();
    l0 = self.box_Delay_v5_16;
    l1 = self.box_EntityStatusListener_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2043243742", "2043243742", "UNI49_010_DOORS_main", "box_Delay_v5_16.TimeElapsed", "box_EntityStatusListener_110.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_128_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_132();
    l0 = self.box_ProximityTrigger_v2_128;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2144989726", "2144989726", "UNI49_010_DOORS_main", "box_ProximityTrigger_v2_128.Enter", "box_MissionBlockLayer_132.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_208_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_208;
    l1 = self.box_MultipleOR_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|333099156", "333099156", "UNI49_010_DOORS_main", "box_Delay_v5_208.TimeElapsed", "box_MultipleOR_202.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_80();
    l0 = self.box_SoundModifier_v2_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1304282067", "1304282067", "UNI49_010_DOORS_main", "box_OutputOrder_v2_61.Out", "box_SoundModifier_v2_80.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_67();
    l0 = self.box_SoundModifier_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|857098524", "857098524", "UNI49_010_DOORS_main", "box_OutputOrder_v2_61.Out", "box_SoundModifier_v2_67.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_66();
    l0 = self.box_SoundModifier_v2_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|955649559", "955649559", "UNI49_010_DOORS_main", "box_OutputOrder_v2_61.Out", "box_SoundModifier_v2_66.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_59();
    l0 = self.box_SoundModifier_v2_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1780115993", "1780115993", "UNI49_010_DOORS_main", "box_OutputOrder_v2_61.Out", "box_SoundModifier_v2_59.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_70();
    l0 = self.box_SoundModifier_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1983804657", "1983804657", "UNI49_010_DOORS_main", "box_OutputOrder_v2_61.Out", "box_SoundModifier_v2_70.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_78();
    l0 = self.box_SoundModifier_v2_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|609420208", "609420208", "UNI49_010_DOORS_main", "box_OutputOrder_v2_61.Out", "box_SoundModifier_v2_78.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_69();
    l0 = self.box_SoundModifier_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|621317455", "621317455", "UNI49_010_DOORS_main", "box_OutputOrder_v2_61.Out", "box_SoundModifier_v2_69.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_72();
    l0 = self.box_SoundModifier_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1703579172", "1703579172", "UNI49_010_DOORS_main", "box_OutputOrder_v2_61.Out", "box_SoundModifier_v2_72.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_63();
    l0 = self.box_SoundModifier_v2_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1331438821", "1331438821", "UNI49_010_DOORS_main", "box_OutputOrder_v2_61.Out", "box_SoundModifier_v2_63.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_79();
    l0 = self.box_SoundModifier_v2_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1640601340", "1640601340", "UNI49_010_DOORS_main", "box_OutputOrder_v2_61.Out", "box_SoundModifier_v2_79.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_274_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_277();
    l0 = self.box_MultipleOR_274;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1523328288", "1523328288", "UNI49_010_DOORS_main", "box_MultipleOR_274.Out", "box_OutputOrder_v2_277.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_145_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_146();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1879157918", "1879157918", "UNI49_010_DOORS_main", "box_GetPreconditionState_145.NotValid", "box_OutputOrder_v2_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_145_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1332136600", "1332136600", "UNI49_010_DOORS_main", "box_GetPreconditionState_145.Valid", "box_MultipleOR_223.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_279_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_272();
    l0 = self.box_MultipleOR_279;
    l1 = self.box_VisionModeModifier_v2_272;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|301592683", "301592683", "UNI49_010_DOORS_main", "box_MultipleOR_279.Out", "box_VisionModeModifier_v2_272.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(7, params);
end;

function export:f_box_MessageListener_v3_222_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_222;
    l1 = self.box_MultipleOR_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|339246395", "339246395", "UNI49_010_DOORS_main", "box_MessageListener_v3_222.Received", "box_MultipleOR_223.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MessageListener_v3_205_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_205;
    l1 = self.box_MultipleOR_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1778175247", "1778175247", "UNI49_010_DOORS_main", "box_MessageListener_v3_205.Received", "box_MultipleOR_202.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MessageListener_v3_6_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_6;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|307382838", "307382838", "UNI49_010_DOORS_main", "box_MessageListener_v3_6.Received", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_131_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_113();
    l0 = self.box_EntityStatusListener_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|979034769", "979034769", "UNI49_010_DOORS_main", "box_MissionBlockLayer_131.Activated", "box_EntityStatusListener_113.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_5_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = self.box_Delay_v5_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|580461003", "580461003", "UNI49_010_DOORS_main", "box_Delay_v5_5.TimeElapsed", "box_OutputOrder_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_21();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|632314731", "632314731", "UNI49_010_DOORS_main", "box_OutputOrder_v2_57.Out", "box_MissionBlockLayer_21.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_53();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2070131776", "2070131776", "UNI49_010_DOORS_main", "box_OutputOrder_v2_57.Out", "box_MissionBlockLayer_53.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_24_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_OnceOnly_v3_24;
    l1 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1821762722", "1821762722", "UNI49_010_DOORS_main", "box_OnceOnly_v3_24.Out", "box_Delay_v5_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_113_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_112();
    l0 = self.box_EntityStatusListener_113;
    l1 = self.box_UniversalInteractionModifier_v2_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|438873968", "438873968", "UNI49_010_DOORS_main", "box_EntityStatusListener_113.Loaded", "box_UniversalInteractionModifier_v2_112.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_152_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_188();
    l0 = self.box_UniversalInteractionModifier_v2_152;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|472448659", "472448659", "UNI49_010_DOORS_main", "box_UniversalInteractionModifier_v2_152.Enabled", "box_OutputOrder_v2_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_231_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_258();
    l0 = self.box_SoundModifier_v2_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1248527547", "1248527547", "UNI49_010_DOORS_main", "box_OutputOrder_v2_231.Out", "box_SoundModifier_v2_258.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_231_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_250();
    l0 = self.box_SoundModifier_v2_250;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1904693808", "1904693808", "UNI49_010_DOORS_main", "box_OutputOrder_v2_231.Out", "box_SoundModifier_v2_250.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_GetPreconditionState_172_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_182();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|817940562", "817940562", "UNI49_010_DOORS_main", "box_GetPreconditionState_172.Valid", "box_OutputOrder_v2_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_20_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_33();
    l0 = self.box_UniversalInteractionListener_20;
    l1 = self.box_NavLinkModifier_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|111177789", "111177789", "UNI49_010_DOORS_main", "box_UniversalInteractionListener_20.Interacted", "box_NavLinkModifier_33.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_GetPreconditionState_8_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_5();
    l0 = self.box_Delay_v5_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|149566372", "149566372", "UNI49_010_DOORS_main", "box_GetPreconditionState_8.NotValid", "box_Delay_v5_5.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetPreconditionState_8_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1090949144", "1090949144", "UNI49_010_DOORS_main", "box_GetPreconditionState_8.Valid", "box_Delay_v5_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_239_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_260();
    l0 = self.box_SoundModifier_v2_260;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|919319817", "919319817", "UNI49_010_DOORS_main", "box_OutputOrder_v2_239.Out", "box_SoundModifier_v2_260.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_239_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_262();
    l0 = self.box_SoundModifier_v2_262;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|201133664", "201133664", "UNI49_010_DOORS_main", "box_OutputOrder_v2_239.Out", "box_SoundModifier_v2_262.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_110_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_12();
    l0 = self.box_EntityStatusListener_110;
    l1 = self.box_UniversalInteractionModifier_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|376924264", "376924264", "UNI49_010_DOORS_main", "box_EntityStatusListener_110.Loaded", "box_UniversalInteractionModifier_v2_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_277_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_276();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|852340292", "852340292", "UNI49_010_DOORS_main", "box_OutputOrder_v2_277.Out", "box_GetPreconditionState_276.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_277_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_278();
    l0 = self.box_MessageListener_v3_278;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1111444253", "1111444253", "UNI49_010_DOORS_main", "box_OutputOrder_v2_277.Out", "box_MessageListener_v3_278.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_277_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_280();
    l0 = self.box_MessageListener_v3_280;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|686369314", "686369314", "UNI49_010_DOORS_main", "box_OutputOrder_v2_277.Out", "box_MessageListener_v3_280.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_109_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_143();
    l0 = self.box_UniversalInteractionModifier_v2_109;
    l1 = self.box_UniversalInteractionModifier_v2_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|511784940", "511784940", "UNI49_010_DOORS_main", "box_UniversalInteractionModifier_v2_109.Disabled", "box_UniversalInteractionModifier_v2_143.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_30_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_54();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|215148878", "215148878", "UNI49_010_DOORS_main", "box_MissionBlockLayer_30.Activated", "box_MissionBlockLayer_54.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_30_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_30();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|448810426", "448810426", "UNI49_010_DOORS_main", "box_MissionBlockLayer_30.Deactivated", "box_MissionBlockLayer_30.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_30_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_54();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1736877313", "1736877313", "UNI49_010_DOORS_main", "box_MissionBlockLayer_30.Disabled", "box_MissionBlockLayer_54.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_97_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetPreconditionState_126();
    l0 = self.box_Delay_v5_97;
    l1 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|888468774", "888468774", "UNI49_010_DOORS_main", "box_Delay_v5_97.TimeElapsed", "box_GetPreconditionState_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_1_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_96();
    l0 = self.box_Delay_v5_1;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|896349430", "896349430", "UNI49_010_DOORS_main", "box_Delay_v5_1.TimeElapsed", "box_MissionBlockLayer_96.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_44_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_10();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|618817573", "618817573", "UNI49_010_DOORS_main", "box_GetPreconditionState_44.NotValid", "box_Simple_Node_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_44_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1773076105", "1773076105", "UNI49_010_DOORS_main", "box_GetPreconditionState_44.Valid", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_91_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1726231605", "1726231605", "UNI49_010_DOORS_main", "box_OutputOrder_v2_91.Out", "box_Simple_Node_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_90();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1788991749", "1788991749", "UNI49_010_DOORS_main", "box_OutputOrder_v2_91.Out", "box_Simple_Node_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_175();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1370847518", "1370847518", "UNI49_010_DOORS_main", "box_OutputOrder_v2_91.Out", "box_Simple_Node_175.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_176();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1342858788", "1342858788", "UNI49_010_DOORS_main", "box_OutputOrder_v2_91.Out", "box_Simple_Node_176.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_192();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1705245151", "1705245151", "UNI49_010_DOORS_main", "box_OutputOrder_v2_91.Out", "box_Simple_Node_192.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_129_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_114();
    l0 = self.box_MessageListener_v3_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|407572915", "407572915", "UNI49_010_DOORS_main", "box_Simple_Node_129.Out", "box_MessageListener_v3_114.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MessageListener_v3_114_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_114;
    l1 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1842916058", "1842916058", "UNI49_010_DOORS_main", "box_MessageListener_v3_114.Received", "box_MultipleOR_127.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_127_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_130();
    l0 = self.box_MultipleOR_127;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1847308215", "1847308215", "UNI49_010_DOORS_main", "box_MultipleOR_127.Out", "box_MissionBlockLayer_130.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_185_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_185;
    l1 = self.box_MultipleOR_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|276566668", "276566668", "UNI49_010_DOORS_main", "box_Delay_v5_185.TimeElapsed", "box_MultipleOR_202.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_142_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_107();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1782812040", "1782812040", "UNI49_010_DOORS_main", "box_MissionBlockLayer_142.Activated", "box_MissionBlockLayer_107.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_107_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_98();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|724305239", "724305239", "UNI49_010_DOORS_main", "box_MissionBlockLayer_107.Activated", "box_MissionBlockLayer_98.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_27_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_39();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|60755092", "60755092", "UNI49_010_DOORS_main", "box_MissionBlockLayer_27.Activated", "box_MissionBlockLayer_39.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_27_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_27();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1094421555", "1094421555", "UNI49_010_DOORS_main", "box_MissionBlockLayer_27.Deactivated", "box_MissionBlockLayer_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_27_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_39();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1806323201", "1806323201", "UNI49_010_DOORS_main", "box_MissionBlockLayer_27.Disabled", "box_MissionBlockLayer_39.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_21_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_27();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2083776704", "2083776704", "UNI49_010_DOORS_main", "box_MissionBlockLayer_21.Activated", "box_MissionBlockLayer_27.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_21_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_21();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|686708001", "686708001", "UNI49_010_DOORS_main", "box_MissionBlockLayer_21.Deactivated", "box_MissionBlockLayer_21.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_21_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_27();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1742890605", "1742890605", "UNI49_010_DOORS_main", "box_MissionBlockLayer_21.Disabled", "box_MissionBlockLayer_27.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_62();
    l0 = self.box_SoundModifier_v2_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1779118236", "1779118236", "UNI49_010_DOORS_main", "box_OutputOrder_v2_76.Out", "box_SoundModifier_v2_62.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_74();
    l0 = self.box_SoundModifier_v2_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|296385070", "296385070", "UNI49_010_DOORS_main", "box_OutputOrder_v2_76.Out", "box_SoundModifier_v2_74.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_64();
    l0 = self.box_SoundModifier_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|93429124", "93429124", "UNI49_010_DOORS_main", "box_OutputOrder_v2_76.Out", "box_SoundModifier_v2_64.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_68();
    l0 = self.box_SoundModifier_v2_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2062966994", "2062966994", "UNI49_010_DOORS_main", "box_OutputOrder_v2_76.Out", "box_SoundModifier_v2_68.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_65();
    l0 = self.box_SoundModifier_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1466033293", "1466033293", "UNI49_010_DOORS_main", "box_OutputOrder_v2_76.Out", "box_SoundModifier_v2_65.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_73();
    l0 = self.box_SoundModifier_v2_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1175690841", "1175690841", "UNI49_010_DOORS_main", "box_OutputOrder_v2_76.Out", "box_SoundModifier_v2_73.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_60();
    l0 = self.box_SoundModifier_v2_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|346704744", "346704744", "UNI49_010_DOORS_main", "box_OutputOrder_v2_76.Out", "box_SoundModifier_v2_60.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_71();
    l0 = self.box_SoundModifier_v2_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|372783857", "372783857", "UNI49_010_DOORS_main", "box_OutputOrder_v2_76.Out", "box_SoundModifier_v2_71.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_77();
    l0 = self.box_SoundModifier_v2_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|457153026", "457153026", "UNI49_010_DOORS_main", "box_OutputOrder_v2_76.Out", "box_SoundModifier_v2_77.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_75();
    l0 = self.box_SoundModifier_v2_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1588833586", "1588833586", "UNI49_010_DOORS_main", "box_OutputOrder_v2_76.Out", "box_SoundModifier_v2_75.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_135_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1133177751", "1133177751", "UNI49_010_DOORS_main", "box_MissionBlockLayer_135.Activated", "box_Delay_v5_41.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetPreconditionState_169_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_180();
    l0 = self.box_Delay_v5_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|777842425", "777842425", "UNI49_010_DOORS_main", "box_GetPreconditionState_169.NotValid", "box_Delay_v5_180.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetPreconditionState_169_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1871314220", "1871314220", "UNI49_010_DOORS_main", "box_GetPreconditionState_169.Valid", "box_MultipleOR_177.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_47_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RegenerateNavmesh_9();
    l0 = self.box_Delay_v5_47;
    l1 = self.box_RegenerateNavmesh_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2112674515", "2112674515", "UNI49_010_DOORS_main", "box_Delay_v5_47.TimeElapsed", "box_RegenerateNavmesh_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_174();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1197319769", "1197319769", "UNI49_010_DOORS_main", "box_OutputOrder_v2_29.Out", "box_Simple_Node_174.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_92();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1984096494", "1984096494", "UNI49_010_DOORS_main", "box_OutputOrder_v2_29.Out", "box_Simple_Node_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_219();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1644610756", "1644610756", "UNI49_010_DOORS_main", "box_OutputOrder_v2_29.Out", "box_Simple_Node_219.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@Bliss_VFX");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_99_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@BlissLoop");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_198_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@CloseGate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_197_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@Door_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_92_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@Door_Sound_02");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@Explosion_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_210_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@GameInit");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_207_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@New_Door_Sound_2");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@New_Door_Sound_3");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@New_Door_Sound_4");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_284()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_284");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@restart_B30_Sounds");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_284_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@Scopo_Loop_Start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_219_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@Start_Pipe_Hisss_Sound");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@Start_PostB30Steam");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_178_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@Start_Pump_Sounds");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_89_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@Stop_Pump_Sounds");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_90_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@UNI49_010_B30_Started");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_111_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@UNI49_010_B30A_Started");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_40_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@UNI49_010_B31_Started");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_156_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@uni49_B40_Started");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_93_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|@Valves");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_140_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|5590611");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_55_Deactivated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "108225048256399092",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|16258510");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_154_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_154_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "45174645670066521",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|24159570");
    l0:SetConnections({
        -- Resumed,
        [1] = self.f_box_SoundShapeModifier_240_Resumed,
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2104160161020013545",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_237()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|49682800");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2104160465585204215",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|69682461");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_179_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_256");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|126702809");
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
                [0] = self.f_box_OutputOrder_v2_256_Out_0,
                [1] = self.f_box_OutputOrder_v2_256_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_206()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|131541164");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_81()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "UNI49_010_B30A_Started",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_233()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656042688499532",
        -- SoundId,
        [1] = "787920718",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_215()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2395499080",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_276()
    local params, l0;
    DrawTextToScreen("Comment: IS B20 COMPLETE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetPreconditionState')-- Comment: IS B20 COMPLETE");
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_276");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|171343271");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_276_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015312779015569",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_250()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656028616609610",
        -- SoundId,
        [1] = "3024109683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_187()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2101080400079098229",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_212()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105127774053219814",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_249()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_249");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|216031587");
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
                [0] = self.f_box_OutputOrder_v2_249_Out_0,
                [1] = self.f_box_OutputOrder_v2_249_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_247()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656055237857104",
        -- SoundId,
        [1] = "787920718",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_264()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_264");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|225788321");
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
                [0] = self.f_box_OutputOrder_v2_264_Out_0,
                [1] = self.f_box_OutputOrder_v2_264_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_209()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2527155367",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_71()
    local params;
    params = {
        -- Pawns,
        [0] = "2101655994609192774",
        -- SoundId,
        [1] = "1353545866",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_271()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_271");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|260170317");
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
                [0] = self.f_box_OutputOrder_v2_271_Out_0,
                [1] = self.f_box_OutputOrder_v2_271_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|282398301");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_126_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_126_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015281094927754",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_191()
    local params;
    params = {
        -- Entity,
        [0] = "2104454249774596715",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_69()
    local params;
    params = {
        -- Pawns,
        [0] = "2101655986308665156",
        -- SoundId,
        [1] = "2644146809",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_144()
    local params;
    params = {
        -- Entity,
        [0] = "2104145449182064704",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_134()
    local params;
    params = {
        -- Entity,
        [0] = "2104145449182064704",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_62()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656024246144840",
        -- SoundId,
        [1] = "1414854136",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_255()
    local params;
    params = {
        -- Pawns,
        [0] = "2101655986308665156",
        -- SoundId,
        [1] = "787920718",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_262()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656057890754386",
        -- SoundId,
        [1] = "2690773750",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_251()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_251");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|374661473");
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

function export:OnEnter_box_Simple_Node_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|375296321");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_78()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656057890754386",
        -- SoundId,
        [1] = "620881151",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|397287925");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_53_Activated,
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_53_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_53_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "27160254963655632",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|429912807");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_22_Active,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_22_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_22_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015223001501859",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_267");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|457790479");
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
                [0] = self.f_box_OutputOrder_v2_267_Out_0,
                [1] = self.f_box_OutputOrder_v2_267_Out_1,
                [2] = self.f_box_OutputOrder_v2_267_Out_2,
                [3] = self.f_box_OutputOrder_v2_267_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_143()
    local params;
    params = {
        -- usableEntity,
        [4] = "2104145859483562065",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_211()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2395499080",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|480038886");
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
                [0] = self.f_box_OutputOrder_v2_227_Out_0,
                [1] = self.f_box_OutputOrder_v2_227_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|491788890");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_96_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "27160246521927143",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_273()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7.5,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_170()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "PostB30_Complete",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_14()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- usableEntityId,
        [1] = "2101149050425329292",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|531227010");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_39_Activated,
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_39_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_39_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "63189051982654862",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|540109024");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_132_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_132_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "27160246626301394",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|557277821");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_201_Out,
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 1.5,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|576087235");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|580047382");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2104160699562355708",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_42()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|599130651");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_38_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_38_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015284037365317",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|609780861");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_51_Activated,
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_51_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_51_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "45174653473159474",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|626849848");
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
                [0] = self.f_box_OutputOrder_v2_230_Out_0,
                [1] = self.f_box_OutputOrder_v2_230_Out_1,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|636666281");
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

function export:OnEnter_box_MessageListener_v3_280()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "UNI49_010_B22_started",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|655675858");
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
                [0] = self.f_box_OutputOrder_v2_203_Out_0,
                [1] = self.f_box_OutputOrder_v2_203_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_270()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_242()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656069397827412",
        -- SoundId,
        [1] = "3748131841",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_181()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "UNI49_010_B05_COMPLETED",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_214()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105128114068702845",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_248()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_248");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|680103120");
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
                [0] = self.f_box_OutputOrder_v2_248_Out_0,
                [1] = self.f_box_OutputOrder_v2_248_Out_1,
                [2] = self.f_box_OutputOrder_v2_248_Out_2,
                [3] = self.f_box_OutputOrder_v2_248_Out_3,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|702249541");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2104160111262985192",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_105()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "ExitDoorOpen",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_75()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656071933284182",
        -- SoundId,
        [1] = "1353545866",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|728122012");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
                [2] = self.f_box_OutputOrder_v2_31_Out_2,
                [3] = self.f_box_OutputOrder_v2_31_Out_3,
                [4] = self.f_box_OutputOrder_v2_31_Out_4,
                [5] = self.f_box_OutputOrder_v2_31_Out_5,
                [6] = self.f_box_OutputOrder_v2_31_Out_6,
                [7] = self.f_box_OutputOrder_v2_31_Out_7,
                [8] = self.f_box_OutputOrder_v2_31_Out_8,
            },
            count = 9,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|757442539");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_49_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_49_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015275991554371",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|816457132");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "63189046883181185",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|819255102");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_48_Deactivated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "99217849001652637",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_58()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|829756098");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_130_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "27160246626301394",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_64()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656042688499532",
        -- SoundId,
        [1] = "1414854136",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_59()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656045666455374",
        -- SoundId,
        [1] = "620881151",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|861951763");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_158_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|871541049");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_153_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "54181844924812337",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_79()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656071933284182",
        -- SoundId,
        [1] = "620881151",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_244()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|891025285");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103608265731491451",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2102116259853249667",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_266()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656028616609610",
        -- SoundId,
        [1] = "2690773750",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_73()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656057890754386",
        -- SoundId,
        [1] = "1353545866",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_252()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_252");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|939119491");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2104160609917496315",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|942532085");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_184_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_184_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015275991554371",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_259()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656071933284182",
        -- SoundId,
        [1] = "3024109683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|980694717");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_43_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015276929758362",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_253()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656045666455374",
        -- SoundId,
        [1] = "3024109683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|996466263");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2104160420383190006",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_68()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656045666455374",
        -- SoundId,
        [1] = "1353545866",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "UNI49_010_B30_Started",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_254()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_254");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1033467625");
    l0:SetConnections({
        -- Valid,
        [1] = self.f_box_GetPreconditionState_254_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015275991554371",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_151()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101081750733077708",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_12()
    local params;
    params = {
        -- usableEntity,
        [4] = "2101149050425329292",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_149()
    local params;
    params = {
        -- usableEntity,
        [4] = "2101081750733077708",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1061782417");
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
                [0] = self.f_box_OutputOrder_v2_146_Out_0,
                [1] = self.f_box_OutputOrder_v2_146_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_265()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_265");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1068031267");
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
                [0] = self.f_box_OutputOrder_v2_265_Out_0,
                [1] = self.f_box_OutputOrder_v2_265_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_150()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "UNI49_B30A_Started",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1100971755");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_199_Out,
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_18()
    local params;
    params = {
        -- usableEntity,
        [4] = "2101080237220565316",
    };
    return params;
end;

function export:OnEnter_box_Random_200()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_228()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656045666455374",
        -- SoundId,
        [1] = "2690773750",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1169327509");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_148_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "45174645670066521",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_15()
    local params;
    params = {
        -- usableEntity,
        [4] = "2102116259853249667",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_112()
    local params;
    params = {
        -- usableEntity,
        [4] = "2104091576010566941",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1182719178");
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
                [0] = self.f_box_OutputOrder_v2_182_Out_0,
                [1] = self.f_box_OutputOrder_v2_182_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1193696362");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_141_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_141_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "27160247155810951",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1205054655");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_54_Activated,
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_54_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_54_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "81203450492149405",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_238()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656024246144840",
        -- SoundId,
        [1] = "3748131841",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_269()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_269");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1227001601");
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
                [0] = self.f_box_OutputOrder_v2_269_Out_0,
                [1] = self.f_box_OutputOrder_v2_269_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1230139527");
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
                [0] = self.f_box_OutputOrder_v2_188_Out_0,
                [1] = self.f_box_OutputOrder_v2_188_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_220()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2101081750733077708",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_17()
    local params;
    params = {
        -- usableEntity,
        [4] = "2101080237220565316",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1284018558");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_98_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_98_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "27160246521927143",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_72()
    local params;
    params = {
        -- Pawns,
        [0] = "2101655994609192774",
        -- SoundId,
        [1] = "620881151",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_94()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_60()
    local params;
    params = {
        -- Pawns,
        [0] = "2101655986308665156",
        -- SoundId,
        [1] = "1414854136",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1330421260");
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

function export:OnEnter_box_CameraShakeAndRumble_V2_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1331642742");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_204_Out,
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 0.5,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_243()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1336761029");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2104160507578575864",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_234()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656069397827412",
        -- SoundId,
        [1] = "787920718",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_278()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "UNI49_010_B21_started",
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_272()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 100,
        -- players,
        [1] = "#ED455357",
        -- useAsPercent,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_63()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656069397827412",
        -- SoundId,
        [1] = "2644146809",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_74()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656028616609610",
        -- SoundId,
        [1] = "1353545866",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_275()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "StopBliss",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_224()
    local params;
    params = {
        -- usableEntity,
        [4] = "2104146481863750097",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_258()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656024246144840",
        -- SoundId,
        [1] = "787920718",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_108()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104081851359475036",
    };
    return params;
end;

function export:OnEnter_box__SafetyValves_Master_52()
    local params;
    params = {
        -- TimerFireDuration,
        [0] = 3,
        -- TimerFireStart,
        [1] = 2,
        -- TimerSparksStart,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_241()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1458436315");
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
                [0] = self.f_box_OutputOrder_v2_241_Out_0,
                [1] = self.f_box_OutputOrder_v2_241_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_171()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0.9,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_180()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_232()
    local params;
    params = {
        -- Pawns,
        [0] = "2101655994609192774",
        -- SoundId,
        [1] = "3024109683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_268()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_268");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1489945933");
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
                [0] = self.f_box_OutputOrder_v2_268_Out_0,
                [1] = self.f_box_OutputOrder_v2_268_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_46()
    local params;
    params = {
        -- Pawns,
        [0] = "2103677348718062726",
        -- SoundId,
        [1] = "1048371706",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_77()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656069397827412",
        -- SoundId,
        [1] = "1414854136",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1523910746");
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
                [0] = self.f_box_OutputOrder_v2_216_Out_0,
                [1] = self.f_box_OutputOrder_v2_216_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_221()
    local params;
    params = {
        -- Entity,
        [0] = "2104146546072252895",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1549460623");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_45_Activated,
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_45_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_45_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "90210649746906369",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1549613499");
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

function export:OnEnter_box_NavLinkModifier_133()
    local params;
    params = {
        -- Entity,
        [0] = "2104145449182064704",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_66()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656042688499532",
        -- SoundId,
        [1] = "2644146809",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "uni49_B40_Started",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_80()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656024246144840",
        -- SoundId,
        [1] = "2644146809",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_128()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103679282313229267",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_208()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 12,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1612524112");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
                [2] = self.f_box_OutputOrder_v2_61_Out_2,
                [3] = self.f_box_OutputOrder_v2_61_Out_3,
                [4] = self.f_box_OutputOrder_v2_61_Out_4,
                [5] = self.f_box_OutputOrder_v2_61_Out_5,
                [6] = self.f_box_OutputOrder_v2_61_Out_6,
                [7] = self.f_box_OutputOrder_v2_61_Out_7,
                [8] = self.f_box_OutputOrder_v2_61_Out_8,
                [9] = self.f_box_OutputOrder_v2_61_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1632226692");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_145_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_145_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015284037365317",
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_9()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2101343072515271422",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_222()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "uni49_B31_Started",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_205()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "IncreasePressure",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "uni49_B31_Started",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_261()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_261");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1693627572");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2104160574643399674",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1713800919");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_131_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "36167445881048909",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_5()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1737461414");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_113()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104091576010566941",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_152()
    local params;
    params = {
        -- usableEntity,
        [4] = "2101081750733077708",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1756948787");
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
                [0] = self.f_box_OutputOrder_v2_231_Out_0,
                [1] = self.f_box_OutputOrder_v2_231_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1762682147");
    l0:SetConnections({
        -- Valid,
        [1] = self.f_box_GetPreconditionState_172_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015287925022165",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2101080237220565316",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_257()
    local params;
    params = {
        -- Pawns,
        [0] = "2101655986308665156",
        -- SoundId,
        [1] = "3748131841",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1782614836");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_8_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_8_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015275991554371",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1792317358");
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
                [0] = self.f_box_OutputOrder_v2_239_Out_0,
                [1] = self.f_box_OutputOrder_v2_239_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_110()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101149050425329292",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_229()
    local params;
    params = {
        -- Pawns,
        [0] = "2101655994609192774",
        -- SoundId,
        [1] = "2690773750",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_277()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_277");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1810139974");
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
                [0] = self.f_box_OutputOrder_v2_277_Out_0,
                [1] = self.f_box_OutputOrder_v2_277_Out_1,
                [2] = self.f_box_OutputOrder_v2_277_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_109()
    local params;
    params = {
        -- usableEntity,
        [4] = "2104081851359475036",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1866625437");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_30_Activated,
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_30_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_30_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "72196251237402877",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_147()
    local params;
    params = {
        -- Entity,
        [0] = "2104146546072252895",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_97()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_245()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656042688499532",
        -- SoundId,
        [1] = "3748131841",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_236()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656057890754386",
        -- SoundId,
        [1] = "3024109683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_33()
    local params;
    params = {
        -- Entity,
        [0] = "2104713051973360038",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_1()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1935014679");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_44_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_44_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015275991554371",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1941975646");
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
                [0] = self.f_box_OutputOrder_v2_91_Out_0,
                [1] = self.f_box_OutputOrder_v2_91_Out_1,
                [2] = self.f_box_OutputOrder_v2_91_Out_2,
                [3] = self.f_box_OutputOrder_v2_91_Out_3,
                [4] = self.f_box_OutputOrder_v2_91_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|1945429800");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_129_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_114()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "uni49_B40_Started",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_213()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "297795456",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_65()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656055237857104",
        -- SoundId,
        [1] = "1414854136",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_185()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 9,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_70()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656055237857104",
        -- SoundId,
        [1] = "2644146809",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_260()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656055237857104",
        -- SoundId,
        [1] = "3748131841",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_28()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "3736662617",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2033229739");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_142_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "36167445776738266",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2033838201");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_107_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "36167446410824180",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2051475141");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_27_Activated,
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_27_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_27_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "54181852727908291",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2067321018");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_21_Activated,
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_21_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_21_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "36167454218401646",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2074577590");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
                [2] = self.f_box_OutputOrder_v2_76_Out_2,
                [3] = self.f_box_OutputOrder_v2_76_Out_3,
                [4] = self.f_box_OutputOrder_v2_76_Out_4,
                [5] = self.f_box_OutputOrder_v2_76_Out_5,
                [6] = self.f_box_OutputOrder_v2_76_Out_6,
                [7] = self.f_box_OutputOrder_v2_76_Out_7,
                [8] = self.f_box_OutputOrder_v2_76_Out_8,
                [9] = self.f_box_OutputOrder_v2_76_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_217()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "297795456",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2082945382");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_135_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160242192648935",
        -- missionLayerId,
        [1] = "27160247155810951",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2106017648");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_169_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_169_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015223001068275",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_47()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_225()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656071933284182",
        -- SoundId,
        [1] = "2690773750",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@UNI49_010_DOORS_main|2131611608");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
                [2] = self.f_box_OutputOrder_v2_29_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_67()
    local params;
    params = {
        -- Pawns,
        [0] = "2101656028616609610",
        -- SoundId,
        [1] = "620881151",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_158_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayers = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
