LUAC+ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_050/lt02_050_b10.domino
-- User graph: LT02_050_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/EntityTagListener_v4.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[4073210432.bnk]], "CSoundResource");
        cboxRes:LoadResource([[917393133.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2123435015.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3491486830.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1403674834.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3491282602.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_050/LT02_050_B10.LT02_050_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Lock",
            },
            [1] = {
                name = "Unlock",
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
                name = "Hour",
                type = "int",
            },
            [1] = {
                name = "Minute",
                type = "int",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/AI/StateListener_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Alert",
            },
            [1] = {
                name = "Combat",
            },
            [2] = {
                name = "Dead",
            },
            [3] = {
                name = "Disable",
            },
            [4] = {
                name = "Idle_RelaxCautious",
            },
            [5] = {
                name = "Investigate",
            },
        },
        controlInCount = 6,
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
                name = "MemberInState",
                delayed = true,
            },
            [3] = {
                name = "StateStart",
                delayed = true,
            },
            [4] = {
                name = "StateStop",
                delayed = true,
            },
        },
        controlOutCount = 5,
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
                name = "memberCountInState",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/FastTravelModifier_v2.lua")] = {
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
        },
        dataInCount = 0,
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
    metadataTable[GetPathID("Domino/System/GFHSystemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableGFHSystem",
            },
            [1] = {
                name = "EnableGFHSystem",
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
                name = "enableAfterBeat",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/RandomFloat_v2.lua")] = {
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
                name = "Max",
                type = "float",
            },
            [1] = {
                name = "Min",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/SoundPointModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Started",
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
                name = "soundPoint",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")] = {
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
        },
        dataInCount = 0,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT02_050_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10";
    self.Player_Group = nil;
    self.e_KitchenBerserker = nil;
    self.e_KitchenBrawler = nil;
    self.e_CommsDefender = nil;
    self.e_CommsAssaulter = nil;
    self.b_CheckpointReloaded = false;
    self.e_BunksAssaulter = nil;
    self.e_TopHallsHeavy = nil;
    self.e_BunksDefender = nil;
    self.box_OnceOnly_v3_133 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|23772296");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
                [0] = self.f_box_OnceOnly_v3_133_Out_0,
                [1] = self.f_box_OnceOnly_v3_133_Out_1,
                [2] = self.f_box_OnceOnly_v3_133_Out_2,
                [3] = self.f_box_OnceOnly_v3_133_Out_3,
            },
            count = 4,
        },
    });
    self.box_NavLinkModifier_111 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|50265523");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_22 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|99861875");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_22_Enabled,
    });
    self.box_PlayDialog_v6_98 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|106974999");
    l0:SetConnections({
    });
    self.box_EntityTagListener_v4_159 = cbox:CreateBox("Domino/System/EntityTagListener_v4.lua");
    l0 = self.box_EntityTagListener_v4_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityTagListener_v4_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|113779781");
    l0:SetConnections({
        -- Tagged,
        [7] = self.f_box_EntityTagListener_v4_159_Tagged,
    });
    self.box_LockTimeOfDay_30 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
    l0 = self.box_LockTimeOfDay_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockTimeOfDay_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|130869704");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LockTimeOfDay_30_Out,
    });
    self.box_EntityStatusListener_143 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|191442816");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_143_Loaded,
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|256761540");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
        [0] = self.f_box_MultipleOR_58_Out,
    });
    self.box_UniversalInteractionModifier_v2_105 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|262879878");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_105_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_105_Enabled,
    });
    self.box_EntityStatusListener_59 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|272920554");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_59_Loaded,
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|275656051");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_VisibilityModifier_19 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|315440134");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_19_Enabled,
    });
    self.box_EntityStatusListener_148 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|423433411");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_148_Loaded,
    });
    self.box_Delay_v5_79 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|426936282");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_79_TimeElapsed,
    });
    self.box_NavLinkModifier_52 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|438674059");
    l0:SetConnections({
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|448049874");
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
    self.box_Delay_v5_47 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|462232351");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_47_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_47_TimeElapsed,
    });
    self.box_EntityStatusListener_72 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|463016478");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_72_Loaded,
    });
    self.box_SpawnAI_74 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|487428703");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_74_Spawned,
    });
    self.box_MultipleOR_115 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|515182771");
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
        [0] = self.f_box_MultipleOR_115_Out,
    });
    self.box_PlayDialog_v6_97 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|534011803");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_156 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|592024913");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_156_Loaded,
    });
    self.box_Switch_92 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|600296054");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 6,
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
                [0] = self.f_box_Switch_92_Output_0,
                [1] = self.f_box_Switch_92_Output_1,
                [2] = self.f_box_Switch_92_Output_2,
                [3] = self.f_box_Switch_92_Output_3,
                [4] = self.f_box_Switch_92_Output_4,
                [5] = self.f_box_Switch_92_Output_5,
            },
            count = 6,
        },
    });
    self.box_Music_Quest_v2_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|620395050");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_140 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|620575948");
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
        [0] = self.f_box_MultipleAND_v2_140_Out,
    });
    self.box_UniversalInteractionModifier_v2_51 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|629627270");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_51_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_51_Enabled,
    });
    self.box_OnceOnly_v3_67 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|668158471");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
                [0] = self.f_box_OnceOnly_v3_67_Out_0,
                [1] = self.f_box_OnceOnly_v3_67_Out_1,
                [2] = self.f_box_OnceOnly_v3_67_Out_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_118 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|683228596");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
        [0] = self.f_box_MultipleOR_118_Out,
    });
    self.box_MultipleOR_122 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|699525417");
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
        [0] = self.f_box_MultipleOR_122_Out,
    });
    self.box_MultipleOR_146 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|734811048");
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
        [0] = self.f_box_MultipleOR_146_Out,
    });
    self.box_SpawnAI_141 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|742497771");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_141_Spawned,
    });
    self.box_EntityStatusListener_63 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|756886412");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_63_Loaded,
    });
    self.box_EntityStatusListener_103 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|769111658");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_103_Loaded,
    });
    self.box_StateListener_v2_169 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|807534698");
    l0:SetConnections({
        -- StateStop,
        [4] = self.f_box_StateListener_v2_169_StateStop,
    });
    self.box_MultipleOR_109 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|812968699");
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
        [0] = self.f_box_MultipleOR_109_Out,
    });
    self.box_MultipleOR_91 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|871092852");
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
        [0] = self.f_box_MultipleOR_91_Out,
    });
    self.box_SpawnAI_130 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|877597309");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_130_Spawned,
    });
    self.box_SpawnAI_76 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|905143647");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_76_Spawned,
    });
    self.box_EntityStatusListener_147 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|905219888");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_147_Loaded,
    });
    self.box_RequestPhoneCall_v2_42 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|911870611");
    l0:SetConnections({
        -- Out,
        [3] = self.f_box_RequestPhoneCall_v2_42_Out,
    });
    self.box_EntityStatusListener_53 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|923373984");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_53_Loaded,
    });
    self.box_GunsForHireSystemModifier_151 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|930277361");
    l0:SetConnections({
    });
    self.box_SpawnAI_145 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|936592792");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_70 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|976179499");
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
        [0] = self.f_box_MultipleAND_v2_70_Out,
    });
    self.box_EntityStatusListener_75 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|995828560");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_75_Loaded,
    });
    self.box_SpawnAI_155 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1017125865");
    l0:SetConnections({
    });
    self.box_Switch_120 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1035764073");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 6,
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
                [0] = self.f_box_Switch_120_Output_0,
                [1] = self.f_box_Switch_120_Output_1,
                [2] = self.f_box_Switch_120_Output_2,
                [3] = self.f_box_Switch_120_Output_3,
                [4] = self.f_box_Switch_120_Output_4,
                [5] = self.f_box_Switch_120_Output_5,
            },
            count = 6,
        },
    });
    self.box_VisibilityModifier_9 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1068701471");
    l0:SetConnections({
    });
    self.box_Delay_v5_114 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1068833800");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_114_TimeElapsed,
    });
    self.box_Delay_v5_119 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1082674019");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_119_TimeElapsed,
    });
    self.box_EntityStatusListener_142 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1186997001");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_142_Loaded,
    });
    self.box_EntityStatusListener_68 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1201189455");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_68_Loaded,
    });
    self.box_ActivityInitialized_8 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1201784484");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_8_Out,
    });
    self.box_EntityStatusListener_161 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1223727228");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_161_Loaded,
    });
    self.box_Gate_v3_171 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1287201689");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_171_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_171_Out,
    });
    self.box_EntityTagListener_v4_163 = cbox:CreateBox("Domino/System/EntityTagListener_v4.lua");
    l0 = self.box_EntityTagListener_v4_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityTagListener_v4_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1307620337");
    l0:SetConnections({
        -- Tagged,
        [7] = self.f_box_EntityTagListener_v4_163_Tagged,
    });
    self.box_ProximityTrigger_v2_139 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1310710704");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_139_Enter,
    });
    self.box_VisibilityModifier_21 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1333869508");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_21_Disabled,
    });
    self.box_ProximityTrigger_v2_126 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1349520260");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_126_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_126_Enabled,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_126_OnOccupied,
    });
    self.box_StateListener_v2_144 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1383181705");
    l0:SetConnections({
        -- StateStop,
        [4] = self.f_box_StateListener_v2_144_StateStop,
    });
    self.box_SoundModifier_v2_44 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1430499328");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_71 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1431862729");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_71_Enter,
    });
    self.box_NavLinkModifier_150 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1433004088");
    l0:SetConnections({
    });
    self.box_Switch_121 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1458254665");
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
                [0] = self.f_box_Switch_121_Output_0,
                [1] = self.f_box_Switch_121_Output_1,
            },
            count = 2,
        },
    });
    self.box_PhoneCallExclusivityModifier_14 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1470873516");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_14_Enabled,
    });
    self.box_Delay_v5_89 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1481151658");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_89_TimeElapsed,
    });
    self.box_EntityStatusListener_149 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1491826399");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_149_Loaded,
    });
    self.box_NavLinkModifier_101 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1514851402");
    l0:SetConnections({
    });
    self.box_MultipleOR_165 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1530694609");
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
        [0] = self.f_box_MultipleOR_165_Out,
    });
    self.box_Delay_v5_56 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1559240990");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_56_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_102 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1618704351");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_102_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_102_Enabled,
    });
    self.box_ProximityTrigger_v2_134 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1637814475");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_134_Enter,
    });
    self.box_ProximityTrigger_v2_10 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1654560902");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_10_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_10_Enabled,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_10_OnOccupied,
    });
    self.box_Gate_v3_185 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1676209294");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_185_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_185_Out,
    });
    self.box_VisibilityModifier_25 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1686599952");
    l0:SetConnections({
    });
    self.box_Brick_Interact_With_Object_V5_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1692234639");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Brick_Interact_With_Object_V5_1_Started,
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_1_Success,
    });
    self.box_SpawnAI_157 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1709417474");
    l0:SetConnections({
    });
    self.box_Delay_v5_55 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1719474528");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_55_TimeElapsed,
    });
    self.box_VisibilityModifier_26 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1736923263");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_26_Disabled,
    });
    self.box_PlayDialog_v6_88 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1749085506");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_86 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1780208194");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_86_Loaded,
    });
    self.box_EntityStatusListener_87 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1801140012");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_87_Loaded,
    });
    self.box_EntityTagListener_v4_160 = cbox:CreateBox("Domino/System/EntityTagListener_v4.lua");
    l0 = self.box_EntityTagListener_v4_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityTagListener_v4_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1819509076");
    l0:SetConnections({
        -- Tagged,
        [7] = self.f_box_EntityTagListener_v4_160_Tagged,
    });
    self.box_UniversalInteractionModifier_v2_49 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1835547506");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_49_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_49_Enabled,
    });
    self.box_PlayDialog_v6_96 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1857847719");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1927461329");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_106 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2007087424");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_106_Loaded,
    });
    self.box_NavLinkModifier_50 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2009687202");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_41 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2041547358");
    l0:SetConnections({
    });
    self.box_Switch_57 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2052955268");
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
                [0] = self.f_box_Switch_57_Output_0,
                [1] = self.f_box_Switch_57_Output_1,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_83 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2063144367");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_83_Loaded,
    });
    self.box_VisibilityModifier_117 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2071001222");
    l0:SetConnections({
    });
    self.box_EntityTagListener_v4_162 = cbox:CreateBox("Domino/System/EntityTagListener_v4.lua");
    l0 = self.box_EntityTagListener_v4_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityTagListener_v4_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2080042437");
    l0:SetConnections({
        -- Tagged,
        [7] = self.f_box_EntityTagListener_v4_162_Tagged,
    });
    self.box_SpawnAI_84 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2121034365");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_84_Spawned,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1991438556", "1991438556", "LT02_050_B10", "In", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1215164213", "1215164213", "LT02_050_B10", "OnLeaveZone", "box_OutputOrder_v2_17.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_167_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_107();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1168397583", "1168397583", "LT02_050_B10", "box_Simple_Node_167.Out", "box_OutputOrder_v2_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_168_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_166();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|144787915", "144787915", "LT02_050_B10", "box_Simple_Node_168.Out", "box_OutputOrder_v2_166.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_124_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_114();
    l0 = self.box_Delay_v5_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1397628283", "1397628283", "LT02_050_B10", "box_Simple_Node_124.Out", "box_Delay_v5_114.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_89();
    l0 = self.box_Delay_v5_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1634768415", "1634768415", "LT02_050_B10", "box_Simple_Node_124.Out", "box_Delay_v5_89.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_56();
    l0 = self.box_Delay_v5_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1302499540", "1302499540", "LT02_050_B10", "box_Simple_Node_124.Out", "box_Delay_v5_56.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OnceOnly_v3_133_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_133;
    l1 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1153967085", "1153967085", "LT02_050_B10", "box_OnceOnly_v3_133.Out", "box_MultipleOR_146.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_133_Out_1()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_133;
    l1 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|939591661", "939591661", "LT02_050_B10", "box_OnceOnly_v3_133.Out", "box_MultipleOR_146.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_133_Out_2()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_133;
    l1 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1335465590", "1335465590", "LT02_050_B10", "box_OnceOnly_v3_133.Out", "box_MultipleOR_146.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OnceOnly_v3_133_Out_3()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_133;
    l1 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1845745503", "1845745503", "LT02_050_B10", "box_OnceOnly_v3_133.Out", "box_MultipleOR_146.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ShimmerModifier_v2_18_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_22();
    l0 = self.box_VisibilityModifier_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|701036424", "701036424", "LT02_050_B10", "box_ShimmerModifier_v2_18.Disabled", "box_VisibilityModifier_22.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_VisibilityModifier_22_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_21();
    l0 = self.box_VisibilityModifier_22;
    l1 = self.box_VisibilityModifier_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|430680784", "430680784", "LT02_050_B10", "box_VisibilityModifier_22.Enabled", "box_VisibilityModifier_21.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_107_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_139();
    l0 = self.box_ProximityTrigger_v2_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1654023049", "1654023049", "LT02_050_B10", "box_OutputOrder_v2_107.Out", "box_ProximityTrigger_v2_139.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_107_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_134();
    l0 = self.box_ProximityTrigger_v2_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1051561007", "1051561007", "LT02_050_B10", "box_OutputOrder_v2_107.Out", "box_ProximityTrigger_v2_134.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_107_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityTagListener_v4_159();
    l0 = self.box_EntityTagListener_v4_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|99794005", "99794005", "LT02_050_B10", "box_OutputOrder_v2_107.Out", "box_EntityTagListener_v4_159.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_107_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityTagListener_v4_160();
    l0 = self.box_EntityTagListener_v4_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1525328002", "1525328002", "LT02_050_B10", "box_OutputOrder_v2_107.Out", "box_EntityTagListener_v4_160.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EntityTagListener_v4_159_Tagged()
    local l0, l1;
    l0 = self.box_EntityTagListener_v4_159;
    l1 = self.box_OnceOnly_v3_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1889349354", "1889349354", "LT02_050_B10", "box_EntityTagListener_v4_159.Tagged", "box_OnceOnly_v3_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_184_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_182();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|208286353", "208286353", "LT02_050_B10", "box_Simple_Node_184.Out", "box_OutputOrder_v2_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_24();
    l0 = self.box_Music_Quest_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|487101701", "487101701", "LT02_050_B10", "box_OutputOrder_v2_17.Out", "box_Music_Quest_v2_24.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|854055576", "854055576", "LT02_050_B10", "box_OutputOrder_v2_17.Out", "box_ActivityRetry_2.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LockTimeOfDay_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_80();
    l0 = self.box_LockTimeOfDay_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|917696004", "917696004", "LT02_050_B10", "box_LockTimeOfDay_30.Out", "box_OutputOrder_v2_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_175_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_177();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1329954176", "1329954176", "LT02_050_B10", "box_OutputOrder_v2_175.Out", "box_UseContextualActionModifier_v3_177.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_175_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_178();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|832375480", "832375480", "LT02_050_B10", "box_OutputOrder_v2_175.Out", "box_UseContextualActionModifier_v3_178.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_73_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_64();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|392096349", "392096349", "LT02_050_B10", "box_UseContextualActionModifier_v3_73.Disabled", "box_UseContextualActionModifier_v3_64.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_143_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_130();
    l0 = self.box_EntityStatusListener_143;
    l1 = self.box_SpawnAI_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1240995817", "1240995817", "LT02_050_B10", "box_EntityStatusListener_143.Loaded", "box_SpawnAI_130.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_189_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_186();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1465537436", "1465537436", "LT02_050_B10", "box_UseContextualActionModifier_v3_189.Disabled", "box_UseContextualActionModifier_v3_186.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_179_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_169();
    l0 = self.box_StateListener_v2_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1716164234", "1716164234", "LT02_050_B10", "box_Simple_Node_179.Out", "box_StateListener_v2_169.Idle_RelaxCautious", clone:GetLuaBox(), l0:GetLuaBox());
    -- Idle_RelaxCautious
    l0:Exec(4, params);
end;

function export:f_box_Simple_Node_154_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_103();
    l0 = self.box_EntityStatusListener_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2048774953", "2048774953", "LT02_050_B10", "box_Simple_Node_154.Out", "box_EntityStatusListener_103.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_180_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_179();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1427830549", "1427830549", "LT02_050_B10", "box_OutputOrder_v2_180.Out", "box_Simple_Node_179.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_180_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_164();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|626313576", "626313576", "LT02_050_B10", "box_OutputOrder_v2_180.Out", "box_OutputOrder_v2_164.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_90();
    l0 = self.box_MultipleOR_58;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1220275877", "1220275877", "LT02_050_B10", "box_MultipleOR_58.Out", "box_OutputOrder_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_144();
    l0 = self.box_StateListener_v2_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1371833701", "1371833701", "LT02_050_B10", "box_OutputOrder_v2_108.Out", "box_StateListener_v2_144.Idle_RelaxCautious", clone:GetLuaBox(), l0:GetLuaBox());
    -- Idle_RelaxCautious
    l0:Exec(4, params);
end;

function export:f_box_OutputOrder_v2_108_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|221249143", "221249143", "LT02_050_B10", "box_OutputOrder_v2_108.Out", "box_OutputOrder_v2_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_79();
    l0 = self.box_Delay_v5_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1034322669", "1034322669", "LT02_050_B10", "box_OutputOrder_v2_108.Out", "box_Delay_v5_79.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_105_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_111();
    l0 = self.box_UniversalInteractionModifier_v2_105;
    l1 = self.box_NavLinkModifier_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1757522973", "1757522973", "LT02_050_B10", "box_UniversalInteractionModifier_v2_105.Disabled", "box_NavLinkModifier_111.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_105_Enabled()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_105();
    l0 = self.box_UniversalInteractionModifier_v2_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|177046703", "177046703", "LT02_050_B10", "box_UniversalInteractionModifier_v2_105.Enabled", "box_UniversalInteractionModifier_v2_105.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_112_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_1();
    l0 = self.box_Brick_Interact_With_Object_V5_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1807684278", "1807684278", "LT02_050_B10", "box_OutputOrder_v2_112.Out", "box_Brick_Interact_With_Object_V5_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_112_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_93();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2086511626", "2086511626", "LT02_050_B10", "box_OutputOrder_v2_112.Out", "box_Simple_Node_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_116();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1834187968", "1834187968", "LT02_050_B10", "box_OutputOrder_v2_112.Out", "box_Simple_Node_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_59_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_53();
    l0 = self.box_EntityStatusListener_59;
    l1 = self.box_EntityStatusListener_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|671782439", "671782439", "LT02_050_B10", "box_EntityStatusListener_59.Loaded", "box_EntityStatusListener_53.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1055175239", "1055175239", "LT02_050_B10", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_43();
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|159163272", "159163272", "LT02_050_B10", "box_ActivityAcknowledgeGate_7.Reloaded", "box_SetBoolean_v2_43.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_176_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_178();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1506677088", "1506677088", "LT02_050_B10", "box_UseContextualActionModifier_v3_176.Disabled", "box_UseContextualActionModifier_v3_178.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_26();
    l0 = self.box_VisibilityModifier_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|706621472", "706621472", "LT02_050_B10", "box_Simple_Node_23.Out", "box_VisibilityModifier_26.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_DynamicLightModifier_39_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_33();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1629109539", "1629109539", "LT02_050_B10", "box_DynamicLightModifier_39.Enabled", "box_DynamicLightModifier_33.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_181_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_183();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|911818325", "911818325", "LT02_050_B10", "box_Simple_Node_181.Out", "box_OutputOrder_v2_183.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_19_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_37();
    l0 = self.box_VisibilityModifier_19;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|173619031", "173619031", "LT02_050_B10", "box_VisibilityModifier_19.Enabled", "box_DynamicLightModifier_37.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_148_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_143();
    l0 = self.box_EntityStatusListener_148;
    l1 = self.box_EntityStatusListener_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|707817485", "707817485", "LT02_050_B10", "box_EntityStatusListener_148.Loaded", "box_EntityStatusListener_143.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_79_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = self.box_Delay_v5_79;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1658918414", "1658918414", "LT02_050_B10", "box_Delay_v5_79.TimeElapsed", "box_OutputOrder_v2_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_116_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1049417800", "1049417800", "LT02_050_B10", "box_Simple_Node_116.Out", "box_MultipleOR_115.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1918901740", "1918901740", "LT02_050_B10", "box_MultipleOR_6.Out", "box_ActivityInitialized_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_47_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_44();
    l0 = self.box_Delay_v5_47;
    l1 = self.box_SoundModifier_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|248818196", "248818196", "LT02_050_B10", "box_Delay_v5_47.Started", "box_SoundModifier_v2_44.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_47_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = self.box_Delay_v5_47;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1585032643", "1585032643", "LT02_050_B10", "box_Delay_v5_47.TimeElapsed", "box_OutputOrder_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_72_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_63();
    l0 = self.box_EntityStatusListener_72;
    l1 = self.box_EntityStatusListener_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|407080004", "407080004", "LT02_050_B10", "box_EntityStatusListener_72.Loaded", "box_EntityStatusListener_63.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_168();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|402445272", "402445272", "LT02_050_B10", "box_OutputOrder_v2_60.Out", "box_Simple_Node_168.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_65();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1092906006", "1092906006", "LT02_050_B10", "box_OutputOrder_v2_60.Out", "box_UseContextualActionModifier_v3_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_64();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|722328247", "722328247", "LT02_050_B10", "box_OutputOrder_v2_60.Out", "box_UseContextualActionModifier_v3_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_74_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_61();
    l0 = self.box_SpawnAI_74;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1842103631", "1842103631", "LT02_050_B10", "box_SpawnAI_74.Spawned", "box_SetEntity_v2_61.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_115_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_114();
    l0 = self.box_MultipleOR_115;
    l1 = self.box_Delay_v5_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1051256130", "1051256130", "LT02_050_B10", "box_MultipleOR_115.Out", "box_Delay_v5_114.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_65_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_62();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1069651158", "1069651158", "LT02_050_B10", "box_UseContextualActionModifier_v3_65.Enabled", "box_UseContextualActionModifier_v3_62.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_12_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_55();
    l0 = self.box_Delay_v5_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1314233094", "1314233094", "LT02_050_B10", "box_RandomFloat_v2_12.Out", "box_Delay_v5_55.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetPlayerGroup_v2_34_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_34_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_94();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1480072284", "1480072284", "LT02_050_B10", "box_GetPlayerGroup_v2_34.Out", "box_OutputOrder_v2_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_156_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_84();
    l0 = self.box_EntityStatusListener_156;
    l1 = self.box_SpawnAI_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1893743813", "1893743813", "LT02_050_B10", "box_EntityStatusListener_156.Loaded", "box_SpawnAI_84.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_92_Output_0()
    local l0, l1;
    l0 = self.box_Switch_92;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|675917577", "675917577", "LT02_050_B10", "box_Switch_92.Output", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_92_Output_1()
    local l0, l1;
    l0 = self.box_Switch_92;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1349862556", "1349862556", "LT02_050_B10", "box_Switch_92.Output", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_92_Output_2()
    local l0, l1;
    l0 = self.box_Switch_92;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1508147396", "1508147396", "LT02_050_B10", "box_Switch_92.Output", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Switch_92_Output_3()
    local l0, l1;
    l0 = self.box_Switch_92;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1240808448", "1240808448", "LT02_050_B10", "box_Switch_92.Output", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Switch_92_Output_4()
    local l0, l1;
    l0 = self.box_Switch_92;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|85520895", "85520895", "LT02_050_B10", "box_Switch_92.Output", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Switch_92_Output_5()
    local l0, l1;
    l0 = self.box_Switch_92;
    l1 = self.box_MultipleOR_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1772425703", "1772425703", "LT02_050_B10", "box_Switch_92.Output", "box_MultipleOR_109.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleAND_v2_140_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_108();
    l0 = self.box_MultipleAND_v2_140;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|882297432", "882297432", "LT02_050_B10", "box_MultipleAND_v2_140.Out", "box_OutputOrder_v2_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_51_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_49();
    l0 = self.box_UniversalInteractionModifier_v2_51;
    l1 = self.box_UniversalInteractionModifier_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1710945058", "1710945058", "LT02_050_B10", "box_UniversalInteractionModifier_v2_51.Disabled", "box_UniversalInteractionModifier_v2_49.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_51_Enabled()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_51();
    l0 = self.box_UniversalInteractionModifier_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|12716099", "12716099", "LT02_050_B10", "box_UniversalInteractionModifier_v2_51.Enabled", "box_UniversalInteractionModifier_v2_51.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_135_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_135_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_140();
    l0 = self.box_MultipleAND_v2_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|528325917", "528325917", "LT02_050_B10", "box_SetEntity_v2_135.Out", "box_MultipleAND_v2_140.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_DynamicLightModifier_31_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_32();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1531368882", "1531368882", "LT02_050_B10", "box_DynamicLightModifier_31.Disabled", "box_DynamicLightModifier_32.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_66_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_138();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|561061717", "561061717", "LT02_050_B10", "box_UseContextualActionModifier_v3_66.Disabled", "box_UseContextualActionModifier_v3_138.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_37_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_31();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|377139582", "377139582", "LT02_050_B10", "box_DynamicLightModifier_37.Disabled", "box_DynamicLightModifier_31.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_67_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_67;
    l1 = self.box_MultipleOR_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1949850646", "1949850646", "LT02_050_B10", "box_OnceOnly_v3_67.Out", "box_MultipleOR_165.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_67_Out_1()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_67;
    l1 = self.box_MultipleOR_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1226694204", "1226694204", "LT02_050_B10", "box_OnceOnly_v3_67.Out", "box_MultipleOR_165.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_67_Out_2()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_67;
    l1 = self.box_MultipleOR_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|5887550", "5887550", "LT02_050_B10", "box_OnceOnly_v3_67.Out", "box_MultipleOR_165.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_118_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_123();
    l0 = self.box_MultipleOR_118;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1329225393", "1329225393", "LT02_050_B10", "box_MultipleOR_118.Out", "box_OutputOrder_v2_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_122_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_113();
    l0 = self.box_MultipleOR_122;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1690631050", "1690631050", "LT02_050_B10", "box_MultipleOR_122.Out", "box_RandomFloat_v2_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_146_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_171();
    l0 = self.box_MultipleOR_146;
    l1 = self.box_Gate_v3_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|637170047", "637170047", "LT02_050_B10", "box_MultipleOR_146.Out", "box_Gate_v3_171.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_141_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_135();
    l0 = self.box_SpawnAI_141;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1936627831", "1936627831", "LT02_050_B10", "box_SpawnAI_141.Spawned", "box_SetEntity_v2_135.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_167();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|131539385", "131539385", "LT02_050_B10", "box_OutputOrder_v2_82.Out", "box_Simple_Node_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_138();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|941487727", "941487727", "LT02_050_B10", "box_OutputOrder_v2_82.Out", "box_UseContextualActionModifier_v3_138.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_137();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|60630055", "60630055", "LT02_050_B10", "box_OutputOrder_v2_82.Out", "box_UseContextualActionModifier_v3_137.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_149();
    l0 = self.box_EntityStatusListener_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1708227308", "1708227308", "LT02_050_B10", "box_OutputOrder_v2_81.Out", "box_EntityStatusListener_149.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_72();
    l0 = self.box_EntityStatusListener_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1433797427", "1433797427", "LT02_050_B10", "box_OutputOrder_v2_81.Out", "box_EntityStatusListener_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_81_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_75();
    l0 = self.box_EntityStatusListener_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|619318121", "619318121", "LT02_050_B10", "box_OutputOrder_v2_81.Out", "box_EntityStatusListener_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_81_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_86();
    l0 = self.box_EntityStatusListener_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|319861441", "319861441", "LT02_050_B10", "box_OutputOrder_v2_81.Out", "box_EntityStatusListener_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_63_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_74();
    l0 = self.box_EntityStatusListener_63;
    l1 = self.box_SpawnAI_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|307849140", "307849140", "LT02_050_B10", "box_EntityStatusListener_63.Loaded", "box_SpawnAI_74.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_187_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_188();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|844209489", "844209489", "LT02_050_B10", "box_UseContextualActionModifier_v3_187.Disabled", "box_UseContextualActionModifier_v3_188.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_103_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_102();
    l0 = self.box_EntityStatusListener_103;
    l1 = self.box_UniversalInteractionModifier_v2_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|892402018", "892402018", "LT02_050_B10", "box_EntityStatusListener_103.Loaded", "box_UniversalInteractionModifier_v2_102.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_170_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_173();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|41390092", "41390092", "LT02_050_B10", "box_Simple_Node_170.Out", "box_OutputOrder_v2_173.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_169_StateStop()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_181();
    l0 = self.box_StateListener_v2_169;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|814033763", "814033763", "LT02_050_B10", "box_StateListener_v2_169.StateStop", "box_Simple_Node_181.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_109_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_56();
    l0 = self.box_MultipleOR_109;
    l1 = self.box_Delay_v5_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|615422383", "615422383", "LT02_050_B10", "box_MultipleOR_109.Out", "box_Delay_v5_56.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_51();
    l0 = self.box_UniversalInteractionModifier_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2012923298", "2012923298", "LT02_050_B10", "box_OutputOrder_v2_104.Out", "box_UniversalInteractionModifier_v2_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_104_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_154();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|936032998", "936032998", "LT02_050_B10", "box_OutputOrder_v2_104.Out", "box_Simple_Node_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_104_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_45();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|488513229", "488513229", "LT02_050_B10", "box_OutputOrder_v2_104.Out", "box_Simple_Node_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_128_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_147();
    l0 = self.box_EntityStatusListener_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|76991711", "76991711", "LT02_050_B10", "box_Simple_Node_128.Out", "box_EntityStatusListener_147.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_91_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_12();
    l0 = self.box_MultipleOR_91;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|394725560", "394725560", "LT02_050_B10", "box_MultipleOR_91.Out", "box_RandomFloat_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_130_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_136();
    l0 = self.box_SpawnAI_130;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|251345186", "251345186", "LT02_050_B10", "box_SpawnAI_130.Spawned", "box_SetEntity_v2_136.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_76_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_77();
    l0 = self.box_SpawnAI_76;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|478710327", "478710327", "LT02_050_B10", "box_SpawnAI_76.Spawned", "box_SetEntity_v2_77.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_147_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_142();
    l0 = self.box_EntityStatusListener_147;
    l1 = self.box_EntityStatusListener_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1837648802", "1837648802", "LT02_050_B10", "box_EntityStatusListener_147.Loaded", "box_EntityStatusListener_142.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_29();
    l0 = self.box_RequestPhoneCall_v2_42;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1897879878", "1897879878", "LT02_050_B10", "box_RequestPhoneCall_v2_42.Out", "box_AddActivityObjective_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_53_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_157();
    l0 = self.box_EntityStatusListener_53;
    l1 = self.box_SpawnAI_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|699132193", "699132193", "LT02_050_B10", "box_EntityStatusListener_53.Loaded", "box_SpawnAI_157.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_88();
    l0 = self.box_PlayDialog_v6_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2006878579", "2006878579", "LT02_050_B10", "box_OutputOrder_v2_99.Out", "box_PlayDialog_v6_88.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_96();
    l0 = self.box_PlayDialog_v6_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1005475046", "1005475046", "LT02_050_B10", "box_OutputOrder_v2_99.Out", "box_PlayDialog_v6_96.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_99_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_97();
    l0 = self.box_PlayDialog_v6_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|297707262", "297707262", "LT02_050_B10", "box_OutputOrder_v2_99.Out", "box_PlayDialog_v6_97.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_99_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_98();
    l0 = self.box_PlayDialog_v6_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|406978753", "406978753", "LT02_050_B10", "box_OutputOrder_v2_99.Out", "box_PlayDialog_v6_98.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_180();
    l0 = self.box_MultipleAND_v2_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2120358214", "2120358214", "LT02_050_B10", "box_MultipleAND_v2_70.Out", "box_OutputOrder_v2_180.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_75_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_87();
    l0 = self.box_EntityStatusListener_75;
    l1 = self.box_EntityStatusListener_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1828317705", "1828317705", "LT02_050_B10", "box_EntityStatusListener_75.Loaded", "box_EntityStatusListener_87.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|49576485", "49576485", "LT02_050_B10", "box_Simple_Node_35.Out", "box_OutputOrder_v2_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_120_Output_0()
    local l0, l1;
    l0 = self.box_Switch_120;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1568950901", "1568950901", "LT02_050_B10", "box_Switch_120.Output", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_120_Output_1()
    local l0, l1;
    l0 = self.box_Switch_120;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|933466007", "933466007", "LT02_050_B10", "box_Switch_120.Output", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_120_Output_2()
    local l0, l1;
    l0 = self.box_Switch_120;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|11794243", "11794243", "LT02_050_B10", "box_Switch_120.Output", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Switch_120_Output_3()
    local l0, l1;
    l0 = self.box_Switch_120;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1729700006", "1729700006", "LT02_050_B10", "box_Switch_120.Output", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Switch_120_Output_4()
    local l0, l1;
    l0 = self.box_Switch_120;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1820912604", "1820912604", "LT02_050_B10", "box_Switch_120.Output", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Switch_120_Output_5()
    local l0, l1;
    l0 = self.box_Switch_120;
    l1 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|21767041", "21767041", "LT02_050_B10", "box_Switch_120.Output", "box_MultipleOR_115.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_173_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_172();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1670586223", "1670586223", "LT02_050_B10", "box_OutputOrder_v2_173.Out", "box_Simple_Node_172.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_173_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_171();
    l0 = self.box_Gate_v3_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|760356141", "760356141", "LT02_050_B10", "box_OutputOrder_v2_173.Out", "box_Gate_v3_171.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_114_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_114;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1164773254", "1164773254", "LT02_050_B10", "box_Delay_v5_114.TimeElapsed", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_119_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_120();
    l0 = self.box_Delay_v5_119;
    l1 = self.box_Switch_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|290346717", "290346717", "LT02_050_B10", "box_Delay_v5_119.TimeElapsed", "box_Switch_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetEntity_v2_77_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_77_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_70();
    l0 = self.box_MultipleAND_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|146007865", "146007865", "LT02_050_B10", "box_SetEntity_v2_77.Out", "box_MultipleAND_v2_70.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_164_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_71();
    l0 = self.box_ProximityTrigger_v2_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|161948450", "161948450", "LT02_050_B10", "box_OutputOrder_v2_164.Out", "box_ProximityTrigger_v2_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_164_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityTagListener_v4_162();
    l0 = self.box_EntityTagListener_v4_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|75358864", "75358864", "LT02_050_B10", "box_OutputOrder_v2_164.Out", "box_EntityTagListener_v4_162.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_164_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityTagListener_v4_163();
    l0 = self.box_EntityTagListener_v4_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1615846179", "1615846179", "LT02_050_B10", "box_OutputOrder_v2_164.Out", "box_EntityTagListener_v4_163.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_93_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|420708532", "420708532", "LT02_050_B10", "box_Simple_Node_93.Out", "box_MultipleOR_109.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_138_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_66();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1734496885", "1734496885", "LT02_050_B10", "box_UseContextualActionModifier_v3_138.Enabled", "box_UseContextualActionModifier_v3_66.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_182_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_186();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1091834493", "1091834493", "LT02_050_B10", "box_OutputOrder_v2_182.Out", "box_UseContextualActionModifier_v3_186.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_182_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_188();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1882576967", "1882576967", "LT02_050_B10", "box_OutputOrder_v2_182.Out", "box_UseContextualActionModifier_v3_188.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_36_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_38();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1393259507", "1393259507", "LT02_050_B10", "box_DynamicLightModifier_36.Enabled", "box_DynamicLightModifier_38.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_142_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_141();
    l0 = self.box_EntityStatusListener_142;
    l1 = self.box_SpawnAI_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1856232164", "1856232164", "LT02_050_B10", "box_EntityStatusListener_142.Loaded", "box_SpawnAI_141.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_68_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_76();
    l0 = self.box_EntityStatusListener_68;
    l1 = self.box_SpawnAI_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|597907144", "597907144", "LT02_050_B10", "box_EntityStatusListener_68.Loaded", "box_SpawnAI_76.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_ActivityInitialized_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|643302450", "643302450", "LT02_050_B10", "box_ActivityInitialized_8.Out", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_161_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_145();
    l0 = self.box_EntityStatusListener_161;
    l1 = self.box_SpawnAI_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1213299641", "1213299641", "LT02_050_B10", "box_EntityStatusListener_161.Loaded", "box_SpawnAI_145.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_178_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_176();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1050862184", "1050862184", "LT02_050_B10", "box_UseContextualActionModifier_v3_178.Enabled", "box_UseContextualActionModifier_v3_176.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_27_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_18();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|652458146", "652458146", "LT02_050_B10", "box_ShimmerModifier_v2_27.Disabled", "box_ShimmerModifier_v2_18.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_27_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_18();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|298178759", "298178759", "LT02_050_B10", "box_ShimmerModifier_v2_27.Enabled", "box_ShimmerModifier_v2_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_90_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_57();
    l0 = self.box_Switch_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|588558438", "588558438", "LT02_050_B10", "box_OutputOrder_v2_90.Out", "box_Switch_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_90_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|837532083", "837532083", "LT02_050_B10", "box_OutputOrder_v2_90.Out", "box_MultipleOR_91.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_177_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_174();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1037193701", "1037193701", "LT02_050_B10", "box_UseContextualActionModifier_v3_177.Enabled", "box_UseContextualActionModifier_v3_174.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_85();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|741429409", "741429409", "LT02_050_B10", "box_OutputOrder_v2_129.Out", "box_Simple_Node_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_128();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|769365091", "769365091", "LT02_050_B10", "box_OutputOrder_v2_129.Out", "box_Simple_Node_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_132();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|514129962", "514129962", "LT02_050_B10", "box_OutputOrder_v2_129.Out", "box_Simple_Node_132.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_78();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|281730981", "281730981", "LT02_050_B10", "box_OutputOrder_v2_129.Out", "box_Simple_Node_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_171_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_167();
    l0 = self.box_Gate_v3_171;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1375346896", "1375346896", "LT02_050_B10", "box_Gate_v3_171.Closed", "box_Simple_Node_167.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_171_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_82();
    l0 = self.box_Gate_v3_171;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2105249642", "2105249642", "LT02_050_B10", "box_Gate_v3_171.Out", "box_OutputOrder_v2_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_32_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_40();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1683185971", "1683185971", "LT02_050_B10", "box_DynamicLightModifier_32.Disabled", "box_DynamicLightModifier_40.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityTagListener_v4_163_Tagged()
    local l0, l1;
    l0 = self.box_EntityTagListener_v4_163;
    l1 = self.box_OnceOnly_v3_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|272228619", "272228619", "LT02_050_B10", "box_EntityTagListener_v4_163.Tagged", "box_OnceOnly_v3_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_132_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_83();
    l0 = self.box_EntityStatusListener_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|652626146", "652626146", "LT02_050_B10", "box_Simple_Node_132.Out", "box_EntityStatusListener_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_139_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_139;
    l1 = self.box_OnceOnly_v3_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|758776622", "758776622", "LT02_050_B10", "box_ProximityTrigger_v2_139.Enter", "box_OnceOnly_v3_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_43_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_43_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1859127150", "1859127150", "LT02_050_B10", "box_SetBoolean_v2_43.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_61_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_61_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_70();
    l0 = self.box_MultipleAND_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1759671945", "1759671945", "LT02_050_B10", "box_SetEntity_v2_61.Out", "box_MultipleAND_v2_70.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_VisibilityModifier_21_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_19();
    l0 = self.box_VisibilityModifier_21;
    l1 = self.box_VisibilityModifier_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|764745625", "764745625", "LT02_050_B10", "box_VisibilityModifier_21.Disabled", "box_VisibilityModifier_19.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_126_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_125();
    l0 = self.box_ProximityTrigger_v2_126;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2064656205", "2064656205", "LT02_050_B10", "box_ProximityTrigger_v2_126.Disabled", "box_ActivityObjectiveMarkerModifier_v3_125.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_126_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_125();
    l0 = self.box_ProximityTrigger_v2_126;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|120920739", "120920739", "LT02_050_B10", "box_ProximityTrigger_v2_126.Enabled", "box_ActivityObjectiveMarkerModifier_v3_125.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_126_OnOccupied()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v2_126();
    l0 = self.box_ProximityTrigger_v2_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1350781076", "1350781076", "LT02_050_B10", "box_ProximityTrigger_v2_126.OnOccupied", "box_ProximityTrigger_v2_126.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_131_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_137();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1784133416", "1784133416", "LT02_050_B10", "box_UseContextualActionModifier_v3_131.Disabled", "box_UseContextualActionModifier_v3_137.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_41();
    l0 = self.box_SoundModifier_v2_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1437161671", "1437161671", "LT02_050_B10", "box_OutputOrder_v2_13.Out", "box_SoundModifier_v2_41.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_28();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|128062270", "128062270", "LT02_050_B10", "box_OutputOrder_v2_13.Out", "box_ActivityObjectiveMarkerModifier_v3_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_62_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_65();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|383156173", "383156173", "LT02_050_B10", "box_UseContextualActionModifier_v3_62.Disabled", "box_UseContextualActionModifier_v3_65.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_139();
    l0 = self.box_ProximityTrigger_v2_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1978816047", "1978816047", "LT02_050_B10", "box_OutputOrder_v2_69.Out", "box_ProximityTrigger_v2_139.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_134();
    l0 = self.box_ProximityTrigger_v2_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2005413571", "2005413571", "LT02_050_B10", "box_OutputOrder_v2_69.Out", "box_ProximityTrigger_v2_134.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_69_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityTagListener_v4_159();
    l0 = self.box_EntityTagListener_v4_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|735921843", "735921843", "LT02_050_B10", "box_OutputOrder_v2_69.Out", "box_EntityTagListener_v4_159.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_69_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityTagListener_v4_160();
    l0 = self.box_EntityTagListener_v4_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2070331964", "2070331964", "LT02_050_B10", "box_OutputOrder_v2_69.Out", "box_EntityTagListener_v4_160.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StateListener_v2_144_StateStop()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_170();
    l0 = self.box_StateListener_v2_144;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1607683733", "1607683733", "LT02_050_B10", "box_StateListener_v2_144.StateStop", "box_Simple_Node_170.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_110_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_124();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1814104969", "1814104969", "LT02_050_B10", "box_OutputOrder_v2_110.Out", "box_Simple_Node_124.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_110_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1121109579", "1121109579", "LT02_050_B10", "box_OutputOrder_v2_110.Out", "box_ActivityEnd_3.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_28_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|366617469", "366617469", "LT02_050_B10", "box_ActivityObjectiveMarkerModifier_v3_28.Disabled", "box_EndActivityObjective_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_71_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_71;
    l1 = self.box_OnceOnly_v3_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|95869942", "95869942", "LT02_050_B10", "box_ProximityTrigger_v2_71.Enter", "box_OnceOnly_v3_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_158_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_158_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_140();
    l0 = self.box_MultipleAND_v2_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1200541773", "1200541773", "LT02_050_B10", "box_SetEntity_v2_158.Out", "box_MultipleAND_v2_140.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_Switch_121_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_117();
    l0 = self.box_Switch_121;
    l1 = self.box_VisibilityModifier_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1919220230", "1919220230", "LT02_050_B10", "box_Switch_121.Output", "box_VisibilityModifier_117.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_Switch_121_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_117();
    l0 = self.box_Switch_121;
    l1 = self.box_VisibilityModifier_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|771241722", "771241722", "LT02_050_B10", "box_Switch_121.Output", "box_VisibilityModifier_117.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_PhoneCallExclusivityModifier_14_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_LockTimeOfDay_30();
    l0 = self.box_PhoneCallExclusivityModifier_14;
    l1 = self.box_LockTimeOfDay_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1540372592", "1540372592", "LT02_050_B10", "box_PhoneCallExclusivityModifier_14.Enabled", "box_LockTimeOfDay_30.Lock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lock
    l1:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_110();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1931776139", "1931776139", "LT02_050_B10", "box_EndActivityObjective_v2_11.Out", "box_OutputOrder_v2_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_40_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1062985150", "1062985150", "LT02_050_B10", "box_DynamicLightModifier_40.Disabled", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_89_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = self.box_Delay_v5_89;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|14337205", "14337205", "LT02_050_B10", "box_Delay_v5_89.TimeElapsed", "box_OutputOrder_v2_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_149_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_68();
    l0 = self.box_EntityStatusListener_149;
    l1 = self.box_EntityStatusListener_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|31527818", "31527818", "LT02_050_B10", "box_EntityStatusListener_149.Loaded", "box_EntityStatusListener_68.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_113_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_113_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_119();
    l0 = self.box_Delay_v5_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1615198176", "1615198176", "LT02_050_B10", "box_RandomFloat_v2_113.Out", "box_Delay_v5_119.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_165_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_185();
    l0 = self.box_MultipleOR_165;
    l1 = self.box_Gate_v3_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|738624158", "738624158", "LT02_050_B10", "box_MultipleOR_165.Out", "box_Gate_v3_185.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_137_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_131();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1512828719", "1512828719", "LT02_050_B10", "box_UseContextualActionModifier_v3_137.Enabled", "box_UseContextualActionModifier_v3_131.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_56_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_56;
    l1 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2038539993", "2038539993", "LT02_050_B10", "box_Delay_v5_56.TimeElapsed", "box_MultipleOR_91.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_78_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_59();
    l0 = self.box_EntityStatusListener_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1332030198", "1332030198", "LT02_050_B10", "box_Simple_Node_78.Out", "box_EntityStatusListener_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_123_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_121();
    l0 = self.box_Switch_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2021183368", "2021183368", "LT02_050_B10", "box_OutputOrder_v2_123.Out", "box_Switch_121.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_123_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1074440368", "1074440368", "LT02_050_B10", "box_OutputOrder_v2_123.Out", "box_MultipleOR_122.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_172_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_175();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1196026882", "1196026882", "LT02_050_B10", "box_Simple_Node_172.Out", "box_OutputOrder_v2_175.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_136_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_136_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_140();
    l0 = self.box_MultipleAND_v2_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|156597054", "156597054", "LT02_050_B10", "box_SetEntity_v2_136.Out", "box_MultipleAND_v2_140.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_UseContextualActionModifier_v3_174_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_177();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1876183438", "1876183438", "LT02_050_B10", "box_UseContextualActionModifier_v3_174.Disabled", "box_UseContextualActionModifier_v3_177.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_102_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_101();
    l0 = self.box_UniversalInteractionModifier_v2_102;
    l1 = self.box_NavLinkModifier_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1780912278", "1780912278", "LT02_050_B10", "box_UniversalInteractionModifier_v2_102.Disabled", "box_NavLinkModifier_101.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_102_Enabled()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_102();
    l0 = self.box_UniversalInteractionModifier_v2_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|233310814", "233310814", "LT02_050_B10", "box_UniversalInteractionModifier_v2_102.Enabled", "box_UniversalInteractionModifier_v2_102.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_134_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_134;
    l1 = self.box_OnceOnly_v3_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1316309297", "1316309297", "LT02_050_B10", "box_ProximityTrigger_v2_134.Enter", "box_OnceOnly_v3_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjective_v2_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_10();
    l0 = self.box_ProximityTrigger_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1491665533", "1491665533", "LT02_050_B10", "box_AddActivityObjective_v2_29.Out", "box_ProximityTrigger_v2_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_10_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_16();
    l0 = self.box_ProximityTrigger_v2_10;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|218422777", "218422777", "LT02_050_B10", "box_ProximityTrigger_v2_10.Disabled", "box_ActivityObjectiveMarkerModifier_v3_16.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_10_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_16();
    l0 = self.box_ProximityTrigger_v2_10;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2035807332", "2035807332", "LT02_050_B10", "box_ProximityTrigger_v2_10.Enabled", "box_ActivityObjectiveMarkerModifier_v3_16.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_10_OnOccupied()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v2_10();
    l0 = self.box_ProximityTrigger_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|545931211", "545931211", "LT02_050_B10", "box_ProximityTrigger_v2_10.OnOccupied", "box_ProximityTrigger_v2_10.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|404642908", "404642908", "LT02_050_B10", "box_OutputOrder_v2_94.Out", "box_PhoneCallExclusivityModifier_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_94_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_95();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|87528430", "87528430", "LT02_050_B10", "box_OutputOrder_v2_94.Out", "box_FastTravelModifier_v2_95.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_94_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_153();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1279328901", "1279328901", "LT02_050_B10", "box_OutputOrder_v2_94.Out", "box_ActivityForceAndLockTracking_153.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_185_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_168();
    l0 = self.box_Gate_v3_185;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1231597021", "1231597021", "LT02_050_B10", "box_Gate_v3_185.Closed", "box_Simple_Node_168.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_185_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_Gate_v3_185;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2094307078", "2094307078", "LT02_050_B10", "box_Gate_v3_185.Out", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V5_1_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_27();
    l0 = self.box_Brick_Interact_With_Object_V5_1;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|954243081", "954243081", "LT02_050_B10", "box_Brick_Interact_With_Object_V5_1.Started", "box_ShimmerModifier_v2_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V5_1_Success()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_27();
    l0 = self.box_Brick_Interact_With_Object_V5_1;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1329795267", "1329795267", "LT02_050_B10", "box_Brick_Interact_With_Object_V5_1.Success", "box_ShimmerModifier_v2_27.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_48_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_36();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|602286042", "602286042", "LT02_050_B10", "box_Simple_Node_48.Out", "box_DynamicLightModifier_36.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_55_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_92();
    l0 = self.box_Delay_v5_55;
    l1 = self.box_Switch_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|116535659", "116535659", "LT02_050_B10", "box_Delay_v5_55.TimeElapsed", "box_Switch_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|214610357", "214610357", "LT02_050_B10", "box_OutputOrder_v2_4.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_151();
    l0 = self.box_GunsForHireSystemModifier_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|469164423", "469164423", "LT02_050_B10", "box_OutputOrder_v2_4.Out", "box_GunsForHireSystemModifier_151.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|821594567", "821594567", "LT02_050_B10", "box_OutputOrder_v2_4.Out", "box_ActivityAcknowledgeGate_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_VisibilityModifier_26_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_25();
    l0 = self.box_VisibilityModifier_26;
    l1 = self.box_VisibilityModifier_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|664075874", "664075874", "LT02_050_B10", "box_VisibilityModifier_26.Disabled", "box_VisibilityModifier_25.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_125_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_112();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|659036487", "659036487", "LT02_050_B10", "box_ActivityObjectiveMarkerModifier_v3_125.Disabled", "box_OutputOrder_v2_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_86_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_161();
    l0 = self.box_EntityStatusListener_86;
    l1 = self.box_EntityStatusListener_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1948596303", "1948596303", "LT02_050_B10", "box_EntityStatusListener_86.Loaded", "box_EntityStatusListener_161.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_DynamicLightModifier_38_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_39();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1058136413", "1058136413", "LT02_050_B10", "box_DynamicLightModifier_38.Enabled", "box_DynamicLightModifier_39.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_16_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_126();
    l0 = self.box_ProximityTrigger_v2_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|356300812", "356300812", "LT02_050_B10", "box_ActivityObjectiveMarkerModifier_v3_16.Disabled", "box_ProximityTrigger_v2_126.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_87_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_155();
    l0 = self.box_EntityStatusListener_87;
    l1 = self.box_SpawnAI_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|880579370", "880579370", "LT02_050_B10", "box_EntityStatusListener_87.Loaded", "box_SpawnAI_155.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityTagListener_v4_160_Tagged()
    local l0, l1;
    l0 = self.box_EntityTagListener_v4_160;
    l1 = self.box_OnceOnly_v3_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1265614513", "1265614513", "LT02_050_B10", "box_EntityTagListener_v4_160.Tagged", "box_OnceOnly_v3_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_UniversalInteractionModifier_v2_49_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_UniversalInteractionModifier_v2_49;
    l1 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1809079920", "1809079920", "LT02_050_B10", "box_UniversalInteractionModifier_v2_49.Disabled", "box_Delay_v5_47.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_49_Enabled()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_49();
    l0 = self.box_UniversalInteractionModifier_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1774683508", "1774683508", "LT02_050_B10", "box_UniversalInteractionModifier_v2_49.Enabled", "box_UniversalInteractionModifier_v2_49.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_166_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_71();
    l0 = self.box_ProximityTrigger_v2_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1668536721", "1668536721", "LT02_050_B10", "box_OutputOrder_v2_166.Out", "box_ProximityTrigger_v2_71.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_166_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityTagListener_v4_162();
    l0 = self.box_EntityTagListener_v4_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|541612900", "541612900", "LT02_050_B10", "box_OutputOrder_v2_166.Out", "box_EntityTagListener_v4_162.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_166_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityTagListener_v4_163();
    l0 = self.box_EntityTagListener_v4_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1533808994", "1533808994", "LT02_050_B10", "box_OutputOrder_v2_166.Out", "box_EntityTagListener_v4_163.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_188_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_187();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1990472719", "1990472719", "LT02_050_B10", "box_UseContextualActionModifier_v3_188.Enabled", "box_UseContextualActionModifier_v3_187.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_52();
    l0 = self.box_NavLinkModifier_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1484690121", "1484690121", "LT02_050_B10", "box_OutputOrder_v2_46.Out", "box_NavLinkModifier_52.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_150();
    l0 = self.box_NavLinkModifier_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|291107411", "291107411", "LT02_050_B10", "box_OutputOrder_v2_46.Out", "box_NavLinkModifier_150.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_46_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_50();
    l0 = self.box_NavLinkModifier_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1656265033", "1656265033", "LT02_050_B10", "box_OutputOrder_v2_46.Out", "box_NavLinkModifier_50.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_20();
    l0 = self.box_Music_Quest_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|295603553", "295603553", "LT02_050_B10", "box_OutputOrder_v2_15.Out", "box_Music_Quest_v2_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_34();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1462381356", "1462381356", "LT02_050_B10", "box_OutputOrder_v2_15.Out", "box_GetPlayerGroup_v2_34.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_54();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|140388666", "140388666", "LT02_050_B10", "box_OutputOrder_v2_15.Out", "box_SoundShapeModifier_54.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_152();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|619917314", "619917314", "LT02_050_B10", "box_OutputOrder_v2_15.Out", "box_SoundPointModifier_152.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_100_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_89();
    l0 = self.box_Delay_v5_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|835025391", "835025391", "LT02_050_B10", "box_Simple_Node_100.Out", "box_Delay_v5_89.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_183_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_184();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2000280435", "2000280435", "LT02_050_B10", "box_OutputOrder_v2_183.Out", "box_Simple_Node_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_185();
    l0 = self.box_Gate_v3_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1157245669", "1157245669", "LT02_050_B10", "box_OutputOrder_v2_183.Out", "box_Gate_v3_185.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_80_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_42();
    l0 = self.box_RequestPhoneCall_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|697188806", "697188806", "LT02_050_B10", "box_OutputOrder_v2_80.Out", "box_RequestPhoneCall_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_80_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_129();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1985858468", "1985858468", "LT02_050_B10", "box_OutputOrder_v2_80.Out", "box_OutputOrder_v2_129.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_80_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_23();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2143708237", "2143708237", "LT02_050_B10", "box_OutputOrder_v2_80.Out", "box_Simple_Node_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_80_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_48();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1205301136", "1205301136", "LT02_050_B10", "box_OutputOrder_v2_80.Out", "box_Simple_Node_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_80_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_35();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1443218099", "1443218099", "LT02_050_B10", "box_OutputOrder_v2_80.Out", "box_Simple_Node_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_80_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|104624541", "104624541", "LT02_050_B10", "box_OutputOrder_v2_80.Out", "box_Simple_Node_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_64_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_73();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|373948734", "373948734", "LT02_050_B10", "box_UseContextualActionModifier_v3_64.Enabled", "box_UseContextualActionModifier_v3_73.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_106();
    l0 = self.box_EntityStatusListener_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1119339003", "1119339003", "LT02_050_B10", "box_Simple_Node_45.Out", "box_EntityStatusListener_106.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_85_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_148();
    l0 = self.box_EntityStatusListener_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|539751599", "539751599", "LT02_050_B10", "box_Simple_Node_85.Out", "box_EntityStatusListener_148.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_106_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_105();
    l0 = self.box_EntityStatusListener_106;
    l1 = self.box_UniversalInteractionModifier_v2_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|833847433", "833847433", "LT02_050_B10", "box_EntityStatusListener_106.Loaded", "box_UniversalInteractionModifier_v2_105.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_186_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_189();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|857309977", "857309977", "LT02_050_B10", "box_UseContextualActionModifier_v3_186.Enabled", "box_UseContextualActionModifier_v3_189.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_57_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_9();
    l0 = self.box_Switch_57;
    l1 = self.box_VisibilityModifier_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|373205936", "373205936", "LT02_050_B10", "box_Switch_57.Output", "box_VisibilityModifier_9.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_Switch_57_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_9();
    l0 = self.box_Switch_57;
    l1 = self.box_VisibilityModifier_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|517932092", "517932092", "LT02_050_B10", "box_Switch_57.Output", "box_VisibilityModifier_9.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_83_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_156();
    l0 = self.box_EntityStatusListener_83;
    l1 = self.box_EntityStatusListener_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|402326985", "402326985", "LT02_050_B10", "box_EntityStatusListener_83.Loaded", "box_EntityStatusListener_156.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityTagListener_v4_162_Tagged()
    local l0, l1;
    l0 = self.box_EntityTagListener_v4_162;
    l1 = self.box_OnceOnly_v3_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|252014073", "252014073", "LT02_050_B10", "box_EntityTagListener_v4_162.Tagged", "box_OnceOnly_v3_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_84_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_158();
    l0 = self.box_SpawnAI_84;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1064156724", "1064156724", "LT02_050_B10", "box_SpawnAI_84.Spawned", "box_SetEntity_v2_158.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|@Jump_EndBunksConvoListeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_167_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|@Jump_EndKitchenConvoListeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_168_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|@Jump_StopLoops");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_124_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|33321273");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_18_Disabled,
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
        [4] = "2103498413537507847",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_111()
    local params;
    params = {
        -- Entity,
        [0] = "2104663628763431504",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|61093211");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|66488561");
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

function export:OnEnter_box_VisibilityModifier_22()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104646152661007152",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|100470061");
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
                [0] = self.f_box_OutputOrder_v2_107_Out_0,
                [1] = self.f_box_OutputOrder_v2_107_Out_1,
                [2] = self.f_box_OutputOrder_v2_107_Out_2,
                [3] = self.f_box_OutputOrder_v2_107_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_98()
    local params;
    DrawTextToScreen("Comment: PA System VO: \"Lockdown Initiated. Pressure doors sealed.\"", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: PA System VO: \"Lockdown Initiated. Pressure doors sealed.\"");
    params = {
        -- Group,
        [0] = "2104769415846318198",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4073210432",
    };
    return params;
end;

function export:OnEnter_box_EntityTagListener_v4_159()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- id,
        [1] = self.e_BunksAssaulter,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|115567186");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_184_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|122642023");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LockTimeOfDay_30()
    local params;
    params = {
        -- Hour,
        [0] = 0,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|140270211");
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
                [0] = self.f_box_OutputOrder_v2_175_Out_0,
                [1] = self.f_box_OutputOrder_v2_175_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|181861464");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_73_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103929388157388075",
        -- Entity,
        [1] = self.e_KitchenBrawler,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_143()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103928000251712293",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|207143939");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_189_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103929412664706362",
        -- Entity,
        [1] = self.e_KitchenBerserker,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|210841105");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_179_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|225357718");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_154_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|238146584");
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
                [0] = self.f_box_OutputOrder_v2_180_Out_0,
                [1] = self.f_box_OutputOrder_v2_180_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|258448130");
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
                [0] = self.f_box_OutputOrder_v2_108_Out_0,
                [1] = self.f_box_OutputOrder_v2_108_Out_1,
                [2] = self.f_box_OutputOrder_v2_108_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_105()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = "2104663552391447012",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|266628422");
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
                [0] = self.f_box_OutputOrder_v2_112_Out_0,
                [1] = self.f_box_OutputOrder_v2_112_Out_1,
                [2] = self.f_box_OutputOrder_v2_112_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_59()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101369041709971839",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|288236242");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2104920772318351815",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|294606027");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_176_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104701909953713377",
        -- Entity,
        [1] = self.e_TopHallsHeavy,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|309561021");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|310244214");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_39_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2104646445939325731",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|311650500");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_181_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_19()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104645283555080807",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_148()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104701904886994114",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_79()
    local params;
    DrawTextToScreen("Comment: Delay spawning of Kitchen Guys", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Delay_v5')-- Comment: Delay spawning of Kitchen Guys");
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|427472617");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_116_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_52()
    local params;
    params = {
        -- Entity,
        [0] = "2102889525092045799",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_47()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.8,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_72()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103929388157388075",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|479451326");
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

function export:OnEnter_box_SpawnAI_74()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101353308665952875",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_97()
    local params;
    DrawTextToScreen("Comment: PA System VO: \"Lockdown Initiated. Pressure doors sealed.\"", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: PA System VO: \"Lockdown Initiated. Pressure doors sealed.\"");
    params = {
        -- Group,
        [0] = "2104769400524525666",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4073210432",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|550729024");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_65_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103929243300807916",
        -- Entity,
        [1] = self.e_KitchenBerserker,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|576519598");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_12_Out,
    });
    params = {
        -- Max,
        [0] = 0.8,
        -- Min,
        [1] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|578493688");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_34_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_156()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104745549809864971",
    };
    return params;
end;

function export:OnEnter_box_Switch_92()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_24()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 0,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2123435015",
        -- StopEvent,
        [7] = "3491282602",
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

function export:OnEnter_box_MultipleAND_v2_140()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_51()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = "2102431597304234531",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|633249037");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_135_Out,
    });
    params = {
        -- Entity,
        [0] = "2103495748971677810",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|640889993");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_31_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2104645543555791555",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|649240993");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_66_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104701904886994114",
        -- Entity,
        [1] = self.e_BunksAssaulter,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|656397375");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_37_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2102683873218417308",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_141()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101356728179243731",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|742732026");
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
                [0] = self.f_box_OutputOrder_v2_82_Out_0,
                [1] = self.f_box_OutputOrder_v2_82_Out_1,
                [2] = self.f_box_OutputOrder_v2_82_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|743917311");
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
                [0] = self.f_box_OutputOrder_v2_81_Out_0,
                [1] = self.f_box_OutputOrder_v2_81_Out_1,
                [2] = self.f_box_OutputOrder_v2_81_Out_2,
                [3] = self.f_box_OutputOrder_v2_81_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|745719095");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104645639645199052",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_63()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101353308665952875",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|763896213");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_187_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103929388157388075",
        -- Entity,
        [1] = self.e_KitchenBrawler,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_103()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104663599724167707",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|785338225");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_170_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_169()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#8F9957BD",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|823239333");
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
                [0] = self.f_box_OutputOrder_v2_104_Out_0,
                [1] = self.f_box_OutputOrder_v2_104_Out_1,
                [2] = self.f_box_OutputOrder_v2_104_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|846191481");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_128_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_130()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103928000251712293",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_76()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103929030198707078",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_147()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104701909953713377",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_42()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = self.Player_Group,
        -- SoundId,
        [5] = "1403674834",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_53()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101356683191138868",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_151()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_145()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102210509433479639",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|951922341");
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
                [0] = self.f_box_OutputOrder_v2_99_Out_0,
                [1] = self.f_box_OutputOrder_v2_99_Out_1,
                [2] = self.f_box_OutputOrder_v2_99_Out_2,
                [3] = self.f_box_OutputOrder_v2_99_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_70()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_75()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103958556022695934",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_155()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103958524391352254",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1026439082");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1030176267");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_35_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_120()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1057117074");
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
                [0] = self.f_box_OutputOrder_v2_173_Out_0,
                [1] = self.f_box_OutputOrder_v2_173_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_9()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104671718017618582",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_114()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1112761895");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_77_Out,
    });
    params = {
        -- Entity,
        [0] = "2103929030207095692",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1119748132");
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
                [0] = self.f_box_OutputOrder_v2_164_Out_0,
                [1] = self.f_box_OutputOrder_v2_164_Out_1,
                [2] = self.f_box_OutputOrder_v2_164_Out_2,
            },
            count = 3,
        },
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1169364592");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_93_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1176168104");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_138_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104701301400021830",
        -- Entity,
        [1] = self.e_BunksAssaulter,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1179925516");
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

function export:OnEnter_box_DynamicLightModifier_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1185246272");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_36_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2102683873218417308",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_142()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101356728179243731",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_68()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103929030198707078",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_161()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102210509433479639",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1260905442");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_178_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101369043884718465",
        -- Entity,
        [1] = self.e_TopHallsHeavy,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1265452022");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_27_Disabled,
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_27_Enabled,
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
        [4] = "2104646121616866095",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1265594442");
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
                [0] = self.f_box_OutputOrder_v2_90_Out_0,
                [1] = self.f_box_OutputOrder_v2_90_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1284165475");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_177_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104701346054679409",
        -- Entity,
        [1] = self.e_BunksAssaulter,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1284841997");
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
                [0] = self.f_box_OutputOrder_v2_129_Out_0,
                [1] = self.f_box_OutputOrder_v2_129_Out_1,
                [2] = self.f_box_OutputOrder_v2_129_Out_2,
                [3] = self.f_box_OutputOrder_v2_129_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_171()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1305053926");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_32_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2104646445939325731",
    };
    return params;
end;

function export:OnEnter_box_EntityTagListener_v4_163()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- id,
        [1] = self.e_KitchenBrawler,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1308968638");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_132_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_139()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104701189407910703",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1328899954");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1331670131");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_61_Out,
    });
    params = {
        -- Entity,
        [0] = "2103495748967483501",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_21()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103498413537507847",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_126()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101479554691402994",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1364257562");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_131_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104701909953713377",
        -- Entity,
        [1] = self.e_TopHallsHeavy,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1369377525");
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

function export:OnEnter_box_UseContextualActionModifier_v3_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1373147194");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_62_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103929412664706362",
        -- Entity,
        [1] = self.e_KitchenBerserker,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1375746808");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
                [2] = self.f_box_OutputOrder_v2_69_Out_2,
                [3] = self.f_box_OutputOrder_v2_69_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_144()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#8F9957BD",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1394948932");
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
                [0] = self.f_box_OutputOrder_v2_110_Out_0,
                [1] = self.f_box_OutputOrder_v2_110_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1405509202");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_28_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2099922063784424983",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT02_050_B20C_PressButtonT",
            id = "570198",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_44()
    local params;
    params = {
        -- Pawns,
        [0] = "2103291539068318931",
        -- SoundId,
        [1] = "3491486830",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_71()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103929719161374265",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1432732406");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_158_Out,
    });
    params = {
        -- Entity,
        [0] = "2104745549816156433",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_150()
    local params;
    params = {
        -- Entity,
        [0] = "2102988433484981934",
    };
    return params;
end;

function export:OnEnter_box_Switch_121()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1471477501");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_11_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT02_050_B20C_PressButtonT",
            id = "570198",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1474969055");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_40_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2104645639645199052",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_89()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_149()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103929412664706362",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_101()
    local params;
    params = {
        -- Entity,
        [0] = "2104663634641748565",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1520581195");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_113_Out,
    });
    params = {
        -- Max,
        [0] = 0.8,
        -- Min,
        [1] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1556220415");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_137_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104701255304620851",
        -- Entity,
        [1] = self.e_TopHallsHeavy,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_56()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1585928127");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_78_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1597063620");
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

function export:OnEnter_box_Simple_Node_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1609108912");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_172_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1612961081");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_136_Out,
    });
    params = {
        -- Entity,
        [0] = "2103928000264295211",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1615708002");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_174_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104701904886994114",
        -- Entity,
        [1] = self.e_BunksAssaulter,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_102()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = "2104663599724167707",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_134()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104701162771983149",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1638354615");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_29_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT02_050_B20A_FindPratt",
            id = "570197",
        },
        -- TargetGroup,
        [2] = self.Player_Group,
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_10()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104662262575797780",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1661326335");
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
                [0] = self.f_box_OutputOrder_v2_94_Out_0,
                [1] = self.f_box_OutputOrder_v2_94_Out_1,
                [2] = self.f_box_OutputOrder_v2_94_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_185()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1681519880");
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
        [8] = "LT02_050_B10 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_25()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104645283555080807",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_1()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = true,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- b_SkipObjectiveFlow,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2104663034992574444",
        -- e_ObjectiveMarker,
        [4] = "2099922063784424983",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "LT02_050_B20C_PressButtons",
            id = "570198",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_157()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101356683191138868",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1716383870");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_48_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1722578534");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1725442659");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_26()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104646152661007152",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1739921555");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_125_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2104673906225851022",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT02_050_B20A_FindPratt",
            id = "570197",
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_88()
    local params;
    DrawTextToScreen("Comment: PA System VO: \"Lockdown Initiated. Pressure doors sealed.\"", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: PA System VO: \"Lockdown Initiated. Pressure doors sealed.\"");
    params = {
        -- Group,
        [0] = "2104769344337629258",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4073210432",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_86()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103959824212447464",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1784659195");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_38_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2104645543555791555",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1787963113");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_16_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2104662288999912988",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT02_050_B20A_FindPratt",
            id = "570197",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_87()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103958524391352254",
    };
    return params;
end;

function export:OnEnter_box_EntityTagListener_v4_160()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- id,
        [1] = self.e_BunksDefender,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1831106758");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103954201737455958",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_49()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = "2101190791232752698",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1856055108");
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
                [0] = self.f_box_OutputOrder_v2_166_Out_0,
                [1] = self.f_box_OutputOrder_v2_166_Out_1,
                [2] = self.f_box_OutputOrder_v2_166_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_96()
    local params;
    DrawTextToScreen("Comment: PA System VO: \"Lockdown Initiated. Pressure doors sealed.\"", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: PA System VO: \"Lockdown Initiated. Pressure doors sealed.\"");
    params = {
        -- Group,
        [0] = "2104769389745164384",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4073210432",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1908901272");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_188_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103929335021847828",
        -- Entity,
        [1] = self.e_KitchenBrawler,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1924261318");
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

function export:OnEnter_box_Music_Quest_v2_20()
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
        [6] = "2123435015",
        -- StopEvent,
        [7] = "3491282602",
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

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1933069199");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
                [3] = self.f_box_OutputOrder_v2_15_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1965499452");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_100_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1967205581");
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
                [0] = self.f_box_OutputOrder_v2_183_Out_0,
                [1] = self.f_box_OutputOrder_v2_183_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1982108381");
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
                [0] = self.f_box_OutputOrder_v2_80_Out_0,
                [1] = self.f_box_OutputOrder_v2_80_Out_1,
                [2] = self.f_box_OutputOrder_v2_80_Out_2,
                [3] = self.f_box_OutputOrder_v2_80_Out_3,
                [4] = self.f_box_OutputOrder_v2_80_Out_4,
                [5] = self.f_box_OutputOrder_v2_80_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|1991053922");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_64_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103929755060422249",
        -- Entity,
        [1] = self.e_KitchenBrawler,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2000196675");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_45_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2005045434");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_85_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_106()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104663552391447012",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_50()
    local params;
    params = {
        -- Entity,
        [0] = "2101771032078600686",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B10.domino|@LT02_050_B10|2027856388");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_186_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103929439730550212",
        -- Entity,
        [1] = self.e_KitchenBerserker,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_41()
    local params;
    params = {
        -- Pawns,
        [0] = "2103565409279023018",
        -- SoundId,
        [1] = "917393133",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Switch_57()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_83()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102157231507128704",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_117()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104671720014107288",
    };
    return params;
end;

function export:OnEnter_box_EntityTagListener_v4_162()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- id,
        [1] = self.e_KitchenBerserker,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_84()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104745549809864971",
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_12_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_55;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Player_Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_135_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_TopHallsHeavy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_77_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_KitchenBerserker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_43_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_CheckpointReloaded = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_61_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_KitchenBrawler = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_158_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_BunksDefender = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_113_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_119;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_136_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_BunksAssaulter = l0:GetDataOutValue(0);
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
