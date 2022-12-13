LUAC;0 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key03/key03_010/key03_010_b30.domino
-- User graph: KEY03_010_B30
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Hostage" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Free_Hostages_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/ConversationListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1008134672.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3982061848.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4275248127.bnk]], "CSoundResource");
        cboxRes:LoadResource([[873188909.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1055227918.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2387422575.bnk]], "CSoundResource");
        cboxRes:LoadResource([[472728813.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4125807380.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3382456721.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2583518557.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.KEY03_010_B30 = nil;
    Globals.KEY03_010_B30 = {
        bPerkinsInCombat = false,
        bActivityReloaded = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY03/KEY03_010/KEY03_010_B30.KEY03_010_B30.debug.lua")] = {
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
            [0] = {
                name = "Hostage",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Free_Hostages_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjectives",
                type = "bool",
            },
            [1] = {
                name = "bMinimunHostagesCompletion",
                type = "bool",
            },
            [2] = {
                name = "bShowObjective",
                type = "bool",
            },
            [3] = {
                name = "Hostage_group",
                type = "group",
            },
            [4] = {
                name = "HostagesToSave",
                type = "int",
            },
            [5] = {
                name = "Objective",
                type = "oasis",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "HostagesSaved",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ForceRelease",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "HostageReleased",
                delayed = false,
            },
            [1] = {
                name = "NextHostage",
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
                name = "Hostage",
                type = "entity",
            },
            [1] = {
                name = "STP_Tied",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Interrupted",
                delayed = true,
            },
            [2] = {
                name = "Restarted",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "Mandatory",
                type = "bool",
            },
            [2] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [2] = {
                name = "eMarkerObjectiveArea",
                type = "entity",
            },
            [3] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [4] = {
                name = "Objective",
                type = "oasis",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua")] = {
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
                name = "Detected",
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
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "group",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/AI/ConversationListener.lua")] = {
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
                name = "Aborted",
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
                name = "Finished",
                delayed = true,
            },
            [4] = {
                name = "Paused",
                delayed = true,
            },
            [5] = {
                name = "Resumed",
                delayed = true,
            },
            [6] = {
                name = "Skipped",
                delayed = true,
            },
            [7] = {
                name = "Started",
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
                name = "Entity",
                type = "entity",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "KEY03_010_B30";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30";
    self.eEli = nil;
    self.player = nil;
    self.eMilitia = nil;
    self.active_hostage = 0;
    self.saved_hostages = 0;
    self.hostages_killed = 0;
    self.hostage_remaining = 0;
    self.hostages_total = 0;
    self.i_min_hostages = 0;
    self.eLocalPlayer = nil;
    self.eGuardScooter = nil;
    self.eRocketLauncherGuy = nil;
    self.eVIP = nil;
    self.ePistolGuy = nil;
    self.eTunnelFemale = nil;
    self.eTunnelMale = nil;
    self.eExecutedHostage = nil;
    self.bHostageReleased = false;
    self.i_CultAlive = 0;
    self.box_OnceOnly_v3_166 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|29194347");
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
                [0] = self.f_box_OnceOnly_v3_166_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_77 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|31916041");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_77_TimeElapsed,
    });
    self.box_Delay_v5_57 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|43743998");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_57_TimeElapsed,
    });
    self.box_MultipleOR_165 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|57568878");
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
    self.box_Delay_v5_148 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|88481035");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_148_TimeElapsed,
    });
    self.box_Delay_v5_142 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|92670553");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_142_TimeElapsed,
    });
    self.box_MultipleAND_v2_56 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|134081794");
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
        [0] = self.f_box_MultipleAND_v2_56_Out,
    });
    self.box_MultipleOR_85 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|136521027");
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
        [0] = self.f_box_MultipleOR_85_Out,
    });
    self.box_Delay_v5_100 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|143494043");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_100_TimeElapsed,
    });
    self.box_ConversationListener_71 = cbox:CreateBox("Domino/System/AI/ConversationListener.lua");
    l0 = self.box_ConversationListener_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConversationListener_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|188565660");
    l0:SetConnections({
        -- Finished,
        [3] = self.f_box_ConversationListener_71_Finished,
    });
    self.box_EntityStatusListener_42 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|226878920");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_42_Loaded,
    });
    self.box_SpawnAI_135 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|229593219");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_135_Spawned,
    });
    self.box_Delay_v5_132 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|245737108");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_132_TimeElapsed,
    });
    self.box_EntityStatusListener_80 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|264339977");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_80_Loaded,
    });
    self.box_OnceOnly_v3_30 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|264513343");
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
                [0] = self.f_box_OnceOnly_v3_30_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_124 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|289761992");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_124_Loaded,
    });
    self.box_Delay_v5_83 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|304345365");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_83_TimeElapsed,
    });
    self.box_Delay_v5_156 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|320633357");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_156_TimeElapsed,
    });
    self.box_GroupSizeListener_v5_60 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|333460732");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_60_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_60_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_60_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_60_MemberRemoved,
    });
    self.box_Delay_v5_141 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|362636073");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_141_TimeElapsed,
    });
    self.box_MultipleOR_169 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|370289747");
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
        [0] = self.f_box_MultipleOR_169_Out,
    });
    self.box_RequestPhoneCall_v2_119 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|377276854");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_119_Completed,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|447748175");
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
    self.box_GroupSizeListener_v5_116 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|460721158");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_116_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_116_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_116_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_116_MemberRemoved,
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|469754046");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_MultipleAND_v2_26 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|565897387");
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
        [0] = self.f_box_MultipleAND_v2_26_Out,
    });
    self.box_PlayDialog_v6_145 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|584538346");
    l0:SetConnections({
    });
    self.box_SpawnAI_154 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|592884106");
    l0:SetConnections({
    });
    self.box_Delay_v5_144 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|680369386");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_144_TimeElapsed,
    });
    self.box_Delay_v5_102 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|691119405");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_102_TimeElapsed,
    });
    self.box_Brick_Hostage_Setup_v2_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|695456804");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_12_HostageReleased,
        -- NextHostage,
        [1] = self.f_box_Brick_Hostage_Setup_v2_12_NextHostage,
    });
    self.box_ProximityRadiusListener_v3_14 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|699056374");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_14_AllNear,
    });
    self.box_ProximityRadiusListener_v3_39 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|709585764");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_39_AllNear,
    });
    self.box_Delay_v5_168 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|712771037");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_168_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_168_TimeElapsed,
    });
    self.box_RemoveEntity_v2_8 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|729776837");
    l0:SetConnections({
    });
    self.box_Delay_v5_110 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|750938288");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_110_TimeElapsed,
    });
    self.box_Brick_Free_Hostages_v2_28 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Free_Hostages_v2.debug.lua");
    l0 = self.box_Brick_Free_Hostages_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Free_Hostages_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|764065295");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Free_Hostages_v2_28_Fail,
        -- Started,
        [1] = self.f_box_Brick_Free_Hostages_v2_28_Started,
        -- Success,
        [2] = self.f_box_Brick_Free_Hostages_v2_28_Success,
    });
    self.box_Delay_v5_81 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|783478740");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_81_TimeElapsed,
    });
    self.box_Delay_v5_158 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|814490920");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_158_TimeElapsed,
    });
    self.box_Delay_v5_140 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|843761264");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_140_TimeElapsed,
    });
    self.box_Delay_v5_91 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|867376811");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_91_TimeElapsed,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|887732495");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_Music_Quest_v2_109 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|890728464");
    l0:SetConnections({
    });
    self.box_Delay_v5_54 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|930384516");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_54_TimeElapsed,
    });
    self.box_Delay_v5_55 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|965145105");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_55_TimeElapsed,
    });
    self.box_SpawnAI_65 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|978326026");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_87 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|987929454");
    l0:SetConnections({
    });
    self.box_Delay_v5_151 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1022075345");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_151_TimeElapsed,
    });
    self.box_MultipleAND_v2_159 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1070788755");
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
        [0] = self.f_box_MultipleAND_v2_159_Out,
    });
    self.box_MultipleAND_v2_157 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1072905843");
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
        [0] = self.f_box_MultipleAND_v2_157_Out,
    });
    self.box_EntityStatusListener_66 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1113665211");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_66_Loaded,
    });
    self.box_ContextualActionListener_108 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1128163689");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_108_End,
    });
    self.box_ExitZoneWarningListener_v3_120 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1133881033");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_120_FailingZoneEntered,
    });
    self.box_GroupSizeListener_v5_15 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1152492105");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_15_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_15_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_15_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_15_MemberRemoved,
    });
    self.box_ExitZoneWarningListener_v3_70 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1160665483");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_70_FailingZoneEntered,
    });
    self.box_EntityStatusListener_51 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1170745622");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_51_Loaded,
    });
    self.box_MultipleOR_118 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1201449500");
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
        [0] = self.f_box_MultipleOR_118_Out,
    });
    self.box_MultipleAND_v2_63 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1249374259");
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
        [0] = self.f_box_MultipleAND_v2_63_Out,
    });
    self.box_Brick_PlayDialog_Relax_126 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1312474914");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Brick_PlayDialog_Relax_126_Finished,
    });
    self.box_Delay_v5_149 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1358446004");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_149_TimeElapsed,
    });
    self.box_Brick_Secure_Area_v5_93 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
    l0 = self.box_Brick_Secure_Area_v5_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Secure_Area_v5_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1460625068");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Brick_Secure_Area_v5_93_Success,
    });
    self.box_ActivityInitialized_13 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1463199686");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_13_Out,
    });
    self.box_Brick_PlayDialog_Relax_129 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1463251930");
    l0:SetConnections({
    });
    self.box_Brick_PlayDialog_Relax_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1471149577");
    l0:SetConnections({
    });
    self.box_Brick_Hostage_Setup_v2_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1481116545");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_20_HostageReleased,
        -- NextHostage,
        [1] = self.f_box_Brick_Hostage_Setup_v2_20_NextHostage,
    });
    self.box_OnceOnly_v3_62 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1494649418");
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
    self.box_SpawnAI_18 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1519349259");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_18_Spawned,
    });
    self.box_EntityStatusListener_94 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1527599760");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_94_Loaded,
    });
    self.box_SpawnAI_137 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1529002715");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_137_Spawned,
    });
    self.box_Delay_v5_143 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1543106465");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_143_TimeElapsed,
    });
    self.box_Delay_v5_160 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1577177153");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_160_TimeElapsed,
    });
    self.box_Delay_v5_76 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1587616037");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_76_TimeElapsed,
    });
    self.box_RemoveEntity_v2_9 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1613190507");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_9_Out,
    });
    self.box_SpawnAI_95 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1636978570");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_95_Spawned,
    });
    self.box_EntityStatusListener_23 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1648197837");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_23_Loaded,
    });
    self.box_Brick_PlayDialog_Relax_128 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1675287839");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Brick_PlayDialog_Relax_128_Finished,
    });
    self.box_Delay_v5_131 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1675366840");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_131_TimeElapsed,
    });
    self.box_SpawnAI_153 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1747926443");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_84 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1770831790");
    l0:SetConnections({
    });
    self.box_Delay_v5_147 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1791889751");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_147_TimeElapsed,
    });
    self.box_Delay_v5_105 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1807849878");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_105_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_134 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1815919978");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_134_Enabled,
    });
    self.box_SpawnAI_86 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1862088758");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_86_Spawned,
    });
    self.box_SpawnAI_138 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1874285363");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_138_Spawned,
    });
    self.box_MultipleAND_v2_29 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1874874951");
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
        [0] = self.f_box_MultipleAND_v2_29_Out,
    });
    self.box_Delay_v5_152 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1885722773");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_152_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_48 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1932016180");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_48_Enabled,
    });
    self.box_Delay_v5_130 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1932756934");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_130_TimeElapsed,
    });
    self.box_OnceOnly_v3_150 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1951423410");
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
                [0] = self.f_box_OnceOnly_v3_150_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_136 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1976711284");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_136_Spawned,
    });
    self.box_Music_Quest_v2_64 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1981464443");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_35 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1994893215");
    l0:SetConnections({
    });
    self.box_SpawnAI_139 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2003816355");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_139_Spawned,
    });
    self.box_SpawnAI_155 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2004591624");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_3 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2018008671");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_3_AllNear,
    });
    self.box_GroupSizeListener_v5_163 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2052128361");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_163_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_163_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_163_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_163_MemberRemoved,
    });
    self.box_EntityStatusListener_40 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2103298340");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_40_Loaded,
    });
    self.box_PlayerFullyDetected_69 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2116929626");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_69_Detected,
    });
    self.box_Brick_PlayDialog_Relax_127 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2130736355");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Brick_PlayDialog_Relax_127_Finished,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|100420354", "100420354", "KEY03_010_B30", "In", "box_ActivityAcknowledgeGate_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|604435735", "604435735", "KEY03_010_B30", "box_Simple_Node_19.Out", "box_OutputOrder_v2_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_96_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_56();
    l0 = self.box_MultipleAND_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1310374883", "1310374883", "KEY03_010_B30", "box_Simple_Node_96.Out", "box_MultipleAND_v2_56.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Simple_Node_99_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_113();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|873766989", "873766989", "KEY03_010_B30", "box_Simple_Node_99.Out", "box_SoundPointModifier_113.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_98_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_56();
    l0 = self.box_MultipleAND_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|389282047", "389282047", "KEY03_010_B30", "box_Simple_Node_98.Out", "box_MultipleAND_v2_56.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_122_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_70();
    l0 = self.box_ExitZoneWarningListener_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|765909927", "765909927", "KEY03_010_B30", "box_Simple_Node_122.Out", "box_ExitZoneWarningListener_v3_70.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ExitZoneWarningListener_v3_120();
    l0 = self.box_ExitZoneWarningListener_v3_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1469968426", "1469968426", "KEY03_010_B30", "box_Simple_Node_122.Out", "box_ExitZoneWarningListener_v3_120.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_37_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_116();
    l0 = self.box_GroupSizeListener_v5_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|431758634", "431758634", "KEY03_010_B30", "box_Simple_Node_37.Out", "box_GroupSizeListener_v5_116.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_EntityStatusListener_124();
    l0 = self.box_EntityStatusListener_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2056979659", "2056979659", "KEY03_010_B30", "box_Simple_Node_37.Out", "box_EntityStatusListener_124.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|22812347", "22812347", "KEY03_010_B30", "box_Simple_Node_37.Out", "box_OutputOrder_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_9();
    l0 = self.box_RemoveEntity_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|607306330", "607306330", "KEY03_010_B30", "box_Simple_Node_10.Out", "box_RemoveEntity_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_161_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_3();
    l0 = self.box_ProximityRadiusListener_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1220376869", "1220376869", "KEY03_010_B30", "box_Simple_Node_161.Out", "box_ProximityRadiusListener_v3_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_162_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_39();
    l0 = self.box_ProximityRadiusListener_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1571798335", "1571798335", "KEY03_010_B30", "box_Simple_Node_162.Out", "box_ProximityRadiusListener_v3_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1419094993", "1419094993", "KEY03_010_B30", "box_Simple_Node_36.Out", "box_PhoneCallExclusivityModifier_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_133_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_126();
    l0 = self.box_Brick_PlayDialog_Relax_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1103652299", "1103652299", "KEY03_010_B30", "box_Simple_Node_133.Out", "box_Brick_PlayDialog_Relax_126.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_146_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_145();
    l0 = self.box_PlayDialog_v6_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|341330118", "341330118", "KEY03_010_B30", "box_Simple_Node_146.Out", "box_PlayDialog_v6_145.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_166_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_167();
    l0 = self.box_OnceOnly_v3_166;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1825862707", "1825862707", "KEY03_010_B30", "box_OnceOnly_v3_166.Out", "box_OutputOrder_v2_167.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_77_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_78();
    l0 = self.box_Delay_v5_77;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|803245171", "803245171", "KEY03_010_B30", "box_Delay_v5_77.TimeElapsed", "box_UseContextualActionModifier_v3_78.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_57_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_34();
    l0 = self.box_Delay_v5_57;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1366295648", "1366295648", "KEY03_010_B30", "box_Delay_v5_57.TimeElapsed", "box_UseContextualActionModifier_v3_34.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_165_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_164();
    l0 = self.box_MultipleOR_165;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1938002297", "1938002297", "KEY03_010_B30", "box_MultipleOR_165.Out", "box_Compare_Integers_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_148_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_154();
    l0 = self.box_Delay_v5_148;
    l1 = self.box_SpawnAI_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|18339394", "18339394", "KEY03_010_B30", "box_Delay_v5_148.TimeElapsed", "box_SpawnAI_154.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_142_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_137();
    l0 = self.box_Delay_v5_142;
    l1 = self.box_SpawnAI_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|473172706", "473172706", "KEY03_010_B30", "box_Delay_v5_142.TimeElapsed", "box_SpawnAI_137.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1290898960", "1290898960", "KEY03_010_B30", "box_OutputOrder_v2_4.Out", "box_OnceOnly_v3_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_60();
    l0 = self.box_GroupSizeListener_v5_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|406667086", "406667086", "KEY03_010_B30", "box_OutputOrder_v2_4.Out", "box_GroupSizeListener_v5_60.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_56_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_56;
    l1 = self.box_OnceOnly_v3_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|952105987", "952105987", "KEY03_010_B30", "box_MultipleAND_v2_56.Out", "box_OnceOnly_v3_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_85_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_85;
    l1 = self.box_ActivityInitialized_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2231186", "2231186", "KEY03_010_B30", "box_MultipleOR_85.Out", "box_ActivityInitialized_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_100_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_101();
    l0 = self.box_Delay_v5_100;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1921898910", "1921898910", "KEY03_010_B30", "box_Delay_v5_100.TimeElapsed", "box_UseContextualActionModifier_v3_101.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_89_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_91();
    l0 = self.box_Delay_v5_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|405938875", "405938875", "KEY03_010_B30", "box_UseContextualActionModifier_v3_89.Enabled", "box_Delay_v5_91.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_89_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_92();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1417596405", "1417596405", "KEY03_010_B30", "box_UseContextualActionModifier_v3_89.UseCalled", "box_UseContextualActionModifier_v3_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ConversationListener_71_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_72();
    l0 = self.box_ConversationListener_71;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|950332073", "950332073", "KEY03_010_B30", "box_ConversationListener_71.Finished", "box_UseContextualActionModifier_v3_72.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_79_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_79_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_26();
    l0 = self.box_MultipleAND_v2_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1623758261", "1623758261", "KEY03_010_B30", "box_SetEntity_v2_79.Out", "box_MultipleAND_v2_26.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_EntityStatusListener_42_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_44();
    l0 = self.box_EntityStatusListener_42;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|875744614", "875744614", "KEY03_010_B30", "box_EntityStatusListener_42.Loaded", "box_SetEntity_v2_44.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_135_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_80();
    l0 = self.box_SpawnAI_135;
    l1 = self.box_EntityStatusListener_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1119783924", "1119783924", "KEY03_010_B30", "box_SpawnAI_135.Spawned", "box_EntityStatusListener_80.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_132_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_129();
    l0 = self.box_Delay_v5_132;
    l1 = self.box_Brick_PlayDialog_Relax_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|718881875", "718881875", "KEY03_010_B30", "box_Delay_v5_132.TimeElapsed", "box_Brick_PlayDialog_Relax_129.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_80_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_79();
    l0 = self.box_EntityStatusListener_80;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|484690629", "484690629", "KEY03_010_B30", "box_EntityStatusListener_80.Loaded", "box_SetEntity_v2_79.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_30_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_18();
    l0 = self.box_OnceOnly_v3_30;
    l1 = self.box_SpawnAI_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1954261104", "1954261104", "KEY03_010_B30", "box_OnceOnly_v3_30.Out", "box_SpawnAI_18.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_124_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_123();
    l0 = self.box_EntityStatusListener_124;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|386918548", "386918548", "KEY03_010_B30", "box_EntityStatusListener_124.Loaded", "box_SoundPointModifier_123.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_83_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_72();
    l0 = self.box_Delay_v5_83;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1087906922", "1087906922", "KEY03_010_B30", "box_Delay_v5_83.TimeElapsed", "box_UseContextualActionModifier_v3_72.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_156_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_161();
    l0 = self.box_Delay_v5_156;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1763520789", "1763520789", "KEY03_010_B30", "box_Delay_v5_156.TimeElapsed", "box_Simple_Node_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_60_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_61();
    l0 = self.box_GroupSizeListener_v5_60;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|443759451", "443759451", "KEY03_010_B30", "box_GroupSizeListener_v5_60.MemberRemoved", "box_Compare_Integers_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_141_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_136();
    l0 = self.box_Delay_v5_141;
    l1 = self.box_SpawnAI_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|551172969", "551172969", "KEY03_010_B30", "box_Delay_v5_141.TimeElapsed", "box_SpawnAI_136.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_169_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_169;
    l1 = self.box_OnceOnly_v3_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1799230593", "1799230593", "KEY03_010_B30", "box_MultipleOR_169.Out", "box_OnceOnly_v3_166.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_19();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2084424013", "2084424013", "KEY03_010_B30", "box_OutputOrder_v2_41.Out", "box_Simple_Node_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1845609226", "1845609226", "KEY03_010_B30", "box_OutputOrder_v2_41.Out", "box_Simple_Node_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_70();
    l0 = self.box_ExitZoneWarningListener_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1839802272", "1839802272", "KEY03_010_B30", "box_OutputOrder_v2_41.Out", "box_ExitZoneWarningListener_v3_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_41_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_109();
    l0 = self.box_Music_Quest_v2_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1526962806", "1526962806", "KEY03_010_B30", "box_OutputOrder_v2_41.Out", "box_Music_Quest_v2_109.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_119_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_151();
    l0 = self.box_RequestPhoneCall_v2_119;
    l1 = self.box_Delay_v5_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|740554531", "740554531", "KEY03_010_B30", "box_RequestPhoneCall_v2_119.Completed", "box_Delay_v5_151.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_140();
    l0 = self.box_Delay_v5_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|637065954", "637065954", "KEY03_010_B30", "box_OutputOrder_v2_52.Out", "box_Delay_v5_140.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_141();
    l0 = self.box_Delay_v5_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1845895413", "1845895413", "KEY03_010_B30", "box_OutputOrder_v2_52.Out", "box_Delay_v5_141.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_52_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_147();
    l0 = self.box_Delay_v5_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1496590453", "1496590453", "KEY03_010_B30", "box_OutputOrder_v2_52.Out", "box_Delay_v5_147.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_52_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_142();
    l0 = self.box_Delay_v5_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1095582031", "1095582031", "KEY03_010_B30", "box_OutputOrder_v2_52.Out", "box_Delay_v5_142.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_52_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_143();
    l0 = self.box_Delay_v5_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1256556984", "1256556984", "KEY03_010_B30", "box_OutputOrder_v2_52.Out", "box_Delay_v5_143.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_52_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_86();
    l0 = self.box_SpawnAI_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|812211974", "812211974", "KEY03_010_B30", "box_OutputOrder_v2_52.Out", "box_SpawnAI_86.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_52_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_95();
    l0 = self.box_SpawnAI_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|876030371", "876030371", "KEY03_010_B30", "box_OutputOrder_v2_52.Out", "box_SpawnAI_95.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_52_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_148();
    l0 = self.box_Delay_v5_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2066282716", "2066282716", "KEY03_010_B30", "box_OutputOrder_v2_52.Out", "box_Delay_v5_148.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_52_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_149();
    l0 = self.box_Delay_v5_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1553095307", "1553095307", "KEY03_010_B30", "box_OutputOrder_v2_52.Out", "box_Delay_v5_149.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_52_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_152();
    l0 = self.box_Delay_v5_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1265541813", "1265541813", "KEY03_010_B30", "box_OutputOrder_v2_52.Out", "box_Delay_v5_152.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_52_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|284145937", "284145937", "KEY03_010_B30", "box_OutputOrder_v2_52.Out", "box_OutputOrder_v2_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1619145282", "1619145282", "KEY03_010_B30", "box_OutputOrder_v2_112.Out", "box_ActivityRetry_2.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|489832915", "489832915", "KEY03_010_B30", "box_OutputOrder_v2_112.Out", "box_MultipleOR_118.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_114_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_84();
    l0 = self.box_Music_Quest_v2_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|853225384", "853225384", "KEY03_010_B30", "box_OutputOrder_v2_114.Out", "box_Music_Quest_v2_84.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_114_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_116();
    l0 = self.box_GroupSizeListener_v5_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|186352115", "186352115", "KEY03_010_B30", "box_OutputOrder_v2_114.Out", "box_GroupSizeListener_v5_116.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_114_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|360232034", "360232034", "KEY03_010_B30", "box_OutputOrder_v2_114.Out", "box_Simple_Node_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_114_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_125();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|382556107", "382556107", "KEY03_010_B30", "box_OutputOrder_v2_114.Out", "box_SoundPointModifier_125.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_31_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_31;
    l1 = self.box_OnceOnly_v3_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1162184437", "1162184437", "KEY03_010_B30", "box_MultipleOR_31.Out", "box_OnceOnly_v3_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_116_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_117();
    l0 = self.box_GroupSizeListener_v5_116;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1241917010", "1241917010", "KEY03_010_B30", "box_GroupSizeListener_v5_116.MemberRemoved", "box_Compare_Integers_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|592884295", "592884295", "KEY03_010_B30", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|221858169", "221858169", "KEY03_010_B30", "box_ActivityAcknowledgeGate_7.Reloaded", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_88_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_74();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|684121199", "684121199", "KEY03_010_B30", "box_OutputOrder_v2_88.Out", "box_ActivityRetry_74.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_88_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_64();
    l0 = self.box_Music_Quest_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1672559272", "1672559272", "KEY03_010_B30", "box_OutputOrder_v2_88.Out", "box_Music_Quest_v2_64.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_UseContextualActionModifier_v3_16_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_55();
    l0 = self.box_Delay_v5_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1526230373", "1526230373", "KEY03_010_B30", "box_UseContextualActionModifier_v3_16.Enabled", "box_Delay_v5_55.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleAND_v2_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_156();
    l0 = self.box_MultipleAND_v2_26;
    l1 = self.box_Delay_v5_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1804961749", "1804961749", "KEY03_010_B30", "box_MultipleAND_v2_26.Out", "box_Delay_v5_156.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_25_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_29();
    l0 = self.box_MultipleAND_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1563932152", "1563932152", "KEY03_010_B30", "box_Compare_Integers_25.A_le_B", "box_MultipleAND_v2_29.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetEntity_v2_106_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_106_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_157();
    l0 = self.box_MultipleAND_v2_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1855446454", "1855446454", "KEY03_010_B30", "box_SetEntity_v2_106.Out", "box_MultipleAND_v2_157.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_144_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_11();
    l0 = self.box_Delay_v5_144;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|418004865", "418004865", "KEY03_010_B30", "box_Delay_v5_144.TimeElapsed", "box_ActivityEnd_11.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_102_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_103();
    l0 = self.box_Delay_v5_102;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|960328477", "960328477", "KEY03_010_B30", "box_Delay_v5_102.TimeElapsed", "box_UseContextualActionModifier_v3_103.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_12_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_122();
    l0 = self.box_Brick_Hostage_Setup_v2_12;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|170649067", "170649067", "KEY03_010_B30", "box_Brick_Hostage_Setup_v2_12.HostageReleased", "box_Simple_Node_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_12_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_20();
    l0 = self.box_Brick_Hostage_Setup_v2_12;
    l1 = self.box_Brick_Hostage_Setup_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1522603890", "1522603890", "KEY03_010_B30", "box_Brick_Hostage_Setup_v2_12.NextHostage", "box_Brick_Hostage_Setup_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_14_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_5();
    l0 = self.box_ProximityRadiusListener_v3_14;
    l1 = self.box_Brick_PlayDialog_Relax_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1107791114", "1107791114", "KEY03_010_B30", "box_ProximityRadiusListener_v3_14.AllNear", "box_Brick_PlayDialog_Relax_5.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_39_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_ProximityRadiusListener_v3_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1306860965", "1306860965", "KEY03_010_B30", "box_ProximityRadiusListener_v3_39.AllNear", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_168_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_168;
    l1 = self.box_MultipleOR_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1616701176", "1616701176", "KEY03_010_B30", "box_Delay_v5_168.Started", "box_MultipleOR_165.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_168_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_168;
    l1 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1663947308", "1663947308", "KEY03_010_B30", "box_Delay_v5_168.TimeElapsed", "box_MultipleOR_169.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_110_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_111();
    l0 = self.box_Delay_v5_110;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|384755192", "384755192", "KEY03_010_B30", "box_Delay_v5_110.TimeElapsed", "box_UseContextualActionModifier_v3_111.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Free_Hostages_v2_28_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_88();
    l0 = self.box_Brick_Free_Hostages_v2_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2050763470", "2050763470", "KEY03_010_B30", "box_Brick_Free_Hostages_v2_28.Fail", "box_OutputOrder_v2_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Free_Hostages_v2_28_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_12();
    l0 = self.box_Brick_Free_Hostages_v2_28;
    l1 = self.box_Brick_Hostage_Setup_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|575582143", "575582143", "KEY03_010_B30", "box_Brick_Free_Hostages_v2_28.Started", "box_Brick_Hostage_Setup_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_Free_Hostages_v2_28_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_98();
    l0 = self.box_Brick_Free_Hostages_v2_28;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|432885898", "432885898", "KEY03_010_B30", "box_Brick_Free_Hostages_v2_28.Success", "box_Simple_Node_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_81_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_82();
    l0 = self.box_Delay_v5_81;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|956940199", "956940199", "KEY03_010_B30", "box_Delay_v5_81.TimeElapsed", "box_UseContextualActionModifier_v3_82.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_158_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_162();
    l0 = self.box_Delay_v5_158;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|181719003", "181719003", "KEY03_010_B30", "box_Delay_v5_158.TimeElapsed", "box_Simple_Node_162.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_140_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_139();
    l0 = self.box_Delay_v5_140;
    l1 = self.box_SpawnAI_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2015286815", "2015286815", "KEY03_010_B30", "box_Delay_v5_140.TimeElapsed", "box_SpawnAI_139.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_34_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1800691804", "1800691804", "KEY03_010_B30", "box_UseContextualActionModifier_v3_34.Enabled", "box_Delay_v5_57.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_91_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_89();
    l0 = self.box_Delay_v5_91;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|903287053", "903287053", "KEY03_010_B30", "box_Delay_v5_91.TimeElapsed", "box_UseContextualActionModifier_v3_89.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_111_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_110();
    l0 = self.box_Delay_v5_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1567937412", "1567937412", "KEY03_010_B30", "box_UseContextualActionModifier_v3_111.Enabled", "box_Delay_v5_110.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_111_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_49();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1956008062", "1956008062", "KEY03_010_B30", "box_UseContextualActionModifier_v3_111.UseCalled", "box_UseContextualActionModifier_v3_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_17;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|130772696", "130772696", "KEY03_010_B30", "box_Delay_v5_17.TimeElapsed", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_54_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_49();
    l0 = self.box_Delay_v5_54;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2052066647", "2052066647", "KEY03_010_B30", "box_Delay_v5_54.TimeElapsed", "box_UseContextualActionModifier_v3_49.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_121();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1906224624", "1906224624", "KEY03_010_B30", "box_OutputOrder_v2_27.Out", "box_ActivityRetry_121.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2038301319", "2038301319", "KEY03_010_B30", "box_OutputOrder_v2_27.Out", "box_MultipleOR_118.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_55_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    l0 = self.box_Delay_v5_55;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|72853381", "72853381", "KEY03_010_B30", "box_Delay_v5_55.TimeElapsed", "box_UseContextualActionModifier_v3_16.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_58_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_58_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_26();
    l0 = self.box_MultipleAND_v2_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|364223219", "364223219", "KEY03_010_B30", "box_SetEntity_v2_58.Out", "box_MultipleAND_v2_26.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_151_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_151;
    l1 = self.box_PhoneCallExclusivityModifier_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1586102626", "1586102626", "KEY03_010_B30", "box_Delay_v5_151.TimeElapsed", "box_PhoneCallExclusivityModifier_134.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_GetPlayerGroup_v2_24_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_32();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|30435835", "30435835", "KEY03_010_B30", "box_GetPlayerGroup_v2_24.Out", "box_GetLocalPlayer_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_101_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_100();
    l0 = self.box_Delay_v5_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|171162855", "171162855", "KEY03_010_B30", "box_UseContextualActionModifier_v3_101.Enabled", "box_Delay_v5_100.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_101_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_108();
    l0 = self.box_ContextualActionListener_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1270654037", "1270654037", "KEY03_010_B30", "box_UseContextualActionModifier_v3_101.UseCalled", "box_ContextualActionListener_108.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_159_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_158();
    l0 = self.box_MultipleAND_v2_159;
    l1 = self.box_Delay_v5_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1438632485", "1438632485", "KEY03_010_B30", "box_MultipleAND_v2_159.Out", "box_Delay_v5_158.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleAND_v2_157_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_160();
    l0 = self.box_MultipleAND_v2_157;
    l1 = self.box_Delay_v5_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1021613417", "1021613417", "KEY03_010_B30", "box_MultipleAND_v2_157.Out", "box_Delay_v5_160.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_75_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_76();
    l0 = self.box_Delay_v5_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|988330813", "988330813", "KEY03_010_B30", "box_UseContextualActionModifier_v3_75.Enabled", "box_Delay_v5_76.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_69();
    l0 = self.box_PlayerFullyDetected_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|609211929", "609211929", "KEY03_010_B30", "box_OutputOrder_v2_59.Out", "box_PlayerFullyDetected_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_15();
    l0 = self.box_GroupSizeListener_v5_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|415211805", "415211805", "KEY03_010_B30", "box_OutputOrder_v2_59.Out", "box_GroupSizeListener_v5_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_59_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_60();
    l0 = self.box_GroupSizeListener_v5_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|580747407", "580747407", "KEY03_010_B30", "box_OutputOrder_v2_59.Out", "box_GroupSizeListener_v5_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_66_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_58();
    l0 = self.box_EntityStatusListener_66;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1029568272", "1029568272", "KEY03_010_B30", "box_EntityStatusListener_66.Loaded", "box_SetEntity_v2_58.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_108_End()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_111();
    l0 = self.box_ContextualActionListener_108;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|471454630", "471454630", "KEY03_010_B30", "box_ContextualActionListener_108.End", "box_UseContextualActionModifier_v3_111.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_120_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_112();
    l0 = self.box_ExitZoneWarningListener_v3_120;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|578560242", "578560242", "KEY03_010_B30", "box_ExitZoneWarningListener_v3_120.FailingZoneEntered", "box_OutputOrder_v2_112.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_15_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_25();
    l0 = self.box_GroupSizeListener_v5_15;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1330241403", "1330241403", "KEY03_010_B30", "box_GroupSizeListener_v5_15.MemberRemoved", "box_Compare_Integers_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_70_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_ExitZoneWarningListener_v3_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2010775654", "2010775654", "KEY03_010_B30", "box_ExitZoneWarningListener_v3_70.FailingZoneEntered", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_51_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_53();
    l0 = self.box_EntityStatusListener_51;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|616594595", "616594595", "KEY03_010_B30", "box_EntityStatusListener_51.Loaded", "box_SetEntity_v2_53.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_118_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_87();
    l0 = self.box_MultipleOR_118;
    l1 = self.box_Music_Quest_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|313807771", "313807771", "KEY03_010_B30", "box_MultipleOR_118.Out", "box_Music_Quest_v2_87.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_MultipleAND_v2_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_65();
    l0 = self.box_MultipleAND_v2_63;
    l1 = self.box_SpawnAI_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1395098294", "1395098294", "KEY03_010_B30", "box_MultipleAND_v2_63.Out", "box_SpawnAI_65.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_32_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_32_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1490111157", "1490111157", "KEY03_010_B30", "box_GetLocalPlayer_v2_32.Out", "box_OutputOrder_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_103();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1737597362", "1737597362", "KEY03_010_B30", "box_OutputOrder_v2_67.Out", "box_UseContextualActionModifier_v3_103.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_133();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1293585884", "1293585884", "KEY03_010_B30", "box_OutputOrder_v2_67.Out", "box_Simple_Node_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_107();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1636117435", "1636117435", "KEY03_010_B30", "box_OutputOrder_v2_67.Out", "box_OutputOrder_v2_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_103_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_101();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1442244658", "1442244658", "KEY03_010_B30", "box_UseContextualActionModifier_v3_103.Disabled", "box_UseContextualActionModifier_v3_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_103_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_102();
    l0 = self.box_Delay_v5_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1241849291", "1241849291", "KEY03_010_B30", "box_UseContextualActionModifier_v3_103.ForceNormalEndCalled", "box_Delay_v5_102.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Brick_PlayDialog_Relax_126_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_130();
    l0 = self.box_Brick_PlayDialog_Relax_126;
    l1 = self.box_Delay_v5_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|990988361", "990988361", "KEY03_010_B30", "box_Brick_PlayDialog_Relax_126.Finished", "box_Delay_v5_130.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetEntity_v2_73_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_73_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_157();
    l0 = self.box_MultipleAND_v2_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|820704762", "820704762", "KEY03_010_B30", "box_SetEntity_v2_73.Out", "box_MultipleAND_v2_157.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_SetEntity_v2_43_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_43_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_159();
    l0 = self.box_MultipleAND_v2_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|151299139", "151299139", "KEY03_010_B30", "box_SetEntity_v2_43.Out", "box_MultipleAND_v2_159.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_149_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_153();
    l0 = self.box_Delay_v5_149;
    l1 = self.box_SpawnAI_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|618684930", "618684930", "KEY03_010_B30", "box_Delay_v5_149.TimeElapsed", "box_SpawnAI_153.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Secure_Area_v5_93_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_96();
    l0 = self.box_Brick_Secure_Area_v5_93;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|682201518", "682201518", "KEY03_010_B30", "box_Brick_Secure_Area_v5_93.Success", "box_Simple_Node_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_24();
    l0 = self.box_ActivityInitialized_13;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|338149034", "338149034", "KEY03_010_B30", "box_ActivityInitialized_13.Out", "box_GetPlayerGroup_v2_24.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_20_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_122();
    l0 = self.box_Brick_Hostage_Setup_v2_20;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|834813000", "834813000", "KEY03_010_B30", "box_Brick_Hostage_Setup_v2_20.HostageReleased", "box_Simple_Node_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_20_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_Brick_Hostage_Setup_v2_20;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1751837141", "1751837141", "KEY03_010_B30", "box_Brick_Hostage_Setup_v2_20.NextHostage", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_62_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_63();
    l0 = self.box_OnceOnly_v3_62;
    l1 = self.box_MultipleAND_v2_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1545867929", "1545867929", "KEY03_010_B30", "box_OnceOnly_v3_62.Out", "box_MultipleAND_v2_63.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_SpawnAI_18_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_46();
    l0 = self.box_SpawnAI_18;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1383999788", "1383999788", "KEY03_010_B30", "box_SpawnAI_18.Spawned", "box_Simple_Node_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_94_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_106();
    l0 = self.box_EntityStatusListener_94;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|890204149", "890204149", "KEY03_010_B30", "box_EntityStatusListener_94.Loaded", "box_SetEntity_v2_106.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_137_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_40();
    l0 = self.box_SpawnAI_137;
    l1 = self.box_EntityStatusListener_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1662393318", "1662393318", "KEY03_010_B30", "box_SpawnAI_137.Spawned", "box_EntityStatusListener_40.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_50_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_54();
    l0 = self.box_Delay_v5_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|103129124", "103129124", "KEY03_010_B30", "box_UseContextualActionModifier_v3_50.Enabled", "box_Delay_v5_54.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_50_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_14();
    l0 = self.box_ProximityRadiusListener_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|310970628", "310970628", "KEY03_010_B30", "box_UseContextualActionModifier_v3_50.UseCalled", "box_ProximityRadiusListener_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_143_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_138();
    l0 = self.box_Delay_v5_143;
    l1 = self.box_SpawnAI_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1020974215", "1020974215", "KEY03_010_B30", "box_Delay_v5_143.TimeElapsed", "box_SpawnAI_138.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_160_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_37();
    l0 = self.box_Delay_v5_160;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|206549477", "206549477", "KEY03_010_B30", "box_Delay_v5_160.TimeElapsed", "box_Simple_Node_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_34();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1225709017", "1225709017", "KEY03_010_B30", "box_OutputOrder_v2_45.Out", "box_UseContextualActionModifier_v3_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|742734583", "742734583", "KEY03_010_B30", "box_OutputOrder_v2_45.Out", "box_UseContextualActionModifier_v3_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConversationListener_71();
    l0 = self.box_ConversationListener_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|98974189", "98974189", "KEY03_010_B30", "box_OutputOrder_v2_45.Out", "box_ConversationListener_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_72_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_89();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|209230299", "209230299", "KEY03_010_B30", "box_UseContextualActionModifier_v3_72.Disabled", "box_UseContextualActionModifier_v3_89.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_72_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_83();
    l0 = self.box_Delay_v5_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1957707912", "1957707912", "KEY03_010_B30", "box_UseContextualActionModifier_v3_72.ForceNormalEndCalled", "box_Delay_v5_83.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_76_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_75();
    l0 = self.box_Delay_v5_76;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1611143625", "1611143625", "KEY03_010_B30", "box_Delay_v5_76.TimeElapsed", "box_UseContextualActionModifier_v3_75.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_99();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1070277893", "1070277893", "KEY03_010_B30", "box_OutputOrder_v2_1.Out", "box_Simple_Node_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|993750016", "993750016", "KEY03_010_B30", "box_OutputOrder_v2_1.Out", "box_Delay_v5_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_63();
    l0 = self.box_MultipleAND_v2_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1315482234", "1315482234", "KEY03_010_B30", "box_OutputOrder_v2_1.Out", "box_MultipleAND_v2_63.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_29();
    l0 = self.box_MultipleAND_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1272936636", "1272936636", "KEY03_010_B30", "box_OutputOrder_v2_1.Out", "box_MultipleAND_v2_29.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_RemoveEntity_v2_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_8();
    l0 = self.box_RemoveEntity_v2_9;
    l1 = self.box_RemoveEntity_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2027085410", "2027085410", "KEY03_010_B30", "box_RemoveEntity_v2_9.Out", "box_RemoveEntity_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_95_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_94();
    l0 = self.box_SpawnAI_95;
    l1 = self.box_EntityStatusListener_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1289522853", "1289522853", "KEY03_010_B30", "box_SpawnAI_95.Spawned", "box_EntityStatusListener_94.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_23_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_73();
    l0 = self.box_EntityStatusListener_23;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1549448502", "1549448502", "KEY03_010_B30", "box_EntityStatusListener_23.Loaded", "box_SetEntity_v2_73.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_123_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_124();
    l0 = self.box_EntityStatusListener_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2014904044", "2014904044", "KEY03_010_B30", "box_SoundPointModifier_123.Started", "box_EntityStatusListener_124.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_167_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_163();
    l0 = self.box_GroupSizeListener_v5_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|715158975", "715158975", "KEY03_010_B30", "box_OutputOrder_v2_167.Out", "box_GroupSizeListener_v5_163.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_167_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Secure_Area_v5_93();
    l0 = self.box_Brick_Secure_Area_v5_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|46937277", "46937277", "KEY03_010_B30", "box_OutputOrder_v2_167.Out", "box_Brick_Secure_Area_v5_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_PlayDialog_Relax_128_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_132();
    l0 = self.box_Brick_PlayDialog_Relax_128;
    l1 = self.box_Delay_v5_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|686552394", "686552394", "KEY03_010_B30", "box_Brick_PlayDialog_Relax_128.Finished", "box_Delay_v5_132.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_131_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_128();
    l0 = self.box_Delay_v5_131;
    l1 = self.box_Brick_PlayDialog_Relax_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1470788036", "1470788036", "KEY03_010_B30", "box_Delay_v5_131.TimeElapsed", "box_Brick_PlayDialog_Relax_128.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_164_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|26743574", "26743574", "KEY03_010_B30", "box_Compare_Integers_164.A_gt_B", "box_MultipleOR_169.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_49_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_50();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|160914841", "160914841", "KEY03_010_B30", "box_UseContextualActionModifier_v3_49.Enabled", "box_UseContextualActionModifier_v3_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_49_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_50();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1770545833", "1770545833", "KEY03_010_B30", "box_UseContextualActionModifier_v3_49.UseCalled", "box_UseContextualActionModifier_v3_50.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Free_Hostages_v2_28();
    l0 = self.box_Brick_Free_Hostages_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1793870882", "1793870882", "KEY03_010_B30", "box_OutputOrder_v2_68.Out", "box_Brick_Free_Hostages_v2_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_163();
    l0 = self.box_GroupSizeListener_v5_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1343667984", "1343667984", "KEY03_010_B30", "box_OutputOrder_v2_68.Out", "box_GroupSizeListener_v5_163.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_147_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_135();
    l0 = self.box_Delay_v5_147;
    l1 = self.box_SpawnAI_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|747602587", "747602587", "KEY03_010_B30", "box_Delay_v5_147.TimeElapsed", "box_SpawnAI_135.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_105_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_104();
    l0 = self.box_Delay_v5_105;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|514394857", "514394857", "KEY03_010_B30", "box_Delay_v5_105.TimeElapsed", "box_UseContextualActionModifier_v3_104.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_134_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_35();
    l0 = self.box_PhoneCallExclusivityModifier_134;
    l1 = self.box_RequestPhoneCall_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1079788462", "1079788462", "KEY03_010_B30", "box_PhoneCallExclusivityModifier_134.Enabled", "box_RequestPhoneCall_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_107_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_82();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|874172398", "874172398", "KEY03_010_B30", "box_OutputOrder_v2_107.Out", "box_UseContextualActionModifier_v3_82.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_107_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_104();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1612038348", "1612038348", "KEY03_010_B30", "box_OutputOrder_v2_107.Out", "box_UseContextualActionModifier_v3_104.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_82_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_75();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|307966810", "307966810", "KEY03_010_B30", "box_UseContextualActionModifier_v3_82.Disabled", "box_UseContextualActionModifier_v3_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_82_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_81();
    l0 = self.box_Delay_v5_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|580329760", "580329760", "KEY03_010_B30", "box_UseContextualActionModifier_v3_82.ForceNormalEndCalled", "box_Delay_v5_81.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_86_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_23();
    l0 = self.box_SpawnAI_86;
    l1 = self.box_EntityStatusListener_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|329656240", "329656240", "KEY03_010_B30", "box_SpawnAI_86.Spawned", "box_EntityStatusListener_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_138_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_42();
    l0 = self.box_SpawnAI_138;
    l1 = self.box_EntityStatusListener_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1013419929", "1013419929", "KEY03_010_B30", "box_SpawnAI_138.Spawned", "box_EntityStatusListener_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_29_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_29;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1577579492", "1577579492", "KEY03_010_B30", "box_MultipleAND_v2_29.Out", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_152_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_155();
    l0 = self.box_Delay_v5_152;
    l1 = self.box_SpawnAI_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1002386302", "1002386302", "KEY03_010_B30", "box_Delay_v5_152.TimeElapsed", "box_SpawnAI_155.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_78_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_77();
    l0 = self.box_Delay_v5_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|881816939", "881816939", "KEY03_010_B30", "box_UseContextualActionModifier_v3_78.Enabled", "box_Delay_v5_77.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_104_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_78();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1766838966", "1766838966", "KEY03_010_B30", "box_UseContextualActionModifier_v3_104.Disabled", "box_UseContextualActionModifier_v3_78.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_104_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_105();
    l0 = self.box_Delay_v5_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|458725646", "458725646", "KEY03_010_B30", "box_UseContextualActionModifier_v3_104.ForceNormalEndCalled", "box_Delay_v5_105.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PhoneCallExclusivityModifier_48_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_119();
    l0 = self.box_PhoneCallExclusivityModifier_48;
    l1 = self.box_RequestPhoneCall_v2_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|844996683", "844996683", "KEY03_010_B30", "box_PhoneCallExclusivityModifier_48.Enabled", "box_RequestPhoneCall_v2_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_130_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_127();
    l0 = self.box_Delay_v5_130;
    l1 = self.box_Brick_PlayDialog_Relax_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1285632788", "1285632788", "KEY03_010_B30", "box_Delay_v5_130.TimeElapsed", "box_Brick_PlayDialog_Relax_127.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_150_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_115();
    l0 = self.box_OnceOnly_v3_150;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1732662740", "1732662740", "KEY03_010_B30", "box_OnceOnly_v3_150.Out", "box_OutputOrder_v2_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_136_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_66();
    l0 = self.box_SpawnAI_136;
    l1 = self.box_EntityStatusListener_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|159917311", "159917311", "KEY03_010_B30", "box_SpawnAI_136.Spawned", "box_EntityStatusListener_66.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_139_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_51();
    l0 = self.box_SpawnAI_139;
    l1 = self.box_EntityStatusListener_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1272659266", "1272659266", "KEY03_010_B30", "box_SpawnAI_139.Spawned", "box_EntityStatusListener_51.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_3_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = self.box_ProximityRadiusListener_v3_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1313160908", "1313160908", "KEY03_010_B30", "box_ProximityRadiusListener_v3_3.AllNear", "box_OutputOrder_v2_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_163_Enabled()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_163_Enabled();
    params = self:OnEnter_box_Delay_v5_168();
    l0 = self.box_GroupSizeListener_v5_163;
    l1 = self.box_Delay_v5_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1771643449", "1771643449", "KEY03_010_B30", "box_GroupSizeListener_v5_163.Enabled", "box_Delay_v5_168.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v5_163_MemberAdded()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_163_MemberAdded();
    l0 = self.box_GroupSizeListener_v5_163;
    l1 = self.box_MultipleOR_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1461449486", "1461449486", "KEY03_010_B30", "box_GroupSizeListener_v5_163.MemberAdded", "box_MultipleOR_165.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_163_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_163_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_163;
    l1 = self.box_MultipleOR_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1916440778", "1916440778", "KEY03_010_B30", "box_GroupSizeListener_v5_163.MemberRemoved", "box_MultipleOR_165.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetEntity_v2_53_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_53_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_26();
    l0 = self.box_MultipleAND_v2_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2135096427", "2135096427", "KEY03_010_B30", "box_SetEntity_v2_53.Out", "box_MultipleAND_v2_26.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_115_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_144();
    l0 = self.box_Delay_v5_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|404290215", "404290215", "KEY03_010_B30", "box_OutputOrder_v2_115.Out", "box_Delay_v5_144.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_115_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1909891406", "1909891406", "KEY03_010_B30", "box_OutputOrder_v2_115.Out", "box_Simple_Node_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_115_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_10();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2086682547", "2086682547", "KEY03_010_B30", "box_OutputOrder_v2_115.Out", "box_Simple_Node_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_117_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_114();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1664588116", "1664588116", "KEY03_010_B30", "box_Compare_Integers_117.A_le_B", "box_OutputOrder_v2_114.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_61_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2120124455", "2120124455", "KEY03_010_B30", "box_Compare_Integers_61.A_le_B", "box_OutputOrder_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_40_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_43();
    l0 = self.box_EntityStatusListener_40;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|428224845", "428224845", "KEY03_010_B30", "box_EntityStatusListener_40.Loaded", "box_SetEntity_v2_43.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerFullyDetected_69_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_PlayerFullyDetected_69;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1727986564", "1727986564", "KEY03_010_B30", "box_PlayerFullyDetected_69.Detected", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_44_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_44_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_159();
    l0 = self.box_MultipleAND_v2_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1523230856", "1523230856", "KEY03_010_B30", "box_SetEntity_v2_44.Out", "box_MultipleAND_v2_159.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Brick_PlayDialog_Relax_127_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_131();
    l0 = self.box_Brick_PlayDialog_Relax_127;
    l1 = self.box_Delay_v5_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|862293314", "862293314", "KEY03_010_B30", "box_Brick_PlayDialog_Relax_127.Finished", "box_Delay_v5_131.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:OnEnter_box_Simple_Node_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|@ai_manager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_19_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|@all_enemies_dead");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|@Area_Secure");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_96_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|@combat_started");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_99_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|@hostage_completed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_98_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|@hostage_released");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_122_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|@hostages_loaded");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|@remove_exclusion_zones");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|@syncanim_ai_loaded");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_161_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|@tunnel_convo_loaded");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_162_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|@VO_approach_tunnel");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|@VO_approaching_tunnel");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|@VO_bat_execution");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_133_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|@VO_Chopper");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|@VO_HostageMissionCompleted");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_146_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_77()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_57()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_148()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_142()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|101214995");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_56()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_100()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|164697130");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_89_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_89_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104759640213431143",
        -- Entity,
        [1] = self.eTunnelFemale,
    };
    return params;
end;

function export:OnEnter_box_ConversationListener_71()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- Entity,
        [1] = self.eTunnelFemale,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|219854470");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_79_Out,
    });
    params = {
        -- Entity,
        [0] = "2099974772988318717",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_42()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103940593722872323",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_135()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099974772956861410",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_132()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|248049376");
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

function export:OnEnter_box_EntityStatusListener_80()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099974772988318717",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|281686299");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI24_010_FAIL_LeaveZone",
            id = "656985",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_124()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103777297852032866",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_83()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_156()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_60()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#4206D3A9",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_141()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|374683936");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
                [2] = self.f_box_OutputOrder_v2_41_Out_2,
                [3] = self.f_box_OutputOrder_v2_41_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_119()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3982061848",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|408099617");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 11,
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
                [2] = self.f_box_OutputOrder_v2_52_Out_2,
                [3] = self.f_box_OutputOrder_v2_52_Out_3,
                [4] = self.f_box_OutputOrder_v2_52_Out_4,
                [5] = self.f_box_OutputOrder_v2_52_Out_5,
                [6] = self.f_box_OutputOrder_v2_52_Out_6,
                [7] = self.f_box_OutputOrder_v2_52_Out_7,
                [8] = self.f_box_OutputOrder_v2_52_Out_8,
                [9] = self.f_box_OutputOrder_v2_52_Out_9,
                [10] = self.f_box_OutputOrder_v2_52_Out_10,
            },
            count = 11,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|429461317");
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
                [0] = self.f_box_OutputOrder_v2_112_Out_0,
                [1] = self.f_box_OutputOrder_v2_112_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|441304509");
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
                [0] = self.f_box_OutputOrder_v2_114_Out_0,
                [1] = self.f_box_OutputOrder_v2_114_Out_1,
                [2] = self.f_box_OutputOrder_v2_114_Out_2,
                [3] = self.f_box_OutputOrder_v2_114_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_116()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#4206D3A9",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|547857740");
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
                [0] = self.f_box_OutputOrder_v2_88_Out_0,
                [1] = self.f_box_OutputOrder_v2_88_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|564917720");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_16_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103940561974088021",
        -- Entity,
        [1] = self.eTunnelMale,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_26()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_145()
    local params;
    params = {
        -- Group,
        [0] = self.eVIP,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2387422575",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_154()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099974772950569945",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|625321114");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_25_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_15;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|673599050");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_106_Out,
    });
    params = {
        -- Entity,
        [0] = "2103491324828192740",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_144()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_102()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_12()
    local params;
    params = {
        -- Hostage,
        [0] = self.eVIP,
        -- STP_Tied,
        [1] = "2099974772927501230",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.eVIP,
        -- id2,
        [3] = self.eLocalPlayer,
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.player,
        -- id2,
        [3] = "2100112492125490291",
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_168()
    local params;
    DrawTextToScreen("Comment: start safety timer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Delay_v5')-- Comment: start safety timer");
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_8()
    local params;
    params = {
        -- Group,
        [0] = "2100803652504521189",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_110()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_Brick_Free_Hostages_v2_28()
    local params;
    params = {
        -- bCompletePreviousObjectives,
        [0] = false,
        -- bMinimunHostagesCompletion,
        [1] = false,
        -- bShowObjective,
        [2] = true,
        -- Hostage_group,
        [3] = "#CE72D114",
        -- HostagesToSave,
        [4] = 1,
        -- Objective,
        [5] = {
            section = "Objectives",
            item = "KEY03_010_B20B_RescueDude",
            id = "554567",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_81()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|793070574");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104759646601356139",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_158()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_140()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|856817524");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_34_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103940573669904758",
        -- Entity,
        [1] = self.eTunnelFemale,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_91()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|867671446");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "KEY03_010_B00_Failure",
            id = "880945",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|875696175");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_111_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_111_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099974772908626805",
        -- Entity,
        [1] = self.eGuardScooter,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_109()
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
        [6] = "1055227918",
        -- StopEvent,
        [7] = "873188909",
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

function export:OnEnter_box_Delay_v5_54()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|932465448");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_55()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_65()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102625664979971438",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_87()
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
        [6] = "1055227918",
        -- StopEvent,
        [7] = "873188909",
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

function export:OnEnter_box_ActivityEnd_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|990667843");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1019095691");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_58_Out,
    });
    params = {
        -- Entity,
        [0] = "2099974772982027257",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_151()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1043586609");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_24_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1067748526");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_101_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_101_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103484168229894385",
        -- Entity,
        [1] = self.eGuardScooter,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_159()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_157()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1080771127");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_75_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104467323797660126",
        -- Entity,
        [1] = self.eRocketLauncherGuy,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1104512387");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
                [1] = self.f_box_OutputOrder_v2_59_Out_1,
                [2] = self.f_box_OutputOrder_v2_59_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_66()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099974772982027257",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_108()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103484168229894385",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_120()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2104745859070571129",
        -- WarningZoneTrigger,
        [3] = "2104745859072668282",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_15()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#4206D3A9",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1153993504");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2103777297852032866",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_70()
    local params;
    params = {
        -- bShowUI,
        [0] = false,
        -- CoopFailRequiresAllPlayer,
        [1] = true,
        -- FailingZoneTrigger,
        [2] = "2104745859070571129",
        -- WarningZoneTrigger,
        [3] = "2104745859072668282",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099974772979930103",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_63()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1259566489");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1290279640");
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
                [0] = self.f_box_OutputOrder_v2_67_Out_0,
                [1] = self.f_box_OutputOrder_v2_67_Out_1,
                [2] = self.f_box_OutputOrder_v2_67_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1291239199");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_103_Disabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_103_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103486384867139556",
        -- Entity,
        [1] = self.eGuardScooter,
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_126()
    local params;
    params = {
        -- Group,
        [0] = self.eGuardScooter,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "4125807380",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1336430252");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2103777297852032866",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1343020455");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_73_Out,
    });
    params = {
        -- Entity,
        [0] = "2103391123369105718",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1343550102");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_43_Out,
    });
    params = {
        -- Entity,
        [0] = "2103940609478775728",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_149()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_Brick_Secure_Area_v5_93()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bRequiresObjective,
        [1] = true,
        -- eMarkerObjectiveArea,
        [2] = "2103485898522898393",
        -- gEnemyGroup,
        [3] = "#4206D3A9",
        -- Objective,
        [4] = {
            section = "Objectives",
            item = "KEY03_010_B30_SecureArea",
            id = "832122",
        },
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_129()
    local params;
    params = {
        -- Group,
        [0] = self.eGuardScooter,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "2583518557",
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_5()
    local params;
    params = {
        -- Group,
        [0] = self.eVIP,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "4275248127",
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_20()
    local params;
    params = {
        -- Hostage,
        [0] = "2103491324828192740",
        -- STP_Tied,
        [1] = "2103484168229894384",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_18()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100002293769322474",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_94()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103491324828192740",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_137()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103940606226092672",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1541857907");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_50_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_50_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102019833070632204",
        -- Entity,
        [1] = self.eVIP,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_143()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_160()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1578673687");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
                [2] = self.f_box_OutputOrder_v2_45_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1585015140");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_72_Disabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_72_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100112492125490295",
        -- Entity,
        [1] = self.eTunnelFemale,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_76()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1608921538");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
                [3] = self.f_box_OutputOrder_v2_1_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_9()
    local params;
    params = {
        -- Group,
        [0] = "2100803658949069286",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_95()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103484134321043411",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103391123369105718",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1665316060");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_SoundPointModifier_123_Started,
    });
    params = {
        -- soundPoint,
        [0] = "2103777297852032866",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1672958657");
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
                [0] = self.f_box_OutputOrder_v2_167_Out_0,
                [1] = self.f_box_OutputOrder_v2_167_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_128()
    local params;
    params = {
        -- Group,
        [0] = self.eGuardScooter,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "3382456721",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_131()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1676341058");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_164_A_gt_B,
    });
    params = {
        -- A,
        [0] = self.i_CultAlive,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1718072979");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_49_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_49_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102019844292492560",
        -- Entity,
        [1] = self.eGuardScooter,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1726086736");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_153()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105021021925949523",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_84()
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
        [6] = "1055227918",
        -- StopEvent,
        [7] = "873188909",
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

function export:OnEnter_box_Delay_v5_147()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_105()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1831972080");
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
                [0] = self.f_box_OutputOrder_v2_107_Out_0,
                [1] = self.f_box_OutputOrder_v2_107_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1850115599");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_82_Disabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_82_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103486347768520539",
        -- Entity,
        [1] = self.eRocketLauncherGuy,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_86()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103391115089549512",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_138()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103940586649178510",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_29()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_152()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1897661160");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_78_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104467323797660129",
        -- Entity,
        [1] = self.ePistolGuy,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|1912142321");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_104_Disabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_104_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104260389073083302",
        -- Entity,
        [1] = self.ePistolGuy,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_130()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_136()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099974772946375632",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_64()
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
        [6] = "1055227918",
        -- StopEvent,
        [7] = "873188909",
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

function export:OnEnter_box_RequestPhoneCall_v2_35()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "472728813",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_139()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099974772935889863",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_155()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100803002490168906",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.eVIP,
        -- id2,
        [3] = self.eLocalPlayer,
        -- nearZone,
        [4] = 50,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_163()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#4206D3A9",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2057368711");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_53_Out,
    });
    params = {
        -- Entity,
        [0] = "2099974772979930103",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2071265649");
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

function export:OnEnter_box_Compare_Integers_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2071774099");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_117_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_116;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2072457013");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_61_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_60;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_40()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103940609478775728",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_69()
    local params;
    params = {
        -- group,
        [0] = "#4206D3A9",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_010\\KEY03_010_B30.domino|@KEY03_010_B30|2125134712");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_44_Out,
    });
    params = {
        -- Entity,
        [0] = "2103940593722872323",
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_127()
    local params;
    params = {
        -- Group,
        [0] = self.eGuardScooter,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "1008134672",
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_79_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.ePistolGuy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_106_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eExecutedHostage = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_58_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eRocketLauncherGuy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eLocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_73_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eVIP = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_43_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTunnelFemale = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_163_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_163;
    self.i_CultAlive = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_163_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_163;
    self.i_CultAlive = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_163_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_163;
    self.i_CultAlive = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetEntity_v2_53_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eGuardScooter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTunnelMale = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="Hostage" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
