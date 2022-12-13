LUAC-N -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni33/uni33_010_b10.domino
-- User graph: UNI33_010_B10_main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Free_Hostages_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/IsEntityInGroup.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetEntityType.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnWeaponFiredListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        cboxRes:RegisterBox("Domino/System/TaggingModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3304190681.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1290802226.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3298499095.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2773105991.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3038109464.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2091121326.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2836532680.bnk]], "CSoundResource");
        cboxRes:LoadResource([[425971250.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1875102801.bnk]], "CSoundResource");
        cboxRes:LoadResource([[741893765.bnk]], "CSoundResource");
        cboxRes:LoadResource([[721953308.bnk]], "CSoundResource");
        cboxRes:LoadResource([[294345712.bnk]], "CSoundResource");
        cboxRes:LoadResource([[564481051.bnk]], "CSoundResource");
        cboxRes:LoadResource([[217420303.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI33/UNI33_010_B10.UNI33_010_B10_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "eMobileMarker",
                type = "entity",
            },
            [2] = {
                name = "eNPC",
                type = "entity",
            },
            [3] = {
                name = "fHeight",
                type = "float",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityFact.lua")] = {
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
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener.lua")] = {
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
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
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
                name = "CharacterId",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
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
    metadataTable[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")] = {
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
                name = "Entity",
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
    metadataTable[GetPathID("Domino/System/GetEntityType.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Animal",
                delayed = false,
            },
            [1] = {
                name = "NotLoaded",
                delayed = false,
            },
            [2] = {
                name = "Others",
                delayed = false,
            },
            [3] = {
                name = "Pawn",
                delayed = false,
            },
            [4] = {
                name = "Player",
                delayed = false,
            },
            [5] = {
                name = "Vehicle",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "EntityID",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GetHealthState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Critical",
                delayed = false,
            },
            [1] = {
                name = "Dead",
                delayed = false,
            },
            [2] = {
                name = "Down",
                delayed = false,
            },
            [3] = {
                name = "Healthy",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Health",
                type = "float",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/HealthListener_v6.lua")] = {
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
                name = "Critical",
                delayed = true,
            },
            [1] = {
                name = "Damaged",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Downed",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "Healed",
                delayed = true,
            },
            [6] = {
                name = "Killed",
                delayed = true,
            },
            [7] = {
                name = "Revived",
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
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "current",
                type = "float",
            },
            [1] = {
                name = "delta",
                type = "float",
            },
            [2] = {
                name = "emitterName",
                type = "string",
            },
            [3] = {
                name = "hitLocation",
                type = "string",
            },
            [4] = {
                name = "instigator",
                type = "entity",
            },
            [5] = {
                name = "sourceType",
                type = "string",
            },
            [6] = {
                name = "victim",
                type = "entity",
            },
        },
        dataOutCount = 7,
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
    metadataTable[GetPathID("Domino/System/PawnWeaponFiredListener_v2.lua")] = {
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
                name = "OnFired",
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
                name = "itemDescriptor",
                type = "genericdb",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "weaponClass",
                type = "string",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "remainingAmmo",
                type = "int",
            },
            [1] = {
                name = "weaponItem",
                type = "genericdb",
            },
            [2] = {
                name = "wielder",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/TaggingModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "TagEntity",
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
                name = "Tagged",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "Pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "MessageType",
                type = "int",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI33_010_B10_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main";
    self.eJess_NPC = nil;
    self.CompleteTotal = 0;
    self.ActiveTotal = 0;
    self.ActiveTotalBeat020 = 0;
    self.ActiveBeat020 = 0;
    self.CompletedBeat020 = 0;
    self.ActiveBeat030 = 0;
    self.CompletedBeat030 = 0;
    self.CompletedTotal = 0;
    self.FreeProgressID = 0;
    self.Freed_PROGRESS = 0;
    self.Hostage_Group_Size = 0;
    self.Freed_TARGET = 0;
    self.Freed_Hostage_2 = false;
    self.Freed_Hostage_1 = false;
    self.Freed_Hostage_3 = false;
    self.Hostage_3 = nil;
    self._2099974085367838146 = nil;
    self.HostageBlah = nil;
    self.Hostage_01 = nil;
    self.Hostage_02 = nil;
    self.Hostage_03 = nil;
    self.PlayerGroup = nil;
    self.asfdfsd = nil;
    self.asdfadsf = nil;
    self.GFH_Junior = nil;
    self.AllPlayers = nil;
    self.AllPlayer = nil;
    self.CultTotalDeath = 0;
    self.eHostage2 = nil;
    self.eHostage1 = nil;
    self.eGuard03 = nil;
    self.eGuard02 = nil;
    self.iInsideHostages = 0;
    self.eHostage4 = nil;
    self.list_guardsRemaining = {
    };
    self.player = nil;
    self.iOutsideHostages = 0;
    self.eGuard01 = nil;
    self.bCombatStarted = false;
    self.eHostage3 = nil;
    self.Hostages_Saved = 0;
    self.Current_Saved_Hostages = 10;
    self.Reloaded = false;
    self.jimboJ = nil;
    self.box_PlayDialog_v6_169 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|23495128");
    l0:SetConnections({
    });
    self.box_Gate_v3_229 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|44638467");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_229_Out,
    });
    self.box_MultipleOR_190 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|128225900");
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
        [0] = self.f_box_MultipleOR_190_Out,
    });
    self.box_PlayDialog_v6_139 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|130331544");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_165 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|167197966");
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
                [0] = self.f_box_OnceOnly_v3_165_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_196 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|169032977");
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
                [0] = self.f_box_OnceOnly_v3_196_Out_0,
            },
            count = 2,
        },
    });
    self.box_HealthListener_v6_28 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|182839475");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_28_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_28_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_28_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_28_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_28_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_28_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_28_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_28_Revived,
    });
    self.box_Gate_v3_215 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|183102450");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_215_Out,
    });
    self.box_Delay_v5_171 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|189933436");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_171_TimeElapsed,
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|218325150");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_21_Spawned,
    });
    self.box_PlayDialog_v6_127 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|219311292");
    l0:SetConnections({
    });
    self.box_Gate_v3_223 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|247894554");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_223_Out,
    });
    self.box_OnceOnly_v3_218 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|253908775");
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
                [0] = self.f_box_OnceOnly_v3_218_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_105 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|321076267");
    l0:SetConnections({
    });
    self.box_Brick_Free_Hostages_v2_30 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Free_Hostages_v2.debug.lua");
    l0 = self.box_Brick_Free_Hostages_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Free_Hostages_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|344848497");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Free_Hostages_v2_30_Fail,
        -- Started,
        [1] = self.f_box_Brick_Free_Hostages_v2_30_Started,
        -- Success,
        [2] = self.f_box_Brick_Free_Hostages_v2_30_Success,
    });
    self.box_Music_Quest_v2_72 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|365985367");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_124 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|386353908");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_77 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|397183145");
    l0:SetConnections({
    });
    self.box_MultipleOR_172 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|465755875");
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
        [0] = self.f_box_MultipleOR_172_Out,
    });
    self.box_StateListener_v2_182 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|469152652");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_182_StateStart,
    });
    self.box_OnceOnly_v3_241 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|481950494");
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
                [0] = self.f_box_OnceOnly_v3_241_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_183 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|488743871");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_183_TimeElapsed,
    });
    self.box_OnceOnly_v3_97 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|561186538");
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
                [0] = self.f_box_OnceOnly_v3_97_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_11 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|570316641");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_11_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_11_FinishedInterrupted,
    });
    self.box_MultipleOR_201 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|583688739");
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
        [0] = self.f_box_MultipleOR_201_Out,
    });
    self.box_PawnWeaponFiredListener_v2_206 = cbox:CreateBox("Domino/System/PawnWeaponFiredListener_v2.lua");
    l0 = self.box_PawnWeaponFiredListener_v2_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponFiredListener_v2_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|637955008");
    l0:SetConnections({
        -- OnFired,
        [2] = self.f_box_PawnWeaponFiredListener_v2_206_OnFired,
    });
    self.box_GroupSizeListener_v5_109 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|668736192");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_109_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_109_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_109_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_109_MemberRemoved,
    });
    self.box_ProximityTrigger_v2_116 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|677477175");
    l0:SetConnections({
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_116_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_116_OnOccupied,
    });
    self.box_Music_Quest_v2_68 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|683531438");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_149 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|717811204");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_149_SomeoneNear,
    });
    self.box_MultipleOR_175 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|718641251");
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
        [0] = self.f_box_MultipleOR_175_Out,
    });
    self.box_Brick_Hostage_Setup_v2_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|718804566");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_17_HostageReleased,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|746048221");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_Gate_v3_225 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|760817217");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_225_Out,
    });
    self.box_EntityStatusListener_154 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|761283495");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_154_Loaded,
    });
    self.box_OnceOnly_v3_161 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|786367989");
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
                [0] = self.f_box_OnceOnly_v3_161_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Hostage_Setup_v2_32 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|791413175");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_32_HostageReleased,
        -- NextHostage,
        [1] = self.f_box_Brick_Hostage_Setup_v2_32_NextHostage,
    });
    self.box_OnceOnly_v3_243 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|814249153");
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
                [0] = self.f_box_OnceOnly_v3_243_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_240 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|814348666");
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
                [0] = self.f_box_OnceOnly_v3_240_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Hostage_Setup_v2_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|862756191");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_14_HostageReleased,
        -- NextHostage,
        [1] = self.f_box_Brick_Hostage_Setup_v2_14_NextHostage,
    });
    self.box_OnceOnly_v3_222 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|864447727");
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
                [0] = self.f_box_OnceOnly_v3_222_Out_0,
            },
            count = 2,
        },
    });
    self.box_GroupSizeListener_v5_191 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|894046664");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_191_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_191_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_191_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_191_MemberRemoved,
    });
    self.box_Delay_v5_129 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|923463191");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_129_TimeElapsed,
    });
    self.box_Gate_v3_244 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|929856848");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_244_Out,
    });
    self.box_Delay_v5_187 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|934564077");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_187_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_157 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|993033938");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_157_Enter,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_157_OnOccupied,
    });
    self.box_Gate_v3_227 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1036195137");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_227_Out,
    });
    self.box_CharacterLoadedIdListener_25 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1047619932");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_25_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_25_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_25_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_25_LoadedIdReceived,
    });
    self.box_OnceOnly_v3_152 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1112188493");
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
                [0] = self.f_box_OnceOnly_v3_152_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_180 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1112842916");
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
        [0] = self.f_box_MultipleOR_180_Out,
    });
    self.box_Music_Quest_v2_75 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1122771808");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_228 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1161319967");
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
                [0] = self.f_box_OnceOnly_v3_228_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Secure_Area_v5_27 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
    l0 = self.box_Brick_Secure_Area_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Secure_Area_v5_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1162971683");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_Brick_Secure_Area_v5_27_Started,
        -- Success,
        [1] = self.f_box_Brick_Secure_Area_v5_27_Success,
    });
    self.box_GroupSizeListener_v5_38 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1163222511");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_38_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_38_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_38_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_38_MemberRemoved,
    });
    self.box_HealthListener_v6_198 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1164064863");
    l0:SetConnections({
        -- Revived,
        [7] = self.f_box_HealthListener_v6_198_Revived,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1194425233");
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
    self.box_MultipleOR_181 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1197175784");
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
        [0] = self.f_box_MultipleOR_181_Out,
    });
    self.box_OnceOnly_v3_226 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1199549013");
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
                [0] = self.f_box_OnceOnly_v3_226_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleAND_v2_99 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1206184934");
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
        [0] = self.f_box_MultipleAND_v2_99_Out,
    });
    self.box_OnceOnly_v3_220 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1207625491");
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
                [0] = self.f_box_OnceOnly_v3_220_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_70 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1217060190");
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
                [0] = self.f_box_OnceOnly_v3_70_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_233 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1219728765");
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
        [0] = self.f_box_MultipleOR_233_Out,
    });
    self.box_StateListener_v2_35 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1303668541");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StateListener_v2_35_Enabled,
        -- StateStart,
        [3] = self.f_box_StateListener_v2_35_StateStart,
    });
    self.box_PlayDialog_v6_103 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1309956567");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_103_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_103_FinishedInterrupted,
    });
    self.box_MultipleOR_131 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1330947537");
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
        [0] = self.f_box_MultipleOR_131_Out,
    });
    self.box_Delay_v5_188 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1333167132");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_188_TimeElapsed,
    });
    self.box_ExitZoneWarningListener_v3_125 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1385085097");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_125_FailingZoneEntered,
    });
    self.box_MultipleAND_v2_89 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1390745282");
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
        [0] = self.f_box_MultipleAND_v2_89_Out,
    });
    self.box_Delay_v5_96 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1405624844");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_96_TimeElapsed,
    });
    self.box_RemoveEntity_v2_167 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1440395594");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_167_Out,
    });
    self.box_OnceOnly_v3_47 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1455722494");
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
                [0] = self.f_box_OnceOnly_v3_47_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_132 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1462818029");
    l0:SetConnections({
    });
    self.box_MultipleOR_158 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1520051193");
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
        [0] = self.f_box_MultipleOR_158_Out,
    });
    self.box_MultipleOR_232 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1532904738");
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
        [0] = self.f_box_MultipleOR_232_Out,
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1582394879");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_PlayDialog_v6_95 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1673275200");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_214 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1698467279");
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
                [0] = self.f_box_OnceOnly_v3_214_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_219 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1700459487");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_219_Out,
    });
    self.box_EntityStatusListener_3 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1718117152");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_3_Loaded,
    });
    self.box_Gate_v3_217 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1732796295");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_217_Out,
    });
    self.box_Gate_v3_98 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1734646432");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_98_Out,
    });
    self.box_Gate_v3_221 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1736877892");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_221_Out,
    });
    self.box_MultipleOR_197 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1758121786");
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
        [0] = self.f_box_MultipleOR_197_Out,
    });
    self.box_HealthListener_v6_94 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1813986277");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_94_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_94_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_94_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_94_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_94_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_94_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_94_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_94_Revived,
    });
    self.box_Delay_v5_73 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1821297751");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_73_TimeElapsed,
    });
    self.box_MultipleOR_108 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1831401831");
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
        [0] = self.f_box_MultipleOR_108_Out,
    });
    self.box_BindMarkerOverHead_v2_200 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
    l0 = self.box_BindMarkerOverHead_v2_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_v2_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1875173245");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BindMarkerOverHead_v2_200_Out,
    });
    self.box_PlayDialog_v6_142 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1881216550");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_119 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1884542164");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_119_Loaded,
    });
    self.box_PlayDialog_v6_138 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1922639352");
    l0:SetConnections({
    });
    self.box_Delay_v5_117 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1929058236");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_117_TimeElapsed,
    });
    self.box_EntityStatusListener_122 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1935087438");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_122_Loaded,
    });
    self.box_DisplayCustomUIMsg_v5_69 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1954438834");
    l0:SetConnections({
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v5_69_OnHide,
    });
    self.box_HealthListener_v6_239 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1960746367");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_239_Downed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_239_Revived,
    });
    self.box_OnceOnly_v3_216 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1965175990");
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
                [0] = self.f_box_OnceOnly_v3_216_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_153 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1998699011");
    l0:SetConnections({
    });
    self.box_LookAtTrigger_v2_128 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1999331565");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_128_EnterFOV,
    });
    self.box_Delay_v5_110 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2010964071");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_110_TimeElapsed,
    });
    self.box_MultipleOR_160 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2021772311");
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
        [0] = self.f_box_MultipleOR_160_Out,
    });
    self.box_Delay_v5_184 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2027198270");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_184_TimeElapsed,
    });
    self.box_EntityStatusListener_123 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2046656562");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_123_Loaded,
    });
    self.box_MultipleAND_v2_46 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2049694302");
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
        [0] = self.f_box_MultipleAND_v2_46_Out,
    });
    self.box_HealthListener_v6_141 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2058015723");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_141_Killed,
    });
    self.box_PlayDialog_v6_137 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2078907141");
    l0:SetConnections({
    });
    self.box_Delay_v5_130 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2082586435");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_130_TimeElapsed,
    });
    self.box_Gate_v3_236 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2083322391");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_236_Out,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2129664454");
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
    self.box_RemoveEntity_v2_155 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2130623583");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_155_Out,
    });
    self.box_PlayerFullyDetected_156 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2134261457");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_156_Detected,
    });
    self.box_CharacterLoadedIdListener_118 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2141121426");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_118_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_118_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_118_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_118_LoadedIdReceived,
    });
    self.box_ProximityRadiusListener_v3_22 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2144428335");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_22_AllFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_22_SomeoneNear,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|6126087", "6126087", "UNI33_010_B10_main", "In", "box_ActivityAcknowledgeGate_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|971294764", "971294764", "UNI33_010_B10_main", "OnLeaveZone", "box_Simple_Node_146.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_51_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_38();
    l0 = self.box_GroupSizeListener_v5_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2093600587", "2093600587", "UNI33_010_B10_main", "box_Simple_Node_51.Out", "box_GroupSizeListener_v5_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_Compare_Boolean_178();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1184808746", "1184808746", "UNI33_010_B10_main", "box_Simple_Node_51.Out", "box_Compare_Boolean_178.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_53_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_89();
    l0 = self.box_MultipleAND_v2_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|980529421", "980529421", "UNI33_010_B10_main", "box_Simple_Node_53.Out", "box_MultipleAND_v2_89.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_59_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_68();
    l0 = self.box_Music_Quest_v2_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1066131481", "1066131481", "UNI33_010_B10_main", "box_Simple_Node_59.Out", "box_Music_Quest_v2_68.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
    l0 = self.box_OnceOnly_v3_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|237593104", "237593104", "UNI33_010_B10_main", "box_Simple_Node_59.Out", "box_OnceOnly_v3_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_166_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2144499221", "2144499221", "UNI33_010_B10_main", "box_Simple_Node_166.Out", "box_OnceOnly_v3_165.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_81();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|850312182", "850312182", "UNI33_010_B10_main", "box_Simple_Node_64.Out", "box_GetPlayerGroup_v2_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_35();
    l0 = self.box_StateListener_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|741892055", "741892055", "UNI33_010_B10_main", "box_Simple_Node_63.Out", "box_StateListener_v2_35.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_114();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|696120994", "696120994", "UNI33_010_B10_main", "box_Simple_Node_57.Out", "box_SoundPointModifier_114.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Brick_Secure_Area_v5_27();
    l0 = self.box_Brick_Secure_Area_v5_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|893111783", "893111783", "UNI33_010_B10_main", "box_Simple_Node_57.Out", "box_Brick_Secure_Area_v5_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_150_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_159();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|187790909", "187790909", "UNI33_010_B10_main", "box_Simple_Node_150.Out", "box_OutputOrder_v2_159.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_46();
    l0 = self.box_MultipleAND_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|318147141", "318147141", "UNI33_010_B10_main", "box_Simple_Node_61.Out", "box_MultipleAND_v2_46.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_Delay_v5_96();
    l0 = self.box_Delay_v5_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|330061064", "330061064", "UNI33_010_B10_main", "box_Simple_Node_61.Out", "box_Delay_v5_96.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_48_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|885780225", "885780225", "UNI33_010_B10_main", "box_Simple_Node_48.Out", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_224_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_127();
    l0 = self.box_PlayDialog_v6_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|863219933", "863219933", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_PlayDialog_v6_127.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_221();
    l0 = self.box_Gate_v3_221;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|996573690", "996573690", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_Gate_v3_221.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_229();
    l0 = self.box_Gate_v3_229;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1715065541", "1715065541", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_Gate_v3_229.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_132();
    l0 = self.box_PlayDialog_v6_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1769418015", "1769418015", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_PlayDialog_v6_132.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_169();
    l0 = self.box_PlayDialog_v6_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|310661685", "310661685", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_PlayDialog_v6_169.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_219();
    l0 = self.box_Gate_v3_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|790724509", "790724509", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_Gate_v3_219.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_98();
    l0 = self.box_Gate_v3_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|823648940", "823648940", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_Gate_v3_98.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1760745102", "1760745102", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_PlayDialog_v6_11.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_217();
    l0 = self.box_Gate_v3_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1877507200", "1877507200", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_Gate_v3_217.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_142();
    l0 = self.box_PlayDialog_v6_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|438378743", "438378743", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_PlayDialog_v6_142.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_103();
    l0 = self.box_PlayDialog_v6_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2059818631", "2059818631", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_PlayDialog_v6_103.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_215();
    l0 = self.box_Gate_v3_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1217036842", "1217036842", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_Gate_v3_215.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_105();
    l0 = self.box_PlayDialog_v6_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1178754070", "1178754070", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_PlayDialog_v6_105.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_225();
    l0 = self.box_Gate_v3_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1541876993", "1541876993", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_Gate_v3_225.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_227();
    l0 = self.box_Gate_v3_227;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2058576096", "2058576096", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_Gate_v3_227.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_223();
    l0 = self.box_Gate_v3_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|71822729", "71822729", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_Gate_v3_223.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_95();
    l0 = self.box_PlayDialog_v6_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|305778321", "305778321", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_PlayDialog_v6_95.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_153();
    l0 = self.box_PlayDialog_v6_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2079231388", "2079231388", "UNI33_010_B10_main", "box_Simple_Node_224.Out", "box_PlayDialog_v6_153.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_151_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1161053843", "1161053843", "UNI33_010_B10_main", "box_Simple_Node_151.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_245_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_239();
    l0 = self.box_HealthListener_v6_239;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1995907800", "1995907800", "UNI33_010_B10_main", "box_Simple_Node_245.Out", "box_HealthListener_v6_239.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_236();
    l0 = self.box_Gate_v3_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1346656349", "1346656349", "UNI33_010_B10_main", "box_Simple_Node_245.Out", "box_Gate_v3_236.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_244();
    l0 = self.box_Gate_v3_244;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|713981332", "713981332", "UNI33_010_B10_main", "box_Simple_Node_245.Out", "box_Gate_v3_244.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_144_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2002218673", "2002218673", "UNI33_010_B10_main", "box_Simple_Node_144.Out", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_174_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|805950045", "805950045", "UNI33_010_B10_main", "box_Simple_Node_174.Out", "box_MultipleOR_172.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_58_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_230();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|826143002", "826143002", "UNI33_010_B10_main", "box_Simple_Node_58.Out", "box_OutputOrder_v2_230.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_199_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2049242219", "2049242219", "UNI33_010_B10_main", "box_EndActivityObjective_v2_199.Out", "box_MultipleOR_197.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_229_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_229;
    l1 = self.box_OnceOnly_v3_228;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|131544380", "131544380", "UNI33_010_B10_main", "box_Gate_v3_229.Out", "box_OnceOnly_v3_228.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_179_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1081337087", "1081337087", "UNI33_010_B10_main", "box_OutputOrder_v2_179.Out", "box_MultipleOR_175.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_179_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1824459507", "1824459507", "UNI33_010_B10_main", "box_OutputOrder_v2_179.Out", "box_MultipleOR_180.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_179_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|663296655", "663296655", "UNI33_010_B10_main", "box_OutputOrder_v2_179.Out", "box_MultipleOR_181.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_179_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_174();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1165234314", "1165234314", "UNI33_010_B10_main", "box_OutputOrder_v2_179.Out", "box_Simple_Node_174.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_190_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_121();
    l0 = self.box_MultipleOR_190;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|778053078", "778053078", "UNI33_010_B10_main", "box_MultipleOR_190.Out", "box_Compare_Integers_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_81_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_81_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_90();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|508328211", "508328211", "UNI33_010_B10_main", "box_GetPlayerGroup_v2_81.Out", "box_ActivityObjectiveMarkerModifier_v3_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_165_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_118();
    l0 = self.box_OnceOnly_v3_165;
    l1 = self.box_CharacterLoadedIdListener_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|249945329", "249945329", "UNI33_010_B10_main", "box_OnceOnly_v3_165.Out", "box_CharacterLoadedIdListener_118.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_196_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_BindMarkerOverHead_v2_200();
    l0 = self.box_OnceOnly_v3_196;
    l1 = self.box_BindMarkerOverHead_v2_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|437419379", "437419379", "UNI33_010_B10_main", "box_OnceOnly_v3_196.Out", "box_BindMarkerOverHead_v2_200.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_168_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|711155951", "711155951", "UNI33_010_B10_main", "box_OutputOrder_v2_168.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_168_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_176();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1106372915", "1106372915", "UNI33_010_B10_main", "box_OutputOrder_v2_168.Out", "box_SetBoolean_v2_176.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_28_Critical()
    self:OnExit_box_HealthListener_v6_28_Critical();
end;

function export:f_box_HealthListener_v6_28_Damaged()
    self:OnExit_box_HealthListener_v6_28_Damaged();
end;

function export:f_box_HealthListener_v6_28_Downed()
    self:OnExit_box_HealthListener_v6_28_Downed();
end;

function export:f_box_HealthListener_v6_28_Healed()
    self:OnExit_box_HealthListener_v6_28_Healed();
end;

function export:f_box_HealthListener_v6_28_Killed()
    local params, l0, l1;
    self:OnExit_box_HealthListener_v6_28_Killed();
    params = self:OnEnter_box_StateListener_v2_182();
    l0 = self.box_HealthListener_v6_28;
    l1 = self.box_StateListener_v2_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1707386468", "1707386468", "UNI33_010_B10_main", "box_HealthListener_v6_28.Killed", "box_StateListener_v2_182.Combat", l0:GetLuaBox(), l1:GetLuaBox());
    -- Combat
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_28_Revived()
    self:OnExit_box_HealthListener_v6_28_Revived();
end;

function export:f_box_Gate_v3_215_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_215;
    l1 = self.box_OnceOnly_v3_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1959291226", "1959291226", "UNI33_010_B10_main", "box_Gate_v3_215.Out", "box_OnceOnly_v3_214.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_FastTravelModifier_v2_71_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1100709628", "1100709628", "UNI33_010_B10_main", "box_FastTravelModifier_v2_71.Enabled", "box_ActivityRetry_19.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_171_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_227();
    l0 = self.box_Delay_v5_171;
    l1 = self.box_Gate_v3_227;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2075502213", "2075502213", "UNI33_010_B10_main", "box_Delay_v5_171.TimeElapsed", "box_Gate_v3_227.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_36_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_59();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|521863047", "521863047", "UNI33_010_B10_main", "box_Compare_Integers_36.A_le_B", "box_Simple_Node_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_14();
    l0 = self.box_Brick_Hostage_Setup_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|426181718", "426181718", "UNI33_010_B10_main", "box_OutputOrder_v2_39.Out", "box_Brick_Hostage_Setup_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_63();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|395222399", "395222399", "UNI33_010_B10_main", "box_OutputOrder_v2_39.Out", "box_Simple_Node_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1440180208", "1440180208", "UNI33_010_B10_main", "box_OutputOrder_v2_39.Out", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1072150173", "1072150173", "UNI33_010_B10_main", "box_OutputOrder_v2_39.Out", "box_Simple_Node_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_21_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_3();
    l0 = self.box_SpawnAI_21;
    l1 = self.box_EntityStatusListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|865614625", "865614625", "UNI33_010_B10_main", "box_SpawnAI_21.Spawned", "box_EntityStatusListener_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_223_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_223;
    l1 = self.box_OnceOnly_v3_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1940063760", "1940063760", "UNI33_010_B10_main", "box_Gate_v3_223.Out", "box_OnceOnly_v3_222.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_218_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_95();
    l0 = self.box_OnceOnly_v3_218;
    l1 = self.box_PlayDialog_v6_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|601481001", "601481001", "UNI33_010_B10_main", "box_OnceOnly_v3_218.Out", "box_PlayDialog_v6_95.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_162_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_89();
    l0 = self.box_MultipleAND_v2_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1541504118", "1541504118", "UNI33_010_B10_main", "box_OutputOrder_v2_162.Out", "box_MultipleAND_v2_89.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_162_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_166();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|767539830", "767539830", "UNI33_010_B10_main", "box_OutputOrder_v2_162.Out", "box_Simple_Node_166.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_143_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_116();
    l0 = self.box_ProximityTrigger_v2_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|943761035", "943761035", "UNI33_010_B10_main", "box_ActivityObjectiveMarkerModifier_v3_143.Enabled", "box_ProximityTrigger_v2_116.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_231_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1250409012", "1250409012", "UNI33_010_B10_main", "box_OutputOrder_v2_231.Out", "box_MultipleOR_233.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_231_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_240;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|708770060", "708770060", "UNI33_010_B10_main", "box_OutputOrder_v2_231.Out", "box_OnceOnly_v3_240.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Free_Hostages_v2_30_Fail()
    local params, l0, l1;
    self:OnExit_box_Brick_Free_Hostages_v2_30_Fail();
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = self.box_Brick_Free_Hostages_v2_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|606015231", "606015231", "UNI33_010_B10_main", "box_Brick_Free_Hostages_v2_30.Fail", "box_OutputOrder_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Free_Hostages_v2_30_Started()
    local params, l0, l1;
    self:OnExit_box_Brick_Free_Hostages_v2_30_Started();
    params = self:OnEnter_box_AddActivityObjective_v2_194();
    l0 = self.box_Brick_Free_Hostages_v2_30;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|419326418", "419326418", "UNI33_010_B10_main", "box_Brick_Free_Hostages_v2_30.Started", "box_AddActivityObjective_v2_194.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Free_Hostages_v2_30_Success()
    local params, l0, l1;
    self:OnExit_box_Brick_Free_Hostages_v2_30_Success();
    params = self:OnEnter_box_EndActivityObjective_v2_195();
    l0 = self.box_Brick_Free_Hostages_v2_30;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1023844592", "1023844592", "UNI33_010_B10_main", "box_Brick_Free_Hostages_v2_30.Success", "box_EndActivityObjective_v2_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_147_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_238();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1180555708", "1180555708", "UNI33_010_B10_main", "box_EndActivityObjective_v2_147.Out", "box_OutputOrder_v2_238.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_148_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_147();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|651544407", "651544407", "UNI33_010_B10_main", "box_ActivityObjectiveMarkerModifier_v3_148.Disabled", "box_EndActivityObjective_v2_147.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_177_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_124();
    l0 = self.box_RemoveEntity_v2_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1022546861", "1022546861", "UNI33_010_B10_main", "box_IsEntityLoaded_v3_177.True", "box_RemoveEntity_v2_124.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_170_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1604018571", "1604018571", "UNI33_010_B10_main", "box_OutputOrder_v2_170.Out", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_170_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_171();
    l0 = self.box_Delay_v5_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1219651126", "1219651126", "UNI33_010_B10_main", "box_OutputOrder_v2_170.Out", "box_Delay_v5_171.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_125();
    l0 = self.box_ExitZoneWarningListener_v3_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|499573102", "499573102", "UNI33_010_B10_main", "box_OutputOrder_v2_4.Out", "box_ExitZoneWarningListener_v3_125.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_72();
    l0 = self.box_Music_Quest_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|967648060", "967648060", "UNI33_010_B10_main", "box_OutputOrder_v2_4.Out", "box_Music_Quest_v2_72.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_71();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2033270762", "2033270762", "UNI33_010_B10_main", "box_OutputOrder_v2_4.Out", "box_FastTravelModifier_v2_71.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_172_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_162();
    l0 = self.box_MultipleOR_172;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1939887640", "1939887640", "UNI33_010_B10_main", "box_MultipleOR_172.Out", "box_OutputOrder_v2_162.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_182_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_187();
    l0 = self.box_StateListener_v2_182;
    l1 = self.box_Delay_v5_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2085668193", "2085668193", "UNI33_010_B10_main", "box_StateListener_v2_182.StateStart", "box_Delay_v5_187.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_241_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_241;
    l1 = self.box_MultipleOR_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1258601214", "1258601214", "UNI33_010_B10_main", "box_OnceOnly_v3_241.Out", "box_MultipleOR_233.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_183_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_215();
    l0 = self.box_Delay_v5_183;
    l1 = self.box_Gate_v3_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1642315747", "1642315747", "UNI33_010_B10_main", "box_Delay_v5_183.TimeElapsed", "box_Gate_v3_215.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_238_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2119104693", "2119104693", "UNI33_010_B10_main", "box_OutputOrder_v2_238.Out", "box_MultipleOR_172.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_238_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_245();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|695685746", "695685746", "UNI33_010_B10_main", "box_OutputOrder_v2_238.Out", "box_Simple_Node_245.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_203_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_204();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|635905129", "635905129", "UNI33_010_B10_main", "box_AddActivityObjective_v2_203.Out", "box_ActivityObjectiveMarkerModifier_v3_204.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_45_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_202();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2115853994", "2115853994", "UNI33_010_B10_main", "box_ActivityObjectiveMarkerModifier_v3_45.Disabled", "box_GetHealthState_202.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_235_Down()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_242();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|697384256", "697384256", "UNI33_010_B10_main", "box_GetHealthState_235.Down", "box_OutputOrder_v2_242.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_235_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_232;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1296131486", "1296131486", "UNI33_010_B10_main", "box_GetHealthState_235.Healthy", "box_MultipleOR_232.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_97_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_105();
    l0 = self.box_OnceOnly_v3_97;
    l1 = self.box_PlayDialog_v6_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1767034246", "1767034246", "UNI33_010_B10_main", "box_OnceOnly_v3_97.Out", "box_PlayDialog_v6_105.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_11_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_11;
    l1 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|373147855", "373147855", "UNI33_010_B10_main", "box_PlayDialog_v6_11.Finished", "box_MultipleOR_131.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_11_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_11;
    l1 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|896307828", "896307828", "UNI33_010_B10_main", "box_PlayDialog_v6_11.FinishedInterrupted", "box_MultipleOR_131.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjective_v2_234_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_232;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|415521026", "415521026", "UNI33_010_B10_main", "box_AddActivityObjective_v2_234.Out", "box_MultipleOR_232.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_201_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_201;
    l1 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|448950213", "448950213", "UNI33_010_B10_main", "box_MultipleOR_201.Out", "box_MultipleOR_197.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_230_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_145();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|848964520", "848964520", "UNI33_010_B10_main", "box_OutputOrder_v2_230.Out", "box_Simple_Node_145.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_230_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_191();
    l0 = self.box_GroupSizeListener_v5_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1730006340", "1730006340", "UNI33_010_B10_main", "box_OutputOrder_v2_230.Out", "box_GroupSizeListener_v5_191.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PawnWeaponFiredListener_v2_206_OnFired()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_141();
    l0 = self.box_PawnWeaponFiredListener_v2_206;
    l1 = self.box_HealthListener_v6_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1408353448", "1408353448", "UNI33_010_B10_main", "box_PawnWeaponFiredListener_v2_206.OnFired", "box_HealthListener_v6_141.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_242_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_241;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1901480079", "1901480079", "UNI33_010_B10_main", "box_OutputOrder_v2_242.Out", "box_OnceOnly_v3_241.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_242_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_243;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2061129516", "2061129516", "UNI33_010_B10_main", "box_OutputOrder_v2_242.Out", "box_OnceOnly_v3_243.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TaggingModifier_v3_207_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_69();
    l0 = self.box_DisplayCustomUIMsg_v5_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1237386316", "1237386316", "UNI33_010_B10_main", "box_TaggingModifier_v3_207.Disabled", "box_DisplayCustomUIMsg_v5_69.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_135_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_134();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1837293449", "1837293449", "UNI33_010_B10_main", "box_Compare_Integers_135.A_lt_B", "box_SetActivityFact_134.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_109_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_100();
    l0 = self.box_GroupSizeListener_v5_109;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1636217465", "1636217465", "UNI33_010_B10_main", "box_GroupSizeListener_v5_109.MemberRemoved", "box_Compare_Integers_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_116_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_157();
    l0 = self.box_ProximityTrigger_v2_116;
    l1 = self.box_ProximityTrigger_v2_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|121081260", "121081260", "UNI33_010_B10_main", "box_ProximityTrigger_v2_116.OnEmpty", "box_ProximityTrigger_v2_157.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_116_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_157();
    l0 = self.box_ProximityTrigger_v2_116;
    l1 = self.box_ProximityTrigger_v2_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|955427585", "955427585", "UNI33_010_B10_main", "box_ProximityTrigger_v2_116.OnOccupied", "box_ProximityTrigger_v2_157.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_149_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_149;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|517634932", "517634932", "UNI33_010_B10_main", "box_ProximityRadiusListener_v3_149.SomeoneNear", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_175_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_144();
    l0 = self.box_MultipleOR_175;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1481993890", "1481993890", "UNI33_010_B10_main", "box_MultipleOR_175.Out", "box_Simple_Node_144.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_17_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_Brick_Hostage_Setup_v2_17;
    l1 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|739641534", "739641534", "UNI33_010_B10_main", "box_Brick_Hostage_Setup_v2_17.HostageReleased", "box_Delay_v5_73.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_FastTravelModifier_v2_8();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|214123857", "214123857", "UNI33_010_B10_main", "box_ActivityInitialized_2.Out", "box_FastTravelModifier_v2_8.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_225_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_225;
    l1 = self.box_OnceOnly_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|256872406", "256872406", "UNI33_010_B10_main", "box_Gate_v3_225.Out", "box_OnceOnly_v3_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_154_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_164();
    l0 = self.box_EntityStatusListener_154;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1140010440", "1140010440", "UNI33_010_B10_main", "box_EntityStatusListener_154.Loaded", "box_SetContextualStrategy_164.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_161_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_163();
    l0 = self.box_OnceOnly_v3_161;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1167122585", "1167122585", "UNI33_010_B10_main", "box_OnceOnly_v3_161.Out", "box_OutputOrder_v2_163.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_32_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_110();
    l0 = self.box_Brick_Hostage_Setup_v2_32;
    l1 = self.box_Delay_v5_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|920831033", "920831033", "UNI33_010_B10_main", "box_Brick_Hostage_Setup_v2_32.HostageReleased", "box_Delay_v5_110.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_32_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_17();
    l0 = self.box_Brick_Hostage_Setup_v2_32;
    l1 = self.box_Brick_Hostage_Setup_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|25712440", "25712440", "UNI33_010_B10_main", "box_Brick_Hostage_Setup_v2_32.NextHostage", "box_Brick_Hostage_Setup_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_210_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_207();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1000159167", "1000159167", "UNI33_010_B10_main", "box_OutputOrder_v2_210.Out", "box_TaggingModifier_v3_207.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_210_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_235();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|32057795", "32057795", "UNI33_010_B10_main", "box_OutputOrder_v2_210.Out", "box_GetHealthState_235.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_243_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_224();
    l0 = self.box_OnceOnly_v3_243;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1487031206", "1487031206", "UNI33_010_B10_main", "box_OnceOnly_v3_243.Out", "box_Simple_Node_224.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_240_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_224();
    l0 = self.box_OnceOnly_v3_240;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1155742730", "1155742730", "UNI33_010_B10_main", "box_OnceOnly_v3_240.Out", "box_Simple_Node_224.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_195_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_61();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1263878061", "1263878061", "UNI33_010_B10_main", "box_EndActivityObjective_v2_195.Out", "box_Simple_Node_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_14_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_117();
    l0 = self.box_Brick_Hostage_Setup_v2_14;
    l1 = self.box_Delay_v5_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1853174479", "1853174479", "UNI33_010_B10_main", "box_Brick_Hostage_Setup_v2_14.HostageReleased", "box_Delay_v5_117.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_14_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_32();
    l0 = self.box_Brick_Hostage_Setup_v2_14;
    l1 = self.box_Brick_Hostage_Setup_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1240440173", "1240440173", "UNI33_010_B10_main", "box_Brick_Hostage_Setup_v2_14.NextHostage", "box_Brick_Hostage_Setup_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_222_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_142();
    l0 = self.box_OnceOnly_v3_222;
    l1 = self.box_PlayDialog_v6_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1700030291", "1700030291", "UNI33_010_B10_main", "box_OnceOnly_v3_222.Out", "box_PlayDialog_v6_142.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|388738249", "388738249", "UNI33_010_B10_main", "box_OutputOrder_v2_15.Out", "box_AddActivityObjective_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1325069042", "1325069042", "UNI33_010_B10_main", "box_OutputOrder_v2_15.Out", "box_MultipleOR_175.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|662181050", "662181050", "UNI33_010_B10_main", "box_OutputOrder_v2_15.Out", "box_MultipleOR_180.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_15_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_150();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|871979946", "871979946", "UNI33_010_B10_main", "box_OutputOrder_v2_15.Out", "box_Simple_Node_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|7491819", "7491819", "UNI33_010_B10_main", "box_OutputOrder_v2_15.Out", "box_MultipleOR_181.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AddActivityObjective_v2_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_143();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1297813020", "1297813020", "UNI33_010_B10_main", "box_AddActivityObjective_v2_33.Out", "box_ActivityObjectiveMarkerModifier_v3_143.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_191_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_191;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|966537974", "966537974", "UNI33_010_B10_main", "box_GroupSizeListener_v5_191.Enabled", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_191_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_191;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1893857418", "1893857418", "UNI33_010_B10_main", "box_GroupSizeListener_v5_191.MemberAdded", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_191_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_191;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1977890361", "1977890361", "UNI33_010_B10_main", "box_GroupSizeListener_v5_191.MemberRemoved", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_129_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_136();
    l0 = self.box_Delay_v5_129;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1764537505", "1764537505", "UNI33_010_B10_main", "box_Delay_v5_129.TimeElapsed", "box_OutputOrder_v2_136.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_244_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_237();
    l0 = self.box_Gate_v3_244;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|941949441", "941949441", "UNI33_010_B10_main", "box_Gate_v3_244.Out", "box_EndActivityObjective_v2_237.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_187_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_225();
    l0 = self.box_Delay_v5_187;
    l1 = self.box_Gate_v3_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1570009728", "1570009728", "UNI33_010_B10_main", "box_Delay_v5_187.TimeElapsed", "box_Gate_v3_225.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_115();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|66306739", "66306739", "UNI33_010_B10_main", "box_OutputOrder_v2_76.Out", "box_SoundPointModifier_115.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_45();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1434836463", "1434836463", "UNI33_010_B10_main", "box_OutputOrder_v2_76.Out", "box_ActivityObjectiveMarkerModifier_v3_45.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_157_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_157;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1939207230", "1939207230", "UNI33_010_B10_main", "box_ProximityTrigger_v2_157.Enter", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_157_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_157;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1383474910", "1383474910", "UNI33_010_B10_main", "box_ProximityTrigger_v2_157.OnOccupied", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_227_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_227;
    l1 = self.box_OnceOnly_v3_226;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1821347110", "1821347110", "UNI33_010_B10_main", "box_Gate_v3_227.Out", "box_OnceOnly_v3_226.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CharacterLoadedIdListener_25_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_25_LoadedIdReceived();
    params = self:OnEnter_box_GetPlayerGroup_v2_91();
    l0 = self.box_CharacterLoadedIdListener_25;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|6857139", "6857139", "UNI33_010_B10_main", "box_CharacterLoadedIdListener_25.LoadedIdReceived", "box_GetPlayerGroup_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_152_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_148();
    l0 = self.box_OnceOnly_v3_152;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1860385369", "1860385369", "UNI33_010_B10_main", "box_OnceOnly_v3_152.Out", "box_ActivityObjectiveMarkerModifier_v3_148.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_180_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = self.box_MultipleOR_180;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1602387033", "1602387033", "UNI33_010_B10_main", "box_MultipleOR_180.Out", "box_Simple_Node_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_121_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1579472597", "1579472597", "UNI33_010_B10_main", "box_Compare_Integers_121.A_le_B", "box_SpawnAI_21.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_228_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_127();
    l0 = self.box_OnceOnly_v3_228;
    l1 = self.box_PlayDialog_v6_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|109999055", "109999055", "UNI33_010_B10_main", "box_OnceOnly_v3_228.Out", "box_PlayDialog_v6_127.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Brick_Secure_Area_v5_27_Started()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_29();
    l0 = self.box_Brick_Secure_Area_v5_27;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1523830506", "1523830506", "UNI33_010_B10_main", "box_Brick_Secure_Area_v5_27.Started", "box_AddActivityObjective_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Secure_Area_v5_27_Success()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_26();
    l0 = self.box_Brick_Secure_Area_v5_27;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1636341673", "1636341673", "UNI33_010_B10_main", "box_Brick_Secure_Area_v5_27.Success", "box_EndActivityObjective_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_38_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_GroupSizeListener_v5_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|904148058", "904148058", "UNI33_010_B10_main", "box_GroupSizeListener_v5_38.MemberRemoved", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_198_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_205();
    l0 = self.box_HealthListener_v6_198;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|192486825", "192486825", "UNI33_010_B10_main", "box_HealthListener_v6_198.Revived", "box_ActivityObjectiveMarkerModifier_v3_205.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_10_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_10;
    l1 = self.box_OnceOnly_v3_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1551559076", "1551559076", "UNI33_010_B10_main", "box_MultipleOR_10.Out", "box_OnceOnly_v3_152.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_181_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_48();
    l0 = self.box_MultipleOR_181;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2040830674", "2040830674", "UNI33_010_B10_main", "box_MultipleOR_181.Out", "box_Simple_Node_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_226_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_169();
    l0 = self.box_OnceOnly_v3_226;
    l1 = self.box_PlayDialog_v6_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|709603176", "709603176", "UNI33_010_B10_main", "box_OnceOnly_v3_226.Out", "box_PlayDialog_v6_169.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_99_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_53();
    l0 = self.box_MultipleAND_v2_99;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|943820413", "943820413", "UNI33_010_B10_main", "box_MultipleAND_v2_99.Out", "box_Simple_Node_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_220_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_103();
    l0 = self.box_OnceOnly_v3_220;
    l1 = self.box_PlayDialog_v6_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|574699249", "574699249", "UNI33_010_B10_main", "box_OnceOnly_v3_220.Out", "box_PlayDialog_v6_103.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_70_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_153();
    l0 = self.box_OnceOnly_v3_70;
    l1 = self.box_PlayDialog_v6_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|653697391", "653697391", "UNI33_010_B10_main", "box_OnceOnly_v3_70.Out", "box_PlayDialog_v6_153.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_233_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_236();
    l0 = self.box_MultipleOR_233;
    l1 = self.box_Gate_v3_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1813866937", "1813866937", "UNI33_010_B10_main", "box_MultipleOR_233.Out", "box_Gate_v3_236.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_59();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2004994036", "2004994036", "UNI33_010_B10_main", "box_EndActivityObjective_v2_26.Out", "box_Simple_Node_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_202_Critical()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_201;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|176447231", "176447231", "UNI33_010_B10_main", "box_GetHealthState_202.Critical", "box_MultipleOR_201.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetHealthState_202_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|79946836", "79946836", "UNI33_010_B10_main", "box_GetHealthState_202.Down", "box_OnceOnly_v3_196.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetHealthState_202_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_201;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|45045094", "45045094", "UNI33_010_B10_main", "box_GetHealthState_202.Healthy", "box_MultipleOR_201.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StateListener_v2_35_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_28();
    l0 = self.box_StateListener_v2_35;
    l1 = self.box_HealthListener_v6_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1857614380", "1857614380", "UNI33_010_B10_main", "box_StateListener_v2_35.Enabled", "box_HealthListener_v6_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StateListener_v2_35_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = self.box_StateListener_v2_35;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|375266785", "375266785", "UNI33_010_B10_main", "box_StateListener_v2_35.StateStart", "box_Simple_Node_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_103_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_103;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|535957797", "535957797", "UNI33_010_B10_main", "box_PlayDialog_v6_103.Finished", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_103_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_103;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1264127191", "1264127191", "UNI33_010_B10_main", "box_PlayDialog_v6_103.FinishedInterrupted", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_131_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_130();
    l0 = self.box_MultipleOR_131;
    l1 = self.box_Delay_v5_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|998823487", "998823487", "UNI33_010_B10_main", "box_MultipleOR_131.Out", "box_Delay_v5_130.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_188_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_223();
    l0 = self.box_Delay_v5_188;
    l1 = self.box_Gate_v3_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|147917753", "147917753", "UNI33_010_B10_main", "box_Delay_v5_188.TimeElapsed", "box_Gate_v3_223.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IsEntityInGroup_104_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityType_102();
    l0 = Boxes[GetPathID("Domino/System/GetEntityType.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|37060811", "37060811", "UNI33_010_B10_main", "box_IsEntityInGroup_104.False", "box_GetEntityType_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityInGroup_104_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_98();
    l0 = self.box_Gate_v3_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1591877427", "1591877427", "UNI33_010_B10_main", "box_IsEntityInGroup_104.True", "box_Gate_v3_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_ExitZoneWarningListener_v3_125_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_ExitZoneWarningListener_v3_125;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2061238294", "2061238294", "UNI33_010_B10_main", "box_ExitZoneWarningListener_v3_125.FailingZoneEntered", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_89_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Free_Hostages_v2_30();
    l0 = self.box_MultipleAND_v2_89;
    l1 = self.box_Brick_Free_Hostages_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|990527850", "990527850", "UNI33_010_B10_main", "box_MultipleAND_v2_89.Out", "box_Brick_Free_Hostages_v2_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_96_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_221();
    l0 = self.box_Delay_v5_96;
    l1 = self.box_Gate_v3_221;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1317921698", "1317921698", "UNI33_010_B10_main", "box_Delay_v5_96.TimeElapsed", "box_Gate_v3_221.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_126_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_86();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1260139919", "1260139919", "UNI33_010_B10_main", "box_OutputOrder_v2_126.Out", "box_OutputOrder_v2_86.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_126_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_75();
    l0 = self.box_Music_Quest_v2_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|525066656", "525066656", "UNI33_010_B10_main", "box_OutputOrder_v2_126.Out", "box_Music_Quest_v2_75.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_126_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_125();
    l0 = self.box_ExitZoneWarningListener_v3_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|553430388", "553430388", "UNI33_010_B10_main", "box_OutputOrder_v2_126.Out", "box_ExitZoneWarningListener_v3_125.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_119();
    l0 = self.box_EntityStatusListener_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1475083130", "1475083130", "UNI33_010_B10_main", "box_OutputOrder_v2_18.Out", "box_EntityStatusListener_119.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_122();
    l0 = self.box_EntityStatusListener_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2033941321", "2033941321", "UNI33_010_B10_main", "box_OutputOrder_v2_18.Out", "box_EntityStatusListener_122.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_123();
    l0 = self.box_EntityStatusListener_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1157049398", "1157049398", "UNI33_010_B10_main", "box_OutputOrder_v2_18.Out", "box_EntityStatusListener_123.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_167_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_44();
    l0 = self.box_RemoveEntity_v2_167;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1134693633", "1134693633", "UNI33_010_B10_main", "box_RemoveEntity_v2_167.Out", "box_ActivityEnd_44.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FastTravelModifier_v2_8_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_25();
    l0 = self.box_CharacterLoadedIdListener_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|530041083", "530041083", "UNI33_010_B10_main", "box_FastTravelModifier_v2_8.Disabled", "box_CharacterLoadedIdListener_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_16();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|63717334", "63717334", "UNI33_010_B10_main", "box_OutputOrder_v2_74.Out", "box_ActivityRetry_16.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_77();
    l0 = self.box_Music_Quest_v2_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|289592394", "289592394", "UNI33_010_B10_main", "box_OutputOrder_v2_74.Out", "box_Music_Quest_v2_77.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OnceOnly_v3_47_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_46();
    l0 = self.box_OnceOnly_v3_47;
    l1 = self.box_MultipleAND_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|215463409", "215463409", "UNI33_010_B10_main", "box_OnceOnly_v3_47.Out", "box_MultipleAND_v2_46.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_GetEntityType_102_Player()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetEntityType.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_184();
    l0 = self.box_Delay_v5_184;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1182586253", "1182586253", "UNI33_010_B10_main", "box_GetEntityType_102.Player", "box_Delay_v5_184.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_90_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_22();
    l0 = self.box_ProximityRadiusListener_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|91270547", "91270547", "UNI33_010_B10_main", "box_ActivityObjectiveMarkerModifier_v3_90.Enabled", "box_ProximityRadiusListener_v3_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_85_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_85_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_99();
    l0 = self.box_MultipleAND_v2_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1216183363", "1216183363", "UNI33_010_B10_main", "box_SetEntity_v2_85.Out", "box_MultipleAND_v2_99.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_158_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_MultipleOR_158;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1937202463", "1937202463", "UNI33_010_B10_main", "box_MultipleOR_158.Out", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_232_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_239();
    l0 = self.box_MultipleOR_232;
    l1 = self.box_HealthListener_v6_239;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|849028249", "849028249", "UNI33_010_B10_main", "box_MultipleOR_232.Out", "box_HealthListener_v6_239.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_204_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_198();
    l0 = self.box_HealthListener_v6_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1920678719", "1920678719", "UNI33_010_B10_main", "box_ActivityObjectiveMarkerModifier_v3_204.Enabled", "box_HealthListener_v6_198.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|862704231", "862704231", "UNI33_010_B10_main", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_168();
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|812488251", "812488251", "UNI33_010_B10_main", "box_ActivityAcknowledgeGate_7.Reloaded", "box_OutputOrder_v2_168.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_151();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|625785216", "625785216", "UNI33_010_B10_main", "box_OutputOrder_v2_163.Out", "box_Simple_Node_151.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_166();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1684509169", "1684509169", "UNI33_010_B10_main", "box_OutputOrder_v2_163.Out", "box_Simple_Node_166.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_178_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_170();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|863867518", "863867518", "UNI33_010_B10_main", "box_Compare_Boolean_178.A_is_False", "box_OutputOrder_v2_170.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_178_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_179();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1808496383", "1808496383", "UNI33_010_B10_main", "box_Compare_Boolean_178.A_is_True", "box_OutputOrder_v2_179.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_177();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1461917444", "1461917444", "UNI33_010_B10_main", "box_OutputOrder_v2_86.Out", "box_IsEntityLoaded_v3_177.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_51();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2049500486", "2049500486", "UNI33_010_B10_main", "box_OutputOrder_v2_86.Out", "box_Simple_Node_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_176_Out()
    self:OnExit_box_SetBoolean_v2_176_Out();
end;

function export:f_box_OnceOnly_v3_214_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_OnceOnly_v3_214;
    l1 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|96235889", "96235889", "UNI33_010_B10_main", "box_OnceOnly_v3_214.Out", "box_PlayDialog_v6_11.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_219_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_219;
    l1 = self.box_OnceOnly_v3_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1645430132", "1645430132", "UNI33_010_B10_main", "box_Gate_v3_219.Out", "box_OnceOnly_v3_218.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_3_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_93();
    l0 = self.box_EntityStatusListener_3;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2052906621", "2052906621", "UNI33_010_B10_main", "box_EntityStatusListener_3.Loaded", "box_UseContextualActionModifier_v3_93.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_217_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_217;
    l1 = self.box_OnceOnly_v3_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|745950693", "745950693", "UNI33_010_B10_main", "box_Gate_v3_217.Out", "box_OnceOnly_v3_216.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_98_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_98;
    l1 = self.box_OnceOnly_v3_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|412409579", "412409579", "UNI33_010_B10_main", "box_Gate_v3_98.Out", "box_OnceOnly_v3_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_221_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_221;
    l1 = self.box_OnceOnly_v3_220;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1495195023", "1495195023", "UNI33_010_B10_main", "box_Gate_v3_221.Out", "box_OnceOnly_v3_220.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_136_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_135();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|795193561", "795193561", "UNI33_010_B10_main", "box_OutputOrder_v2_136.Out", "box_Compare_Integers_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_136_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_155();
    l0 = self.box_RemoveEntity_v2_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|813770183", "813770183", "UNI33_010_B10_main", "box_OutputOrder_v2_136.Out", "box_RemoveEntity_v2_155.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_197_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_129();
    l0 = self.box_MultipleOR_197;
    l1 = self.box_Delay_v5_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|824889815", "824889815", "UNI33_010_B10_main", "box_MultipleOR_197.Out", "box_Delay_v5_129.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|85833484", "85833484", "UNI33_010_B10_main", "box_OutputOrder_v2_42.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_229();
    l0 = self.box_Gate_v3_229;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1236922876", "1236922876", "UNI33_010_B10_main", "box_OutputOrder_v2_42.Out", "box_Gate_v3_229.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_37_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_37_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_99();
    l0 = self.box_MultipleAND_v2_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1173637765", "1173637765", "UNI33_010_B10_main", "box_SetEntity_v2_37.Out", "box_MultipleAND_v2_99.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_HealthListener_v6_94_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityInGroup_104();
    l0 = self.box_HealthListener_v6_94;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1158279589", "1158279589", "UNI33_010_B10_main", "box_HealthListener_v6_94.Killed", "box_IsEntityInGroup_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_91_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_91_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_210();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|68158456", "68158456", "UNI33_010_B10_main", "box_GetPlayerGroup_v2_91.Out", "box_OutputOrder_v2_210.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_73_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_138();
    l0 = self.box_Delay_v5_73;
    l1 = self.box_PlayDialog_v6_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|587824445", "587824445", "UNI33_010_B10_main", "box_Delay_v5_73.TimeElapsed", "box_PlayDialog_v6_138.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_108_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_96();
    l0 = self.box_MultipleOR_108;
    l1 = self.box_Delay_v5_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1689681306", "1689681306", "UNI33_010_B10_main", "box_MultipleOR_108.Out", "box_Delay_v5_96.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_128();
    l0 = self.box_LookAtTrigger_v2_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|512921138", "512921138", "UNI33_010_B10_main", "box_OutputOrder_v2_12.Out", "box_LookAtTrigger_v2_128.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_94();
    l0 = self.box_HealthListener_v6_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|219439524", "219439524", "UNI33_010_B10_main", "box_OutputOrder_v2_12.Out", "box_HealthListener_v6_94.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_109();
    l0 = self.box_GroupSizeListener_v5_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1420180171", "1420180171", "UNI33_010_B10_main", "box_OutputOrder_v2_12.Out", "box_GroupSizeListener_v5_109.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnWeaponFiredListener_v2_206();
    l0 = self.box_PawnWeaponFiredListener_v2_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|353397210", "353397210", "UNI33_010_B10_main", "box_OutputOrder_v2_12.Out", "box_PawnWeaponFiredListener_v2_206.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_BindMarkerOverHead_v2_200_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_203();
    l0 = self.box_BindMarkerOverHead_v2_200;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1404376925", "1404376925", "UNI33_010_B10_main", "box_BindMarkerOverHead_v2_200.Out", "box_AddActivityObjective_v2_203.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_119_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_82();
    l0 = self.box_EntityStatusListener_119;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1168144976", "1168144976", "UNI33_010_B10_main", "box_EntityStatusListener_119.Loaded", "box_SetEntity_v2_82.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_194_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|788845924", "788845924", "UNI33_010_B10_main", "box_AddActivityObjective_v2_194.Out", "box_OutputOrder_v2_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_117_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_137();
    l0 = self.box_Delay_v5_117;
    l1 = self.box_PlayDialog_v6_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|293971008", "293971008", "UNI33_010_B10_main", "box_Delay_v5_117.TimeElapsed", "box_PlayDialog_v6_137.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_122_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_85();
    l0 = self.box_EntityStatusListener_122;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|332996862", "332996862", "UNI33_010_B10_main", "box_EntityStatusListener_122.Loaded", "box_SetEntity_v2_85.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_159_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_156();
    l0 = self.box_PlayerFullyDetected_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1850624137", "1850624137", "UNI33_010_B10_main", "box_OutputOrder_v2_159.Out", "box_PlayerFullyDetected_156.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_159_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_149();
    l0 = self.box_ProximityRadiusListener_v3_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1621660881", "1621660881", "UNI33_010_B10_main", "box_OutputOrder_v2_159.Out", "box_ProximityRadiusListener_v3_149.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_205_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_199();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1339625192", "1339625192", "UNI33_010_B10_main", "box_ActivityObjectiveMarkerModifier_v3_205.Disabled", "box_EndActivityObjective_v2_199.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DisplayCustomUIMsg_v5_69_OnHide()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_126();
    l0 = self.box_DisplayCustomUIMsg_v5_69;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2085328760", "2085328760", "UNI33_010_B10_main", "box_DisplayCustomUIMsg_v5_69.OnHide", "box_OutputOrder_v2_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_239_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_231();
    l0 = self.box_HealthListener_v6_239;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1161980954", "1161980954", "UNI33_010_B10_main", "box_HealthListener_v6_239.Downed", "box_OutputOrder_v2_231.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_239_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_244();
    l0 = self.box_HealthListener_v6_239;
    l1 = self.box_Gate_v3_244;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1815716180", "1815716180", "UNI33_010_B10_main", "box_HealthListener_v6_239.Revived", "box_Gate_v3_244.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_216_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_132();
    l0 = self.box_OnceOnly_v3_216;
    l1 = self.box_PlayDialog_v6_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|133272534", "133272534", "UNI33_010_B10_main", "box_OnceOnly_v3_216.Out", "box_PlayDialog_v6_132.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_128_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_183();
    l0 = self.box_LookAtTrigger_v2_128;
    l1 = self.box_Delay_v5_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1693400692", "1693400692", "UNI33_010_B10_main", "box_LookAtTrigger_v2_128.EnterFOV", "box_Delay_v5_183.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_110_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_139();
    l0 = self.box_Delay_v5_110;
    l1 = self.box_PlayDialog_v6_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1682201097", "1682201097", "UNI33_010_B10_main", "box_Delay_v5_110.TimeElapsed", "box_PlayDialog_v6_139.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_160_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_160;
    l1 = self.box_OnceOnly_v3_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|736731458", "736731458", "UNI33_010_B10_main", "box_MultipleOR_160.Out", "box_OnceOnly_v3_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_184_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_219();
    l0 = self.box_Delay_v5_184;
    l1 = self.box_Gate_v3_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|725992611", "725992611", "UNI33_010_B10_main", "box_Delay_v5_184.TimeElapsed", "box_Gate_v3_219.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_100_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1842645512", "1842645512", "UNI33_010_B10_main", "box_Compare_Integers_100.A_eq_B", "box_MultipleOR_108.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_123_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_37();
    l0 = self.box_EntityStatusListener_123;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2080213502", "2080213502", "UNI33_010_B10_main", "box_EntityStatusListener_123.Loaded", "box_SetEntity_v2_37.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = self.box_MultipleAND_v2_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1230014891", "1230014891", "UNI33_010_B10_main", "box_MultipleAND_v2_46.Out", "box_OutputOrder_v2_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_141_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_188();
    l0 = self.box_HealthListener_v6_141;
    l1 = self.box_Delay_v5_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|610159229", "610159229", "UNI33_010_B10_main", "box_HealthListener_v6_141.Killed", "box_Delay_v5_188.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_130_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_217();
    l0 = self.box_Delay_v5_130;
    l1 = self.box_Gate_v3_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1723964921", "1723964921", "UNI33_010_B10_main", "box_Delay_v5_130.TimeElapsed", "box_Gate_v3_217.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_236_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_234();
    l0 = self.box_Gate_v3_236;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1359256235", "1359256235", "UNI33_010_B10_main", "box_Gate_v3_236.Out", "box_AddActivityObjective_v2_234.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|768468492", "768468492", "UNI33_010_B10_main", "box_OutputOrder_v2_13.Out", "box_Print_v2_9.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_36();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|299867709", "299867709", "UNI33_010_B10_main", "box_OutputOrder_v2_13.Out", "box_Compare_Integers_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1552343112", "1552343112", "UNI33_010_B10_main", "box_MultipleOR_6.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_RemoveEntity_v2_155_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_167();
    l0 = self.box_RemoveEntity_v2_155;
    l1 = self.box_RemoveEntity_v2_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1743206133", "1743206133", "UNI33_010_B10_main", "box_RemoveEntity_v2_155.Out", "box_RemoveEntity_v2_167.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlayerFullyDetected_156_Detected()
    local l0, l1;
    l0 = self.box_PlayerFullyDetected_156;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1075072207", "1075072207", "UNI33_010_B10_main", "box_PlayerFullyDetected_156.Detected", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CharacterLoadedIdListener_118_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_118_LoadedIdReceived();
    params = self:OnEnter_box_EntityStatusListener_154();
    l0 = self.box_CharacterLoadedIdListener_118;
    l1 = self.box_EntityStatusListener_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|498127984", "498127984", "UNI33_010_B10_main", "box_CharacterLoadedIdListener_118.LoadedIdReceived", "box_EntityStatusListener_154.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_82_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_82_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_99();
    l0 = self.box_MultipleAND_v2_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|720085316", "720085316", "UNI33_010_B10_main", "box_SetEntity_v2_82.Out", "box_MultipleAND_v2_99.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_ProximityRadiusListener_v3_22_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_20();
    l0 = self.box_ProximityRadiusListener_v3_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1146487418", "1146487418", "UNI33_010_B10_main", "box_ProximityRadiusListener_v3_22.AllFar", "box_ActivityObjectiveMarkerModifier_v3_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_22_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_92();
    l0 = self.box_ProximityRadiusListener_v3_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1603695408", "1603695408", "UNI33_010_B10_main", "box_ProximityRadiusListener_v3_22.SomeoneNear", "box_ActivityObjectiveMarkerModifier_v3_92.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@AI_manager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_51_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@all_hostages_loaded");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_53_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@Area_Secure");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_59_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@AssignJessCompanion");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_166_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@Camp_Distance");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_64_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@Combat_Listener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_63_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@combat_started");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_57_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@DropBody");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@EnterCampStealthListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_150_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@GuardsSpawned");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@hostage_completed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@Jess_VO_Listeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_48_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@KillAllDialog");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_224_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@KillJessMeet");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_151_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@KillReviveJess");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_245_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@LoadHostages");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_144_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@ReloadKillMeetJess");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_174_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|@Spawn_Remaining_Guards");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_58_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_169()
    local params;
    params = {
        -- Group,
        [0] = self.eJess_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3298499095",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|32887665");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI33_010_B00_FAILURE",
            id = "881079",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|34449738");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_199_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI33_010_B10D_ReviveJess",
            id = "847942",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_229()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|82124970");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2101208238218294422",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B10_SaveHostages",
            id = "550119",
        },
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_237()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|105389943");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI33_010_B10D_ReviveJess",
            id = "847942",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|123537405");
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
                [0] = self.f_box_OutputOrder_v2_179_Out_0,
                [1] = self.f_box_OutputOrder_v2_179_Out_1,
                [2] = self.f_box_OutputOrder_v2_179_Out_2,
                [3] = self.f_box_OutputOrder_v2_179_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_139()
    local params;
    params = {
        -- Group,
        [0] = self.Hostage_02,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3304190681",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|146110745");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_81_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|172512306");
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
                [0] = self.f_box_OutputOrder_v2_168_Out_0,
                [1] = self.f_box_OutputOrder_v2_168_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_28()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#0239438D",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_215()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|186781060");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_FastTravelModifier_v2_71_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_171()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|190533297");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_36_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_38;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|194297435");
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
                [2] = self.f_box_OutputOrder_v2_39_Out_2,
                [3] = self.f_box_OutputOrder_v2_39_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102252351363498060",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_127()
    local params;
    params = {
        -- Group,
        [0] = self.eJess_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "425971250",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_223()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|277805772");
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
                [0] = self.f_box_OutputOrder_v2_162_Out_0,
                [1] = self.f_box_OutputOrder_v2_162_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|279636963");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_143_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2104371495953265782",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B05_MeetJess",
            id = "727516",
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_105()
    local params;
    params = {
        -- Group,
        [0] = self.eJess_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2836532680",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|336778454");
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

function export:OnEnter_box_Brick_Free_Hostages_v2_30()
    local params;
    params = {
        -- bCompletePreviousObjectives,
        [0] = false,
        -- bMinimunHostagesCompletion,
        [1] = false,
        -- bShowObjective,
        [2] = true,
        -- Hostage_group,
        [3] = "#8F8C21EF",
        -- HostagesToSave,
        [4] = 1,
        -- Objective,
        [5] = {
            section = "Objectives",
            item = "UNI33_010_B10_SaveHostages",
            id = "550119",
        },
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_72()
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
        [6] = "217420303",
        -- StopEvent,
        [7] = "1290802226",
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

function export:OnEnter_box_EndActivityObjective_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|368441613");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_147_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI33_010_B05_MeetJess",
            id = "727516",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|374544693");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_148_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2104371495953265782",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B05_MeetJess",
            id = "727516",
        },
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|376480968");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_177_True,
    });
    params = {
        -- entityId,
        [0] = "2102252367381545114",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_124()
    local params;
    params = {
        -- Group,
        [0] = "2102252367381545114",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_77()
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
        [6] = "217420303",
        -- StopEvent,
        [7] = "1290802226",
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

function export:OnEnter_box_OutputOrder_v2_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|414334606");
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
                [0] = self.f_box_OutputOrder_v2_170_Out_0,
                [1] = self.f_box_OutputOrder_v2_170_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|429040285");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2103762601467994590",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|431788956");
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

function export:OnEnter_box_SoundPointModifier_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|460270962");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2103762601467994590",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_182()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#0239438D",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_183()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|510264691");
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
                [0] = self.f_box_OutputOrder_v2_238_Out_0,
                [1] = self.f_box_OutputOrder_v2_238_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|551484782");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_203_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI33_010_B10D_ReviveJess",
            id = "847942",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|557254970");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_45_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2101208238218294422",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B10_GOAL",
            id = "550122",
        },
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|559154022");
    l0:SetConnections({
        -- Down,
        [2] = self.f_box_GetHealthState_235_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_235_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.eJess_NPC,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|564341401");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_11()
    local params;
    params = {
        -- Group,
        [0] = self.eJess_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "294345712",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|578786076");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_234_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI33_010_B10D_ReviveJess",
            id = "847942",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|605043611");
    l0:SetConnections({
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI33_010_B10_ClearArea",
            id = "791673",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|617080237");
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

function export:OnEnter_box_PawnWeaponFiredListener_v2_206()
    local params;
    DrawTextToScreen("Comment: Jess Fires Bow", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PawnWeaponFiredListener_v2')-- Comment: Jess Fires Bow");
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [2] = self.eJess_NPC,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_242");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|644011968");
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
                [0] = self.f_box_OutputOrder_v2_242_Out_0,
                [1] = self.f_box_OutputOrder_v2_242_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|649176210");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TaggingModifier_v3_207_Disabled,
    });
    params = {
        -- Entity,
        [0] = self.eJess_NPC,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|658933429");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_135_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.Hostages_Saved,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_109()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#0239438D",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_116()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.eJess_NPC,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104371285214655591",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_68()
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
        [6] = "217420303",
        -- StopEvent,
        [7] = "1290802226",
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

function export:OnEnter_box_ProximityRadiusListener_v3_149()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.AllPlayer,
        -- id2,
        [3] = "2104272977852978747",
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_17()
    local params;
    params = {
        -- Hostage,
        [0] = self.Hostage_03,
        -- STP_Tied,
        [1] = "2102214554307011052",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_225()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_154()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101828209461994835",
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_32()
    local params;
    params = {
        -- Hostage,
        [0] = self.Hostage_02,
        -- STP_Tied,
        [1] = "2099987496266906227",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|791481590");
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
                [0] = self.f_box_OutputOrder_v2_210_Out_0,
                [1] = self.f_box_OutputOrder_v2_210_Out_1,
            },
            count = 2,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|828349198");
    l0:SetConnections({
    });
    l0 = self.box_GroupSizeListener_v5_38;
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = l0:GetDataOutValue(1),
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Enemy Remaining",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|831592610");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|834773170");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_195_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI33_010_B10_SaveHostages",
            id = "550119",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_14()
    local params;
    params = {
        -- Hostage,
        [0] = self.Hostage_01,
        -- STP_Tied,
        [1] = "2104444532606161514",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|877428201");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
                [3] = self.f_box_OutputOrder_v2_15_Out_3,
                [4] = self.f_box_OutputOrder_v2_15_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|885224189");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_33_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI33_010_B05_MeetJess",
            id = "727516",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_191()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#0239438D",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_129()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_244()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_187()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|958161972");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_157()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.AllPlayer,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104371285214655591",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_227()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015204711835729",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_75()
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
        [6] = "217420303",
        -- StopEvent,
        [7] = "1290802226",
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

function export:OnEnter_box_Compare_Integers_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1143811299");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_121_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_191;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_Brick_Secure_Area_v5_27()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bRequiresObjective,
        [1] = false,
        -- gEnemyGroup,
        [3] = "#0239438D",
        -- Objective,
        [4] = {
            section = "Objectives",
            item = "UNI33_010_B10_ClearArea",
            id = "791673",
        },
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_38()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#0239438D",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_198()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eJess_NPC,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_99()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1224819757");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_26_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI33_010_B10_ClearArea",
            id = "791673",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1252682992");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_GetHealthState_202_Critical,
        -- Down,
        [2] = self.f_box_GetHealthState_202_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_202_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.eJess_NPC,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_35()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#0239438D",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_103()
    local params;
    params = {
        -- Group,
        [0] = self.eJess_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "721953308",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_188()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1346620395");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityInGroup_104_False,
        -- True,
        [1] = self.f_box_IsEntityInGroup_104_True,
    });
    l0 = self.box_HealthListener_v6_94;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(4),
        -- Group,
        [1] = "#0239438D",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_125()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2104455859351371969",
        -- WarningZoneTrigger,
        [3] = "2104455850451058880",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_89()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_96()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 40,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1412390576");
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
                [0] = self.f_box_OutputOrder_v2_126_Out_0,
                [1] = self.f_box_OutputOrder_v2_126_Out_1,
                [2] = self.f_box_OutputOrder_v2_126_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1421968810");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1434703047");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "DeadHostage_B10",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_167()
    local params;
    params = {
        -- Group,
        [0] = "2103691644330075361",
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1450272934");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_8_Disabled,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1455122182");
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

function export:OnEnter_box_PlayDialog_v6_132()
    local params;
    params = {
        -- Group,
        [0] = self.eJess_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3038109464",
    };
    return params;
end;

function export:OnEnter_box_GetEntityType_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetEntityType.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityType_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1474067729");
    l0:SetConnections({
        -- Player,
        [4] = self.f_box_GetEntityType_102_Player,
    });
    l0 = self.box_HealthListener_v6_94;
    params = {
        -- EntityID,
        [0] = l0:GetDataOutValue(4),
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1496687126");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_90_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2101208238218294422",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B10_SaveHostages",
            id = "550119",
        },
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1516920700");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_85_Out,
    });
    params = {
        -- Entity,
        [0] = "2099974085367838146",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1542219037");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_204_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2105005328184647975",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B10D_ReviveJess",
            id = "847942",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1583584898");
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
                [0] = self.f_box_OutputOrder_v2_163_Out_0,
                [1] = self.f_box_OutputOrder_v2_163_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1591474654");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_178_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_178_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Reloaded,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1605907912");
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
                [0] = self.f_box_OutputOrder_v2_86_Out_0,
                [1] = self.f_box_OutputOrder_v2_86_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1656023667");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_176_Out,
    });
    params = {
        -- Bool,
        [0] = self.Reloaded,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_95()
    local params;
    params = {
        -- Group,
        [0] = self.eJess_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2091121326",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_219()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
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
        [2] = "2102252413202219206",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_217()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_98()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_221()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1752993243");
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
                [0] = self.f_box_OutputOrder_v2_136_Out_0,
                [1] = self.f_box_OutputOrder_v2_136_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1785482362");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102254114386755777",
        -- Entity,
        [1] = "2102252413202219206",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1788374161");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1797781477");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_37_Out,
    });
    params = {
        -- Entity,
        [0] = "2102518336786017243",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1810545009");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "E7_CultLocation_01_QUEST_B10_FAIL",
            id = "592364",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_94()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#8F8C21EF",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1815975405");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_91_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_73()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1850019978");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
                [3] = self.f_box_OutputOrder_v2_12_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BindMarkerOverHead_v2_200()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- eMobileMarker,
        [1] = "2105005328184647975",
        -- eNPC,
        [2] = self.eJess_NPC,
        -- fHeight,
        [3] = 0.45,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_142()
    local params;
    params = {
        -- Group,
        [0] = self.eJess_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1875102801",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_119()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102528319397353631",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1885556770");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_194_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI33_010_B10_SaveHostages",
            id = "550119",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1912358474");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101828209461994835",
        -- Group,
        [1] = self.eJess_NPC,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1917946731");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2101208238218294422",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B10_SaveHostages",
            id = "550119",
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_138()
    local params;
    params = {
        -- Group,
        [0] = self.Hostage_03,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "741893765",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_117()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_122()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099974085367838146",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1947748596");
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
                [0] = self.f_box_OutputOrder_v2_159_Out_0,
                [1] = self.f_box_OutputOrder_v2_159_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|1951625051");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_205_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2105005328184647975",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B10D_ReviveJess",
            id = "847942",
        },
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_69()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_FailWarning",
            id = "432251",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_239()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eJess_NPC,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_153()
    local params;
    params = {
        -- Group,
        [0] = self.eJess_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2773105991",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_128()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2103942730263631675",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_110()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_184()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2035158956");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_100_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_109;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_123()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102518336786017243",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_46()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_141()
    local params;
    DrawTextToScreen("Comment: Jess Kills NPC", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'HealthListener_v6')-- Comment: Jess Kills NPC");
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "#0239438D",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_137()
    local params;
    params = {
        -- Group,
        [0] = self.Hostage_01,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "564481051",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_130()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_236()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2106341263");
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

function export:OnEnter_box_RemoveEntity_v2_155()
    local params;
    params = {
        -- Group,
        [0] = "2103691644330075361",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_156()
    local params;
    params = {
        -- group,
        [0] = "#0239438D",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_118()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015204711835729",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B10.domino|@UNI33_010_B10_main|2141824735");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_82_Out,
    });
    params = {
        -- Entity,
        [0] = "2102528319397353631",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_22()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.PlayerGroup,
        -- farZone,
        [2] = 48,
        -- id2,
        [3] = "2101208238218294422",
        -- nearZone,
        [4] = 43,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_HealthListener_v6_28_Critical()
    local l0;
    l0 = self.box_HealthListener_v6_28;
    self.PlayerGroup = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_28_Damaged()
    local l0;
    l0 = self.box_HealthListener_v6_28;
    self.PlayerGroup = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_28_Downed()
    local l0;
    l0 = self.box_HealthListener_v6_28;
    self.PlayerGroup = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_28_Healed()
    local l0;
    l0 = self.box_HealthListener_v6_28;
    self.PlayerGroup = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_28_Killed()
    local l0;
    l0 = self.box_HealthListener_v6_28;
    self.PlayerGroup = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_28_Revived()
    local l0;
    l0 = self.box_HealthListener_v6_28;
    self.PlayerGroup = l0:GetDataOutValue(4);
end;

function export:OnExit_box_Brick_Free_Hostages_v2_30_Fail()
    local l0;
    l0 = self.box_Brick_Free_Hostages_v2_30;
    self.Hostages_Saved = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Free_Hostages_v2_30_Started()
    local l0;
    l0 = self.box_Brick_Free_Hostages_v2_30;
    self.Hostages_Saved = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Free_Hostages_v2_30_Success()
    local l0;
    l0 = self.box_Brick_Free_Hostages_v2_30;
    self.Hostages_Saved = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_25_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_25;
    self.eJess_NPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_85_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Hostage_01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_176_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Reloaded = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Hostage_03 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_91_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.AllPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_118_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_118;
    self.eJess_NPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_82_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Hostage_02 = l0:GetDataOutValue(0);
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
