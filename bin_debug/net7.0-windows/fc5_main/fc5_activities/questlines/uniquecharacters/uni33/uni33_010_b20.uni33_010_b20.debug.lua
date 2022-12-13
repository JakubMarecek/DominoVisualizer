LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni33/uni33_010_b20.domino
-- User graph: UNI33_010_B20
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
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v2.lua");
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
        cboxRes:LoadResource([[2662097119.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3211443313.bnk]], "CSoundResource");
        cboxRes:LoadResource([[580484698.bnk]], "CSoundResource");
        cboxRes:LoadResource([[274810050.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1290802226.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1777353197.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3999804168.bnk]], "CSoundResource");
        cboxRes:LoadResource([[799858293.bnk]], "CSoundResource");
        cboxRes:LoadResource([[671136922.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4220739579.bnk]], "CSoundResource");
        cboxRes:LoadResource([[795071901.bnk]], "CSoundResource");
        cboxRes:LoadResource([[607901467.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3910421264.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3690924758.bnk]], "CSoundResource");
        cboxRes:LoadResource([[217420303.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI33/UNI33_010_B20.UNI33_010_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v2.lua")] = {
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
                name = "Pawn",
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
    self._name = "UNI33_010_B20";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20";
    self.eJess_NPC = nil;
    self.CompletedTotal = 0;
    self.Freed_Hostage_2 = false;
    self.Freed_TARGET = 0;
    self.Hostage_Group_Size = 0;
    self.Freed_Hostage_3 = false;
    self.Hostage_02 = nil;
    self.Hostage_01 = nil;
    self.FreeProgressID = 0;
    self.Freed_Hostage_1 = false;
    self.Freed_PROGRESS = 0;
    self.PlayerGroup = nil;
    self.Hostage_03 = nil;
    self.Hostage_04 = nil;
    self.FreedHostage_4 = false;
    self.Hostages_Saved = 0;
    self.Current_Saved_Hostages = 10;
    self.AllPlayer = nil;
    self.Reloaded = false;
    self.bBeatFinished = false;
    self.box_HealthListener_v6_165 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|11247249");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_165_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_165_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_165_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_165_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_165_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_165_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_165_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_165_Revived,
    });
    self.box_OnceOnly_v3_205 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|23513322");
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
                [0] = self.f_box_OnceOnly_v3_205_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Hostage_Setup_v2_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|36600948");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_21_HostageReleased,
        -- NextHostage,
        [1] = self.f_box_Brick_Hostage_Setup_v2_21_NextHostage,
    });
    self.box_OnceOnly_v3_93 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|55317540");
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
                [0] = self.f_box_OnceOnly_v3_93_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|90920072");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_Gate_v3_207 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|117005743");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_207_Out,
    });
    self.box_Delay_v5_186 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|120229291");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_186_TimeElapsed,
    });
    self.box_Gate_v3_213 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|127158051");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_213_Out,
    });
    self.box_OnceOnly_v3_208 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|166153260");
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
                [0] = self.f_box_OnceOnly_v3_208_Out_0,
            },
            count = 2,
        },
    });
    self.box_RemoveEntity_v2_149 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|174886947");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_149_Out,
    });
    self.box_StateListener_v2_32 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|201255448");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StateListener_v2_32_Enabled,
        -- StateStart,
        [3] = self.f_box_StateListener_v2_32_StateStart,
    });
    self.box_CharacterLoadedIdListener_6 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|274372027");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_6_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_6_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_6_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_6_LoadedIdReceived,
    });
    self.box_Delay_v5_167 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|315329511");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_167_TimeElapsed,
    });
    self.box_EntityStatusListener_53 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|318345666");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_53_Loaded,
    });
    self.box_MultipleOR_162 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|340980946");
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
        [0] = self.f_box_MultipleOR_162_Out,
    });
    self.box_PlayDialog_v6_9 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|364435233");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_72 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|364637291");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_159 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|376780334");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_159_Loaded,
    });
    self.box_Gate_v3_211 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|378565967");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_211_Out,
    });
    self.box_Music_Quest_v2_76 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|395243910");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_47 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|463756236");
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|483717831");
    l0:SetConnections({
    });
    self.box_StateListener_v2_166 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|495652762");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_166_StateStart,
    });
    self.box_MultipleOR_143 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|516554752");
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
        [0] = self.f_box_MultipleOR_143_Out,
    });
    self.box_MultipleOR_139 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|517642709");
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
        [0] = self.f_box_MultipleOR_139_Out,
    });
    self.box_Delay_v5_124 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|523557201");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_124_TimeElapsed,
    });
    self.box_OnceOnly_v3_216 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|524388594");
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
    self.box_Delay_v5_170 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|542461655");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_170_TimeElapsed,
    });
    self.box_MultipleOR_156 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|544439992");
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
        [0] = self.f_box_MultipleOR_156_Out,
    });
    self.box_PlayDialog_v6_99 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|631228078");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_99_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_99_FinishedInterrupted,
    });
    self.box_BindMarkerOverHead_v2_196 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
    l0 = self.box_BindMarkerOverHead_v2_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_v2_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|632495175");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BindMarkerOverHead_v2_196_Out,
    });
    self.box_PawnWeaponFiredListener_v2_200 = cbox:CreateBox("Domino/System/PawnWeaponFiredListener_v2.lua");
    l0 = self.box_PawnWeaponFiredListener_v2_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponFiredListener_v2_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|644524273");
    l0:SetConnections({
        -- OnFired,
        [2] = self.f_box_PawnWeaponFiredListener_v2_200_OnFired,
    });
    self.box_OnceOnly_v3_212 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|678067424");
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
                [0] = self.f_box_OnceOnly_v3_212_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Hostage_Setup_v2_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|700202153");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_22_HostageReleased,
        -- NextHostage,
        [1] = self.f_box_Brick_Hostage_Setup_v2_22_NextHostage,
    });
    self.box_OnceOnly_v3_136 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|724981883");
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
                [0] = self.f_box_OnceOnly_v3_136_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_204 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|787295444");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_204_Out,
    });
    self.box_PlayerFullyDetected_140 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|798408611");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_140_Detected,
    });
    self.box_Delay_v5_160 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|803025367");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_160_TimeElapsed,
    });
    self.box_EntityStatusListener_116 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|806729654");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_116_Loaded,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|825345584");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_Gate_v3_219 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|827038700");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_219_Out,
    });
    self.box_HealthListener_v6_92 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|860759883");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_92_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_92_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_92_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_92_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_92_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_92_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_92_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_92_Revived,
    });
    self.box_EntityStatusListener_117 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|864911695");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_117_Loaded,
    });
    self.box_MultipleOR_107 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|891254894");
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
        [0] = self.f_box_MultipleOR_107_Out,
    });
    self.box_HealthListener_v6_223 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|908716564");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_223_Downed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_223_Revived,
    });
    self.box_LookAtTrigger_v2_39 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|937891729");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_39_EnterFOV,
    });
    self.box_PlayDialog_v6_131 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|947179579");
    l0:SetConnections({
    });
    self.box_Brick_Secure_Area_v5_33 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
    l0 = self.box_Brick_Secure_Area_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Secure_Area_v5_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|956521236");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Brick_Secure_Area_v5_33_Success,
    });
    self.box_OnceOnly_v3_222 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|968385005");
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
    self.box_PlayDialog_v6_91 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|992020051");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_161 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|999412020");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_161_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_161_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_161_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_161_LoadedIdReceived,
    });
    self.box_ExitZoneWarningListener_v3_81 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1024496361");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_81_FailingZoneEntered,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1038720745");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_OnceOnly_v3_214 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1047912268");
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
    self.box_Delay_v5_106 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1085127525");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_106_TimeElapsed,
    });
    self.box_Delay_v5_169 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1100652259");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_169_TimeElapsed,
    });
    self.box_OnceOnly_v3_198 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1101984806");
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
                [0] = self.f_box_OnceOnly_v3_198_Out_0,
            },
            count = 2,
        },
    });
    self.box_Music_Quest_v2_74 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1112866366");
    l0:SetConnections({
    });
    self.box_Delay_v5_97 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1118891197");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_97_TimeElapsed,
    });
    self.box_Brick_Free_Hostages_v2_46 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Free_Hostages_v2.debug.lua");
    l0 = self.box_Brick_Free_Hostages_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Free_Hostages_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1149557390");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Free_Hostages_v2_46_Fail,
        -- Started,
        [1] = self.f_box_Brick_Free_Hostages_v2_46_Started,
        -- Success,
        [2] = self.f_box_Brick_Free_Hostages_v2_46_Success,
    });
    self.box_PlayDialog_v6_119 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1156512869");
    l0:SetConnections({
    });
    self.box_Delay_v5_108 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1163167695");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_108_TimeElapsed,
    });
    self.box_OnceOnly_v3_66 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1202632401");
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
                [0] = self.f_box_OnceOnly_v3_66_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_192 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1223649605");
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
        [0] = self.f_box_MultipleOR_192_Out,
    });
    self.box_OnceOnly_v3_164 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1228478241");
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
                [0] = self.f_box_OnceOnly_v3_164_Out_0,
            },
            count = 2,
        },
    });
    self.box_Music_Quest_v2_79 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1251806675");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_51 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1258776688");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_51_AllFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_51_SomeoneNear,
    });
    self.box_Music_Quest_v2_71 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1259526520");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_102 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1259809625");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_102_Killed,
    });
    self.box_OnceOnly_v3_218 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1312315127");
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
    self.box_PlayDialog_v6_95 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1346356054");
    l0:SetConnections({
    });
    self.box_Gate_v3_209 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1353465660");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_209_Out,
    });
    self.box_GroupSizeListener_v5_48 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1364769802");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_48_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_48_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_48_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_48_MemberRemoved,
    });
    self.box_OnceOnly_v3_126 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1364984745");
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
                [0] = self.f_box_OnceOnly_v3_126_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_217 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1384537571");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_217_Out,
    });
    self.box_MultipleOR_98 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1424592306");
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
        [0] = self.f_box_MultipleOR_98_Out,
    });
    self.box_OnceOnly_v3_210 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1428375105");
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
                [0] = self.f_box_OnceOnly_v3_210_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_138 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1451510016");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_138_TimeElapsed,
    });
    self.box_Delay_v5_168 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1454860245");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_168_TimeElapsed,
    });
    self.box_MultipleAND_v2_15 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1526562483");
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
        [0] = self.f_box_MultipleAND_v2_15_Out,
    });
    self.box_RemoveEntity_v2_148 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1546065201");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_148_Out,
    });
    self.box_MultipleOR_224 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1606669740");
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
        [0] = self.f_box_MultipleOR_224_Out,
    });
    self.box_PlayDialog_v6_85 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1664678969");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_134 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1683967390");
    l0:SetConnections({
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_134_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_134_OnOccupied,
    });
    self.box_MultipleOR_153 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1690702590");
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
        [0] = self.f_box_MultipleOR_153_Out,
    });
    self.box_OnceOnly_v3_225 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1782329702");
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
                [0] = self.f_box_OnceOnly_v3_225_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_123 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1815533506");
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
        [0] = self.f_box_MultipleOR_123_Out,
    });
    self.box_MultipleOR_173 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1846518495");
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
        [0] = self.f_box_MultipleOR_173_Out,
    });
    self.box_OnceOnly_v3_89 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1879026591");
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
                [0] = self.f_box_OnceOnly_v3_89_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_206 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1898128505");
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
                [0] = self.f_box_OnceOnly_v3_206_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Hostage_Setup_v2_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1901590500");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_10_HostageReleased,
    });
    self.box_HealthListener_v6_118 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1925395300");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_118_Killed,
    });
    self.box_MultipleAND_v2_23 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1985562934");
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
        [0] = self.f_box_MultipleAND_v2_23_Out,
    });
    self.box_PlayDialog_v6_115 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1986190182");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_113 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1997977784");
    l0:SetConnections({
    });
    self.box_DisplayCustomUIMsg_v5_181 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2007513481");
    l0:SetConnections({
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v5_181_OnHide,
    });
    self.box_ProximityRadiusListener_v3_27 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2057544536");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_27_SomeoneNear,
    });
    self.box_MultipleAND_v2_145 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2058208891");
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
        [0] = self.f_box_MultipleAND_v2_145_Out,
    });
    self.box_MultipleOR_197 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2085389663");
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
    self.box_Gate_v3_215 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2098355094");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_215_Out,
    });
    self.box_Delay_v5_103 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2099432421");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_103_TimeElapsed,
    });
    self.box_OnceOnly_v3_137 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2099884281");
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
                [0] = self.f_box_OnceOnly_v3_137_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_105 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2102610232");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_105_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_105_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_114 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2130589005");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_142 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2136804054");
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
        [0] = self.f_box_MultipleAND_v2_142_Out,
    });
    self.box_PlayDialog_v6_96 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2137082526");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_135 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2139659283");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_135_Enter,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_135_OnOccupied,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1930217242", "1930217242", "UNI33_010_B20", "In", "box_ActivityAcknowledgeGate_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_45();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|247598218", "247598218", "UNI33_010_B20", "OnLeaveZone", "box_Simple_Node_45.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_60_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_77();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|205184167", "205184167", "UNI33_010_B20", "box_Simple_Node_60.Out", "box_Compare_Boolean_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_145();
    l0 = self.box_MultipleAND_v2_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2049001452", "2049001452", "UNI33_010_B20", "box_Simple_Node_57.Out", "box_MultipleAND_v2_145.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_59_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_74();
    l0 = self.box_Music_Quest_v2_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|583641041", "583641041", "UNI33_010_B20", "box_Simple_Node_59.Out", "box_Music_Quest_v2_74.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
    params = self:OnEnter_box_GroupSizeListener_v5_48();
    l0 = self.box_GroupSizeListener_v5_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|444102417", "444102417", "UNI33_010_B20", "box_Simple_Node_59.Out", "box_GroupSizeListener_v5_48.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_OnceOnly_v3_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1982474560", "1982474560", "UNI33_010_B20", "box_Simple_Node_59.Out", "box_OnceOnly_v3_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_154_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|810774371", "810774371", "UNI33_010_B20", "box_Simple_Node_154.Out", "box_OnceOnly_v3_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_55_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_40();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1091685131", "1091685131", "UNI33_010_B20", "box_Simple_Node_55.Out", "box_GetPlayerGroup_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_32();
    l0 = self.box_StateListener_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1687146013", "1687146013", "UNI33_010_B20", "box_Simple_Node_62.Out", "box_StateListener_v2_32.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_84();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|197046739", "197046739", "UNI33_010_B20", "box_Simple_Node_63.Out", "box_SoundPointModifier_84.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Brick_Secure_Area_v5_33();
    l0 = self.box_Brick_Secure_Area_v5_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1664991418", "1664991418", "UNI33_010_B20", "box_Simple_Node_63.Out", "box_Brick_Secure_Area_v5_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_129_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_207();
    l0 = self.box_Gate_v3_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1641362521", "1641362521", "UNI33_010_B20", "box_Simple_Node_129.Out", "box_Gate_v3_207.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_141();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|52918797", "52918797", "UNI33_010_B20", "box_Simple_Node_129.Out", "box_OutputOrder_v2_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_147_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_48();
    l0 = self.box_GroupSizeListener_v5_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1961546152", "1961546152", "UNI33_010_B20", "box_Simple_Node_147.Out", "box_GroupSizeListener_v5_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_58_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_15();
    l0 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|716124904", "716124904", "UNI33_010_B20", "box_Simple_Node_58.Out", "box_MultipleAND_v2_15.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_68_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_102();
    l0 = self.box_HealthListener_v6_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|784593583", "784593583", "UNI33_010_B20", "box_Simple_Node_68.Out", "box_HealthListener_v6_102.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1097456798", "1097456798", "UNI33_010_B20", "box_Simple_Node_67.Out", "box_OutputOrder_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_220_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_85();
    l0 = self.box_PlayDialog_v6_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|104882282", "104882282", "UNI33_010_B20", "box_Simple_Node_220.Out", "box_PlayDialog_v6_85.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_132();
    l0 = self.box_PlayDialog_v6_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|76055197", "76055197", "UNI33_010_B20", "box_Simple_Node_220.Out", "box_PlayDialog_v6_132.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_213();
    l0 = self.box_Gate_v3_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|938952629", "938952629", "UNI33_010_B20", "box_Simple_Node_220.Out", "box_Gate_v3_213.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_207();
    l0 = self.box_Gate_v3_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1163482198", "1163482198", "UNI33_010_B20", "box_Simple_Node_220.Out", "box_Gate_v3_207.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_91();
    l0 = self.box_PlayDialog_v6_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2137329021", "2137329021", "UNI33_010_B20", "box_Simple_Node_220.Out", "box_PlayDialog_v6_91.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_131();
    l0 = self.box_PlayDialog_v6_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2058134789", "2058134789", "UNI33_010_B20", "box_Simple_Node_220.Out", "box_PlayDialog_v6_131.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_119();
    l0 = self.box_PlayDialog_v6_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|564200148", "564200148", "UNI33_010_B20", "box_Simple_Node_220.Out", "box_PlayDialog_v6_119.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|165319031", "165319031", "UNI33_010_B20", "box_Simple_Node_220.Out", "box_PlayDialog_v6_9.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_95();
    l0 = self.box_PlayDialog_v6_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1436783717", "1436783717", "UNI33_010_B20", "box_Simple_Node_220.Out", "box_PlayDialog_v6_95.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_215();
    l0 = self.box_Gate_v3_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2012466735", "2012466735", "UNI33_010_B20", "box_Simple_Node_220.Out", "box_Gate_v3_215.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_217();
    l0 = self.box_Gate_v3_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1547013886", "1547013886", "UNI33_010_B20", "box_Simple_Node_220.Out", "box_Gate_v3_217.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_211();
    l0 = self.box_Gate_v3_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1066391691", "1066391691", "UNI33_010_B20", "box_Simple_Node_220.Out", "box_Gate_v3_211.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_209();
    l0 = self.box_Gate_v3_209;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|254336841", "254336841", "UNI33_010_B20", "box_Simple_Node_220.Out", "box_Gate_v3_209.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_219();
    l0 = self.box_Gate_v3_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|300227365", "300227365", "UNI33_010_B20", "box_Simple_Node_220.Out", "box_Gate_v3_219.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_128_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|603455894", "603455894", "UNI33_010_B20", "box_Simple_Node_128.Out", "box_OutputOrder_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1057760945", "1057760945", "UNI33_010_B20", "box_Simple_Node_128.Out", "box_MultipleOR_123.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_229_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_223();
    l0 = self.box_HealthListener_v6_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1145389699", "1145389699", "UNI33_010_B20", "box_Simple_Node_229.Out", "box_HealthListener_v6_223.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_204();
    l0 = self.box_Gate_v3_204;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2102405824", "2102405824", "UNI33_010_B20", "box_Simple_Node_229.Out", "box_Gate_v3_204.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_146_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1148791397", "1148791397", "UNI33_010_B20", "box_Simple_Node_146.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_158_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1210093501", "1210093501", "UNI33_010_B20", "box_Simple_Node_158.Out", "box_MultipleOR_153.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1509679433", "1509679433", "UNI33_010_B20", "box_Simple_Node_28.Out", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_56_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1888069133", "1888069133", "UNI33_010_B20", "box_Simple_Node_56.Out", "box_OnceOnly_v3_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_165_Critical()
    self:OnExit_box_HealthListener_v6_165_Critical();
end;

function export:f_box_HealthListener_v6_165_Damaged()
    self:OnExit_box_HealthListener_v6_165_Damaged();
end;

function export:f_box_HealthListener_v6_165_Downed()
    self:OnExit_box_HealthListener_v6_165_Downed();
end;

function export:f_box_HealthListener_v6_165_Healed()
    self:OnExit_box_HealthListener_v6_165_Healed();
end;

function export:f_box_HealthListener_v6_165_Killed()
    local params, l0, l1;
    self:OnExit_box_HealthListener_v6_165_Killed();
    params = self:OnEnter_box_StateListener_v2_166();
    l0 = self.box_HealthListener_v6_165;
    l1 = self.box_StateListener_v2_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1278905409", "1278905409", "UNI33_010_B20", "box_HealthListener_v6_165.Killed", "box_StateListener_v2_166.Combat", l0:GetLuaBox(), l1:GetLuaBox());
    -- Combat
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_165_Revived()
    self:OnExit_box_HealthListener_v6_165_Revived();
end;

function export:f_box_OnceOnly_v3_205_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_220();
    l0 = self.box_OnceOnly_v3_205;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|544884238", "544884238", "UNI33_010_B20", "box_OnceOnly_v3_205.Out", "box_Simple_Node_220.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_21_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_108();
    l0 = self.box_Brick_Hostage_Setup_v2_21;
    l1 = self.box_Delay_v5_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|830161107", "830161107", "UNI33_010_B20", "box_Brick_Hostage_Setup_v2_21.HostageReleased", "box_Delay_v5_108.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_21_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_22();
    l0 = self.box_Brick_Hostage_Setup_v2_21;
    l1 = self.box_Brick_Hostage_Setup_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1252588911", "1252588911", "UNI33_010_B20", "box_Brick_Hostage_Setup_v2_21.NextHostage", "box_Brick_Hostage_Setup_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_93_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_215();
    l0 = self.box_OnceOnly_v3_93;
    l1 = self.box_Gate_v3_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1747594969", "1747594969", "UNI33_010_B20", "box_OnceOnly_v3_93.Out", "box_Gate_v3_215.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_229();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1247889922", "1247889922", "UNI33_010_B20", "box_OutputOrder_v2_24.Out", "box_Simple_Node_229.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_191();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|417045983", "417045983", "UNI33_010_B20", "box_OutputOrder_v2_24.Out", "box_ActivityObjectiveMarkerModifier_v3_191.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_227_Down()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_221();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1349390652", "1349390652", "UNI33_010_B20", "box_GetHealthState_227.Down", "box_OutputOrder_v2_221.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_227_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_223();
    l0 = self.box_HealthListener_v6_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|859839712", "859839712", "UNI33_010_B20", "box_GetHealthState_227.Healthy", "box_HealthListener_v6_223.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_182_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_19();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1936995455", "1936995455", "UNI33_010_B20", "box_EndActivityObjective_v2_182.Out", "box_Compare_Boolean_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_FastTravelModifier_v2_5();
    l0 = self.box_ActivityInitialized_4;
    l1 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1259338130", "1259338130", "UNI33_010_B20", "box_ActivityInitialized_4.Out", "box_FastTravelModifier_v2_5.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_122_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_127();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|112890325", "112890325", "UNI33_010_B20", "box_ActivityObjectiveMarkerModifier_v3_122.Disabled", "box_EndActivityObjective_v2_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_17();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1848497775", "1848497775", "UNI33_010_B20", "box_OutputOrder_v2_16.Out", "box_Print_v2_17.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_14();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|548103993", "548103993", "UNI33_010_B20", "box_OutputOrder_v2_16.Out", "box_Compare_Integers_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_207_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_207;
    l1 = self.box_OnceOnly_v3_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|10323576", "10323576", "UNI33_010_B20", "box_Gate_v3_207.Out", "box_OnceOnly_v3_206.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_186_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v2_188();
    l0 = self.box_Delay_v5_186;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|939923767", "939923767", "UNI33_010_B20", "box_Delay_v5_186.TimeElapsed", "box_IsPawnAlive_v2_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_213_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_213;
    l1 = self.box_OnceOnly_v3_212;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1406621990", "1406621990", "UNI33_010_B20", "box_Gate_v3_213.Out", "box_OnceOnly_v3_212.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_61_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_61_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_142();
    l0 = self.box_MultipleAND_v2_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1128309588", "1128309588", "UNI33_010_B20", "box_SetEntity_v2_61.Out", "box_MultipleAND_v2_142.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_125_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_13();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2075073973", "2075073973", "UNI33_010_B20", "box_OutputOrder_v2_125.Out", "box_AddActivityObjective_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1298780628", "1298780628", "UNI33_010_B20", "box_OutputOrder_v2_125.Out", "box_MultipleOR_162.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_125_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1755775099", "1755775099", "UNI33_010_B20", "box_OutputOrder_v2_125.Out", "box_MultipleOR_156.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_125_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_129();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|886448261", "886448261", "UNI33_010_B20", "box_OutputOrder_v2_125.Out", "box_Simple_Node_129.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_208_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_131();
    l0 = self.box_OnceOnly_v3_208;
    l1 = self.box_PlayDialog_v6_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1037574963", "1037574963", "UNI33_010_B20", "box_OnceOnly_v3_208.Out", "box_PlayDialog_v6_131.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_120_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_134();
    l0 = self.box_ProximityTrigger_v2_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|436011063", "436011063", "UNI33_010_B20", "box_ActivityObjectiveMarkerModifier_v3_120.Enabled", "box_ProximityTrigger_v2_134.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_149_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_44();
    l0 = self.box_RemoveEntity_v2_149;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1092671762", "1092671762", "UNI33_010_B20", "box_RemoveEntity_v2_149.Out", "box_ActivityEnd_44.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_32_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_165();
    l0 = self.box_StateListener_v2_32;
    l1 = self.box_HealthListener_v6_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1191223555", "1191223555", "UNI33_010_B20", "box_StateListener_v2_32.Enabled", "box_HealthListener_v6_165.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StateListener_v2_32_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_63();
    l0 = self.box_StateListener_v2_32;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|206118394", "206118394", "UNI33_010_B20", "box_StateListener_v2_32.StateStart", "box_Simple_Node_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_141_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_140();
    l0 = self.box_PlayerFullyDetected_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1754008442", "1754008442", "UNI33_010_B20", "box_OutputOrder_v2_141.Out", "box_PlayerFullyDetected_140.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_141_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_27();
    l0 = self.box_ProximityRadiusListener_v3_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1449956569", "1449956569", "UNI33_010_B20", "box_OutputOrder_v2_141.Out", "box_ProximityRadiusListener_v3_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_94_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_81();
    l0 = self.box_ExitZoneWarningListener_v3_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1934657143", "1934657143", "UNI33_010_B20", "box_OutputOrder_v2_94.Out", "box_ExitZoneWarningListener_v3_81.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_76();
    l0 = self.box_Music_Quest_v2_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1666387056", "1666387056", "UNI33_010_B20", "box_OutputOrder_v2_94.Out", "box_Music_Quest_v2_76.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_94_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_7();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|895732014", "895732014", "UNI33_010_B20", "box_OutputOrder_v2_94.Out", "box_FastTravelModifier_v2_7.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_6_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_6_LoadedIdReceived();
    params = self:OnEnter_box_TaggingModifier_v3_199();
    l0 = self.box_CharacterLoadedIdListener_6;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1150505148", "1150505148", "UNI33_010_B20", "box_CharacterLoadedIdListener_6.LoadedIdReceived", "box_TaggingModifier_v3_199.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_167_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_167;
    l1 = self.box_OnceOnly_v3_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1474533238", "1474533238", "UNI33_010_B20", "box_Delay_v5_167.TimeElapsed", "box_OnceOnly_v3_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_53_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_112();
    l0 = self.box_EntityStatusListener_53;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|440448721", "440448721", "UNI33_010_B20", "box_EntityStatusListener_53.Loaded", "box_SetEntity_v2_112.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FastTravelModifier_v2_5_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_6();
    l0 = self.box_CharacterLoadedIdListener_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1643039502", "1643039502", "UNI33_010_B20", "box_FastTravelModifier_v2_5.Disabled", "box_CharacterLoadedIdListener_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_110_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_111();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1518725191", "1518725191", "UNI33_010_B20", "box_OutputOrder_v2_110.Out", "box_Compare_Integers_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_110_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_148();
    l0 = self.box_RemoveEntity_v2_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1021456742", "1021456742", "UNI33_010_B20", "box_OutputOrder_v2_110.Out", "box_RemoveEntity_v2_148.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetHealthState_194_Critical()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1117887113", "1117887113", "UNI33_010_B20", "box_GetHealthState_194.Critical", "box_MultipleOR_197.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetHealthState_194_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1809031499", "1809031499", "UNI33_010_B20", "box_GetHealthState_194.Down", "box_OnceOnly_v3_198.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetHealthState_194_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|40017119", "40017119", "UNI33_010_B20", "box_GetHealthState_194.Healthy", "box_MultipleOR_197.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_162_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_MultipleOR_162;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|12743988", "12743988", "UNI33_010_B20", "box_MultipleOR_162.Out", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_159_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_121();
    l0 = self.box_EntityStatusListener_159;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|856847272", "856847272", "UNI33_010_B20", "box_EntityStatusListener_159.Loaded", "box_SetContextualStrategy_121.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_211_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_211;
    l1 = self.box_OnceOnly_v3_210;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1320096456", "1320096456", "UNI33_010_B20", "box_Gate_v3_211.Out", "box_OnceOnly_v3_210.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_144_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_147();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|960974318", "960974318", "UNI33_010_B20", "box_OutputOrder_v2_144.Out", "box_Simple_Node_147.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_144_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_62();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1351766623", "1351766623", "UNI33_010_B20", "box_OutputOrder_v2_144.Out", "box_Simple_Node_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_150_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1595149612", "1595149612", "UNI33_010_B20", "box_OutputOrder_v2_150.Out", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_150_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_151();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|114790907", "114790907", "UNI33_010_B20", "box_OutputOrder_v2_150.Out", "box_SetBoolean_v2_151.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_47_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_15();
    l0 = self.box_OnceOnly_v3_47;
    l1 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|198865225", "198865225", "UNI33_010_B20", "box_OnceOnly_v3_47.Out", "box_MultipleAND_v2_15.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_StateListener_v2_166_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_167();
    l0 = self.box_StateListener_v2_166;
    l1 = self.box_Delay_v5_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2123506627", "2123506627", "UNI33_010_B20", "box_StateListener_v2_166.StateStart", "box_Delay_v5_167.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_226_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_224;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|213361443", "213361443", "UNI33_010_B20", "box_OutputOrder_v2_226.Out", "box_MultipleOR_224.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_226_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2101421226", "2101421226", "UNI33_010_B20", "box_OutputOrder_v2_226.Out", "box_OnceOnly_v3_222.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_143_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_130();
    l0 = self.box_MultipleOR_143;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|772933825", "772933825", "UNI33_010_B20", "box_MultipleOR_143.Out", "box_OutputOrder_v2_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_139_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_139;
    l1 = self.box_OnceOnly_v3_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|562986403", "562986403", "UNI33_010_B20", "box_MultipleOR_139.Out", "box_OnceOnly_v3_136.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_124_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_209();
    l0 = self.box_Delay_v5_124;
    l1 = self.box_Gate_v3_209;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1213790035", "1213790035", "UNI33_010_B20", "box_Delay_v5_124.TimeElapsed", "box_Gate_v3_209.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_216_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_85();
    l0 = self.box_OnceOnly_v3_216;
    l1 = self.box_PlayDialog_v6_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1358384644", "1358384644", "UNI33_010_B20", "box_OnceOnly_v3_216.Out", "box_PlayDialog_v6_85.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_40_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_40_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_26();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1957457833", "1957457833", "UNI33_010_B20", "box_GetPlayerGroup_v2_40.Out", "box_ActivityObjectiveMarkerModifier_v3_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_170_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_219();
    l0 = self.box_Delay_v5_170;
    l1 = self.box_Gate_v3_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1895702773", "1895702773", "UNI33_010_B20", "box_Delay_v5_170.TimeElapsed", "box_Gate_v3_219.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_156_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_56();
    l0 = self.box_MultipleOR_156;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|197126769", "197126769", "UNI33_010_B20", "box_MultipleOR_156.Out", "box_Simple_Node_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_25();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1170223889", "1170223889", "UNI33_010_B20", "box_OutputOrder_v2_73.Out", "box_ActivityRetry_25.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_71();
    l0 = self.box_Music_Quest_v2_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1066131481", "1066131481", "UNI33_010_B20", "box_OutputOrder_v2_73.Out", "box_Music_Quest_v2_71.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_83();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1864670717", "1864670717", "UNI33_010_B20", "box_OutputOrder_v2_78.Out", "box_SoundPointModifier_83.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_12();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|825348031", "825348031", "UNI33_010_B20", "box_OutputOrder_v2_78.Out", "box_ActivityObjectiveMarkerModifier_v3_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_39();
    l0 = self.box_LookAtTrigger_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1101681884", "1101681884", "UNI33_010_B20", "box_OutputOrder_v2_11.Out", "box_LookAtTrigger_v2_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_92();
    l0 = self.box_HealthListener_v6_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1718371884", "1718371884", "UNI33_010_B20", "box_OutputOrder_v2_11.Out", "box_HealthListener_v6_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnWeaponFiredListener_v2_200();
    l0 = self.box_PawnWeaponFiredListener_v2_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|669445983", "669445983", "UNI33_010_B20", "box_OutputOrder_v2_11.Out", "box_PawnWeaponFiredListener_v2_200.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_186();
    l0 = self.box_Delay_v5_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2008473601", "2008473601", "UNI33_010_B20", "box_OutputOrder_v2_11.Out", "box_Delay_v5_186.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_201_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_181();
    l0 = self.box_DisplayCustomUIMsg_v5_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|877295482", "877295482", "UNI33_010_B20", "box_OutputOrder_v2_201.Out", "box_DisplayCustomUIMsg_v5_181.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_201_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_227();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|880169747", "880169747", "UNI33_010_B20", "box_OutputOrder_v2_201.Out", "box_GetHealthState_227.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_99_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_99;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|466792624", "466792624", "UNI33_010_B20", "box_PlayDialog_v6_99.Finished", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_99_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_99;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|306505508", "306505508", "UNI33_010_B20", "box_PlayDialog_v6_99.FinishedInterrupted", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_BindMarkerOverHead_v2_196_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_193();
    l0 = self.box_BindMarkerOverHead_v2_196;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|8065589", "8065589", "UNI33_010_B20", "box_BindMarkerOverHead_v2_196.Out", "box_ActivityObjectiveMarkerModifier_v3_193.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PawnWeaponFiredListener_v2_200_OnFired()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_118();
    l0 = self.box_PawnWeaponFiredListener_v2_200;
    l1 = self.box_HealthListener_v6_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1535854526", "1535854526", "UNI33_010_B20", "box_PawnWeaponFiredListener_v2_200.OnFired", "box_HealthListener_v6_118.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_155_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_145();
    l0 = self.box_MultipleAND_v2_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|455401569", "455401569", "UNI33_010_B20", "box_OutputOrder_v2_155.Out", "box_MultipleAND_v2_145.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_155_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_154();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|606183582", "606183582", "UNI33_010_B20", "box_OutputOrder_v2_155.Out", "box_Simple_Node_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_212_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_OnceOnly_v3_212;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2091134512", "2091134512", "UNI33_010_B20", "box_OnceOnly_v3_212.Out", "box_PlayDialog_v6_9.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_22_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_138();
    l0 = self.box_Brick_Hostage_Setup_v2_22;
    l1 = self.box_Delay_v5_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|637914926", "637914926", "UNI33_010_B20", "box_Brick_Hostage_Setup_v2_22.HostageReleased", "box_Delay_v5_138.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_22_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_10();
    l0 = self.box_Brick_Hostage_Setup_v2_22;
    l1 = self.box_Brick_Hostage_Setup_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2083305486", "2083305486", "UNI33_010_B20", "box_Brick_Hostage_Setup_v2_22.NextHostage", "box_Brick_Hostage_Setup_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_136_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_133();
    l0 = self.box_OnceOnly_v3_136;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1360178286", "1360178286", "UNI33_010_B20", "box_OnceOnly_v3_136.Out", "box_OutputOrder_v2_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_204_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_203();
    l0 = self.box_Gate_v3_204;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|278762011", "278762011", "UNI33_010_B20", "box_Gate_v3_204.Out", "box_AddActivityObjective_v2_203.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_13_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_120();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|206246166", "206246166", "UNI33_010_B20", "box_AddActivityObjective_v2_13.Out", "box_ActivityObjectiveMarkerModifier_v3_120.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayerFullyDetected_140_Detected()
    local l0, l1;
    l0 = self.box_PlayerFullyDetected_140;
    l1 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|663608765", "663608765", "UNI33_010_B20", "box_PlayerFullyDetected_140.Detected", "box_MultipleOR_139.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_160_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_110();
    l0 = self.box_Delay_v5_160;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1210444391", "1210444391", "UNI33_010_B20", "box_Delay_v5_160.TimeElapsed", "box_OutputOrder_v2_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_116_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_49();
    l0 = self.box_EntityStatusListener_116;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|735553061", "735553061", "UNI33_010_B20", "box_EntityStatusListener_116.Loaded", "box_SetEntity_v2_49.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|720954153", "720954153", "UNI33_010_B20", "box_MultipleOR_2.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Gate_v3_219_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_219;
    l1 = self.box_OnceOnly_v3_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|45328679", "45328679", "UNI33_010_B20", "box_Gate_v3_219.Out", "box_OnceOnly_v3_218.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_168();
    l0 = self.box_Delay_v5_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2029147618", "2029147618", "UNI33_010_B20", "box_OutputOrder_v2_104.Out", "box_Delay_v5_168.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_104_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_105();
    l0 = self.box_PlayDialog_v6_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|157780268", "157780268", "UNI33_010_B20", "box_OutputOrder_v2_104.Out", "box_PlayDialog_v6_105.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_HealthListener_v6_92_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityInGroup_90();
    l0 = self.box_HealthListener_v6_92;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1935376870", "1935376870", "UNI33_010_B20", "box_HealthListener_v6_92.Killed", "box_IsEntityInGroup_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_117_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_61();
    l0 = self.box_EntityStatusListener_117;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|8835873", "8835873", "UNI33_010_B20", "box_EntityStatusListener_117.Loaded", "box_SetEntity_v2_61.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_14_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_59();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|576595041", "576595041", "UNI33_010_B20", "box_Compare_Integers_14.A_le_B", "box_Simple_Node_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_107_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_106();
    l0 = self.box_MultipleOR_107;
    l1 = self.box_Delay_v5_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|623115085", "623115085", "UNI33_010_B20", "box_MultipleOR_107.Out", "box_Delay_v5_106.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_223_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_226();
    l0 = self.box_HealthListener_v6_223;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|55469678", "55469678", "UNI33_010_B20", "box_HealthListener_v6_223.Downed", "box_OutputOrder_v2_226.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_223_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_182();
    l0 = self.box_HealthListener_v6_223;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|19434187", "19434187", "UNI33_010_B20", "box_HealthListener_v6_223.Revived", "box_EndActivityObjective_v2_182.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_39_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = self.box_LookAtTrigger_v2_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|779050562", "779050562", "UNI33_010_B20", "box_LookAtTrigger_v2_39.EnterFOV", "box_OutputOrder_v2_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Secure_Area_v5_33_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_59();
    l0 = self.box_Brick_Secure_Area_v5_33;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1098418579", "1098418579", "UNI33_010_B20", "box_Brick_Secure_Area_v5_33.Success", "box_Simple_Node_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_222_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_220();
    l0 = self.box_OnceOnly_v3_222;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1476028143", "1476028143", "UNI33_010_B20", "box_OnceOnly_v3_222.Out", "box_Simple_Node_220.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_161_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_161_LoadedIdReceived();
    params = self:OnEnter_box_EntityStatusListener_159();
    l0 = self.box_CharacterLoadedIdListener_161;
    l1 = self.box_EntityStatusListener_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1121061036", "1121061036", "UNI33_010_B20", "box_CharacterLoadedIdListener_161.LoadedIdReceived", "box_EntityStatusListener_159.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ExitZoneWarningListener_v3_81_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_94();
    l0 = self.box_ExitZoneWarningListener_v3_81;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1460037963", "1460037963", "UNI33_010_B20", "box_ExitZoneWarningListener_v3_81.FailingZoneEntered", "box_OutputOrder_v2_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1157907157", "1157907157", "UNI33_010_B20", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_150();
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|908441319", "908441319", "UNI33_010_B20", "box_ActivityAcknowledgeGate_1.Reloaded", "box_OutputOrder_v2_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_214_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_91();
    l0 = self.box_OnceOnly_v3_214;
    l1 = self.box_PlayDialog_v6_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|374604999", "374604999", "UNI33_010_B20", "box_OnceOnly_v3_214.Out", "box_PlayDialog_v6_91.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_64_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_64_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_201();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|789250471", "789250471", "UNI33_010_B20", "box_GetPlayerGroup_v2_64.Out", "box_OutputOrder_v2_201.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_106_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_99();
    l0 = self.box_Delay_v5_106;
    l1 = self.box_PlayDialog_v6_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1914795794", "1914795794", "UNI33_010_B20", "box_Delay_v5_106.TimeElapsed", "box_PlayDialog_v6_99.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_169_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_169;
    l1 = self.box_OnceOnly_v3_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1382547199", "1382547199", "UNI33_010_B20", "box_Delay_v5_169.TimeElapsed", "box_OnceOnly_v3_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_198_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_BindMarkerOverHead_v2_196();
    l0 = self.box_OnceOnly_v3_198;
    l1 = self.box_BindMarkerOverHead_v2_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|827158201", "827158201", "UNI33_010_B20", "box_OnceOnly_v3_198.Out", "box_BindMarkerOverHead_v2_196.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_TaggingModifier_v3_199_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_64();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1346934766", "1346934766", "UNI33_010_B20", "box_TaggingModifier_v3_199.Disabled", "box_GetPlayerGroup_v2_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_97_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_96();
    l0 = self.box_Delay_v5_97;
    l1 = self.box_PlayDialog_v6_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|818884332", "818884332", "UNI33_010_B20", "box_Delay_v5_97.TimeElapsed", "box_PlayDialog_v6_96.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Brick_Free_Hostages_v2_46_Fail()
    local params, l0, l1;
    self:OnExit_box_Brick_Free_Hostages_v2_46_Fail();
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = self.box_Brick_Free_Hostages_v2_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2018162202", "2018162202", "UNI33_010_B20", "box_Brick_Free_Hostages_v2_46.Fail", "box_OutputOrder_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Free_Hostages_v2_46_Started()
    local params, l0, l1;
    self:OnExit_box_Brick_Free_Hostages_v2_46_Started();
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_Brick_Free_Hostages_v2_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1177078285", "1177078285", "UNI33_010_B20", "box_Brick_Free_Hostages_v2_46.Started", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Free_Hostages_v2_46_Success()
    local params, l0, l1;
    self:OnExit_box_Brick_Free_Hostages_v2_46_Success();
    params = self:OnEnter_box_Simple_Node_58();
    l0 = self.box_Brick_Free_Hostages_v2_46;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1269260414", "1269260414", "UNI33_010_B20", "box_Brick_Free_Hostages_v2_46.Success", "box_Simple_Node_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_108_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_113();
    l0 = self.box_Delay_v5_108;
    l1 = self.box_PlayDialog_v6_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1059978459", "1059978459", "UNI33_010_B20", "box_Delay_v5_108.TimeElapsed", "box_PlayDialog_v6_113.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v2_188_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_187();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|626864462", "626864462", "UNI33_010_B20", "box_IsPawnAlive_v2_188.True", "box_UseContextualActionModifier_v3_187.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_66_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_144();
    l0 = self.box_OnceOnly_v3_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1301428993", "1301428993", "UNI33_010_B20", "box_OnceOnly_v3_66.Out", "box_OutputOrder_v2_144.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityInGroup_90_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityType_88();
    l0 = Boxes[GetPathID("Domino/System/GetEntityType.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|788697869", "788697869", "UNI33_010_B20", "box_IsEntityInGroup_90.False", "box_GetEntityType_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityInGroup_90_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|933140021", "933140021", "UNI33_010_B20", "box_IsEntityInGroup_90.True", "box_OnceOnly_v3_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_127_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1766677347", "1766677347", "UNI33_010_B20", "box_EndActivityObjective_v2_127.Out", "box_MultipleOR_153.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_82_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_60();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1018513671", "1018513671", "UNI33_010_B20", "box_OutputOrder_v2_82.Out", "box_Simple_Node_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_79();
    l0 = self.box_Music_Quest_v2_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|563902969", "563902969", "UNI33_010_B20", "box_OutputOrder_v2_82.Out", "box_Music_Quest_v2_79.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_82_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_81();
    l0 = self.box_ExitZoneWarningListener_v3_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|401869763", "401869763", "UNI33_010_B20", "box_OutputOrder_v2_82.Out", "box_ExitZoneWarningListener_v3_81.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_152_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1149347308", "1149347308", "UNI33_010_B20", "box_OutputOrder_v2_152.Out", "box_MultipleOR_162.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_152_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1902474945", "1902474945", "UNI33_010_B20", "box_OutputOrder_v2_152.Out", "box_MultipleOR_156.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_152_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1903893702", "1903893702", "UNI33_010_B20", "box_OutputOrder_v2_152.Out", "box_Simple_Node_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_192_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_160();
    l0 = self.box_MultipleOR_192;
    l1 = self.box_Delay_v5_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|106945511", "106945511", "UNI33_010_B20", "box_MultipleOR_192.Out", "box_Delay_v5_160.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_193_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|460755875", "460755875", "UNI33_010_B20", "box_ActivityObjectiveMarkerModifier_v3_193.Enabled", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OnceOnly_v3_164_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_211();
    l0 = self.box_OnceOnly_v3_164;
    l1 = self.box_Gate_v3_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1910746802", "1910746802", "UNI33_010_B20", "box_OnceOnly_v3_164.Out", "box_Gate_v3_211.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_26_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_51();
    l0 = self.box_ProximityRadiusListener_v3_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|249452616", "249452616", "UNI33_010_B20", "box_ActivityObjectiveMarkerModifier_v3_26.Enabled", "box_ProximityRadiusListener_v3_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetEntityType_88_Player()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetEntityType.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_169();
    l0 = self.box_Delay_v5_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1073720906", "1073720906", "UNI33_010_B20", "box_GetEntityType_88.Player", "box_Delay_v5_169.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_51_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_42();
    l0 = self.box_ProximityRadiusListener_v3_51;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1723412599", "1723412599", "UNI33_010_B20", "box_ProximityRadiusListener_v3_51.AllFar", "box_ActivityObjectiveMarkerModifier_v3_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_51_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_36();
    l0 = self.box_ProximityRadiusListener_v3_51;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2001634457", "2001634457", "UNI33_010_B20", "box_ProximityRadiusListener_v3_51.SomeoneNear", "box_ActivityObjectiveMarkerModifier_v3_36.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_102_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = self.box_HealthListener_v6_102;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|920864919", "920864919", "UNI33_010_B20", "box_HealthListener_v6_102.Killed", "box_OutputOrder_v2_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_218_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_119();
    l0 = self.box_OnceOnly_v3_218;
    l1 = self.box_PlayDialog_v6_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|208862508", "208862508", "UNI33_010_B20", "box_OnceOnly_v3_218.Out", "box_PlayDialog_v6_119.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_209_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_209;
    l1 = self.box_OnceOnly_v3_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1665204473", "1665204473", "UNI33_010_B20", "box_Gate_v3_209.Out", "box_OnceOnly_v3_208.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_48_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_GroupSizeListener_v5_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|831659277", "831659277", "UNI33_010_B20", "box_GroupSizeListener_v5_48.MemberRemoved", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_126_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_122();
    l0 = self.box_OnceOnly_v3_126;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|770681603", "770681603", "UNI33_010_B20", "box_OnceOnly_v3_126.Out", "box_ActivityObjectiveMarkerModifier_v3_122.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_221_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|688026510", "688026510", "UNI33_010_B20", "box_OutputOrder_v2_221.Out", "box_OnceOnly_v3_225.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_221_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1544299106", "1544299106", "UNI33_010_B20", "box_OutputOrder_v2_221.Out", "box_OnceOnly_v3_205.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_217_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_217;
    l1 = self.box_OnceOnly_v3_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|970375038", "970375038", "UNI33_010_B20", "box_Gate_v3_217.Out", "box_OnceOnly_v3_216.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_98_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_97();
    l0 = self.box_MultipleOR_98;
    l1 = self.box_Delay_v5_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1087948856", "1087948856", "UNI33_010_B20", "box_MultipleOR_98.Out", "box_Delay_v5_97.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_12_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_194();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|354069913", "354069913", "UNI33_010_B20", "box_ActivityObjectiveMarkerModifier_v3_12.Disabled", "box_GetHealthState_194.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_210_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_132();
    l0 = self.box_OnceOnly_v3_210;
    l1 = self.box_PlayDialog_v6_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|657244440", "657244440", "UNI33_010_B20", "box_OnceOnly_v3_210.Out", "box_PlayDialog_v6_132.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_134();
    l0 = self.box_ProximityTrigger_v2_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|120189044", "120189044", "UNI33_010_B20", "box_OutputOrder_v2_20.Out", "box_ProximityTrigger_v2_134.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1529626257", "1529626257", "UNI33_010_B20", "box_OutputOrder_v2_20.Out", "box_MultipleOR_173.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_130_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|206325258", "206325258", "UNI33_010_B20", "box_OutputOrder_v2_130.Out", "box_MultipleOR_123.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_130_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_124();
    l0 = self.box_Delay_v5_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|993283130", "993283130", "UNI33_010_B20", "box_OutputOrder_v2_130.Out", "box_Delay_v5_124.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_138_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_114();
    l0 = self.box_Delay_v5_138;
    l1 = self.box_PlayDialog_v6_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|741153737", "741153737", "UNI33_010_B20", "box_Delay_v5_138.TimeElapsed", "box_PlayDialog_v6_114.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_168_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_213();
    l0 = self.box_Delay_v5_168;
    l1 = self.box_Gate_v3_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|972359877", "972359877", "UNI33_010_B20", "box_Delay_v5_168.TimeElapsed", "box_Gate_v3_213.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_8_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|364133845", "364133845", "UNI33_010_B20", "box_SetBoolean_v2_8.Out", "box_OutputOrder_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_49_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_49_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_142();
    l0 = self.box_MultipleAND_v2_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1828986439", "1828986439", "UNI33_010_B20", "box_SetEntity_v2_49.Out", "box_MultipleAND_v2_142.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_8();
    l0 = self.box_MultipleAND_v2_15;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1271279227", "1271279227", "UNI33_010_B20", "box_MultipleAND_v2_15.Out", "box_SetBoolean_v2_8.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_148_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_149();
    l0 = self.box_RemoveEntity_v2_148;
    l1 = self.box_RemoveEntity_v2_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|978911144", "978911144", "UNI33_010_B20", "box_RemoveEntity_v2_148.Out", "box_RemoveEntity_v2_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_133_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_128();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|921677530", "921677530", "UNI33_010_B20", "box_OutputOrder_v2_133.Out", "box_Simple_Node_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_133_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_154();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|789673538", "789673538", "UNI33_010_B20", "box_OutputOrder_v2_133.Out", "box_Simple_Node_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_224_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_204();
    l0 = self.box_MultipleOR_224;
    l1 = self.box_Gate_v3_204;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2132152891", "2132152891", "UNI33_010_B20", "box_MultipleOR_224.Out", "box_Gate_v3_204.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_19_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|983161522", "983161522", "UNI33_010_B20", "box_Compare_Boolean_19.A_is_True", "box_Simple_Node_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_72();
    l0 = self.box_Music_Quest_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|967648060", "967648060", "UNI33_010_B20", "box_OutputOrder_v2_75.Out", "box_Music_Quest_v2_72.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_101();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|664590692", "664590692", "UNI33_010_B20", "box_OutputOrder_v2_75.Out", "box_ActivityRetry_101.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_116();
    l0 = self.box_EntityStatusListener_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1261128725", "1261128725", "UNI33_010_B20", "box_OutputOrder_v2_34.Out", "box_EntityStatusListener_116.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_117();
    l0 = self.box_EntityStatusListener_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|897641899", "897641899", "UNI33_010_B20", "box_OutputOrder_v2_34.Out", "box_EntityStatusListener_117.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_53();
    l0 = self.box_EntityStatusListener_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1499045688", "1499045688", "UNI33_010_B20", "box_OutputOrder_v2_34.Out", "box_EntityStatusListener_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_134_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_134;
    l1 = self.box_MultipleOR_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1309873009", "1309873009", "UNI33_010_B20", "box_ProximityTrigger_v2_134.OnEmpty", "box_MultipleOR_173.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_134_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_135();
    l0 = self.box_ProximityTrigger_v2_134;
    l1 = self.box_ProximityTrigger_v2_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|824286532", "824286532", "UNI33_010_B20", "box_ProximityTrigger_v2_134.OnOccupied", "box_ProximityTrigger_v2_135.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_153_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_155();
    l0 = self.box_MultipleOR_153;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|770864387", "770864387", "UNI33_010_B20", "box_MultipleOR_153.Out", "box_OutputOrder_v2_155.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_225_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_225;
    l1 = self.box_MultipleOR_224;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|236874765", "236874765", "UNI33_010_B20", "box_OnceOnly_v3_225.Out", "box_MultipleOR_224.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_123_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_123;
    l1 = self.box_OnceOnly_v3_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2123191225", "2123191225", "UNI33_010_B20", "box_MultipleOR_123.Out", "box_OnceOnly_v3_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_111_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_109();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2042134513", "2042134513", "UNI33_010_B20", "box_Compare_Integers_111.A_lt_B", "box_SetActivityFact_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_173_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_135();
    l0 = self.box_MultipleOR_173;
    l1 = self.box_ProximityTrigger_v2_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|153933937", "153933937", "UNI33_010_B20", "box_MultipleOR_173.Out", "box_ProximityTrigger_v2_135.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_89_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_217();
    l0 = self.box_OnceOnly_v3_89;
    l1 = self.box_Gate_v3_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|569709101", "569709101", "UNI33_010_B20", "box_OnceOnly_v3_89.Out", "box_Gate_v3_217.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_206_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_95();
    l0 = self.box_OnceOnly_v3_206;
    l1 = self.box_PlayDialog_v6_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|753413916", "753413916", "UNI33_010_B20", "box_OnceOnly_v3_206.Out", "box_PlayDialog_v6_95.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_10_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_103();
    l0 = self.box_Brick_Hostage_Setup_v2_10;
    l1 = self.box_Delay_v5_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1400343243", "1400343243", "UNI33_010_B20", "box_Brick_Hostage_Setup_v2_10.HostageReleased", "box_Delay_v5_103.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetEntity_v2_112_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_112_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_142();
    l0 = self.box_MultipleAND_v2_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1273035744", "1273035744", "UNI33_010_B20", "box_SetEntity_v2_112.Out", "box_MultipleAND_v2_142.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_HealthListener_v6_118_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_170();
    l0 = self.box_HealthListener_v6_118;
    l1 = self.box_Delay_v5_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1138537182", "1138537182", "UNI33_010_B20", "box_HealthListener_v6_118.Killed", "box_Delay_v5_170.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_FastTravelModifier_v2_7_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1426226473", "1426226473", "UNI33_010_B20", "box_FastTravelModifier_v2_7.Enabled", "box_ActivityRetry_3.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_151_Out()
    self:OnExit_box_SetBoolean_v2_151_Out();
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_191_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|502047130", "502047130", "UNI33_010_B20", "box_ActivityObjectiveMarkerModifier_v3_191.Disabled", "box_MultipleOR_192.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleAND_v2_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_MultipleAND_v2_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|592578570", "592578570", "UNI33_010_B20", "box_MultipleAND_v2_23.Out", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DisplayCustomUIMsg_v5_181_OnHide()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_82();
    l0 = self.box_DisplayCustomUIMsg_v5_181;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2078699776", "2078699776", "UNI33_010_B20", "box_DisplayCustomUIMsg_v5_181.OnHide", "box_OutputOrder_v2_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_187_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_187();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1429721871", "1429721871", "UNI33_010_B20", "box_UseContextualActionModifier_v3_187.Enabled", "box_UseContextualActionModifier_v3_187.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_27_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_27;
    l1 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1296004249", "1296004249", "UNI33_010_B20", "box_ProximityRadiusListener_v3_27.SomeoneNear", "box_MultipleOR_139.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleAND_v2_145_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Free_Hostages_v2_46();
    l0 = self.box_MultipleAND_v2_145;
    l1 = self.box_Brick_Free_Hostages_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1377479323", "1377479323", "UNI33_010_B20", "box_MultipleAND_v2_145.Out", "box_Brick_Free_Hostages_v2_46.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_77_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_125();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1120144711", "1120144711", "UNI33_010_B20", "box_Compare_Boolean_77.A_is_False", "box_OutputOrder_v2_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_77_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_152();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1033347802", "1033347802", "UNI33_010_B20", "box_Compare_Boolean_77.A_is_True", "box_OutputOrder_v2_152.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_197_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_197;
    l1 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1412617958", "1412617958", "UNI33_010_B20", "box_MultipleOR_197.Out", "box_MultipleOR_192.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_215_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_215;
    l1 = self.box_OnceOnly_v3_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|935117524", "935117524", "UNI33_010_B20", "box_Gate_v3_215.Out", "box_OnceOnly_v3_214.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_103_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_115();
    l0 = self.box_Delay_v5_103;
    l1 = self.box_PlayDialog_v6_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|58842189", "58842189", "UNI33_010_B20", "box_Delay_v5_103.TimeElapsed", "box_PlayDialog_v6_115.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_137_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_161();
    l0 = self.box_OnceOnly_v3_137;
    l1 = self.box_CharacterLoadedIdListener_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|681423190", "681423190", "UNI33_010_B20", "box_OnceOnly_v3_137.Out", "box_CharacterLoadedIdListener_161.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_105_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_105;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2080938859", "2080938859", "UNI33_010_B20", "box_PlayDialog_v6_105.Finished", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_105_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_105;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|541161300", "541161300", "UNI33_010_B20", "box_PlayDialog_v6_105.FinishedInterrupted", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_21();
    l0 = self.box_Brick_Hostage_Setup_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1093997727", "1093997727", "UNI33_010_B20", "box_OutputOrder_v2_18.Out", "box_Brick_Hostage_Setup_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_55();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1380052567", "1380052567", "UNI33_010_B20", "box_OutputOrder_v2_18.Out", "box_Simple_Node_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_67();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|378425443", "378425443", "UNI33_010_B20", "box_OutputOrder_v2_18.Out", "box_Simple_Node_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_68();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|321092280", "321092280", "UNI33_010_B20", "box_OutputOrder_v2_18.Out", "box_Simple_Node_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_142_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = self.box_MultipleAND_v2_142;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|706028367", "706028367", "UNI33_010_B20", "box_MultipleAND_v2_142.Out", "box_Simple_Node_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_135_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_135;
    l1 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|896387182", "896387182", "UNI33_010_B20", "box_ProximityTrigger_v2_135.Enter", "box_MultipleOR_143.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_135_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_135;
    l1 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|727263043", "727263043", "UNI33_010_B20", "box_ProximityTrigger_v2_135.OnOccupied", "box_MultipleOR_143.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@AI_manager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_60_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@all_hostages_loaded");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_57_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@Area_Secure");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_59_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@AssignJessCompanion");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_154_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@Camp_Distance");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_55_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@Combat_Listener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_62_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@combat_started");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_63_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@EnterCampStealthListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_129_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@GuardsSpawned");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_147_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@hostage_completed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_58_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@Jess_Death_Fail");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_68_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@Jess_VO_Listeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_67_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@KillAllDialog");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_220_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@KillJessMeet");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_128_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@KillReviveJess");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_229_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@LoadHostages");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_146_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@ReloadKillMeetJess");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_158_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@RevivedJess");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|@Spawn_Remaining_Guards");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_56_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_165()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#7E586656",
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_21()
    local params;
    params = {
        -- Hostage,
        [0] = self.Hostage_01,
        -- STP_Tied,
        [1] = "2099988632961033309",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|58205957");
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

function export:OnEnter_box_GetHealthState_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|62543604");
    l0:SetConnections({
        -- Down,
        [2] = self.f_box_GetHealthState_227_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_227_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.eJess_NPC,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|87257100");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_182_Out,
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|102010365");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_122_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2104381226056990668",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B05_MeetJess",
            id = "727516",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|106232399");
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

function export:OnEnter_box_Gate_v3_207()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_186()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_213()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|150296474");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_61_Out,
    });
    params = {
        -- Entity,
        [0] = "2099988632967324783",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|163772598");
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
                [0] = self.f_box_OutputOrder_v2_125_Out_0,
                [1] = self.f_box_OutputOrder_v2_125_Out_1,
                [2] = self.f_box_OutputOrder_v2_125_Out_2,
                [3] = self.f_box_OutputOrder_v2_125_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|168069603");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_120_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2104381226056990668",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B05_MeetJess",
            id = "727516",
        },
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_149()
    local params;
    params = {
        -- Group,
        [0] = "2101219476904105802",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_32()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#7E586656",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|217577504");
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
                [0] = self.f_box_OutputOrder_v2_141_Out_0,
                [1] = self.f_box_OutputOrder_v2_141_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|253492129");
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

function export:OnEnter_box_CharacterLoadedIdListener_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015204711835729",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_167()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
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
        [2] = "2102411248701295240",
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|326207034");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_5_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|329041226");
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

function export:OnEnter_box_AddActivityObjective_v2_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|329945789");
    l0:SetConnections({
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

function export:OnEnter_box_GetHealthState_194()
    local params, l0;
    DrawTextToScreen("Comment: Jess' Health", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetHealthState')-- Comment: Jess' Health");
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|335876745");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_GetHealthState_194_Critical,
        -- Down,
        [2] = self.f_box_GetHealthState_194_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_194_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.eJess_NPC,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_9()
    local params;
    params = {
        -- Group,
        [0] = self.eJess_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "795071901",
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

function export:OnEnter_box_EntityStatusListener_159()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101828254806615396",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_211()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_76()
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

function export:OnEnter_box_OutputOrder_v2_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|396083447");
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
                [0] = self.f_box_OutputOrder_v2_144_Out_0,
                [1] = self.f_box_OutputOrder_v2_144_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|405465647");
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
                [0] = self.f_box_OutputOrder_v2_150_Out_0,
                [1] = self.f_box_OutputOrder_v2_150_Out_1,
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
        [3] = "3999804168",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_166()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#7E586656",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|501387093");
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
                [0] = self.f_box_OutputOrder_v2_226_Out_0,
                [1] = self.f_box_OutputOrder_v2_226_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_124()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|536942120");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_40_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_170()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|556754740");
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
                [0] = self.f_box_OutputOrder_v2_73_Out_0,
                [1] = self.f_box_OutputOrder_v2_73_Out_1,
            },
            count = 2,
        },
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|558276346");
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
                [0] = self.f_box_OutputOrder_v2_78_Out_0,
                [1] = self.f_box_OutputOrder_v2_78_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|605962521");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2103764115292968469",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|620602860");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
                [3] = self.f_box_OutputOrder_v2_11_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|621130332");
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
                [0] = self.f_box_OutputOrder_v2_201_Out_0,
                [1] = self.f_box_OutputOrder_v2_201_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_99()
    local params;
    params = {
        -- Group,
        [0] = "2099988632982004855",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4220739579",
    };
    return params;
end;

function export:OnEnter_box_BindMarkerOverHead_v2_196()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- eMobileMarker,
        [1] = "2105033881777354169",
        -- eNPC,
        [2] = self.eJess_NPC,
        -- fHeight,
        [3] = 0.45,
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponFiredListener_v2_200()
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

function export:OnEnter_box_OutputOrder_v2_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|677859187");
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
                [0] = self.f_box_OutputOrder_v2_155_Out_0,
                [1] = self.f_box_OutputOrder_v2_155_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_22()
    local params;
    params = {
        -- Hostage,
        [0] = self.Hostage_02,
        -- STP_Tied,
        [1] = "2099988632929575978",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_204()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|793933138");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_13_Out,
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

function export:OnEnter_box_PlayerFullyDetected_140()
    local params;
    params = {
        -- group,
        [0] = "#7E586656",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|800069497");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "DeadHostage_B20",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_160()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_116()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099988632982004855",
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

function export:OnEnter_box_Simple_Node_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|834820141");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|847190095");
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
                [0] = self.f_box_OutputOrder_v2_104_Out_0,
                [1] = self.f_box_OutputOrder_v2_104_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_92()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#9EF14B96",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_117()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099988632967324783",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|878381963");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_14_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_48;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_223()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eJess_NPC,
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2103954022160428976",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_131()
    local params;
    params = {
        -- Group,
        [0] = self.eJess_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "671136922",
    };
    return params;
end;

function export:OnEnter_box_Brick_Secure_Area_v5_33()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bRequiresObjective,
        [1] = true,
        -- gEnemyGroup,
        [3] = "#7E586656",
        -- Objective,
        [4] = {
            section = "Objectives",
            item = "UNI33_010_B20_ClearArea",
            id = "847943",
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_91()
    local params;
    params = {
        -- Group,
        [0] = self.eJess_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "274810050",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_161()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015204711835729",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1004707486");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_81()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2104455895747444931",
        -- WarningZoneTrigger,
        [3] = "2104455888153657538",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1052665863");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2103764115292968469",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1073955014");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_64_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_106()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_169()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_74()
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

function export:OnEnter_box_TaggingModifier_v3_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1116108736");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TaggingModifier_v3_199_Disabled,
    });
    params = {
        -- Entity,
        [0] = self.eJess_NPC,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_97()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1130532547");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Free_Hostages_v2_46()
    local params;
    params = {
        -- bCompletePreviousObjectives,
        [0] = false,
        -- bMinimunHostagesCompletion,
        [1] = false,
        -- bShowObjective,
        [2] = true,
        -- Hostage_group,
        [3] = "#9EF14B96",
        -- HostagesToSave,
        [4] = 1,
        -- Objective,
        [5] = {
            section = "Objectives",
            item = "UNI33_010_B20_SaveHostages",
            id = "705553",
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_119()
    local params;
    params = {
        -- Group,
        [0] = self.eJess_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3211443313",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_108()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1172866303");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_188_True,
    });
    params = {
        -- Pawn,
        [0] = "2102411248701295240",
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1202946822");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityInGroup_90_False,
        -- True,
        [1] = self.f_box_IsEntityInGroup_90_True,
    });
    l0 = self.box_HealthListener_v6_92;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(4),
        -- Group,
        [1] = "#7E586656",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1207058896");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_127_Out,
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

function export:OnEnter_box_OutputOrder_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1213082225");
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

function export:OnEnter_box_OutputOrder_v2_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1217131454");
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
                [0] = self.f_box_OutputOrder_v2_152_Out_0,
                [1] = self.f_box_OutputOrder_v2_152_Out_1,
                [2] = self.f_box_OutputOrder_v2_152_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1223679234");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_193_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2105033881777354169",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B10D_ReviveJess",
            id = "847942",
        },
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_79()
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1252414652");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_26_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2101208536171169381",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B20_SaveHostages",
            id = "705553",
        },
    };
    return params;
end;

function export:OnEnter_box_GetEntityType_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetEntityType.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityType_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1255514439");
    l0:SetConnections({
        -- Player,
        [4] = self.f_box_GetEntityType_88_Player,
    });
    l0 = self.box_HealthListener_v6_92;
    params = {
        -- EntityID,
        [0] = l0:GetDataOutValue(4),
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_51()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.PlayerGroup,
        -- farZone,
        [2] = 50,
        -- id2,
        [3] = "2101208536171169381",
        -- nearZone,
        [4] = 45,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_71()
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

function export:OnEnter_box_HealthListener_v6_102()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eJess_NPC,
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
        [3] = "3690924758",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_209()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_48()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#7E586656",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1367334357");
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
                [0] = self.f_box_OutputOrder_v2_221_Out_0,
                [1] = self.f_box_OutputOrder_v2_221_Out_1,
            },
            count = 2,
        },
    });
    params = {
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1388812901");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2101208536171169381",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B20_SaveHostages",
            id = "705553",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1425676667");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_12_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2101208536171169381",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B20_GOAL",
            id = "584023",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1429360617");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1441784776");
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
                [0] = self.f_box_OutputOrder_v2_130_Out_0,
                [1] = self.f_box_OutputOrder_v2_130_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_138()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_168()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1464810440");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1517887068");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_49_Out,
    });
    params = {
        -- Entity,
        [0] = "2099988632982004855",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1523676122");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101828254806615396",
        -- Group,
        [1] = self.eJess_NPC,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_15()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_148()
    local params;
    params = {
        -- Group,
        [0] = "2101219450354161481",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1554236537");
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
                [0] = self.f_box_OutputOrder_v2_133_Out_0,
                [1] = self.f_box_OutputOrder_v2_133_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1606896363");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_19_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bBeatFinished,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1606943440");
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
                [0] = self.f_box_OutputOrder_v2_75_Out_0,
                [1] = self.f_box_OutputOrder_v2_75_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1645658628");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
                [2] = self.f_box_OutputOrder_v2_34_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_85()
    local params;
    params = {
        -- Group,
        [0] = self.eJess_NPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1777353197",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_134()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.eJess_NPC,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104381292727549916",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1720710641");
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

function export:OnEnter_box_ActivityRetry_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1751953859");
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

function export:OnEnter_box_Compare_Integers_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1840103846");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_111_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.Hostages_Saved,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1866676008");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2101208536171169381",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B20_SaveHostages",
            id = "705553",
        },
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_10()
    local params;
    params = {
        -- Hostage,
        [0] = self.Hostage_04,
        -- STP_Tied,
        [1] = "2102411216520497691",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1903953271");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_112_Out,
    });
    params = {
        -- Entity,
        [0] = "2102411248701295240",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_118()
    local params;
    DrawTextToScreen("Comment: Jess Kills NPC", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'HealthListener_v6')-- Comment: Jess Kills NPC");
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "#7E586656",
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1941198562");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_FastTravelModifier_v2_7_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1960536521");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_151_Out,
    });
    params = {
        -- Bool,
        [0] = self.Reloaded,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|1960919862");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_191_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2105033881777354169",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI33_010_B10D_ReviveJess",
            id = "847942",
        },
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_23()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_115()
    local params;
    params = {
        -- Group,
        [0] = self.Hostage_04,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3910421264",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_113()
    local params;
    params = {
        -- Group,
        [0] = self.Hostage_01,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "607901467",
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_181()
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

function export:OnEnter_box_UseContextualActionModifier_v3_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2010322844");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_187_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102411216520497690",
        -- Entity,
        [1] = "2102417811805579991",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2045707505");
    l0:SetConnections({
    });
    l0 = self.box_GroupSizeListener_v5_48;
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

function export:OnEnter_box_ProximityRadiusListener_v3_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.AllPlayer,
        -- id2,
        [3] = "2104381139056639936",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_145()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2081530762");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_77_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_77_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Reloaded,
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

function export:OnEnter_box_Delay_v5_103()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_105()
    local params;
    params = {
        -- Group,
        [0] = "2102411248701295240",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "580484698",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI33\\UNI33_010_B20.domino|@UNI33_010_B20|2104054680");
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

function export:OnEnter_box_PlayDialog_v6_114()
    local params;
    params = {
        -- Group,
        [0] = self.Hostage_02,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "799858293",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_142()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_96()
    local params;
    params = {
        -- Group,
        [0] = "2099988632982004855",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2662097119",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_135()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.AllPlayer,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104381292727549916",
    };
    return params;
end;

function export:OnExit_box_HealthListener_v6_165_Critical()
    local l0;
    l0 = self.box_HealthListener_v6_165;
    self.AllPlayer = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_165_Damaged()
    local l0;
    l0 = self.box_HealthListener_v6_165;
    self.AllPlayer = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_165_Downed()
    local l0;
    l0 = self.box_HealthListener_v6_165;
    self.AllPlayer = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_165_Healed()
    local l0;
    l0 = self.box_HealthListener_v6_165;
    self.AllPlayer = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_165_Killed()
    local l0;
    l0 = self.box_HealthListener_v6_165;
    self.AllPlayer = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_165_Revived()
    local l0;
    l0 = self.box_HealthListener_v6_165;
    self.AllPlayer = l0:GetDataOutValue(4);
end;

function export:OnExit_box_SetEntity_v2_61_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Hostage_01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_6_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_6;
    self.eJess_NPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_161_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_161;
    self.eJess_NPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_64_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.AllPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Free_Hostages_v2_46_Fail()
    local l0;
    l0 = self.box_Brick_Free_Hostages_v2_46;
    self.Hostages_Saved = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Free_Hostages_v2_46_Started()
    local l0;
    l0 = self.box_Brick_Free_Hostages_v2_46;
    self.Hostages_Saved = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Free_Hostages_v2_46_Success()
    local l0;
    l0 = self.box_Brick_Free_Hostages_v2_46;
    self.Hostages_Saved = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bBeatFinished = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Hostage_02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_112_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Hostage_04 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_151_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Reloaded = l0:GetDataOutValue(0);
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
