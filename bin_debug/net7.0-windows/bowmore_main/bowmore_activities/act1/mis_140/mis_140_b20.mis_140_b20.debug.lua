LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act1/mis_140/mis_140_b20.domino
-- User graph: mis_140_b20
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPosition.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsImpulse.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1828692388.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4255524722.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1643541513.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2013775272.bnk]], "CSoundResource");
        cboxRes:LoadResource([[808122783.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2204373343.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2445491339.bnk]], "CSoundResource");
        cboxRes:LoadResource([[496588242.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2045333231.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3698971670.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4025596061.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1296387302.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2791685165.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3934101838.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B20.mis_140_b20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua")] = {
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
                name = "PlayerDetected",
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
            [4] = {
                name = "TimerExpired",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bIsTrigger",
                type = "bool",
            },
            [2] = {
                name = "bRequiresAllPlayer",
                type = "bool",
            },
            [3] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [4] = {
                name = "bUse2d_ProximityCheck",
                type = "bool",
            },
            [5] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [6] = {
                name = "eMarker",
                type = "entity",
            },
            [7] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [8] = {
                name = "eTrigger",
                type = "entity",
            },
            [9] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [10] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [11] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [12] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 13,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua")] = {
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
                name = "FailingZoneEntered",
                delayed = true,
            },
            [1] = {
                name = "WarningZoneEntered",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bShowUI",
                type = "bool",
            },
            [1] = {
                name = "CoopFailRequiresAllPlayer",
                type = "bool",
            },
            [2] = {
                name = "FailingZoneTrigger",
                type = "entity",
            },
            [3] = {
                name = "WarningZoneTrigger",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "CurrentWarnedPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [10] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 11,
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
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 3,
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
                name = "othersSpawned",
                type = "list",
            },
            [2] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/CompareFloats.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
            [2] = {
                name = "Tolerance",
                type = "float",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/GetPosition.lua")] = {
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
                name = "id",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "pitch",
                type = "float",
            },
            [1] = {
                name = "roll",
                type = "float",
            },
            [2] = {
                name = "xPos",
                type = "float",
            },
            [3] = {
                name = "yaw",
                type = "float",
            },
            [4] = {
                name = "yPos",
                type = "float",
            },
            [5] = {
                name = "zPos",
                type = "float",
            },
        },
        dataOutCount = 6,
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
    metadataTable[GetPathID("Domino/System/PhysicsImpulse.lua")] = {
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
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AngularAmplitude",
                type = "float",
            },
            [1] = {
                name = "AngularVector",
                type = "list",
            },
            [2] = {
                name = "DirectionAmplitude",
                type = "float",
            },
            [3] = {
                name = "DirectionEntityID",
                type = "entity",
            },
            [4] = {
                name = "DirectionVector",
                type = "list",
            },
            [5] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 6,
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
    self._name = "mis_140_b20";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20";
    self.PlayerID = nil;
    self.MetaSequenceID = 0;
    self.Body_Hight = 0;
    self.box_Music_Quest_v2_64 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|34353707");
    l0:SetConnections({
    });
    self.box_Reach_GoTo_v3_46 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|62973253");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_Reach_GoTo_v3_46_Started,
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_46_Success,
    });
    self.box_SpawnAI_67 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|161722697");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_31 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|324803001");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_66 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|350474439");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_39 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|367592033");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_39_Finished,
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|470118525");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_56 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|621346093");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_56_Enter,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|649381489");
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
    self.box_SpawnAI_61 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|721718024");
    l0:SetConnections({
    });
    self.box_Reach_GoTo_v3_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|868989160");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_Reach_GoTo_v3_4_Started,
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_4_Success,
    });
    self.box_ProximityTrigger_v3_35 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|953416144");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_35_Enter,
    });
    self.box_SoundModifier_v2_28 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|960970328");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_28_Started,
    });
    self.box_PlayDialog_v6_70 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|991337652");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_70_Finished,
    });
    self.box_SoundModifier_v2_20 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1005449265");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_20_Started,
    });
    self.box_ProximityTrigger_v3_12 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1042322068");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_12_Enter,
    });
    self.box_NavLinkModifier_21 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1164251820");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_21_Activated,
    });
    self.box_SpawnAI_23 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1346574212");
    l0:SetConnections({
    });
    self.box_SpawnAI_63 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1397560238");
    l0:SetConnections({
    });
    self.box_Delay_v5_32 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1580614268");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_32_TimeElapsed,
    });
    self.box_SpawnAI_54 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1587786806");
    l0:SetConnections({
    });
    self.box_SpawnAI_14 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1612000813");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_41 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1621798925");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_41_Finished,
    });
    self.box_SpawnAI_24 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1637041544");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1644854946");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_SpawnAI_8 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1676326529");
    l0:SetConnections({
    });
    self.box_SpawnAI_15 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1682626631");
    l0:SetConnections({
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1704398996");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_SpawnAI_62 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1709791770");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_71 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1716574804");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_71_Finished,
    });
    self.box_ProximityTrigger_v3_49 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1799919060");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_49_Enter,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1882526496");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_ExitZoneWarningListener_v3_58 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1925108341");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_58_FailingZoneEntered,
    });
    self.box_PlayDialog_v6_38 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1942724130");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_38_Finished,
    });
    self.box_PlayDialog_v6_57 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1949114321");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_19 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1979583472");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_19_Loaded,
    });
    self.box_SoundModifier_v2_68 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|2011367286");
    l0:SetConnections({
    });
    self.box_SpawnAI_22 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|2016105524");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_72 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|2030375459");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_5 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|2093903762");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_5_Enter,
    });
    self.box_PlayDialog_v6_40 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|2138054655");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_40_Finished,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1772850336", "1772850336", "mis_140_b20", "In", "box_ActivityAcknowledgeGate_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Reach_GoTo_v3_46_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_58();
    l0 = self.box_Reach_GoTo_v3_46;
    l1 = self.box_ExitZoneWarningListener_v3_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|2080117367", "2080117367", "mis_140_b20", "box_Reach_GoTo_v3_46.Started", "box_ExitZoneWarningListener_v3_58.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v3_46_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v3_4();
    l0 = self.box_Reach_GoTo_v3_46;
    l1 = self.box_Reach_GoTo_v3_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|156590986", "156590986", "mis_140_b20", "box_Reach_GoTo_v3_46.Success", "box_Reach_GoTo_v3_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_13();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|2088891162", "2088891162", "mis_140_b20", "box_OutputOrder_v2_16.Out", "box_UseContextualActionModifier_v3_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_15();
    l0 = self.box_SpawnAI_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|222308936", "222308936", "mis_140_b20", "box_OutputOrder_v2_16.Out", "box_SpawnAI_15.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_14();
    l0 = self.box_SpawnAI_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|208463296", "208463296", "mis_140_b20", "box_OutputOrder_v2_16.Out", "box_SpawnAI_14.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_23();
    l0 = self.box_SpawnAI_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1971318332", "1971318332", "mis_140_b20", "box_OutputOrder_v2_16.Out", "box_SpawnAI_23.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_22();
    l0 = self.box_SpawnAI_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|385986173", "385986173", "mis_140_b20", "box_OutputOrder_v2_16.Out", "box_SpawnAI_22.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_8();
    l0 = self.box_SpawnAI_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1239867460", "1239867460", "mis_140_b20", "box_OutputOrder_v2_16.Out", "box_SpawnAI_8.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_54();
    l0 = self.box_SpawnAI_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|625999777", "625999777", "mis_140_b20", "box_OutputOrder_v2_16.Out", "box_SpawnAI_54.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_PhysicsImpulse_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_32();
    l0 = self.box_Delay_v5_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|434374630", "434374630", "mis_140_b20", "box_PhysicsImpulse_47.Out", "box_Delay_v5_32.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_58();
    l0 = self.box_ExitZoneWarningListener_v3_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|540762029", "540762029", "mis_140_b20", "box_OutputOrder_v2_60.Out", "box_ExitZoneWarningListener_v3_58.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1009336909", "1009336909", "mis_140_b20", "box_OutputOrder_v2_60.Out", "box_ActivityEnd_7.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_12();
    l0 = self.box_ProximityTrigger_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1618985982", "1618985982", "mis_140_b20", "box_OutputOrder_v2_26.Out", "box_ProximityTrigger_v3_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_46();
    l0 = self.box_Reach_GoTo_v3_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1136760276", "1136760276", "mis_140_b20", "box_OutputOrder_v2_26.Out", "box_Reach_GoTo_v3_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_64();
    l0 = self.box_Music_Quest_v2_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|115646253", "115646253", "mis_140_b20", "box_OutputOrder_v2_26.Out", "box_Music_Quest_v2_64.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_39_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_40();
    l0 = self.box_PlayDialog_v6_39;
    l1 = self.box_PlayDialog_v6_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1851796595", "1851796595", "mis_140_b20", "box_PlayDialog_v6_39.Finished", "box_PlayDialog_v6_40.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_13_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_56();
    l0 = self.box_ProximityTrigger_v3_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1873970975", "1873970975", "mis_140_b20", "box_UseContextualActionModifier_v3_13.Enabled", "box_ProximityTrigger_v3_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Floats_53_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_20();
    l0 = self.box_SoundModifier_v2_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1560364864", "1560364864", "mis_140_b20", "box_Compare_Floats_53.A_le_B", "box_SoundModifier_v2_20.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_Delay_v5_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|157687569", "157687569", "mis_140_b20", "box_Delay_v5_30.TimeElapsed", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_56_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_55();
    l0 = self.box_ProximityTrigger_v3_56;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|322725932", "322725932", "mis_140_b20", "box_ProximityTrigger_v3_56.Enter", "box_UseContextualActionModifier_v3_55.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1458018608", "1458018608", "mis_140_b20", "box_MultipleOR_3.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|85234967", "85234967", "mis_140_b20", "box_OutputOrder_v2_69.Out", "box_Delay_v5_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_68();
    l0 = self.box_SoundModifier_v2_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|858633079", "858633079", "mis_140_b20", "box_OutputOrder_v2_69.Out", "box_SoundModifier_v2_68.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_66();
    l0 = self.box_Music_Quest_v2_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1835571451", "1835571451", "mis_140_b20", "box_OutputOrder_v2_65.Out", "box_Music_Quest_v2_66.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_59();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|845607541", "845607541", "mis_140_b20", "box_OutputOrder_v2_65.Out", "box_ActivityRetry_v2_59.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_4_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_Reach_GoTo_v3_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|943629072", "943629072", "mis_140_b20", "box_Reach_GoTo_v3_4.Started", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_4_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_Reach_GoTo_v3_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1202463843", "1202463843", "mis_140_b20", "box_Reach_GoTo_v3_4.Success", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_35_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_ProximityTrigger_v3_35;
    l1 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1334975195", "1334975195", "mis_140_b20", "box_ProximityTrigger_v3_35.Enter", "box_PlayDialog_v6_38.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_28_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_SoundModifier_v2_28;
    l1 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1047241998", "1047241998", "mis_140_b20", "box_SoundModifier_v2_28.Started", "box_Delay_v5_30.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_PlayDialog_v6_70_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_71();
    l0 = self.box_PlayDialog_v6_70;
    l1 = self.box_PlayDialog_v6_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|833496472", "833496472", "mis_140_b20", "box_PlayDialog_v6_70.Finished", "box_PlayDialog_v6_71.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_20_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_32();
    l0 = self.box_SoundModifier_v2_20;
    l1 = self.box_Delay_v5_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|140329021", "140329021", "mis_140_b20", "box_SoundModifier_v2_20.Started", "box_Delay_v5_32.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v3_12_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_21();
    l0 = self.box_ProximityTrigger_v3_12;
    l1 = self.box_NavLinkModifier_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1833210424", "1833210424", "mis_140_b20", "box_ProximityTrigger_v3_12.Enter", "box_NavLinkModifier_21.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_GetPosition_51_Out()
    self:OnExit_box_GetPosition_51_Out();
end;

function export:f_box_Compare_Floats_25_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_28();
    l0 = self.box_SoundModifier_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1321167540", "1321167540", "mis_140_b20", "box_Compare_Floats_25.A_le_B", "box_SoundModifier_v2_28.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_NavLinkModifier_21_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_NavLinkModifier_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|502331891", "502331891", "mis_140_b20", "box_NavLinkModifier_21.Activated", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_10_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1068857189", "1068857189", "mis_140_b20", "box_GetLocalPlayer_v2_10.Out", "box_OutputOrder_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_35();
    l0 = self.box_ProximityTrigger_v3_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1891687046", "1891687046", "mis_140_b20", "box_OutputOrder_v2_50.Out", "box_ProximityTrigger_v3_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_49();
    l0 = self.box_ProximityTrigger_v3_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|718405029", "718405029", "mis_140_b20", "box_OutputOrder_v2_50.Out", "box_ProximityTrigger_v3_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_5();
    l0 = self.box_ProximityTrigger_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|16152483", "16152483", "mis_140_b20", "box_OutputOrder_v2_50.Out", "box_ProximityTrigger_v3_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_48_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1974866687", "1974866687", "mis_140_b20", "box_MissionBlockLayer_48.Activated", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_55_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_13();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1765092013", "1765092013", "mis_140_b20", "box_UseContextualActionModifier_v3_55.Disabled", "box_UseContextualActionModifier_v3_13.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPosition_27_Out()
    self:OnExit_box_GetPosition_27_Out();
end;

function export:f_box_Delay_v5_32_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_Delay_v5_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|325638679", "325638679", "mis_140_b20", "box_Delay_v5_32.TimeElapsed", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_41_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_70();
    l0 = self.box_PlayDialog_v6_41;
    l1 = self.box_PlayDialog_v6_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|158948309", "158948309", "mis_140_b20", "box_PlayDialog_v6_41.Finished", "box_PlayDialog_v6_70.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|142131157", "142131157", "mis_140_b20", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1399560439", "1399560439", "mis_140_b20", "box_ActivityAcknowledgeGate_2.Reloaded", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_19();
    l0 = self.box_Delay_v5_18;
    l1 = self.box_EntityStatusListener_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|263153109", "263153109", "mis_140_b20", "box_Delay_v5_18.TimeElapsed", "box_EntityStatusListener_19.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_71_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_72();
    l0 = self.box_PlayDialog_v6_71;
    l1 = self.box_PlayDialog_v6_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1463432106", "1463432106", "mis_140_b20", "box_PlayDialog_v6_71.Finished", "box_PlayDialog_v6_72.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_49_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_24();
    l0 = self.box_ProximityTrigger_v3_49;
    l1 = self.box_SpawnAI_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|522159948", "522159948", "mis_140_b20", "box_ProximityTrigger_v3_49.Enter", "box_SpawnAI_24.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_10();
    l0 = self.box_ActivityInitialized_1;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1672222942", "1672222942", "mis_140_b20", "box_ActivityInitialized_1.Out", "box_GetLocalPlayer_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_58_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_ExitZoneWarningListener_v3_58;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1792268475", "1792268475", "mis_140_b20", "box_ExitZoneWarningListener_v3_58.FailingZoneEntered", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_38_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_39();
    l0 = self.box_PlayDialog_v6_38;
    l1 = self.box_PlayDialog_v6_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1027330161", "1027330161", "mis_140_b20", "box_PlayDialog_v6_38.Finished", "box_PlayDialog_v6_39.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_19_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsImpulse_6();
    l0 = self.box_EntityStatusListener_19;
    l1 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1619340368", "1619340368", "mis_140_b20", "box_EntityStatusListener_19.Loaded", "box_PhysicsImpulse_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|554325545", "554325545", "mis_140_b20", "box_OutputOrder_v2_17.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_11();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1671840189", "1671840189", "mis_140_b20", "box_OutputOrder_v2_17.Out", "box_UnlockDoor_11.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_61();
    l0 = self.box_SpawnAI_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|625738259", "625738259", "mis_140_b20", "box_OutputOrder_v2_17.Out", "box_SpawnAI_61.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_62();
    l0 = self.box_SpawnAI_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|846180059", "846180059", "mis_140_b20", "box_OutputOrder_v2_17.Out", "box_SpawnAI_62.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_63();
    l0 = self.box_SpawnAI_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1288843939", "1288843939", "mis_140_b20", "box_OutputOrder_v2_17.Out", "box_SpawnAI_63.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_67();
    l0 = self.box_SpawnAI_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1302844683", "1302844683", "mis_140_b20", "box_OutputOrder_v2_17.Out", "box_SpawnAI_67.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsImpulse_47();
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|617818224", "617818224", "mis_140_b20", "box_OutputOrder_v2_9.Out", "box_PhysicsImpulse_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|2140140056", "2140140056", "mis_140_b20", "box_OutputOrder_v2_9.Out", "box_Delay_v5_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_31();
    l0 = self.box_SoundModifier_v2_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|2129122107", "2129122107", "mis_140_b20", "box_OutputOrder_v2_9.Out", "box_SoundModifier_v2_31.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_57();
    l0 = self.box_PlayDialog_v6_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1548946464", "1548946464", "mis_140_b20", "box_OutputOrder_v2_9.Out", "box_PlayDialog_v6_57.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_51();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1685697651", "1685697651", "mis_140_b20", "box_OutputOrder_v2_52.Out", "box_GetPosition_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_53();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1698124182", "1698124182", "mis_140_b20", "box_OutputOrder_v2_52.Out", "box_Compare_Floats_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_27();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1220187815", "1220187815", "mis_140_b20", "box_OutputOrder_v2_29.Out", "box_GetPosition_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_25();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1167446784", "1167446784", "mis_140_b20", "box_OutputOrder_v2_29.Out", "box_Compare_Floats_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhysicsImpulse_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|889887370", "889887370", "mis_140_b20", "box_PhysicsImpulse_6.Out", "box_OutputOrder_v2_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_5_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_48();
    l0 = self.box_ProximityTrigger_v3_5;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1319925856", "1319925856", "mis_140_b20", "box_ProximityTrigger_v3_5.Enter", "box_MissionBlockLayer_48.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_40_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_41();
    l0 = self.box_PlayDialog_v6_40;
    l1 = self.box_PlayDialog_v6_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|903322890", "903322890", "mis_140_b20", "box_PlayDialog_v6_40.Finished", "box_PlayDialog_v6_41.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:OnEnter_box_Music_Quest_v2_64()
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
        [6] = "3698971670",
        -- StopEvent,
        [7] = "4025596061",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_46()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresAllPlayer,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eMarker,
        [6] = "2107355262185638048",
        -- eTrigger,
        [8] = "2108611207245094213",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "MIS_140_B20_OBJ",
            id = "961275",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|121522857");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
                [3] = self.f_box_OutputOrder_v2_16_Out_3,
                [4] = self.f_box_OutputOrder_v2_16_Out_4,
                [5] = self.f_box_OutputOrder_v2_16_Out_5,
                [6] = self.f_box_OutputOrder_v2_16_Out_6,
                [7] = self.f_box_OutputOrder_v2_16_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PhysicsImpulse_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsImpulse_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|128145160");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_PhysicsImpulse_47_Out,
    });
    params = {
        -- AngularAmplitude,
        [0] = 0,
        -- DirectionAmplitude,
        [2] = 1,
        -- DirectionEntityID,
        [3] = "2108624864416914553",
        -- targets,
        [5] = "2108901449902648464",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_67()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109853663892629293",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|270901386");
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

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|308839956");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
                [2] = self.f_box_OutputOrder_v2_26_Out_2,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_31()
    local params;
    params = {
        -- Pawns,
        [0] = "2109497294935051768",
        -- SoundId,
        [1] = "2204373343",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_66()
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
        [6] = "3698971670",
        -- StopEvent,
        [7] = "4025596061",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_39()
    local params;
    params = {
        -- Group,
        [0] = "2108636997150071794",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2791685165",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|374993293");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_13_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109702917171754499",
        -- Entity,
        [2] = "2108610709372816316",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|414312825");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|432126326");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_53_A_le_B,
    });
    params = {
        -- A,
        [0] = self._sld_zPos_box_GetPosition_51,
        -- B,
        [1] = 147,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_56()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108611207245094213",
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|630441667");
    l0:SetConnections({
    });
    params = {
        -- door,
        [0] = "2109262193410197552",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|691662758");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_61()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109853478063987731",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|820639116");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_4()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = false,
        -- bRequiresAllPlayer,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- bUse2d_ProximityCheck,
        [4] = false,
        -- bUseDetectionModifier,
        [5] = false,
        -- eMarker,
        [6] = "2108733968349173476",
        -- eRadiusTarget,
        [7] = "2108624864416914553",
        -- fDistanceFromTarget,
        [9] = 6,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "MIS_140_B20_OBJ_2",
            id = "1028891",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_35()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2107354865280750194",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_28()
    local params;
    params = {
        -- Pawns,
        [0] = "2109453185994200385",
        -- SoundId,
        [1] = "2045333231",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_70()
    local params;
    params = {
        -- Group,
        [0] = "2108636997150071794",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1296387302",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_20()
    local params;
    params = {
        -- Pawns,
        [0] = "2109453204704990531",
        -- SoundId,
        [1] = "2445491339",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109677636870495053",
    };
    return params;
end;

function export:OnEnter_box_GetPosition_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1088725174");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_51_Out,
    });
    params = {
        -- id,
        [0] = "2108901449902648464",
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1142766999");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_25_A_le_B,
    });
    params = {
        -- A,
        [0] = self._sld_zPos_box_GetPosition_27,
        -- B,
        [1] = 147,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_21()
    local params;
    params = {
        -- Entity,
        [0] = "2107534513566386804",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1229559062");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1287004923");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1335353685");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
                [2] = self.f_box_OutputOrder_v2_50_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_23()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107574023694070469",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1351977613");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_48_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160297366818405",
        -- missionLayerId,
        [1] = "27160313181510077",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_63()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109853610799031985",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1416898128");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_55_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109702777121846722",
    };
    return params;
end;

function export:OnEnter_box_GetPosition_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1457117751");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_27_Out,
    });
    params = {
        -- id,
        [0] = "2108901449902648464",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_32()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_54()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109650224373836415",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_14()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107531794644482159",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_41()
    local params;
    params = {
        -- Group,
        [0] = "2108636997150071794",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2013775272",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_24()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107574015980745384",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_8()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108610709360233396",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_15()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107531792159357018",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_62()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109853602024547969",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_71()
    local params;
    params = {
        -- Group,
        [0] = "2108636997150071794",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3934101838",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_49()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108927589058883812",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_58()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2109107067779310567",
        -- WarningZoneTrigger,
        [3] = "2109107061307499494",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_38()
    local params;
    params = {
        -- Group,
        [0] = "2108636997150071794",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1828692388",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_57()
    local params;
    params = {
        -- Group,
        [0] = "2108636997150071794",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1643541513",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_19()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109301514158775506",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1986460813");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
                [3] = self.f_box_OutputOrder_v2_17_Out_3,
                [4] = self.f_box_OutputOrder_v2_17_Out_4,
                [5] = self.f_box_OutputOrder_v2_17_Out_5,
            },
            count = 6,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|1994773943");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
                [3] = self.f_box_OutputOrder_v2_9_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_68()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "808122783",
        -- SoundType,
        [2] = 17,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_22()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107574013478843019",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_72()
    local params;
    params = {
        -- Group,
        [0] = "2108636997150071794",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "496588242",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|2037069542");
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
                [0] = self.f_box_OutputOrder_v2_52_Out_0,
                [1] = self.f_box_OutputOrder_v2_52_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|2048099089");
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

function export:OnEnter_box_PhysicsImpulse_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsImpulse_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B20.domino|@mis_140_b20|2092719107");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_PhysicsImpulse_6_Out,
    });
    params = {
        -- AngularAmplitude,
        [0] = 0,
        -- DirectionAmplitude,
        [2] = 10,
        -- DirectionEntityID,
        [3] = "2108624864416914553",
        -- targets,
        [5] = "2109301514158775506",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109301531898584299",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_40()
    local params;
    params = {
        -- Group,
        [0] = "2108636997150071794",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4255524722",
    };
    return params;
end;

function export:OnExit_box_GetPosition_51_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_zPos_box_GetPosition_51 = l0:GetDataOutValue(5);
end;

function export:OnExit_box_GetLocalPlayer_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.PlayerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_zPos_box_GetPosition_27 = l0:GetDataOutValue(5);
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
