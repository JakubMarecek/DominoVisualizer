LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni31/uni31_020_b20.domino
-- User graph: UNI31_020_B20_main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/GroupSizeTest.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPosition.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsGunsForHire_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TaggingModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.MoveCorpses.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3868127432.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2760284551.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1061005050.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3881462913.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1614417436.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1309443786.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4293816426.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3522439866.bnk]], "CSoundResource");
        cboxRes:LoadResource([[651746989.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3345524927.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3730939468.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3522605924.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3525401044.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2325904918.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4247282946.bnk]], "CSoundResource");
        cboxRes:LoadResource([[731180139.bnk]], "CSoundResource");
        cboxRes:LoadResource([[239380637.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3318956048.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3236580210.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1239627812.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4044366608.bnk]], "CSoundResource");
        cboxRes:LoadResource([[901186485.bnk]], "CSoundResource");
        cboxRes:LoadResource([[623416517.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3335116557.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3592145464.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1744747782.bnk]], "CSoundResource");
        cboxRes:LoadResource([[152055027.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3660043526.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2217520735.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4037864395.bnk]], "CSoundResource");
        cboxRes:LoadResource([[153903049.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3882640185.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.UNI31_020_B20_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")] = {
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
                name = "MarkerTypeId",
                type = "database",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "ProgressDisplayType",
                type = "int",
            },
            [3] = {
                name = "TotalProgress",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
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
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/Bind_v4.lua")] = {
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
                name = "Bound",
                delayed = false,
            },
            [1] = {
                name = "UnBound",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "EntityA",
                type = "entity",
            },
            [2] = {
                name = "EntityB",
                type = "entity",
            },
            [3] = {
                name = "IsMultiBeatBind",
                type = "bool",
            },
            [4] = {
                name = "PositionOnly",
                type = "bool",
            },
            [5] = {
                name = "RemoveOffset",
                type = "bool",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")] = {
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
                name = "FromGroup",
                type = "group",
            },
            [1] = {
                name = "ToGroup",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")] = {
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
                name = "Entities",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/Coop/GroupSizeTest.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Equal",
            },
            [2] = {
                name = "Greater",
            },
            [3] = {
                name = "Less",
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
                name = "OnSize",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "PlayerCount",
                type = "bool",
            },
            [2] = {
                name = "Size",
                type = "int",
            },
            [3] = {
                name = "TestAtInit",
                type = "bool",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
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
            [0] = {
                name = "Result",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/IsGunsForHire_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
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
                name = "Roster",
                delayed = false,
            },
            [3] = {
                name = "Squad",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Player",
                type = "entity",
            },
            [1] = {
                name = "targetGFHArchetype",
                type = "archetype",
            },
            [2] = {
                name = "targetGFHEntity",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "affectedGFHEntity",
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
    metadataTable[GetPathID("Domino/System/SetInteger_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromFloat",
            },
            [1] = {
                name = "FromInteger",
            },
            [2] = {
                name = "FromString",
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
            [0] = {
                name = "Float",
                type = "float",
            },
            [1] = {
                name = "Integer",
                type = "int",
            },
            [2] = {
                name = "String",
                type = "string",
            },
            [3] = {
                name = "UseFloor",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "Target",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.MoveCorpses.debug.lua")] = {
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
                name = "BodyCountAdd",
                delayed = false,
            },
            [1] = {
                name = "BodyCountMinus",
                delayed = false,
            },
            [2] = {
                name = "Placed",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Corpse",
                type = "entity",
            },
            [1] = {
                name = "NearFar",
                type = "float",
            },
            [2] = {
                name = "StratPoint",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "InteractID",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua")] = {
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
                name = "Completed",
                delayed = false,
            },
            [1] = {
                name = "Delay_started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Character",
                type = "entity",
            },
            [1] = {
                name = "CheckRevive",
                type = "bool",
            },
            [2] = {
                name = "Dialogue",
                type = "Sound",
            },
            [3] = {
                name = "Line",
                type = "string",
            },
            [4] = {
                name = "SafeguardDelay",
                type = "float",
            },
            [5] = {
                name = "StartDelay",
                type = "float",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI31_020_B20_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main";
    self.player = nil;
    self.eNPC = nil;
    self.CorpsesInPlace = 0;
    self.ePerkinsNPC = nil;
    self.CorpseProgressID = 0;
    self.FriendlyPlayers = nil;
    self.BodyPickedUp = false;
    self.Vehicle = "";
    self.Corpse1 = nil;
    self.Corpse2 = nil;
    self.Corpse3 = nil;
    self.GateOpen = false;
    self.SetGate = false;
    self.Corpses = nil;
    self.CorpseList = {
    };
    self.Host = nil;
    self.Client = nil;
    self.NumBodyPickedUp = 0;
    self.WaterCropse = 0;
    self.CapturedJudge = nil;
    self.box_PerkinsDialogue_23 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|5207843");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_23_Completed,
    });
    self.box_MultipleOR_239 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|5797476");
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
        [0] = self.f_box_MultipleOR_239_Out,
    });
    self.box_SpawnAI_268 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_268;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_268");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|25444893");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_268_Spawned,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|26460160");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_17_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_PerkinsDialogue_55 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|36057910");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_55_Completed,
    });
    self.box_PerkinsDialogue_51 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|42830297");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_51_Completed,
    });
    self.box_SpawnAI_286 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_286;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_286");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|49987965");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_286_Spawned,
    });
    self.box_ContextualActionListener_205 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|55160988");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_205_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_205_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_205_Interrupt,
    });
    self.box_Bind_v4_181 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|56435398");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_181_Bound,
    });
    self.box_MultipleOR_154 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|57095337");
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
        [0] = self.f_box_MultipleOR_154_Out,
    });
    self.box_GroupSizeListener_v5_66 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|67411371");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_66_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_66_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_66_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_66_MemberRemoved,
    });
    self.box_PerkinsDialogue_89 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|77264732");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_89_Completed,
    });
    self.box_SpawnAI_287 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_287;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_287");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|125436404");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_287_Spawned,
    });
    self.box_GroupSizeTest_193 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|128645716");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_193_OnSize,
    });
    self.box_MultipleOR_240 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|133459333");
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
        [0] = self.f_box_MultipleOR_240_Out,
    });
    self.box_MoveCorpses_401 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.MoveCorpses.debug.lua");
    l0 = self.box_MoveCorpses_401;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoveCorpses_401");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|135849300");
    l0:SetConnections({
        -- BodyCountAdd,
        [0] = self.f_box_MoveCorpses_401_BodyCountAdd,
        -- BodyCountMinus,
        [1] = self.f_box_MoveCorpses_401_BodyCountMinus,
        -- Placed,
        [2] = self.f_box_MoveCorpses_401_Placed,
    });
    self.box_SpawnAI_108 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|143453550");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_108_Spawned,
    });
    self.box_Switch_11 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|145223782");
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
                [0] = self.f_box_Switch_11_Output_0,
                [1] = self.f_box_Switch_11_Output_1,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_406 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_406;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_406");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|161138361");
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
        [0] = self.f_box_MultipleOR_406_Out,
    });
    self.box_OnceOnly_v3_413 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_413;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_413");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|192828738");
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
                [0] = self.f_box_OnceOnly_v3_413_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_336 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_336;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_336");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|207424259");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_336_TimeElapsed,
    });
    self.box_SoundModifier_v2_100 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|212589814");
    l0:SetConnections({
    });
    self.box_Switch_153 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|218626105");
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
                [0] = self.f_box_Switch_153_Output_0,
                [1] = self.f_box_Switch_153_Output_1,
            },
            count = 2,
        },
    });
    self.box_PerkinsDialogue_134 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|231210241");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_220 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|244693875");
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
    self.box_Delay_v5_444 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_444;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_444");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|258009028");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_444_TimeElapsed,
    });
    self.box_MultipleOR_96 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|302489250");
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
        [0] = self.f_box_MultipleOR_96_Out,
    });
    self.box_UniversalInteractionModifier_v2_24 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|308293463");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_24_Enabled,
    });
    self.box_MultipleOR_191 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|316236227");
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
        [0] = self.f_box_MultipleOR_191_Out,
    });
    self.box_MultipleOR_196 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|318707015");
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
        [0] = self.f_box_MultipleOR_196_Out,
    });
    self.box_HealthListener_v6_82 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|328214506");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_82_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_82_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_82_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_82_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_82_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_82_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_82_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_82_Revived,
    });
    self.box_RemoveEntity_v2_233 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|354202894");
    l0:SetConnections({
    });
    self.box_PerkinsDialogue_53 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|358747523");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_53_Completed,
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|359712195");
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
        [0] = self.f_box_MultipleOR_27_Out,
    });
    self.box_GroupSizeListener_v5_157 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|386607876");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_157_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_157_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_157_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_157_MemberRemoved,
    });
    self.box_Delay_v5_130 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|393419491");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_130_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_130_TimeElapsed,
    });
    self.box_PerkinsDialogue_190 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|409665154");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_190_Completed,
    });
    self.box_MultipleOR_198 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|449317220");
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
        [0] = self.f_box_MultipleOR_198_Out,
    });
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|450674153");
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
        [0] = self.f_box_MultipleOR_70_Out,
    });
    self.box_PerkinsDialogue_87 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|452153306");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_87_Completed,
    });
    self.box_MultipleOR_271 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_271");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|466367020");
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
        [0] = self.f_box_MultipleOR_271_Out,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|467214296");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_Gate_v3_392 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_392;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_392");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|479924356");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_392_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_392_Out,
    });
    self.box_Bind_v4_128 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|498703485");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_128_Bound,
    });
    self.box_UniversalInteractionListener_13 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|499503169");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_13_Interacted,
    });
    self.box_ExitZoneWarningListener_v3_309 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_309;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_309");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|539749555");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_309_FailingZoneEntered,
    });
    self.box_SoundModifier_v2_60 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|554803841");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_215 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|557290517");
    l0:SetConnections({
    });
    self.box_SpawnAI_109 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|557585585");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_109_Spawned,
    });
    self.box_Gate_v3_318 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_318;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_318");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|557758314");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_318_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_318_Out,
    });
    self.box_PerkinsDialogue_21 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|558534730");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_21_Completed,
    });
    self.box_RemoveEntity_v2_446 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_446;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_446");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|561532965");
    l0:SetConnections({
    });
    self.box_MultipleOR_131 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|561744583");
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
    self.box_PerkinsDialogue_75 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|571319907");
    l0:SetConnections({
    });
    self.box_MultipleOR_158 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|601636407");
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
    self.box_MultipleOR_182 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|644645358");
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
        [0] = self.f_box_MultipleOR_182_Out,
    });
    self.box_PositionModifier_v2_10 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|677071866");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_10_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_10_StartOut,
    });
    self.box_PerkinsDialogue_136 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|680029368");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_159 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|683427388");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_159_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_159_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_159_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_159_LoadedIdReceived,
    });
    self.box_OnceOnly_v3_44 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|691412746");
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
                [0] = self.f_box_OnceOnly_v3_44_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_260 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|714123918");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_260_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_260_TimeElapsed,
    });
    self.box_MultipleOR_141 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|721312983");
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
        [0] = self.f_box_MultipleOR_141_Out,
    });
    self.box_OnceOnly_v3_32 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|724755148");
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
                [0] = self.f_box_OnceOnly_v3_32_Out_0,
            },
            count = 2,
        },
    });
    self.box_Bind_v4_125 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|763074840");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_125_Bound,
    });
    self.box_Gate_v3_253 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_253");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|764940145");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_253_Out,
    });
    self.box_MultipleOR_187 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|788827517");
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
        [0] = self.f_box_MultipleOR_187_Out,
    });
    self.box_NavLinkModifier_52 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|798611742");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_52_Activated,
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_52_Deactivated,
    });
    self.box_MultipleOR_118 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|798735139");
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
    self.box_PerkinsDialogue_98 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|813784259");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_98_Completed,
        -- Delay started,
        [1] = self.f_box_PerkinsDialogue_98_Delay_started,
    });
    self.box_MultipleOR_384 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_384;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_384");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|813814038");
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
        [0] = self.f_box_MultipleOR_384_Out,
    });
    self.box_SpawnAI_279 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_279;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|830670995");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_279_Spawned,
    });
    self.box_SpawnAI_110 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|843072148");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_110_Spawned,
    });
    self.box_SoundModifier_v2_200 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|857410704");
    l0:SetConnections({
    });
    self.box_MultipleOR_207 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|876907427");
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
        [0] = self.f_box_MultipleOR_207_Out,
    });
    self.box_MultipleOR_269 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_269;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_269");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|896338793");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 9,
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
        [0] = self.f_box_MultipleOR_269_Out,
    });
    self.box_ProximityTrigger_v2_169 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|897698092");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_169_Enter,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_169_OnOccupied,
    });
    self.box_Music_Quest_v2_213 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|902235900");
    l0:SetConnections({
    });
    self.box_SpawnAI_266 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_266;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_266");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|928043460");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_266_Spawned,
    });
    self.box_Music_Quest_v2_209 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|936281376");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_221 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|940396299");
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
                [0] = self.f_box_OnceOnly_v3_221_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_382 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_382;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_382");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|942509085");
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
                [0] = self.f_box_OnceOnly_v3_382_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_369 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_369;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_369");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|949972077");
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
        [0] = self.f_box_MultipleOR_369_Out,
    });
    self.box_RemoveEntity_v2_232 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|952937879");
    l0:SetConnections({
    });
    self.box_Delay_v5_229 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|974417878");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_229_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_15 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|999695883");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_15_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_15_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_15_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_15_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_15_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_15_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_15_Use,
    });
    self.box_OnceOnly_v3_219 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1008130870");
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
                [0] = self.f_box_OnceOnly_v3_219_Out_0,
            },
            count = 2,
        },
    });
    self.box_PerkinsDialogue_84 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1010879950");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_84_Completed,
    });
    self.box_PerkinsDialogue_83 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1026191242");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_83_Completed,
    });
    self.box_OnceOnly_v3_174 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1029740782");
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
                [0] = self.f_box_OnceOnly_v3_174_Out_0,
            },
            count = 2,
        },
    });
    self.box_PerkinsDialogue_120 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1040366478");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_99 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1049270251");
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
                [0] = self.f_box_OnceOnly_v3_99_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_252 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_252;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_252");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1060910088");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_252_Out,
    });
    self.box_PerkinsDialogue_137 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1061802217");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_137_Completed,
    });
    self.box_Delay_v5_206 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1075453551");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_206_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_302 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_302;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_302");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1093600512");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_302_OnOccupied,
    });
    self.box_ProximityTrigger_v2_69 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1127742735");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_69_OnOccupied,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1134844527");
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
    self.box_Gate_v3_195 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1137133552");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_195_Out,
    });
    self.box_Delay_v5_194 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1141415853");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_194_TimeElapsed,
    });
    self.box_PerkinsDialogue_67 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1158798294");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_67_Completed,
    });
    self.box_Delay_v5_372 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_372;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_372");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1171299346");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_372_TimeElapsed,
    });
    self.box_OnceOnly_v3_90 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1192789266");
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
                [0] = self.f_box_OnceOnly_v3_90_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_227 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1199362223");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_227_TimeElapsed,
    });
    self.box_MultipleOR_208 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1232245067");
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
        [0] = self.f_box_MultipleOR_208_Out,
    });
    self.box_Delay_v5_88 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1241892573");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_88_TimeElapsed,
    });
    self.box_MultipleOR_398 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_398;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_398");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1243608724");
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
        [0] = self.f_box_MultipleOR_398_Out,
    });
    self.box_OnceOnly_v3_417 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_417;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_417");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1250418579");
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
                [0] = self.f_box_OnceOnly_v3_417_Out_0,
            },
            count = 2,
        },
    });
    self.box_PerkinsDialogue_38 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1270619959");
    l0:SetConnections({
    });
    self.box_Switch_264 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_264;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_264");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1301735138");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 9,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_Switch_264_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_264_Output_0,
                [1] = self.f_box_Switch_264_Output_1,
                [2] = self.f_box_Switch_264_Output_2,
                [3] = self.f_box_Switch_264_Output_3,
                [4] = self.f_box_Switch_264_Output_4,
                [5] = self.f_box_Switch_264_Output_5,
                [6] = self.f_box_Switch_264_Output_6,
                [7] = self.f_box_Switch_264_Output_7,
                [8] = self.f_box_Switch_264_Output_8,
            },
            count = 9,
        },
    });
    self.box_GroupSizeListener_v5_94 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1312607206");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_94_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_94_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_94_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_94_MemberRemoved,
    });
    self.box_PerkinsDialogue_63 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1322032099");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_63_Completed,
    });
    self.box_PerkinsDialogue_12 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1327202616");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_12_Completed,
    });
    self.box_Gate_v3_92 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1333019583");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_92_Out,
    });
    self.box_SpawnAI_281 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_281;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_281");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1359566884");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_281_Spawned,
    });
    self.box_PerkinsDialogue_46 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1365419970");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_46_Completed,
    });
    self.box_SpawnAI_255 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_255");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1396323478");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_255_Spawned,
    });
    self.box_PerkinsDialogue_57 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1414149685");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_57_Completed,
    });
    self.box_NavLinkModifier_56 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1426491997");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_56_Activated,
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_56_Deactivated,
    });
    self.box_Switch_256 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_256;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_256");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1426650682");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 9,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Switch_256_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_256_Output_0,
                [1] = self.f_box_Switch_256_Output_1,
                [2] = self.f_box_Switch_256_Output_2,
                [3] = self.f_box_Switch_256_Output_3,
                [4] = self.f_box_Switch_256_Output_4,
                [5] = self.f_box_Switch_256_Output_5,
                [6] = self.f_box_Switch_256_Output_6,
                [7] = self.f_box_Switch_256_Output_7,
                [8] = self.f_box_Switch_256_Output_8,
            },
            count = 9,
        },
    });
    self.box_PerkinsDialogue_133 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1485576533");
    l0:SetConnections({
    });
    self.box_PerkinsDialogue_135 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1509460163");
    l0:SetConnections({
        -- Delay started,
        [1] = self.f_box_PerkinsDialogue_135_Delay_started,
    });
    self.box_BindMarkerOverHead_v2_139 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
    l0 = self.box_BindMarkerOverHead_v2_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_v2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1566627581");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BindMarkerOverHead_v2_139_Out,
    });
    self.box_SpawnAI_291 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_291;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_291");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1576494199");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_291_Spawned,
    });
    self.box_PerkinsDialogue_72 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1597486304");
    l0:SetConnections({
    });
    self.box_MultipleOR_71 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1611067250");
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
        [0] = self.f_box_MultipleOR_71_Out,
    });
    self.box_MultipleOR_80 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1617253997");
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
        [0] = self.f_box_MultipleOR_80_Out,
    });
    self.box_MultipleOR_328 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_328;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_328");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1618369520");
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
        [0] = self.f_box_MultipleOR_328_Out,
    });
    self.box_RemoveEntity_v2_230 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1633698005");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_50 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1637508323");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_50_Downed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_50_Revived,
    });
    self.box_MultipleOR_242 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_242;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_242");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1649587492");
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
        [0] = self.f_box_MultipleOR_242_Out,
    });
    self.box_ProximityTrigger_v2_93 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1649884807");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_93_Enter,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_93_OnOccupied,
    });
    self.box_MultipleOR_152 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1659902659");
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
        [0] = self.f_box_MultipleOR_152_Out,
    });
    self.box_Delay_v5_180 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1696450036");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_180_TimeElapsed,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1699375023");
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
    self.box_MoveCorpses_405 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.MoveCorpses.debug.lua");
    l0 = self.box_MoveCorpses_405;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoveCorpses_405");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1709320471");
    l0:SetConnections({
        -- BodyCountAdd,
        [0] = self.f_box_MoveCorpses_405_BodyCountAdd,
        -- BodyCountMinus,
        [1] = self.f_box_MoveCorpses_405_BodyCountMinus,
        -- Placed,
        [2] = self.f_box_MoveCorpses_405_Placed,
    });
    self.box_Music_Quest_v2_211 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1711353526");
    l0:SetConnections({
    });
    self.box_Gate_v3_148 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1766131399");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_148_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_148_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_148_Out,
    });
    self.box_MultipleAND_v2_315 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_315;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_315");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1774092440");
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
        [0] = self.f_box_MultipleAND_v2_315_Out,
    });
    self.box_MoveCorpses_399 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.MoveCorpses.debug.lua");
    l0 = self.box_MoveCorpses_399;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoveCorpses_399");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1794456610");
    l0:SetConnections({
        -- BodyCountAdd,
        [0] = self.f_box_MoveCorpses_399_BodyCountAdd,
        -- BodyCountMinus,
        [1] = self.f_box_MoveCorpses_399_BodyCountMinus,
        -- Placed,
        [2] = self.f_box_MoveCorpses_399_Placed,
    });
    self.box_Switch_43 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1796682810");
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
                [0] = self.f_box_Switch_43_Output_0,
                [1] = self.f_box_Switch_43_Output_1,
            },
            count = 2,
        },
    });
    self.box_Random_197 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1797124847");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
            [1] = 4,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_197_Output_0,
                [1] = self.f_box_Random_197_Output_1,
                [2] = self.f_box_Random_197_Output_2,
                [3] = self.f_box_Random_197_Output_3,
            },
            count = 4,
        },
    });
    self.box_GroupSizeListener_v5_258 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_258");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1807871195");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_258_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_258_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_258_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_258_MemberRemoved,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1815714416");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_Delay_v5_228 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1831652239");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_228_TimeElapsed,
    });
    self.box_MultipleOR_176 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1846273380");
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
        [0] = self.f_box_MultipleOR_176_Out,
    });
    self.box_Music_Quest_v2_217 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1850242281");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_36 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1854453448");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_36_Killed,
    });
    self.box_GroupSizeListener_v5_58 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1861100596");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_58_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_58_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_58_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_58_MemberRemoved,
    });
    self.box_Gate_v3_397 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_397;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_397");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1949600280");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_397_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_397_Out,
    });
    self.box_OnceOnly_v3_170 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1956826968");
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
                [0] = self.f_box_OnceOnly_v3_170_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_188 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1959355189");
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
                [0] = self.f_box_OnceOnly_v3_188_Out_0,
            },
            count = 2,
        },
    });
    self.box_PerkinsDialogue_59 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1961345495");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_PerkinsDialogue_59_Completed,
    });
    self.box_Gate_v3_354 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_354;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_354");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1994358850");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_354_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_354_Out,
    });
    self.box_MultipleAND_v2_119 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2000342822");
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
        [0] = self.f_box_MultipleAND_v2_119_Out,
    });
    self.box_MultipleOR_362 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_362;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_362");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2009134015");
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
        [0] = self.f_box_MultipleOR_362_Out,
    });
    self.box_OnceOnly_v3_166 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2009248915");
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
                [0] = self.f_box_OnceOnly_v3_166_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_68 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2012013553");
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
                [0] = self.f_box_OnceOnly_v3_68_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_175 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2016007480");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_175_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_175_Out,
    });
    self.box_SoundModifier_v2_420 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_420;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_420");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2020750660");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2022213409");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_Gate_v3_320 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_320;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_320");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2033420623");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_320_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_320_Out,
    });
    self.box_PositionModifier_v2_9 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2036060344");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_9_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_9_StartOut,
    });
    self.box_RemoveEntity_v2_445 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_445;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_445");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2051931405");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_25 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2052075221");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_25_OnOccupied,
    });
    self.box_PerkinsDialogue_81 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_020_B20.PerkinsDialogue.debug.lua");
    l0 = self.box_PerkinsDialogue_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PerkinsDialogue_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2055668479");
    l0:SetConnections({
    });
    self.box_Gate_v3_394 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_394;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_394");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2078591552");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_394_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_394_Out,
    });
    self.box_MultipleOR_117 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2089808672");
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
        [0] = self.f_box_MultipleOR_117_Out,
    });
    self.box_MultipleOR_400 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_400;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_400");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2091928269");
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
        [0] = self.f_box_MultipleOR_400_Out,
    });
    self.box_OnceOnly_v3_49 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2095218187");
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
                [0] = self.f_box_OnceOnly_v3_49_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_433 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_433;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_433");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2122069276");
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
                [0] = self.f_box_OnceOnly_v3_433_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_288 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_288;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_288");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2127222711");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_288_Spawned,
    });
    self.box_Delay_v5_173 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2146652847");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_173_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|619536815", "619536815", "UNI31_020_B20_main", "In", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_249_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_340();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|68804795", "68804795", "UNI31_020_B20_main", "box_Simple_Node_249.Out", "box_IntegerArithmetics_v2_340.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_218_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_92();
    l0 = self.box_Gate_v3_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|273135410", "273135410", "UNI31_020_B20_main", "box_Simple_Node_218.Out", "box_Gate_v3_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_162_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_39();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|385648845", "385648845", "UNI31_020_B20_main", "box_Simple_Node_162.Out", "box_GetPosition_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_127();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1517587248", "1517587248", "UNI31_020_B20_main", "box_Simple_Node_33.Out", "box_OutputOrder_v2_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_GroupSizeListener_v5_258();
    l0 = self.box_GroupSizeListener_v5_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|515109889", "515109889", "UNI31_020_B20_main", "box_Simple_Node_33.Out", "box_GroupSizeListener_v5_258.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_318();
    l0 = self.box_Gate_v3_318;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|580819982", "580819982", "UNI31_020_B20_main", "box_Simple_Node_33.Out", "box_Gate_v3_318.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_192_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_15();
    l0 = self.box_ProximityTrigger_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|969962437", "969962437", "UNI31_020_B20_main", "box_Simple_Node_192.Out", "box_ProximityTrigger_v2_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_144_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_257();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|916354120", "916354120", "UNI31_020_B20_main", "box_Simple_Node_144.Out", "box_OutputOrder_v2_257.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_GroupSizeListener_v5_66();
    l0 = self.box_GroupSizeListener_v5_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|97651103", "97651103", "UNI31_020_B20_main", "box_Simple_Node_144.Out", "box_GroupSizeListener_v5_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_58();
    l0 = self.box_GroupSizeListener_v5_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1473068529", "1473068529", "UNI31_020_B20_main", "box_Simple_Node_64.Out", "box_GroupSizeListener_v5_58.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_246_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_331();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|324548366", "324548366", "UNI31_020_B20_main", "box_Simple_Node_246.Out", "box_ActivityObjectiveMarkerModifier_v3_331.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_247_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_333();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1483146394", "1483146394", "UNI31_020_B20_main", "box_Simple_Node_247.Out", "box_ActivityObjectiveMarkerModifier_v3_333.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_248_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_375();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1611574178", "1611574178", "UNI31_020_B20_main", "box_Simple_Node_248.Out", "box_ActivityObjectiveMarkerModifier_v3_375.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_316_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_443();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1731204138", "1731204138", "UNI31_020_B20_main", "box_Simple_Node_316.Out", "box_Compare_Boolean_443.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_149_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1423379170", "1423379170", "UNI31_020_B20_main", "box_Simple_Node_149.Out", "box_MultipleOR_176.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_184_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_148();
    l0 = self.box_Gate_v3_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1374940284", "1374940284", "UNI31_020_B20_main", "box_Simple_Node_184.Out", "box_Gate_v3_148.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_185_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_148();
    l0 = self.box_Gate_v3_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1882045438", "1882045438", "UNI31_020_B20_main", "box_Simple_Node_185.Out", "box_Gate_v3_148.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_293_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_397();
    l0 = self.box_Gate_v3_397;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|902452950", "902452950", "UNI31_020_B20_main", "box_Simple_Node_293.Out", "box_Gate_v3_397.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_320();
    l0 = self.box_Gate_v3_320;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1638972530", "1638972530", "UNI31_020_B20_main", "box_Simple_Node_293.Out", "box_Gate_v3_320.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_PerkinsDialogue_23_Completed()
    local l0, l1;
    l0 = self.box_PerkinsDialogue_23;
    l1 = self.box_OnceOnly_v3_413;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1250405413", "1250405413", "UNI31_020_B20_main", "box_PerkinsDialogue_23.Completed", "box_OnceOnly_v3_413.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_239_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_394();
    l0 = self.box_MultipleOR_239;
    l1 = self.box_Gate_v3_394;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|291878552", "291878552", "UNI31_020_B20_main", "box_MultipleOR_239.Out", "box_Gate_v3_394.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_268_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_268;
    l1 = self.box_MultipleOR_269;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|333412571", "333412571", "UNI31_020_B20_main", "box_SpawnAI_268.Spawned", "box_MultipleOR_269.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_Delay_v5_17_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_17;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|778868232", "778868232", "UNI31_020_B20_main", "box_Delay_v5_17.Started", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_17;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2077197950", "2077197950", "UNI31_020_B20_main", "box_Delay_v5_17.TimeElapsed", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PerkinsDialogue_55_Completed()
    local l0, l1;
    l0 = self.box_PerkinsDialogue_55;
    l1 = self.box_MultipleOR_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2036410034", "2036410034", "UNI31_020_B20_main", "box_PerkinsDialogue_55.Completed", "box_MultipleOR_80.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PerkinsDialogue_51_Completed()
    local l0, l1;
    l0 = self.box_PerkinsDialogue_51;
    l1 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1598182137", "1598182137", "UNI31_020_B20_main", "box_PerkinsDialogue_51.Completed", "box_MultipleOR_182.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_202_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_55();
    l0 = self.box_PerkinsDialogue_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1621969766", "1621969766", "UNI31_020_B20_main", "box_Compare_Integers_202.A_eq_B", "box_PerkinsDialogue_55.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_202_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_92();
    l0 = self.box_Gate_v3_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1057371052", "1057371052", "UNI31_020_B20_main", "box_Compare_Integers_202.A_gt_B", "box_Gate_v3_92.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_286_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_286;
    l1 = self.box_MultipleOR_269;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|164183910", "164183910", "UNI31_020_B20_main", "box_SpawnAI_286.Spawned", "box_MultipleOR_269.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_ContextualActionListener_205_Enabled()
    local l0, l1;
    l0 = self.box_ContextualActionListener_205;
    l1 = self.box_MultipleOR_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1651401104", "1651401104", "UNI31_020_B20_main", "box_ContextualActionListener_205.Enabled", "box_MultipleOR_208.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_205_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_205;
    l1 = self.box_MultipleOR_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1296063464", "1296063464", "UNI31_020_B20_main", "box_ContextualActionListener_205.End", "box_MultipleOR_207.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_205_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_205;
    l1 = self.box_MultipleOR_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1913168883", "1913168883", "UNI31_020_B20_main", "box_ContextualActionListener_205.Interrupt", "box_MultipleOR_207.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Bind_v4_181_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_119();
    l0 = self.box_Bind_v4_181;
    l1 = self.box_MultipleAND_v2_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1850572545", "1850572545", "UNI31_020_B20_main", "box_Bind_v4_181.Bound", "box_MultipleAND_v2_119.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_154_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_9();
    l0 = self.box_MultipleOR_154;
    l1 = self.box_PositionModifier_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1259734566", "1259734566", "UNI31_020_B20_main", "box_MultipleOR_154.Out", "box_PositionModifier_v2_9.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_129_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_129_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_130();
    l0 = self.box_Delay_v5_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1026301397", "1026301397", "UNI31_020_B20_main", "box_RandomFloat_v2_129.Out", "box_Delay_v5_130.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v5_66_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_66;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|869830190", "869830190", "UNI31_020_B20_main", "box_GroupSizeListener_v5_66.Enabled", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_66_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_66;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|405503227", "405503227", "UNI31_020_B20_main", "box_GroupSizeListener_v5_66.MemberAdded", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_112_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_112_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_229();
    l0 = self.box_Delay_v5_229;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2066829019", "2066829019", "UNI31_020_B20_main", "box_SetEntity_v2_112.Out", "box_Delay_v5_229.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetInteger_v2_373_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_373_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_362;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1179172561", "1179172561", "UNI31_020_B20_main", "box_SetInteger_v2_373.Out", "box_MultipleOR_362.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PerkinsDialogue_89_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_212();
    l0 = self.box_PerkinsDialogue_89;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|224267112", "224267112", "UNI31_020_B20_main", "box_PerkinsDialogue_89.Completed", "box_OutputOrder_v2_212.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_140_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_149();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|881560766", "881560766", "UNI31_020_B20_main", "box_OutputOrder_v2_140.Out", "box_Simple_Node_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_140_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_126();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1572021500", "1572021500", "UNI31_020_B20_main", "box_OutputOrder_v2_140.Out", "box_SetBoolean_v2_126.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_140_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_155();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|152520183", "152520183", "UNI31_020_B20_main", "box_OutputOrder_v2_140.Out", "box_SetBoolean_v2_155.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_360_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_360_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_336();
    l0 = self.box_Delay_v5_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1340845544", "1340845544", "UNI31_020_B20_main", "box_IntegerArithmetics_v2_360.Out", "box_Delay_v5_336.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_287_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_287;
    l1 = self.box_MultipleOR_269;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1826948402", "1826948402", "UNI31_020_B20_main", "box_SpawnAI_287.Spawned", "box_MultipleOR_269.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GroupSizeTest_193_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_Random_197();
    l0 = self.box_GroupSizeTest_193;
    l1 = self.box_Random_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1089880790", "1089880790", "UNI31_020_B20_main", "box_GroupSizeTest_193.OnSize", "box_Random_197.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_240_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_392();
    l0 = self.box_MultipleOR_240;
    l1 = self.box_Gate_v3_392;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2092967791", "2092967791", "UNI31_020_B20_main", "box_MultipleOR_240.Out", "box_Gate_v3_392.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_MoveCorpses_401_BodyCountAdd()
    local l0, l1;
    l0 = self.box_MoveCorpses_401;
    l1 = self.box_MultipleOR_406;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2121350254", "2121350254", "UNI31_020_B20_main", "box_MoveCorpses_401.BodyCountAdd", "box_MultipleOR_406.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MoveCorpses_401_BodyCountMinus()
    local l0, l1;
    l0 = self.box_MoveCorpses_401;
    l1 = self.box_MultipleOR_400;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|782756696", "782756696", "UNI31_020_B20_main", "box_MoveCorpses_401.BodyCountMinus", "box_MultipleOR_400.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MoveCorpses_401_Placed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_243();
    l0 = self.box_MoveCorpses_401;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1273845529", "1273845529", "UNI31_020_B20_main", "box_MoveCorpses_401.Placed", "box_OutputOrder_v2_243.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_172();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1803443047", "1803443047", "UNI31_020_B20_main", "box_AddActivityObjective_v2_29.Out", "box_ActivityObjectiveMarkerModifier_v3_172.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_108_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_114();
    l0 = self.box_SpawnAI_108;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|790784585", "790784585", "UNI31_020_B20_main", "box_SpawnAI_108.Spawned", "box_HealthModifier_v2_114.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_11_Output_0()
    local l0, l1;
    l0 = self.box_Switch_11;
    l1 = self.box_MultipleOR_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1246779302", "1246779302", "UNI31_020_B20_main", "box_Switch_11.Output", "box_MultipleOR_154.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_11_Output_1()
    local l0, l1;
    l0 = self.box_Switch_11;
    l1 = self.box_MultipleOR_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2079058696", "2079058696", "UNI31_020_B20_main", "box_Switch_11.Output", "box_MultipleOR_152.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AddActivityObjectiveProgress_v2_143_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_143_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_294();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|884460624", "884460624", "UNI31_020_B20_main", "box_AddActivityObjectiveProgress_v2_143.Out", "box_OutputOrder_v2_294.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_406_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_360();
    l0 = self.box_MultipleOR_406;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1777726451", "1777726451", "UNI31_020_B20_main", "box_MultipleOR_406.Out", "box_IntegerArithmetics_v2_360.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_349_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_329();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2050337690", "2050337690", "UNI31_020_B20_main", "box_OutputOrder_v2_349.Out", "box_Compare_Integers_329.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_349_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_362;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|184876879", "184876879", "UNI31_020_B20_main", "box_OutputOrder_v2_349.Out", "box_MultipleOR_362.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_349_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_393();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1361607002", "1361607002", "UNI31_020_B20_main", "box_OutputOrder_v2_349.Out", "box_Compare_Integers_393.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_302();
    l0 = self.box_ProximityTrigger_v2_302;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|451527362", "451527362", "UNI31_020_B20_main", "box_OutputOrder_v2_20.Out", "box_ProximityTrigger_v2_302.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_69();
    l0 = self.box_ProximityTrigger_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1263542635", "1263542635", "UNI31_020_B20_main", "box_OutputOrder_v2_20.Out", "box_ProximityTrigger_v2_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_25();
    l0 = self.box_ProximityTrigger_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1312120913", "1312120913", "UNI31_020_B20_main", "box_OutputOrder_v2_20.Out", "box_ProximityTrigger_v2_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_245_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_242;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1028322173", "1028322173", "UNI31_020_B20_main", "box_OutputOrder_v2_245.Out", "box_MultipleOR_242.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_245_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_249();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|957742783", "957742783", "UNI31_020_B20_main", "box_OutputOrder_v2_245.Out", "box_Simple_Node_249.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_244_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_240;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1381810570", "1381810570", "UNI31_020_B20_main", "box_OutputOrder_v2_244.Out", "box_MultipleOR_240.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_244_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_249();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|913255459", "913255459", "UNI31_020_B20_main", "box_OutputOrder_v2_244.Out", "box_Simple_Node_249.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_337_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_357();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1382431429", "1382431429", "UNI31_020_B20_main", "box_OutputOrder_v2_337.Out", "box_ActivityObjectiveMarkerModifier_v3_357.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_337_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_246();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1209322212", "1209322212", "UNI31_020_B20_main", "box_OutputOrder_v2_337.Out", "box_Simple_Node_246.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_337_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_247();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1960088148", "1960088148", "UNI31_020_B20_main", "box_OutputOrder_v2_337.Out", "box_Simple_Node_247.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_337_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_248();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1046683307", "1046683307", "UNI31_020_B20_main", "box_OutputOrder_v2_337.Out", "box_Simple_Node_248.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_413_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_86();
    l0 = self.box_OnceOnly_v3_413;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|177588619", "177588619", "UNI31_020_B20_main", "box_OnceOnly_v3_413.Out", "box_OutputOrder_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_336_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_397();
    l0 = self.box_Delay_v5_336;
    l1 = self.box_Gate_v3_397;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1080784528", "1080784528", "UNI31_020_B20_main", "box_Delay_v5_336.TimeElapsed", "box_Gate_v3_397.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Switch_153_Output_0()
    local l0, l1;
    l0 = self.box_Switch_153;
    l1 = self.box_MultipleOR_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1572547214", "1572547214", "UNI31_020_B20_main", "box_Switch_153.Output", "box_MultipleOR_152.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_153_Output_1()
    local l0, l1;
    l0 = self.box_Switch_153;
    l1 = self.box_MultipleOR_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|651610452", "651610452", "UNI31_020_B20_main", "box_Switch_153.Output", "box_MultipleOR_154.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|653031324", "653031324", "UNI31_020_B20_main", "box_OutputOrder_v2_16.Out", "box_Delay_v5_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_444();
    l0 = self.box_Delay_v5_444;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1757269238", "1757269238", "UNI31_020_B20_main", "box_OutputOrder_v2_16.Out", "box_Delay_v5_444.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_150();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|826609029", "826609029", "UNI31_020_B20_main", "box_OutputOrder_v2_16.Out", "box_Compare_Boolean_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_220_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_238();
    l0 = self.box_OnceOnly_v3_220;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|395006101", "395006101", "UNI31_020_B20_main", "box_OnceOnly_v3_220.Out", "box_OutputOrder_v2_238.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_37_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_37_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2054418604", "2054418604", "UNI31_020_B20_main", "box_GetPlayerGroup_v2_37.Out", "box_OutputOrder_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_444_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_175();
    l0 = self.box_Delay_v5_444;
    l1 = self.box_Gate_v3_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|998015680", "998015680", "UNI31_020_B20_main", "box_Delay_v5_444.TimeElapsed", "box_Gate_v3_175.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_61_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_165();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1070745390", "1070745390", "UNI31_020_B20_main", "box_Compare_Integers_61.A_eq_B", "box_OutputOrder_v2_165.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_61_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|844384024", "844384024", "UNI31_020_B20_main", "box_Compare_Integers_61.A_gt_B", "box_OnceOnly_v3_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_161_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_162();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1156433237", "1156433237", "UNI31_020_B20_main", "box_OutputOrder_v2_161.Out", "box_Simple_Node_162.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_161_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_180();
    l0 = self.box_Delay_v5_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1233767458", "1233767458", "UNI31_020_B20_main", "box_OutputOrder_v2_161.Out", "box_Delay_v5_180.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_56();
    l0 = self.box_NavLinkModifier_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1169661553", "1169661553", "UNI31_020_B20_main", "box_OutputOrder_v2_18.Out", "box_NavLinkModifier_56.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_149();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1067313425", "1067313425", "UNI31_020_B20_main", "box_OutputOrder_v2_18.Out", "box_Simple_Node_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_101_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_108();
    l0 = self.box_SpawnAI_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1621606916", "1621606916", "UNI31_020_B20_main", "box_IsEntityLoaded_v3_101.False", "box_SpawnAI_108.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_101_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_102();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|250095607", "250095607", "UNI31_020_B20_main", "box_IsEntityLoaded_v3_101.True", "box_SetEntity_v2_102.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_96_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_95();
    l0 = self.box_MultipleOR_96;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|928285882", "928285882", "UNI31_020_B20_main", "box_MultipleOR_96.Out", "box_Compare_Integers_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_24_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_13();
    l0 = self.box_UniversalInteractionModifier_v2_24;
    l1 = self.box_UniversalInteractionListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|283389144", "283389144", "UNI31_020_B20_main", "box_UniversalInteractionModifier_v2_24.Enabled", "box_UniversalInteractionListener_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_191_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_191;
    l1 = self.box_OnceOnly_v3_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1199207029", "1199207029", "UNI31_020_B20_main", "box_MultipleOR_191.Out", "box_OnceOnly_v3_170.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_196_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_199();
    l0 = self.box_MultipleOR_196;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2078164879", "2078164879", "UNI31_020_B20_main", "box_MultipleOR_196.Out", "box_Compare_Integers_199.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_82_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_IsGunsForHire_v2_76();
    l0 = self.box_HealthListener_v6_82;
    l1 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|711915773", "711915773", "UNI31_020_B20_main", "box_HealthListener_v6_82.Killed", "box_IsGunsForHire_v2_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PerkinsDialogue_53_Completed()
    local l0, l1;
    l0 = self.box_PerkinsDialogue_53;
    l1 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|59193212", "59193212", "UNI31_020_B20_main", "box_PerkinsDialogue_53.Completed", "box_MultipleOR_182.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_24();
    l0 = self.box_MultipleOR_27;
    l1 = self.box_UniversalInteractionModifier_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|890756367", "890756367", "UNI31_020_B20_main", "box_MultipleOR_27.Out", "box_UniversalInteractionModifier_v2_24.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_157_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_156();
    l0 = self.box_GroupSizeListener_v5_157;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1800200417", "1800200417", "UNI31_020_B20_main", "box_GroupSizeListener_v5_157.Enabled", "box_Compare_Integers_156.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_130_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_183();
    l0 = self.box_Delay_v5_130;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1107977795", "1107977795", "UNI31_020_B20_main", "box_Delay_v5_130.Stopped", "box_OutputOrder_v2_183.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_130_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_43();
    l0 = self.box_Delay_v5_130;
    l1 = self.box_Switch_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1130341997", "1130341997", "UNI31_020_B20_main", "box_Delay_v5_130.TimeElapsed", "box_Switch_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_138_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_97();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1594413886", "1594413886", "UNI31_020_B20_main", "box_OutputOrder_v2_138.Out", "box_EndActivityObjective_v2_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_138_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_59();
    l0 = self.box_PerkinsDialogue_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1042812956", "1042812956", "UNI31_020_B20_main", "box_OutputOrder_v2_138.Out", "box_PerkinsDialogue_59.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_339_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoveCorpses_401();
    l0 = self.box_MoveCorpses_401;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1143396400", "1143396400", "UNI31_020_B20_main", "box_OutputOrder_v2_339.Out", "box_MoveCorpses_401.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_339_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoveCorpses_405();
    l0 = self.box_MoveCorpses_405;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1512915906", "1512915906", "UNI31_020_B20_main", "box_OutputOrder_v2_339.Out", "box_MoveCorpses_405.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_339_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoveCorpses_399();
    l0 = self.box_MoveCorpses_399;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|289844207", "289844207", "UNI31_020_B20_main", "box_OutputOrder_v2_339.Out", "box_MoveCorpses_399.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_339_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1136166474", "1136166474", "UNI31_020_B20_main", "box_OutputOrder_v2_339.Out", "box_OutputOrder_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PerkinsDialogue_190_Completed()
    local l0, l1;
    l0 = self.box_PerkinsDialogue_190;
    l1 = self.box_OnceOnly_v3_417;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|522585556", "522585556", "UNI31_020_B20_main", "box_PerkinsDialogue_190.Completed", "box_OnceOnly_v3_417.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_393_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_347();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|445940252", "445940252", "UNI31_020_B20_main", "box_Compare_Integers_393.A_eq_B", "box_OutputOrder_v2_347.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1626308242", "1626308242", "UNI31_020_B20_main", "box_OutputOrder_v2_31.Out", "box_OutputOrder_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_50();
    l0 = self.box_HealthListener_v6_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|888644496", "888644496", "UNI31_020_B20_main", "box_OutputOrder_v2_31.Out", "box_HealthListener_v6_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_198_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_258();
    l0 = self.box_MultipleOR_198;
    l1 = self.box_GroupSizeListener_v5_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|418036078", "418036078", "UNI31_020_B20_main", "box_MultipleOR_198.Out", "box_GroupSizeListener_v5_258.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_65();
    l0 = self.box_MultipleOR_70;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1174477196", "1174477196", "UNI31_020_B20_main", "box_MultipleOR_70.Out", "box_Compare_Integers_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PerkinsDialogue_87_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_288();
    l0 = self.box_PerkinsDialogue_87;
    l1 = self.box_SpawnAI_288;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1200292506", "1200292506", "UNI31_020_B20_main", "box_PerkinsDialogue_87.Completed", "box_SpawnAI_288.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_271_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_261();
    l0 = self.box_MultipleOR_271;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1399065029", "1399065029", "UNI31_020_B20_main", "box_MultipleOR_271.Out", "box_Compare_Integers_261.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_61();
    l0 = self.box_MultipleOR_34;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|86799874", "86799874", "UNI31_020_B20_main", "box_MultipleOR_34.Out", "box_Compare_Integers_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_392_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_247();
    l0 = self.box_Gate_v3_392;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1666452399", "1666452399", "UNI31_020_B20_main", "box_Gate_v3_392.Closed", "box_Simple_Node_247.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_392_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_333();
    l0 = self.box_Gate_v3_392;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1860796249", "1860796249", "UNI31_020_B20_main", "box_Gate_v3_392.Out", "box_ActivityObjectiveMarkerModifier_v3_333.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_216_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_217();
    l0 = self.box_Music_Quest_v2_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1666387056", "1666387056", "UNI31_020_B20_main", "box_OutputOrder_v2_216.Out", "box_Music_Quest_v2_217.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_216_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_160();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|593191718", "593191718", "UNI31_020_B20_main", "box_OutputOrder_v2_216.Out", "box_ActivityRetry_160.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_210_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_1();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1998860404", "1998860404", "UNI31_020_B20_main", "box_OutputOrder_v2_210.Out", "box_ActivityRetry_1.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_210_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_211();
    l0 = self.box_Music_Quest_v2_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1457580469", "1457580469", "UNI31_020_B20_main", "box_OutputOrder_v2_210.Out", "box_Music_Quest_v2_211.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Bind_v4_128_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_119();
    l0 = self.box_Bind_v4_128;
    l1 = self.box_MultipleAND_v2_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1738916799", "1738916799", "UNI31_020_B20_main", "box_Bind_v4_128.Bound", "box_MultipleAND_v2_119.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_UniversalInteractionListener_13_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_UniversalInteractionListener_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1749850817", "1749850817", "UNI31_020_B20_main", "box_UniversalInteractionListener_13.Interacted", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|63201632", "63201632", "UNI31_020_B20_main", "box_EndActivityObjective_v2_74.Out", "box_OutputOrder_v2_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_79_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_75();
    l0 = self.box_PerkinsDialogue_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|307629870", "307629870", "UNI31_020_B20_main", "box_Compare_Integers_79.A_lt_B", "box_PerkinsDialogue_75.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_142_Out()
    self:OnExit_box_SetBoolean_v2_142_Out();
end;

function export:f_box_ExitZoneWarningListener_v3_309_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_210();
    l0 = self.box_ExitZoneWarningListener_v3_309;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|446747866", "446747866", "UNI31_020_B20_main", "box_ExitZoneWarningListener_v3_309.FailingZoneEntered", "box_OutputOrder_v2_210.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_109_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_115();
    l0 = self.box_SpawnAI_109;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|852486476", "852486476", "UNI31_020_B20_main", "box_SpawnAI_109.Spawned", "box_HealthModifier_v2_115.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_318_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_12();
    l0 = self.box_Gate_v3_318;
    l1 = self.box_PerkinsDialogue_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1426464879", "1426464879", "UNI31_020_B20_main", "box_Gate_v3_318.Closed", "box_PerkinsDialogue_12.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_318_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_318;
    l1 = self.box_OnceOnly_v3_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|227669411", "227669411", "UNI31_020_B20_main", "box_Gate_v3_318.Out", "box_OnceOnly_v3_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PerkinsDialogue_21_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_222();
    l0 = self.box_PerkinsDialogue_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1598326715", "1598326715", "UNI31_020_B20_main", "box_PerkinsDialogue_21.Completed", "box_OutputOrder_v2_222.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_131_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_318();
    l0 = self.box_MultipleOR_131;
    l1 = self.box_Gate_v3_318;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1277181849", "1277181849", "UNI31_020_B20_main", "box_MultipleOR_131.Out", "box_Gate_v3_318.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_102_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_102_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|80186067", "80186067", "UNI31_020_B20_main", "box_SetEntity_v2_102.Out", "box_MultipleOR_71.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_123_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|630247163", "630247163", "UNI31_020_B20_main", "box_Compare_Boolean_123.A_is_False", "box_MultipleOR_131.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_123_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_184();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1959921027", "1959921027", "UNI31_020_B20_main", "box_Compare_Boolean_123.A_is_True", "box_Simple_Node_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_447_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_445();
    l0 = self.box_RemoveEntity_v2_445;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1369097538", "1369097538", "UNI31_020_B20_main", "box_IsEntityLoaded_v3_447.True", "box_RemoveEntity_v2_445.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_158_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_129();
    l0 = self.box_MultipleOR_158;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|997811558", "997811558", "UNI31_020_B20_main", "box_MultipleOR_158.Out", "box_RandomFloat_v2_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_51();
    l0 = self.box_PerkinsDialogue_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1717937008", "1717937008", "UNI31_020_B20_main", "box_OutputOrder_v2_183.Out", "box_PerkinsDialogue_51.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_183_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_53();
    l0 = self.box_PerkinsDialogue_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1405935956", "1405935956", "UNI31_020_B20_main", "box_OutputOrder_v2_183.Out", "box_PerkinsDialogue_53.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_161();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|269542885", "269542885", "UNI31_020_B20_main", "box_OutputOrder_v2_62.Out", "box_OutputOrder_v2_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_145();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1717373762", "1717373762", "UNI31_020_B20_main", "box_OutputOrder_v2_62.Out", "box_TaggingModifier_v3_145.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_146();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|563144462", "563144462", "UNI31_020_B20_main", "box_OutputOrder_v2_62.Out", "box_TaggingModifier_v3_146.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_147();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1914861633", "1914861633", "UNI31_020_B20_main", "box_OutputOrder_v2_62.Out", "box_TaggingModifier_v3_147.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_294_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_88();
    l0 = self.box_Delay_v5_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1813390062", "1813390062", "UNI31_020_B20_main", "box_OutputOrder_v2_294.Out", "box_Delay_v5_88.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_294_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_293();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1341149349", "1341149349", "UNI31_020_B20_main", "box_OutputOrder_v2_294.Out", "box_Simple_Node_293.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_223_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_185();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1590674", "1590674", "UNI31_020_B20_main", "box_EndActivityObjective_v2_223.Out", "box_Simple_Node_185.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_182_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_148();
    l0 = self.box_MultipleOR_182;
    l1 = self.box_Gate_v3_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1002840919", "1002840919", "UNI31_020_B20_main", "box_MultipleOR_182.Out", "box_Gate_v3_148.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_46();
    l0 = self.box_PerkinsDialogue_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1071961773", "1071961773", "UNI31_020_B20_main", "box_OutputOrder_v2_7.Out", "box_PerkinsDialogue_46.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_135();
    l0 = self.box_PerkinsDialogue_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1673365562", "1673365562", "UNI31_020_B20_main", "box_OutputOrder_v2_7.Out", "box_PerkinsDialogue_135.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_447();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|113103838", "113103838", "UNI31_020_B20_main", "box_OutputOrder_v2_7.Out", "box_IsEntityLoaded_v3_447.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_448();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|859233783", "859233783", "UNI31_020_B20_main", "box_OutputOrder_v2_7.Out", "box_IsEntityLoaded_v3_448.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveFromGroup_v2_168_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|56637299", "56637299", "UNI31_020_B20_main", "box_RemoveFromGroup_v2_168.Out", "box_OutputOrder_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_10_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_PositionModifier_v2_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2092993693", "2092993693", "UNI31_020_B20_main", "box_PositionModifier_v2_10.Done", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_10_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_100();
    l0 = self.box_PositionModifier_v2_10;
    l1 = self.box_SoundModifier_v2_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|316570040", "316570040", "UNI31_020_B20_main", "box_PositionModifier_v2_10.StartOut", "box_SoundModifier_v2_100.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_CharacterLoadedIdListener_159_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_159_LoadedIdReceived();
    params = self:OnEnter_box_GetPlayerGroup_v2_37();
    l0 = self.box_CharacterLoadedIdListener_159;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|362936455", "362936455", "UNI31_020_B20_main", "box_CharacterLoadedIdListener_159.LoadedIdReceived", "box_GetPlayerGroup_v2_37.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_44_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_57();
    l0 = self.box_OnceOnly_v3_44;
    l1 = self.box_PerkinsDialogue_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1039595378", "1039595378", "UNI31_020_B20_main", "box_OnceOnly_v3_44.Out", "box_PerkinsDialogue_57.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_151_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_192();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1964205322", "1964205322", "UNI31_020_B20_main", "box_OutputOrder_v2_151.Out", "box_Simple_Node_192.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_151_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_126();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|900041645", "900041645", "UNI31_020_B20_main", "box_OutputOrder_v2_151.Out", "box_SetBoolean_v2_126.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_151_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_155();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1494354501", "1494354501", "UNI31_020_B20_main", "box_OutputOrder_v2_151.Out", "box_SetBoolean_v2_155.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_253();
    l0 = self.box_Gate_v3_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|218147314", "218147314", "UNI31_020_B20_main", "box_EndActivityObjective_v2_30.Out", "box_Gate_v3_253.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_260_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_420();
    l0 = self.box_Delay_v5_260;
    l1 = self.box_SoundModifier_v2_420;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|892768586", "892768586", "UNI31_020_B20_main", "box_Delay_v5_260.Started", "box_SoundModifier_v2_420.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_260_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_264();
    l0 = self.box_Delay_v5_260;
    l1 = self.box_Switch_264;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|191143138", "191143138", "UNI31_020_B20_main", "box_Delay_v5_260.TimeElapsed", "box_Switch_264.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_141_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_141;
    l1 = self.box_OnceOnly_v3_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1771050841", "1771050841", "UNI31_020_B20_main", "box_MultipleOR_141.Out", "box_OnceOnly_v3_166.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_231_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_125();
    l0 = self.box_Bind_v4_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1762856405", "1762856405", "UNI31_020_B20_main", "box_OutputOrder_v2_231.Out", "box_Bind_v4_125.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_231_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_230();
    l0 = self.box_RemoveEntity_v2_230;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1693215430", "1693215430", "UNI31_020_B20_main", "box_OutputOrder_v2_231.Out", "box_RemoveEntity_v2_230.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_32_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_33();
    l0 = self.box_OnceOnly_v3_32;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|857366369", "857366369", "UNI31_020_B20_main", "box_OnceOnly_v3_32.Out", "box_Simple_Node_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_203_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_203_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_218();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1444454072", "1444454072", "UNI31_020_B20_main", "box_IntegerArithmetics_v2_203.Out", "box_Simple_Node_218.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_125_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_119();
    l0 = self.box_Bind_v4_125;
    l1 = self.box_MultipleAND_v2_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|296203299", "296203299", "UNI31_020_B20_main", "box_Bind_v4_125.Bound", "box_MultipleAND_v2_119.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Gate_v3_253_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_250();
    l0 = self.box_Gate_v3_253;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|161419850", "161419850", "UNI31_020_B20_main", "box_Gate_v3_253.Out", "box_AddActivityObjective_v2_250.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_236_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_269;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1968787949", "1968787949", "UNI31_020_B20_main", "box_OutputOrder_v2_236.Out", "box_MultipleOR_269.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_236_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_81();
    l0 = self.box_PerkinsDialogue_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|684022488", "684022488", "UNI31_020_B20_main", "box_OutputOrder_v2_236.Out", "box_PerkinsDialogue_81.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_187_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_187;
    l1 = self.box_OnceOnly_v3_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|195483103", "195483103", "UNI31_020_B20_main", "box_MultipleOR_187.Out", "box_OnceOnly_v3_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_104_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_110();
    l0 = self.box_SpawnAI_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2071984606", "2071984606", "UNI31_020_B20_main", "box_IsEntityLoaded_v3_104.False", "box_SpawnAI_110.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_104_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_106();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|431334681", "431334681", "UNI31_020_B20_main", "box_IsEntityLoaded_v3_104.True", "box_SetEntity_v2_106.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_52_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_151();
    l0 = self.box_NavLinkModifier_52;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1005672686", "1005672686", "UNI31_020_B20_main", "box_NavLinkModifier_52.Activated", "box_OutputOrder_v2_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_52_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_140();
    l0 = self.box_NavLinkModifier_52;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1888944950", "1888944950", "UNI31_020_B20_main", "box_NavLinkModifier_52.Deactivated", "box_OutputOrder_v2_140.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_118_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_235();
    l0 = self.box_MultipleOR_118;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1415124177", "1415124177", "UNI31_020_B20_main", "box_MultipleOR_118.Out", "box_OutputOrder_v2_235.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PerkinsDialogue_98_Completed()
    local l0, l1;
    l0 = self.box_PerkinsDialogue_98;
    l1 = self.box_MultipleOR_384;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1414653522", "1414653522", "UNI31_020_B20_main", "box_PerkinsDialogue_98.Completed", "box_MultipleOR_384.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PerkinsDialogue_98_Delay_started()
    local l0, l1;
    l0 = self.box_PerkinsDialogue_98;
    l1 = self.box_MultipleOR_384;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|758589200", "758589200", "UNI31_020_B20_main", "box_PerkinsDialogue_98.Delay started", "box_MultipleOR_384.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_384_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_384;
    l1 = self.box_OnceOnly_v3_382;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|790847163", "790847163", "UNI31_020_B20_main", "box_MultipleOR_384.Out", "box_OnceOnly_v3_382.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_279_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_279;
    l1 = self.box_MultipleOR_269;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|341561757", "341561757", "UNI31_020_B20_main", "box_SpawnAI_279.Spawned", "box_MultipleOR_269.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_SpawnAI_110_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_116();
    l0 = self.box_SpawnAI_110;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|257115367", "257115367", "UNI31_020_B20_main", "box_SpawnAI_110.Spawned", "box_HealthModifier_v2_116.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1385349853", "1385349853", "UNI31_020_B20_main", "box_OutputOrder_v2_4.Out", "box_Print_v2_3.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1358007604", "1358007604", "UNI31_020_B20_main", "box_OutputOrder_v2_4.Out", "box_ActivityAcknowledgeGate_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_207_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_206();
    l0 = self.box_MultipleOR_207;
    l1 = self.box_Delay_v5_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1270029644", "1270029644", "UNI31_020_B20_main", "box_MultipleOR_207.Out", "box_Delay_v5_206.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_199_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2108478195", "2108478195", "UNI31_020_B20_main", "box_Compare_Integers_199.A_ge_B", "box_MultipleOR_198.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_199_A_ne_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|612141416", "612141416", "UNI31_020_B20_main", "box_Compare_Integers_199.A_ne_B", "box_OnceOnly_v3_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_269_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_260();
    l0 = self.box_MultipleOR_269;
    l1 = self.box_Delay_v5_260;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1216979755", "1216979755", "UNI31_020_B20_main", "box_MultipleOR_269.Out", "box_Delay_v5_260.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_169_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_169;
    l1 = self.box_MultipleOR_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|101705193", "101705193", "UNI31_020_B20_main", "box_ProximityTrigger_v2_169.Enter", "box_MultipleOR_191.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_169_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_169;
    l1 = self.box_MultipleOR_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|890380736", "890380736", "UNI31_020_B20_main", "box_ProximityTrigger_v2_169.OnOccupied", "box_MultipleOR_191.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_86_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_66();
    l0 = self.box_GroupSizeListener_v5_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2091515999", "2091515999", "UNI31_020_B20_main", "box_OutputOrder_v2_86.Out", "box_GroupSizeListener_v5_66.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_86_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_82();
    l0 = self.box_HealthListener_v6_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|238912132", "238912132", "UNI31_020_B20_main", "box_OutputOrder_v2_86.Out", "box_HealthListener_v6_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_266_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_236();
    l0 = self.box_SpawnAI_266;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|4018220", "4018220", "UNI31_020_B20_main", "box_SpawnAI_266.Spawned", "box_OutputOrder_v2_236.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPosition_39_Out()
    local params, l0;
    self:OnExit_box_GetPosition_39_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_40();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|746508766", "746508766", "UNI31_020_B20_main", "box_GetPosition_39.Out", "box_GetPosition_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_221_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_237();
    l0 = self.box_OnceOnly_v3_221;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|741400509", "741400509", "UNI31_020_B20_main", "box_OnceOnly_v3_221.Out", "box_OutputOrder_v2_237.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_382_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_184();
    l0 = self.box_OnceOnly_v3_382;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1164177251", "1164177251", "UNI31_020_B20_main", "box_OnceOnly_v3_382.Out", "box_Simple_Node_184.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_369_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_203();
    l0 = self.box_MultipleOR_369;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|940516212", "940516212", "UNI31_020_B20_main", "box_MultipleOR_369.Out", "box_IntegerArithmetics_v2_203.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_237_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_239;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1005734657", "1005734657", "UNI31_020_B20_main", "box_OutputOrder_v2_237.Out", "box_MultipleOR_239.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_237_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_369;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|441634776", "441634776", "UNI31_020_B20_main", "box_OutputOrder_v2_237.Out", "box_MultipleOR_369.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_229_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_229;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1091601539", "1091601539", "UNI31_020_B20_main", "box_Delay_v5_229.TimeElapsed", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_15_Enabled()
    self:OnExit_box_ProximityTrigger_v2_15_Enabled();
end;

function export:f_box_ProximityTrigger_v2_15_Enter()
    self:OnExit_box_ProximityTrigger_v2_15_Enter();
end;

function export:f_box_ProximityTrigger_v2_15_Leave()
    self:OnExit_box_ProximityTrigger_v2_15_Leave();
end;

function export:f_box_ProximityTrigger_v2_15_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_15_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_15_OnOccupied()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_15_OnOccupied();
    params = self:OnEnter_box_OutputOrder_v2_178();
    l0 = self.box_ProximityTrigger_v2_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|588062452", "588062452", "UNI31_020_B20_main", "box_ProximityTrigger_v2_15.OnOccupied", "box_OutputOrder_v2_178.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_15_Use()
    self:OnExit_box_ProximityTrigger_v2_15_Use();
end;

function export:f_box_OnceOnly_v3_219_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_241();
    l0 = self.box_OnceOnly_v3_219;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|11198", "11198", "UNI31_020_B20_main", "box_OnceOnly_v3_219.Out", "box_OutputOrder_v2_241.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PerkinsDialogue_84_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_286();
    l0 = self.box_PerkinsDialogue_84;
    l1 = self.box_SpawnAI_286;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1314660643", "1314660643", "UNI31_020_B20_main", "box_PerkinsDialogue_84.Completed", "box_SpawnAI_286.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_329_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_373();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|520819454", "520819454", "UNI31_020_B20_main", "box_Compare_Integers_329.A_lt_B", "box_SetInteger_v2_373.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPosition_40_Out()
    local params, l0;
    self:OnExit_box_GetPosition_40_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_42();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|375931007", "375931007", "UNI31_020_B20_main", "box_GetPosition_40.Out", "box_Compare_Floats_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PerkinsDialogue_83_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_266();
    l0 = self.box_PerkinsDialogue_83;
    l1 = self.box_SpawnAI_266;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1467590558", "1467590558", "UNI31_020_B20_main", "box_PerkinsDialogue_83.Completed", "box_SpawnAI_266.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_174_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_OnceOnly_v3_174;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1748639052", "1748639052", "UNI31_020_B20_main", "box_OnceOnly_v3_174.Out", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_162();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1392817795", "1392817795", "UNI31_020_B20_main", "box_OutputOrder_v2_73.Out", "box_Simple_Node_162.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_58();
    l0 = self.box_GroupSizeListener_v5_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1818426148", "1818426148", "UNI31_020_B20_main", "box_OutputOrder_v2_73.Out", "box_GroupSizeListener_v5_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_73_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_144();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1380575450", "1380575450", "UNI31_020_B20_main", "box_OutputOrder_v2_73.Out", "box_Simple_Node_144.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_205();
    l0 = self.box_ContextualActionListener_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1187315700", "1187315700", "UNI31_020_B20_main", "box_OutputOrder_v2_73.Out", "box_ContextualActionListener_205.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_73_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_224();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1611465792", "1611465792", "UNI31_020_B20_main", "box_OutputOrder_v2_73.Out", "box_UseContextualActionModifier_v3_224.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_261_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_173();
    l0 = self.box_Delay_v5_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2061561651", "2061561651", "UNI31_020_B20_main", "box_Compare_Integers_261.A_eq_B", "box_Delay_v5_173.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_99_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_46();
    l0 = self.box_OnceOnly_v3_99;
    l1 = self.box_PerkinsDialogue_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2136915088", "2136915088", "UNI31_020_B20_main", "box_OnceOnly_v3_99.Out", "box_PerkinsDialogue_46.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_238_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_240;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1473468972", "1473468972", "UNI31_020_B20_main", "box_OutputOrder_v2_238.Out", "box_MultipleOR_240.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_238_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_369;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|99420749", "99420749", "UNI31_020_B20_main", "box_OutputOrder_v2_238.Out", "box_MultipleOR_369.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_252_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_171();
    l0 = self.box_Gate_v3_252;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1551766445", "1551766445", "UNI31_020_B20_main", "box_Gate_v3_252.Out", "box_EndActivityObjective_v2_171.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PerkinsDialogue_137_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_136();
    l0 = self.box_PerkinsDialogue_137;
    l1 = self.box_PerkinsDialogue_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|64742182", "64742182", "UNI31_020_B20_main", "box_PerkinsDialogue_137.Completed", "box_PerkinsDialogue_136.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_448_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_446();
    l0 = self.box_RemoveEntity_v2_446;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1162402228", "1162402228", "UNI31_020_B20_main", "box_IsEntityLoaded_v3_448.True", "box_RemoveEntity_v2_446.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_206_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_206;
    l1 = self.box_MultipleOR_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1946358969", "1946358969", "UNI31_020_B20_main", "box_Delay_v5_206.TimeElapsed", "box_MultipleOR_208.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_302_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_302;
    l1 = self.box_OnceOnly_v3_221;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|426941627", "426941627", "UNI31_020_B20_main", "box_ProximityTrigger_v2_302.OnOccupied", "box_OnceOnly_v3_221.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1935790307", "1935790307", "UNI31_020_B20_main", "box_OutputOrder_v2_77.Out", "box_MultipleOR_158.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|846364762", "846364762", "UNI31_020_B20_main", "box_OutputOrder_v2_77.Out", "box_OnceOnly_v3_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_69_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_69;
    l1 = self.box_OnceOnly_v3_220;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1697533351", "1697533351", "UNI31_020_B20_main", "box_ProximityTrigger_v2_69.OnOccupied", "box_OnceOnly_v3_220.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_107();
    l0 = self.box_MultipleOR_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|847466605", "847466605", "UNI31_020_B20_main", "box_MultipleOR_6.Out", "box_OutputOrder_v2_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_94();
    l0 = self.box_GroupSizeListener_v5_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2139618368", "2139618368", "UNI31_020_B20_main", "box_OutputOrder_v2_91.Out", "box_GroupSizeListener_v5_94.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_91_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_36();
    l0 = self.box_HealthListener_v6_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1305145201", "1305145201", "UNI31_020_B20_main", "box_OutputOrder_v2_91.Out", "box_HealthListener_v6_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_195_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeTest_193();
    l0 = self.box_Gate_v3_195;
    l1 = self.box_GroupSizeTest_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|752106664", "752106664", "UNI31_020_B20_main", "box_Gate_v3_195.Out", "box_GroupSizeTest_193.Equal", l0:GetLuaBox(), l1:GetLuaBox());
    -- Equal
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_194_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_BindMarkerOverHead_v2_139();
    l0 = self.box_Delay_v5_194;
    l1 = self.box_BindMarkerOverHead_v2_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1185141817", "1185141817", "UNI31_020_B20_main", "box_Delay_v5_194.TimeElapsed", "box_BindMarkerOverHead_v2_139.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_310_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_159();
    l0 = self.box_CharacterLoadedIdListener_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1995964049", "1995964049", "UNI31_020_B20_main", "box_OutputOrder_v2_310.Out", "box_CharacterLoadedIdListener_159.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_310_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_309();
    l0 = self.box_ExitZoneWarningListener_v3_309;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2025025805", "2025025805", "UNI31_020_B20_main", "box_OutputOrder_v2_310.Out", "box_ExitZoneWarningListener_v3_309.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PerkinsDialogue_67_Completed()
    local l0, l1;
    l0 = self.box_PerkinsDialogue_67;
    l1 = self.box_MultipleOR_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1813272740", "1813272740", "UNI31_020_B20_main", "box_PerkinsDialogue_67.Completed", "box_MultipleOR_80.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_257_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_252();
    l0 = self.box_Gate_v3_252;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|973435123", "973435123", "UNI31_020_B20_main", "box_OutputOrder_v2_257.Out", "box_Gate_v3_252.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_257_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_253();
    l0 = self.box_Gate_v3_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|822952884", "822952884", "UNI31_020_B20_main", "box_OutputOrder_v2_257.Out", "box_Gate_v3_253.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_372_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_202();
    l0 = self.box_Delay_v5_372;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1437861972", "1437861972", "UNI31_020_B20_main", "box_Delay_v5_372.TimeElapsed", "box_Compare_Integers_202.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_22();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|899567138", "899567138", "UNI31_020_B20_main", "box_OutputOrder_v2_28.Out", "box_SetContextualStrategy_22.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_339();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1848079148", "1848079148", "UNI31_020_B20_main", "box_OutputOrder_v2_28.Out", "box_OutputOrder_v2_339.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_190();
    l0 = self.box_PerkinsDialogue_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1377064455", "1377064455", "UNI31_020_B20_main", "box_OutputOrder_v2_28.Out", "box_PerkinsDialogue_190.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|373028901", "373028901", "UNI31_020_B20_main", "box_OutputOrder_v2_28.Out", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_28_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_209();
    l0 = self.box_Music_Quest_v2_209;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1066131481", "1066131481", "UNI31_020_B20_main", "box_OutputOrder_v2_28.Out", "box_Music_Quest_v2_209.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_90_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_63();
    l0 = self.box_OnceOnly_v3_90;
    l1 = self.box_PerkinsDialogue_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1872984308", "1872984308", "UNI31_020_B20_main", "box_OnceOnly_v3_90.Out", "box_PerkinsDialogue_63.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_227_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_227;
    l1 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|784574914", "784574914", "UNI31_020_B20_main", "box_Delay_v5_227.TimeElapsed", "box_MultipleOR_117.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_334_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_343();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|752049910", "752049910", "UNI31_020_B20_main", "box_Compare_Integers_334.A_eq_B", "box_OutputOrder_v2_343.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_334_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_337();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1062177653", "1062177653", "UNI31_020_B20_main", "box_Compare_Integers_334.A_lt_B", "box_OutputOrder_v2_337.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_35();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1978418201", "1978418201", "UNI31_020_B20_main", "box_AddActivityObjective_v2_47.Out", "box_ActivityObjectiveMarkerModifier_v3_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_208_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_204();
    l0 = self.box_MultipleOR_208;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|39317436", "39317436", "UNI31_020_B20_main", "box_MultipleOR_208.Out", "box_UseContextualActionModifier_v3_204.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_88_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_79();
    l0 = self.box_Delay_v5_88;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1952763943", "1952763943", "UNI31_020_B20_main", "box_Delay_v5_88.TimeElapsed", "box_Compare_Integers_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_398_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_334();
    l0 = self.box_MultipleOR_398;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1972307684", "1972307684", "UNI31_020_B20_main", "box_MultipleOR_398.Out", "box_Compare_Integers_334.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_417_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_121();
    l0 = self.box_OnceOnly_v3_417;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|341197175", "341197175", "UNI31_020_B20_main", "box_OnceOnly_v3_417.Out", "box_AddActivityObjective_v2_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_156_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|333395847", "333395847", "UNI31_020_B20_main", "box_Compare_Integers_156.A_eq_B", "box_MultipleOR_196.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_156_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_184();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|541406790", "541406790", "UNI31_020_B20_main", "box_Compare_Integers_156.A_gt_B", "box_Simple_Node_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_201_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_67();
    l0 = self.box_PerkinsDialogue_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|59580737", "59580737", "UNI31_020_B20_main", "box_Compare_Integers_201.A_eq_B", "box_PerkinsDialogue_67.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_HealthModifier_v2_114_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_112();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1698947736", "1698947736", "UNI31_020_B20_main", "box_HealthModifier_v2_114.Damaged", "box_SetEntity_v2_112.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_264_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_195();
    l0 = self.box_Switch_264;
    l1 = self.box_Gate_v3_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|296437709", "296437709", "UNI31_020_B20_main", "box_Switch_264.Out", "box_Gate_v3_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Switch_264_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_262();
    l0 = self.box_Switch_264;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|666240249", "666240249", "UNI31_020_B20_main", "box_Switch_264.Output", "box_TaggingModifier_v3_262.TagEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- TagEntity
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_264_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_277();
    l0 = self.box_Switch_264;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|819565464", "819565464", "UNI31_020_B20_main", "box_Switch_264.Output", "box_TaggingModifier_v3_277.TagEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- TagEntity
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_264_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_275();
    l0 = self.box_Switch_264;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1411206216", "1411206216", "UNI31_020_B20_main", "box_Switch_264.Output", "box_TaggingModifier_v3_275.TagEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- TagEntity
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_264_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_283();
    l0 = self.box_Switch_264;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|749243472", "749243472", "UNI31_020_B20_main", "box_Switch_264.Output", "box_TaggingModifier_v3_283.TagEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- TagEntity
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_264_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_267();
    l0 = self.box_Switch_264;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1241189698", "1241189698", "UNI31_020_B20_main", "box_Switch_264.Output", "box_TaggingModifier_v3_267.TagEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- TagEntity
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_264_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_274();
    l0 = self.box_Switch_264;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1212949567", "1212949567", "UNI31_020_B20_main", "box_Switch_264.Output", "box_TaggingModifier_v3_274.TagEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- TagEntity
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_264_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_290();
    l0 = self.box_Switch_264;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|341412815", "341412815", "UNI31_020_B20_main", "box_Switch_264.Output", "box_TaggingModifier_v3_290.TagEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- TagEntity
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_264_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_276();
    l0 = self.box_Switch_264;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|669167824", "669167824", "UNI31_020_B20_main", "box_Switch_264.Output", "box_TaggingModifier_v3_276.TagEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- TagEntity
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_264_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_254();
    l0 = self.box_Switch_264;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|604511934", "604511934", "UNI31_020_B20_main", "box_Switch_264.Output", "box_TaggingModifier_v3_254.TagEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- TagEntity
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_94_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_94;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|721645287", "721645287", "UNI31_020_B20_main", "box_GroupSizeListener_v5_94.Enabled", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_94_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_94;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2104276488", "2104276488", "UNI31_020_B20_main", "box_GroupSizeListener_v5_94.MemberRemoved", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PerkinsDialogue_63_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_21();
    l0 = self.box_PerkinsDialogue_63;
    l1 = self.box_PerkinsDialogue_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|141749202", "141749202", "UNI31_020_B20_main", "box_PerkinsDialogue_63.Completed", "box_PerkinsDialogue_21.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_299_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_81();
    l0 = self.box_PerkinsDialogue_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|580193079", "580193079", "UNI31_020_B20_main", "box_OutputOrder_v2_299.Out", "box_PerkinsDialogue_81.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_299_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_269;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|742219853", "742219853", "UNI31_020_B20_main", "box_OutputOrder_v2_299.Out", "box_MultipleOR_269.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PerkinsDialogue_12_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_47();
    l0 = self.box_PerkinsDialogue_12;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1221982011", "1221982011", "UNI31_020_B20_main", "box_PerkinsDialogue_12.Completed", "box_AddActivityObjective_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_92_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_201();
    l0 = self.box_Gate_v3_92;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1308572025", "1308572025", "UNI31_020_B20_main", "box_Gate_v3_92.Out", "box_Compare_Integers_201.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_124_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|329027586", "329027586", "UNI31_020_B20_main", "box_Compare_Boolean_124.A_is_False", "box_MultipleOR_131.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_124_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|628888703", "628888703", "UNI31_020_B20_main", "box_Compare_Boolean_124.A_is_True", "box_MultipleOR_196.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_281_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_299();
    l0 = self.box_SpawnAI_281;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|277428421", "277428421", "UNI31_020_B20_main", "box_SpawnAI_281.Spawned", "box_OutputOrder_v2_299.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PerkinsDialogue_46_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_78();
    l0 = self.box_PerkinsDialogue_46;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|403345788", "403345788", "UNI31_020_B20_main", "box_PerkinsDialogue_46.Completed", "box_AddActivityObjective_v2_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_255_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_179();
    l0 = self.box_SpawnAI_255;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1752928083", "1752928083", "UNI31_020_B20_main", "box_SpawnAI_255.Spawned", "box_OutputOrder_v2_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_443_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_175();
    l0 = self.box_Gate_v3_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|346295323", "346295323", "UNI31_020_B20_main", "box_Compare_Boolean_443.A_is_False", "box_Gate_v3_175.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_443_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|111319625", "111319625", "UNI31_020_B20_main", "box_Compare_Boolean_443.A_is_True", "box_MultipleOR_141.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PerkinsDialogue_57_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = self.box_PerkinsDialogue_57;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|594598259", "594598259", "UNI31_020_B20_main", "box_PerkinsDialogue_57.Completed", "box_OutputOrder_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_172_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_252();
    l0 = self.box_Gate_v3_252;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1594312043", "1594312043", "UNI31_020_B20_main", "box_ActivityObjectiveMarkerModifier_v3_172.Enabled", "box_Gate_v3_252.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_NavLinkModifier_56_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_142();
    l0 = self.box_NavLinkModifier_56;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1188126549", "1188126549", "UNI31_020_B20_main", "box_NavLinkModifier_56.Activated", "box_SetBoolean_v2_142.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_56_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_142();
    l0 = self.box_NavLinkModifier_56;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1236986023", "1236986023", "UNI31_020_B20_main", "box_NavLinkModifier_56.Deactivated", "box_SetBoolean_v2_142.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_256_None()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_214();
    l0 = self.box_Switch_256;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|133350125", "133350125", "UNI31_020_B20_main", "box_Switch_256.None", "box_OutputOrder_v2_214.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_256_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_255();
    l0 = self.box_Switch_256;
    l1 = self.box_SpawnAI_255;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1315013134", "1315013134", "UNI31_020_B20_main", "box_Switch_256.Output", "box_SpawnAI_255.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_256_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_87();
    l0 = self.box_Switch_256;
    l1 = self.box_PerkinsDialogue_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2049723107", "2049723107", "UNI31_020_B20_main", "box_Switch_256.Output", "box_PerkinsDialogue_87.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_256_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_186();
    l0 = self.box_Switch_256;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|587397663", "587397663", "UNI31_020_B20_main", "box_Switch_256.Output", "box_OutputOrder_v2_186.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_256_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_281();
    l0 = self.box_Switch_256;
    l1 = self.box_SpawnAI_281;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|872563306", "872563306", "UNI31_020_B20_main", "box_Switch_256.Output", "box_SpawnAI_281.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_256_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_287();
    l0 = self.box_Switch_256;
    l1 = self.box_SpawnAI_287;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|538861624", "538861624", "UNI31_020_B20_main", "box_Switch_256.Output", "box_SpawnAI_287.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_256_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_279();
    l0 = self.box_Switch_256;
    l1 = self.box_SpawnAI_279;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1180274481", "1180274481", "UNI31_020_B20_main", "box_Switch_256.Output", "box_SpawnAI_279.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_256_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_291();
    l0 = self.box_Switch_256;
    l1 = self.box_SpawnAI_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1116289703", "1116289703", "UNI31_020_B20_main", "box_Switch_256.Output", "box_SpawnAI_291.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_256_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_268();
    l0 = self.box_Switch_256;
    l1 = self.box_SpawnAI_268;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1366237394", "1366237394", "UNI31_020_B20_main", "box_Switch_256.Output", "box_SpawnAI_268.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_256_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_84();
    l0 = self.box_Switch_256;
    l1 = self.box_PerkinsDialogue_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1932690441", "1932690441", "UNI31_020_B20_main", "box_Switch_256.Output", "box_PerkinsDialogue_84.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_186_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_87();
    l0 = self.box_PerkinsDialogue_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1622139355", "1622139355", "UNI31_020_B20_main", "box_OutputOrder_v2_186.Out", "box_PerkinsDialogue_87.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_186_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_83();
    l0 = self.box_PerkinsDialogue_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|607612209", "607612209", "UNI31_020_B20_main", "box_OutputOrder_v2_186.Out", "box_PerkinsDialogue_83.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_103_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_109();
    l0 = self.box_SpawnAI_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1326912914", "1326912914", "UNI31_020_B20_main", "box_IsEntityLoaded_v3_103.False", "box_SpawnAI_109.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_103_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_105();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|824193917", "824193917", "UNI31_020_B20_main", "box_IsEntityLoaded_v3_103.True", "box_SetEntity_v2_105.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_165_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_185();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1875745495", "1875745495", "UNI31_020_B20_main", "box_OutputOrder_v2_165.Out", "box_Simple_Node_185.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_165_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_162();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1785933495", "1785933495", "UNI31_020_B20_main", "box_OutputOrder_v2_165.Out", "box_Simple_Node_162.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_165_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_124();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|7969354", "7969354", "UNI31_020_B20_main", "box_OutputOrder_v2_165.Out", "box_Compare_Boolean_124.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PerkinsDialogue_135_Delay_started()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_8();
    l0 = self.box_PerkinsDialogue_135;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|767183861", "767183861", "UNI31_020_B20_main", "box_PerkinsDialogue_135.Delay started", "box_ActivityEnd_8.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_42_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_52();
    l0 = self.box_NavLinkModifier_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1157794383", "1157794383", "UNI31_020_B20_main", "box_Compare_Floats_42.A_eq_B", "box_NavLinkModifier_52.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_Compare_Floats_42_A_ne_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_52();
    l0 = self.box_NavLinkModifier_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|737580093", "737580093", "UNI31_020_B20_main", "box_Compare_Floats_42.A_ne_B", "box_NavLinkModifier_52.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_340_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_340_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_320();
    l0 = self.box_Gate_v3_320;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1271939843", "1271939843", "UNI31_020_B20_main", "box_IntegerArithmetics_v2_340.Out", "box_Gate_v3_320.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_192();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1211588859", "1211588859", "UNI31_020_B20_main", "box_OutputOrder_v2_19.Out", "box_Simple_Node_192.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_56();
    l0 = self.box_NavLinkModifier_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1821760126", "1821760126", "UNI31_020_B20_main", "box_OutputOrder_v2_19.Out", "box_NavLinkModifier_56.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_179_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_98();
    l0 = self.box_PerkinsDialogue_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|850771329", "850771329", "UNI31_020_B20_main", "box_OutputOrder_v2_179.Out", "box_PerkinsDialogue_98.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_179_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_269;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|541677773", "541677773", "UNI31_020_B20_main", "box_OutputOrder_v2_179.Out", "box_MultipleOR_269.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_212_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_54();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|952249442", "952249442", "UNI31_020_B20_main", "box_OutputOrder_v2_212.Out", "box_ActivityRetry_54.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_212_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_213();
    l0 = self.box_Music_Quest_v2_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|445758059", "445758059", "UNI31_020_B20_main", "box_OutputOrder_v2_212.Out", "box_Music_Quest_v2_213.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_BindMarkerOverHead_v2_139_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_312();
    l0 = self.box_BindMarkerOverHead_v2_139;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|179812775", "179812775", "UNI31_020_B20_main", "box_BindMarkerOverHead_v2_139.Out", "box_ActivityObjectiveMarkerModifier_v3_312.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_291_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_291;
    l1 = self.box_MultipleOR_269;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1062453154", "1062453154", "UNI31_020_B20_main", "box_SpawnAI_291.Spawned", "box_MultipleOR_269.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_Compare_Boolean_150_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_11();
    l0 = self.box_Switch_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|266171955", "266171955", "UNI31_020_B20_main", "box_Compare_Boolean_150.A_is_False", "box_Switch_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_150_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_153();
    l0 = self.box_Switch_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1671491406", "1671491406", "UNI31_020_B20_main", "box_Compare_Boolean_150.A_is_True", "box_Switch_153.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_231();
    l0 = self.box_MultipleOR_71;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1467153725", "1467153725", "UNI31_020_B20_main", "box_MultipleOR_71.Out", "box_OutputOrder_v2_231.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_80_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_80;
    l1 = self.box_OnceOnly_v3_433;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1094723844", "1094723844", "UNI31_020_B20_main", "box_MultipleOR_80.Out", "box_OnceOnly_v3_433.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_126_Out()
    self:OnExit_box_SetBoolean_v2_126_Out();
end;

function export:f_box_MultipleOR_328_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_349();
    l0 = self.box_MultipleOR_328;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1379572106", "1379572106", "UNI31_020_B20_main", "box_MultipleOR_328.Out", "box_OutputOrder_v2_349.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_50_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_29();
    l0 = self.box_HealthListener_v6_50;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2109015413", "2109015413", "UNI31_020_B20_main", "box_HealthListener_v6_50.Downed", "box_AddActivityObjective_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_50_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_30();
    l0 = self.box_HealthListener_v6_50;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1228157741", "1228157741", "UNI31_020_B20_main", "box_HealthListener_v6_50.Revived", "box_EndActivityObjective_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_242_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_354();
    l0 = self.box_MultipleOR_242;
    l1 = self.box_Gate_v3_354;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1697972888", "1697972888", "UNI31_020_B20_main", "box_MultipleOR_242.Out", "box_Gate_v3_354.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_93_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_93;
    l1 = self.box_MultipleOR_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1978511482", "1978511482", "UNI31_020_B20_main", "box_ProximityTrigger_v2_93.Enter", "box_MultipleOR_187.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_93_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_93;
    l1 = self.box_MultipleOR_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2027118993", "2027118993", "UNI31_020_B20_main", "box_ProximityTrigger_v2_93.OnOccupied", "box_MultipleOR_187.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_152_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_10();
    l0 = self.box_MultipleOR_152;
    l1 = self.box_PositionModifier_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1643914897", "1643914897", "UNI31_020_B20_main", "box_MultipleOR_152.Out", "box_PositionModifier_v2_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_224_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_226();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|130529847", "130529847", "UNI31_020_B20_main", "box_UseContextualActionModifier_v3_224.Enabled", "box_UseContextualActionModifier_v3_226.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_234_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_181();
    l0 = self.box_Bind_v4_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|713665584", "713665584", "UNI31_020_B20_main", "box_OutputOrder_v2_234.Out", "box_Bind_v4_181.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_234_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_232();
    l0 = self.box_RemoveEntity_v2_232;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|780816840", "780816840", "UNI31_020_B20_main", "box_OutputOrder_v2_234.Out", "box_RemoveEntity_v2_232.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_180_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_123();
    l0 = self.box_Delay_v5_180;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|483454076", "483454076", "UNI31_020_B20_main", "box_Delay_v5_180.TimeElapsed", "box_Compare_Boolean_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_24();
    l0 = self.box_MultipleOR_14;
    l1 = self.box_UniversalInteractionModifier_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|262501933", "262501933", "UNI31_020_B20_main", "box_MultipleOR_14.Out", "box_UniversalInteractionModifier_v2_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_TaggingModifier_v3_177_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_223();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|81383021", "81383021", "UNI31_020_B20_main", "box_TaggingModifier_v3_177.Disabled", "box_EndActivityObjective_v2_223.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MoveCorpses_405_BodyCountAdd()
    local l0, l1;
    l0 = self.box_MoveCorpses_405;
    l1 = self.box_MultipleOR_406;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1396940376", "1396940376", "UNI31_020_B20_main", "box_MoveCorpses_405.BodyCountAdd", "box_MultipleOR_406.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MoveCorpses_405_BodyCountMinus()
    local l0, l1;
    l0 = self.box_MoveCorpses_405;
    l1 = self.box_MultipleOR_400;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|727156168", "727156168", "UNI31_020_B20_main", "box_MoveCorpses_405.BodyCountMinus", "box_MultipleOR_400.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MoveCorpses_405_Placed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_244();
    l0 = self.box_MoveCorpses_405;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|532659170", "532659170", "UNI31_020_B20_main", "box_MoveCorpses_405.Placed", "box_OutputOrder_v2_244.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_65_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_23();
    l0 = self.box_PerkinsDialogue_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1972355063", "1972355063", "UNI31_020_B20_main", "box_Compare_Integers_65.A_gt_B", "box_PerkinsDialogue_23.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_250_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_251();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|592772794", "592772794", "UNI31_020_B20_main", "box_AddActivityObjective_v2_250.Out", "box_ActivityObjectiveMarkerModifier_v3_251.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_155_Out()
    self:OnExit_box_SetBoolean_v2_155_Out();
end;

function export:f_box_Gate_v3_148_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_130();
    l0 = self.box_Gate_v3_148;
    l1 = self.box_Delay_v5_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2095199462", "2095199462", "UNI31_020_B20_main", "box_Gate_v3_148.Closed", "box_Delay_v5_130.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_148_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = self.box_Gate_v3_148;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|559428962", "559428962", "UNI31_020_B20_main", "box_Gate_v3_148.Opened", "box_OutputOrder_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_148_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_148;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1020792444", "1020792444", "UNI31_020_B20_main", "box_Gate_v3_148.Out", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_315_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_315;
    l1 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1559625057", "1559625057", "UNI31_020_B20_main", "box_MultipleAND_v2_315.Out", "box_MultipleOR_141.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_235_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_128();
    l0 = self.box_Bind_v4_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|836060688", "836060688", "UNI31_020_B20_main", "box_OutputOrder_v2_235.Out", "box_Bind_v4_128.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_235_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_233();
    l0 = self.box_RemoveEntity_v2_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|230682350", "230682350", "UNI31_020_B20_main", "box_OutputOrder_v2_235.Out", "box_RemoveEntity_v2_233.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MoveCorpses_399_BodyCountAdd()
    local l0, l1;
    l0 = self.box_MoveCorpses_399;
    l1 = self.box_MultipleOR_406;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|307931448", "307931448", "UNI31_020_B20_main", "box_MoveCorpses_399.BodyCountAdd", "box_MultipleOR_406.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MoveCorpses_399_BodyCountMinus()
    local l0, l1;
    l0 = self.box_MoveCorpses_399;
    l1 = self.box_MultipleOR_400;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|151930922", "151930922", "UNI31_020_B20_main", "box_MoveCorpses_399.BodyCountMinus", "box_MultipleOR_400.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MoveCorpses_399_Placed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_245();
    l0 = self.box_MoveCorpses_399;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|468322534", "468322534", "UNI31_020_B20_main", "box_MoveCorpses_399.Placed", "box_OutputOrder_v2_245.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_106_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_106_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1357819149", "1357819149", "UNI31_020_B20_main", "box_SetEntity_v2_106.Out", "box_MultipleOR_118.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_43_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_51();
    l0 = self.box_Switch_43;
    l1 = self.box_PerkinsDialogue_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|60518728", "60518728", "UNI31_020_B20_main", "box_Switch_43.Output", "box_PerkinsDialogue_51.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_43_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_53();
    l0 = self.box_Switch_43;
    l1 = self.box_PerkinsDialogue_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|811623100", "811623100", "UNI31_020_B20_main", "box_Switch_43.Output", "box_PerkinsDialogue_53.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_197_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_120();
    l0 = self.box_Random_197;
    l1 = self.box_PerkinsDialogue_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|845881572", "845881572", "UNI31_020_B20_main", "box_Random_197.Output", "box_PerkinsDialogue_120.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_197_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_72();
    l0 = self.box_Random_197;
    l1 = self.box_PerkinsDialogue_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|391270870", "391270870", "UNI31_020_B20_main", "box_Random_197.Output", "box_PerkinsDialogue_72.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_197_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_134();
    l0 = self.box_Random_197;
    l1 = self.box_PerkinsDialogue_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|641302768", "641302768", "UNI31_020_B20_main", "box_Random_197.Output", "box_PerkinsDialogue_134.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_197_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_133();
    l0 = self.box_Random_197;
    l1 = self.box_PerkinsDialogue_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1760077403", "1760077403", "UNI31_020_B20_main", "box_Random_197.Output", "box_PerkinsDialogue_133.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_85_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_143();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|500210525", "500210525", "UNI31_020_B20_main", "box_AddActivityObjective_v2_85.Out", "box_AddActivityObjectiveProgress_v2_143.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_258_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_258;
    l1 = self.box_MultipleOR_271;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|484342139", "484342139", "UNI31_020_B20_main", "box_GroupSizeListener_v5_258.Enabled", "box_MultipleOR_271.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_258_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_258;
    l1 = self.box_MultipleOR_271;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|700812469", "700812469", "UNI31_020_B20_main", "box_GroupSizeListener_v5_258.MemberRemoved", "box_MultipleOR_271.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_113_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_113_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_227();
    l0 = self.box_Delay_v5_227;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|91327432", "91327432", "UNI31_020_B20_main", "box_SetEntity_v2_113.Out", "box_Delay_v5_227.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|302268326", "302268326", "UNI31_020_B20_main", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|751133108", "751133108", "UNI31_020_B20_main", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_228_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_228;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|181054619", "181054619", "UNI31_020_B20_main", "box_Delay_v5_228.TimeElapsed", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_176_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_15();
    l0 = self.box_MultipleOR_176;
    l1 = self.box_ProximityTrigger_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|927694656", "927694656", "UNI31_020_B20_main", "box_MultipleOR_176.Out", "box_ProximityTrigger_v2_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_214_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_215();
    l0 = self.box_Music_Quest_v2_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1550385209", "1550385209", "UNI31_020_B20_main", "box_OutputOrder_v2_214.Out", "box_Music_Quest_v2_215.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_214_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_280();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1138669832", "1138669832", "UNI31_020_B20_main", "box_OutputOrder_v2_214.Out", "box_ActivityRetry_280.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_283_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_195();
    l0 = self.box_Gate_v3_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|642485938", "642485938", "UNI31_020_B20_main", "box_TaggingModifier_v3_283.Tagged", "box_Gate_v3_195.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_HealthListener_v6_36_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_89();
    l0 = self.box_HealthListener_v6_36;
    l1 = self.box_PerkinsDialogue_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|347243913", "347243913", "UNI31_020_B20_main", "box_HealthListener_v6_36.Killed", "box_PerkinsDialogue_89.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_226_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_225();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1570245710", "1570245710", "UNI31_020_B20_main", "box_UseContextualActionModifier_v3_226.Enabled", "box_UseContextualActionModifier_v3_225.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_58_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_58;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2008270152", "2008270152", "UNI31_020_B20_main", "box_GroupSizeListener_v5_58.Enabled", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_58_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_58;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2088147182", "2088147182", "UNI31_020_B20_main", "box_GroupSizeListener_v5_58.MemberRemoved", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_105_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_105_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1128051372", "1128051372", "UNI31_020_B20_main", "box_SetEntity_v2_105.Out", "box_MultipleOR_117.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_95_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|491288885", "491288885", "UNI31_020_B20_main", "box_Compare_Integers_95.A_eq_B", "box_OnceOnly_v3_174.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_95_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1460277102", "1460277102", "UNI31_020_B20_main", "box_Compare_Integers_95.A_gt_B", "box_OnceOnly_v3_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_343_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_357();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1963353409", "1963353409", "UNI31_020_B20_main", "box_OutputOrder_v2_343.Out", "box_ActivityObjectiveMarkerModifier_v3_357.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_343_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_394();
    l0 = self.box_Gate_v3_394;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1400152867", "1400152867", "UNI31_020_B20_main", "box_OutputOrder_v2_343.Out", "box_Gate_v3_394.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_343_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_392();
    l0 = self.box_Gate_v3_392;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1297972309", "1297972309", "UNI31_020_B20_main", "box_OutputOrder_v2_343.Out", "box_Gate_v3_392.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_343_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_354();
    l0 = self.box_Gate_v3_354;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|416586741", "416586741", "UNI31_020_B20_main", "box_OutputOrder_v2_343.Out", "box_Gate_v3_354.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_243_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_239;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|596309786", "596309786", "UNI31_020_B20_main", "box_OutputOrder_v2_243.Out", "box_MultipleOR_239.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_243_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_249();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1026276990", "1026276990", "UNI31_020_B20_main", "box_OutputOrder_v2_243.Out", "box_Simple_Node_249.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1300322367", "1300322367", "UNI31_020_B20_main", "box_OutputOrder_v2_127.Out", "box_Delay_v5_17.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_127_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1653045501", "1653045501", "UNI31_020_B20_main", "box_OutputOrder_v2_127.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupAddToGroup_v2_167_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveFromGroup_v2_168();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|292738730", "292738730", "UNI31_020_B20_main", "box_GroupAddToGroup_v2_167.Out", "box_RemoveFromGroup_v2_168.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_121_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_163();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1074792529", "1074792529", "UNI31_020_B20_main", "box_AddActivityObjective_v2_121.Out", "box_OutputOrder_v2_163.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_346_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|417721070", "417721070", "UNI31_020_B20_main", "box_EndActivityObjective_v2_346.Out", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_178_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_177();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|989795938", "989795938", "UNI31_020_B20_main", "box_OutputOrder_v2_178.Out", "box_TaggingModifier_v3_177.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_178_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_167();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1291911407", "1291911407", "UNI31_020_B20_main", "box_OutputOrder_v2_178.Out", "box_GroupAddToGroup_v2_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_397_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_397;
    l1 = self.box_MultipleOR_398;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|228633982", "228633982", "UNI31_020_B20_main", "box_Gate_v3_397.Opened", "box_MultipleOR_398.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_397_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_397;
    l1 = self.box_MultipleOR_398;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|285809042", "285809042", "UNI31_020_B20_main", "box_Gate_v3_397.Out", "box_MultipleOR_398.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_35_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_316();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|388453009", "388453009", "UNI31_020_B20_main", "box_ActivityObjectiveMarkerModifier_v3_35.Enabled", "box_Simple_Node_316.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_170_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_74();
    l0 = self.box_OnceOnly_v3_170;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1287777447", "1287777447", "UNI31_020_B20_main", "box_OnceOnly_v3_170.Out", "box_EndActivityObjective_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_188_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_137();
    l0 = self.box_OnceOnly_v3_188;
    l1 = self.box_PerkinsDialogue_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|637137227", "637137227", "UNI31_020_B20_main", "box_OnceOnly_v3_188.Out", "box_PerkinsDialogue_137.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PerkinsDialogue_59_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_157();
    l0 = self.box_PerkinsDialogue_59;
    l1 = self.box_GroupSizeListener_v5_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1776400301", "1776400301", "UNI31_020_B20_main", "box_PerkinsDialogue_59.Completed", "box_GroupSizeListener_v5_157.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_347_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_200();
    l0 = self.box_SoundModifier_v2_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1806395127", "1806395127", "UNI31_020_B20_main", "box_OutputOrder_v2_347.Out", "box_SoundModifier_v2_200.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_347_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_346();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|715656587", "715656587", "UNI31_020_B20_main", "box_OutputOrder_v2_347.Out", "box_EndActivityObjective_v2_346.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_347_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|862449674", "862449674", "UNI31_020_B20_main", "box_OutputOrder_v2_347.Out", "box_MultipleOR_198.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthModifier_v2_116_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_111();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1921624580", "1921624580", "UNI31_020_B20_main", "box_HealthModifier_v2_116.Damaged", "box_SetEntity_v2_111.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_354_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_248();
    l0 = self.box_Gate_v3_354;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2017606602", "2017606602", "UNI31_020_B20_main", "box_Gate_v3_354.Closed", "box_Simple_Node_248.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_354_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_375();
    l0 = self.box_Gate_v3_354;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1338931758", "1338931758", "UNI31_020_B20_main", "box_Gate_v3_354.Out", "box_ActivityObjectiveMarkerModifier_v3_375.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_119_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_119;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1188622379", "1188622379", "UNI31_020_B20_main", "box_MultipleAND_v2_119.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_362_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_332();
    l0 = self.box_MultipleOR_362;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1585485267", "1585485267", "UNI31_020_B20_main", "box_MultipleOR_362.Out", "box_SetActivityObjectiveProgress_v2_332.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_166_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_138();
    l0 = self.box_OnceOnly_v3_166;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1162536415", "1162536415", "UNI31_020_B20_main", "box_OnceOnly_v3_166.Out", "box_OutputOrder_v2_138.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_68_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PerkinsDialogue_12();
    l0 = self.box_OnceOnly_v3_68;
    l1 = self.box_PerkinsDialogue_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1854657028", "1854657028", "UNI31_020_B20_main", "box_OnceOnly_v3_68.Out", "box_PerkinsDialogue_12.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_175_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_315();
    l0 = self.box_Gate_v3_175;
    l1 = self.box_MultipleAND_v2_315;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2086737868", "2086737868", "UNI31_020_B20_main", "box_Gate_v3_175.Opened", "box_MultipleAND_v2_315.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Gate_v3_175_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_315();
    l0 = self.box_Gate_v3_175;
    l1 = self.box_MultipleAND_v2_315;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|515943189", "515943189", "UNI31_020_B20_main", "box_Gate_v3_175.Out", "box_MultipleAND_v2_315.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_310();
    l0 = self.box_ActivityInitialized_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|891798419", "891798419", "UNI31_020_B20_main", "box_ActivityInitialized_5.Out", "box_OutputOrder_v2_310.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsGunsForHire_v2_76_Squad()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PerkinsDialogue_38();
    l0 = self.box_PerkinsDialogue_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1462866140", "1462866140", "UNI31_020_B20_main", "box_IsGunsForHire_v2_76.Squad", "box_PerkinsDialogue_38.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_320_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_320;
    l1 = self.box_MultipleOR_328;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|607958217", "607958217", "UNI31_020_B20_main", "box_Gate_v3_320.Opened", "box_MultipleOR_328.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_320_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_320;
    l1 = self.box_MultipleOR_328;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1892947855", "1892947855", "UNI31_020_B20_main", "box_Gate_v3_320.Out", "box_MultipleOR_328.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PositionModifier_v2_9_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_PositionModifier_v2_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1363829908", "1363829908", "UNI31_020_B20_main", "box_PositionModifier_v2_9.Done", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_9_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_60();
    l0 = self.box_PositionModifier_v2_9;
    l1 = self.box_SoundModifier_v2_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|951628826", "951628826", "UNI31_020_B20_main", "box_PositionModifier_v2_9.StartOut", "box_SoundModifier_v2_60.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_163_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_194();
    l0 = self.box_Delay_v5_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|308700205", "308700205", "UNI31_020_B20_main", "box_OutputOrder_v2_163.Out", "box_Delay_v5_194.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_163_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_93();
    l0 = self.box_ProximityTrigger_v2_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2108304543", "2108304543", "UNI31_020_B20_main", "box_OutputOrder_v2_163.Out", "box_ProximityTrigger_v2_93.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_222_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_372();
    l0 = self.box_Delay_v5_372;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1850014052", "1850014052", "UNI31_020_B20_main", "box_OutputOrder_v2_222.Out", "box_Delay_v5_372.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_222_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_85();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2011988535", "2011988535", "UNI31_020_B20_main", "box_OutputOrder_v2_222.Out", "box_AddActivityObjective_v2_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_25_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_25;
    l1 = self.box_OnceOnly_v3_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1430194403", "1430194403", "UNI31_020_B20_main", "box_ProximityTrigger_v2_25.OnOccupied", "box_OnceOnly_v3_219.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_91();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|572286424", "572286424", "UNI31_020_B20_main", "box_OutputOrder_v2_26.Out", "box_OutputOrder_v2_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1834521737", "1834521737", "UNI31_020_B20_main", "box_OutputOrder_v2_26.Out", "box_MultipleOR_176.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1963017391", "1963017391", "UNI31_020_B20_main", "box_OutputOrder_v2_26.Out", "box_OnceOnly_v3_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_107_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_101();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|946640223", "946640223", "UNI31_020_B20_main", "box_OutputOrder_v2_107.Out", "box_IsEntityLoaded_v3_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_107_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_103();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1735315766", "1735315766", "UNI31_020_B20_main", "box_OutputOrder_v2_107.Out", "box_IsEntityLoaded_v3_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_107_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_104();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|959763836", "959763836", "UNI31_020_B20_main", "box_OutputOrder_v2_107.Out", "box_IsEntityLoaded_v3_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_394_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_246();
    l0 = self.box_Gate_v3_394;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|220496967", "220496967", "UNI31_020_B20_main", "box_Gate_v3_394.Closed", "box_Simple_Node_246.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_394_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_331();
    l0 = self.box_Gate_v3_394;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1818250651", "1818250651", "UNI31_020_B20_main", "box_Gate_v3_394.Out", "box_ActivityObjectiveMarkerModifier_v3_331.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_117_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_234();
    l0 = self.box_MultipleOR_117;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1491049773", "1491049773", "UNI31_020_B20_main", "box_MultipleOR_117.Out", "box_OutputOrder_v2_234.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_400_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_360();
    l0 = self.box_MultipleOR_400;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1599223437", "1599223437", "UNI31_020_B20_main", "box_MultipleOR_400.Out", "box_IntegerArithmetics_v2_360.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_241_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_242;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|938791076", "938791076", "UNI31_020_B20_main", "box_OutputOrder_v2_241.Out", "box_MultipleOR_242.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_241_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_369;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|468940255", "468940255", "UNI31_020_B20_main", "box_OutputOrder_v2_241.Out", "box_MultipleOR_369.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OnceOnly_v3_49_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_122();
    l0 = self.box_OnceOnly_v3_49;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|162311773", "162311773", "UNI31_020_B20_main", "box_OnceOnly_v3_49.Out", "box_AddActivityObjective_v2_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_111_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_111_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_228();
    l0 = self.box_Delay_v5_228;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1487439444", "1487439444", "UNI31_020_B20_main", "box_SetEntity_v2_111.Out", "box_Delay_v5_228.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_HealthModifier_v2_115_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_113();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1647194699", "1647194699", "UNI31_020_B20_main", "box_HealthModifier_v2_115.Damaged", "box_SetEntity_v2_113.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_433_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_216();
    l0 = self.box_OnceOnly_v3_433;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|561920490", "561920490", "UNI31_020_B20_main", "box_OnceOnly_v3_433.Out", "box_OutputOrder_v2_216.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_288_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_288;
    l1 = self.box_MultipleOR_269;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1247875665", "1247875665", "UNI31_020_B20_main", "box_SpawnAI_288.Spawned", "box_MultipleOR_269.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_312_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_169();
    l0 = self.box_ProximityTrigger_v2_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|454489375", "454489375", "UNI31_020_B20_main", "box_ActivityObjectiveMarkerModifier_v3_312.Enabled", "box_ProximityTrigger_v2_169.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_173_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_256();
    l0 = self.box_Delay_v5_173;
    l1 = self.box_Switch_256;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|709844480", "709844480", "UNI31_020_B20_main", "box_Delay_v5_173.TimeElapsed", "box_Switch_256.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_249()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_249");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|@AddCorpseNumber");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_249_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|@BodyWater");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_218_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|@CheckGate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_162_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|@DisableBox");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_33_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|@DisablePenCheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_192_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|@GFHCheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_144_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|@NoMoreCorpses");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_64_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|@ObjectiveCorpse1_Off");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_246_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_247()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|@ObjectiveCorpse2_Off");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_247_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_248()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_248");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|@ObjectiveCorpse3_Off");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_248_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_316()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_316");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|@OpenGateObjStarted");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_316_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|@PenCheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_149_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|@PerkinsHints");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_184_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|@PerkinsHintsOFF");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_185_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_293()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_293");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|@TurnOnCorpsesPile");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_293_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_333()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_333");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1727064");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100984843692176546",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI31_020_B10B_LureTheJudges",
            id = "639807",
        },
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_23()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "1061005050",
        -- Line,
        [3] = "Get rid of GFH",
        -- SafeguardDelay,
        [4] = 1,
        -- StartDelay,
        [5] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_268()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100956328896774538",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.2,
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_55()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = true,
        -- Dialogue,
        [2] = "2760284551",
        -- Line,
        [3] = "All my research, Gone",
        -- SafeguardDelay,
        [4] = 4,
        -- StartDelay,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_51()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "4044366608",
        -- Line,
        [3] = "Perkins Judge Hint 1",
        -- SafeguardDelay,
        [4] = 1,
        -- StartDelay,
        [5] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|48884842");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_202_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_202_A_gt_B,
    });
    params = {
        -- A,
        [0] = 3,
        -- B,
        [1] = self.WaterCropse,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_286()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100956330821960122",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_205()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2104730208763393862",
        -- UserFilter,
        [1] = self.ePerkinsNPC,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_181()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- EntityA,
        [1] = self.Corpse2,
        -- EntityB,
        [2] = "2100984843692176546",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|57494608");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_129_Out,
    });
    params = {
        -- Max,
        [0] = 120,
        -- Min,
        [1] = 60,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_66()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#C439C73D",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|73030089");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_112_Out,
    });
    params = {
        -- Entity,
        [0] = "2101370936279221548",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_373()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_373");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|73604252");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_373_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_89()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = true,
        -- Dialogue,
        [2] = "2760284551",
        -- Line,
        [3] = "What did you go and do that for?",
        -- SafeguardDelay,
        [4] = 3,
        -- StartDelay,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|80369589");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2101272920174171929",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|91023523");
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
                [0] = self.f_box_OutputOrder_v2_140_Out_0,
                [1] = self.f_box_OutputOrder_v2_140_Out_1,
                [2] = self.f_box_OutputOrder_v2_140_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_360()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_360");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|103483630");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_360_Out,
    });
    params = {
        -- A,
        [0] = self.NumBodyPickedUp,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_287()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100956328060010866",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_193()
    local params;
    params = {
        -- Group,
        [0] = "#5B4B5B55",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 1,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_MoveCorpses_401()
    local params;
    params = {
        -- Corpse,
        [0] = self.Corpse1,
        -- NearFar,
        [1] = 1.4,
        -- StratPoint,
        [2] = "2100983597138718971",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|141404909");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_29_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI31_020_B20_RevivePerkins",
            id = "869913",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_108()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101370936270832932",
    };
    return params;
end;

function export:OnEnter_box_Switch_11()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|154182328");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_143_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI31_020_B10B_LureTheJudges",
            id = "639807",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_349()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_349");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|179329625");
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
                [0] = self.f_box_OutputOrder_v2_349_Out_0,
                [1] = self.f_box_OutputOrder_v2_349_Out_1,
                [2] = self.f_box_OutputOrder_v2_349_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|181280918");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
                [2] = self.f_box_OutputOrder_v2_20_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|190010099");
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
                [0] = self.f_box_OutputOrder_v2_245_Out_0,
                [1] = self.f_box_OutputOrder_v2_245_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_244()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|192126605");
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
                [0] = self.f_box_OutputOrder_v2_244_Out_0,
                [1] = self.f_box_OutputOrder_v2_244_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_337()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_337");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|192747464");
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
                [0] = self.f_box_OutputOrder_v2_337_Out_0,
                [1] = self.f_box_OutputOrder_v2_337_Out_1,
                [2] = self.f_box_OutputOrder_v2_337_Out_2,
                [3] = self.f_box_OutputOrder_v2_337_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_336()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_100()
    local params;
    params = {
        -- Pawns,
        [0] = "2101232644829287072",
        -- SoundId,
        [1] = "1744747782",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Switch_153()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|221534696");
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

function export:OnEnter_box_PerkinsDialogue_134()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "623416517",
        -- Line,
        [3] = "Try not to hurt it",
        -- SafeguardDelay,
        [4] = 1,
        -- StartDelay,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|233875287");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_375()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_375");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|243102333");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2101161628870416712",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI31_020_B10B_LureTheJudges",
            id = "639807",
        },
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|252350515");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_444()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|261261751");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_61_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_61_A_gt_B,
    });
    l0 = self.box_GroupSizeListener_v5_58;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|263648251");
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
                [0] = self.f_box_OutputOrder_v2_161_Out_0,
                [1] = self.f_box_OutputOrder_v2_161_Out_1,
            },
            count = 2,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|274963654");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|284231386");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_101_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_101_True,
    });
    params = {
        -- entityId,
        [0] = "2099833278843330556",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_24()
    local params;
    params = {
        -- usableEntity,
        [4] = "2101767820908965942",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_82()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "#5B4B5B55",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|343053580");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Mission Fail msg (generic)",
            item = "MSG_MISSION_FAILED_EXITMISSIONZONE",
            id = "869998",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_233()
    local params;
    params = {
        -- Group,
        [0] = "2105599303392183022",
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_53()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "4293816426",
        -- Line,
        [3] = "Perkins Judge Hint 2",
        -- SafeguardDelay,
        [4] = 1,
        -- StartDelay,
        [5] = 0,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_157()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#5B4B5B55",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_130()
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

function export:OnEnter_box_OutputOrder_v2_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|404729921");
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
                [0] = self.f_box_OutputOrder_v2_138_Out_0,
                [1] = self.f_box_OutputOrder_v2_138_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_339()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_339");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|407112631");
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
                [0] = self.f_box_OutputOrder_v2_339_Out_0,
                [1] = self.f_box_OutputOrder_v2_339_Out_1,
                [2] = self.f_box_OutputOrder_v2_339_Out_2,
                [3] = self.f_box_OutputOrder_v2_339_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_190()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = true,
        -- Dialogue,
        [2] = "3236580210",
        -- Line,
        [3] = "Almost there",
        -- SafeguardDelay,
        [4] = 4,
        -- StartDelay,
        [5] = 2,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_393()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_393");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|432229908");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_393_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.CorpsesInPlace,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|436624277");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|437133998");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2100123053905158304",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_331()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_331");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|449851159");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100984845787231402",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI31_020_B10B_LureTheJudges",
            id = "639807",
        },
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_87()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "3522605924",
        -- Line,
        [3] = "Fuck I needed it alive",
        -- SafeguardDelay,
        [4] = 3,
        -- StartDelay,
        [5] = 0,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_392()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|480004053");
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

function export:OnEnter_box_OutputOrder_v2_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|483260784");
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

function export:OnEnter_box_Bind_v4_128()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- EntityA,
        [1] = self.Corpse3,
        -- EntityB,
        [2] = "2101161628870416712",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- usableEntityId,
        [1] = "2101767820908965942",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|510563702");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_74_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI31_020_B10A_WaitForPerkins",
            id = "682420",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|526706219");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_79_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.CorpsesInPlace,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|532696462");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_142_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_309()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2104548528052257844",
        -- WarningZoneTrigger,
        [3] = "2099735246179145816",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_60()
    local params;
    params = {
        -- Pawns,
        [0] = "2101232644829287072",
        -- SoundId,
        [1] = "901186485",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_215()
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
        [6] = "4037864395",
        -- StopEvent,
        [7] = "3660043526",
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

function export:OnEnter_box_TaggingModifier_v3_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_267");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|557450436");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2100956328068399483",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_109()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101370954620912998",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_318()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_21()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = true,
        -- Dialogue,
        [2] = "3868127432",
        -- Line,
        [3] = "Grab trainer bodies",
        -- SafeguardDelay,
        [4] = 6,
        -- StartDelay,
        [5] = 2,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_446()
    local params;
    params = {
        -- Group,
        [0] = "2101287787618712161",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|563357632");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_102_Out,
    });
    params = {
        -- Entity,
        [0] = "2099833278843330556",
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_75()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "3592145464",
        -- Line,
        [3] = "You're not getting squeamish on me are you",
        -- SafeguardDelay,
        [4] = 1,
        -- StartDelay,
        [5] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|587277770");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_123_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_123_A_is_True,
    });
    params = {
        -- A,
        [0] = self.GateOpen,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_447()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_447");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|590687687");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_447_True,
    });
    params = {
        -- entityId,
        [0] = "2101449532928702482",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_254()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_254");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|596398866");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2100956330830348739",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|612768431");
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

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|617792072");
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
                [0] = self.f_box_OutputOrder_v2_62_Out_0,
                [1] = self.f_box_OutputOrder_v2_62_Out_1,
                [2] = self.f_box_OutputOrder_v2_62_Out_2,
                [3] = self.f_box_OutputOrder_v2_62_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_294()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_294");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|623706097");
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
                [0] = self.f_box_OutputOrder_v2_294_Out_0,
                [1] = self.f_box_OutputOrder_v2_294_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|639585184");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_223_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI31_020_B20_TrapJudge",
            id = "548417",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|648817442");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
                [3] = self.f_box_OutputOrder_v2_7_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|652309382");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveFromGroup_v2_168_Out,
    });
    params = {
        -- Entities,
        [0] = "#C46955EA",
        -- Group,
        [1] = "#5B4B5B55",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_10()
    local params;
    DrawTextToScreen("Comment: CLOSE GATE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: CLOSE GATE");
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2099874551849551909",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2099740377952036868",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_136()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "1309443786",
        -- Line,
        [3] = "I hate this place",
        -- SafeguardDelay,
        [4] = 1,
        -- StartDelay,
        [5] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_159()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015191695287394",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|703486406");
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
                [0] = self.f_box_OutputOrder_v2_151_Out_0,
                [1] = self.f_box_OutputOrder_v2_151_Out_1,
                [2] = self.f_box_OutputOrder_v2_151_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|713875513");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_30_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI31_020_B20_RevivePerkins",
            id = "869913",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_260()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|721351417");
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

function export:OnEnter_box_IntegerArithmetics_v2_203()
    local params, l0;
    DrawTextToScreen("Comment: Body In water", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'IntegerArithmetics_v2')-- Comment: Body In water");
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|732254643");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_203_Out,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.WaterCropse,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_125()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- EntityA,
        [1] = self.Corpse1,
        -- EntityB,
        [2] = "2100984845787231402",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_253()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|779103984");
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
                [0] = self.f_box_OutputOrder_v2_236_Out_0,
                [1] = self.f_box_OutputOrder_v2_236_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|789391835");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_104_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_104_True,
    });
    params = {
        -- entityId,
        [0] = "2099807577392029980",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_52()
    local params;
    params = {
        -- Entity,
        [0] = "2101231427845663445",
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_98()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "3730939468",
        -- Line,
        [3] = "Shit I see them",
        -- SafeguardDelay,
        [4] = 3,
        -- StartDelay,
        [5] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_279()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100956327493779802",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|839577010");
    l0:SetConnections({
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI31_020_B20_TrapJudge",
            id = "548417",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_110()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101370964672562603",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|847693327");
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

function export:OnEnter_box_SoundModifier_v2_200()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2217520735",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|887418288");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_199_A_ge_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_199_A_ne_B,
    });
    params = {
        -- A,
        [0] = self.CorpsesInPlace,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_169()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.ePerkinsNPC,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101659084034946947",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|901832034");
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

function export:OnEnter_box_Music_Quest_v2_213()
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
        [6] = "4037864395",
        -- StopEvent,
        [7] = "3660043526",
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

function export:OnEnter_box_SpawnAI_266()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100956331744707026",
    };
    return params;
end;

function export:OnEnter_box_GetPosition_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|930017491");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_39_Out,
    });
    params = {
        -- id,
        [0] = "2099874551849551909",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_209()
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
        [6] = "4037864395",
        -- StopEvent,
        [7] = "3660043526",
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

function export:OnEnter_box_RemoveEntity_v2_232()
    local params;
    params = {
        -- Group,
        [0] = "2105599301762695917",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_237()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|966167728");
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
                [0] = self.f_box_OutputOrder_v2_237_Out_0,
                [1] = self.f_box_OutputOrder_v2_237_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|967189028");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2100123033225142374",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_229()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_15()
    local params;
    DrawTextToScreen("Comment: CHECK DOG AFTER GATE CLOSED", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v2')-- Comment: CHECK DOG AFTER GATE CLOSED");
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#5B4B5B55",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099877580418066737",
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_84()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "651746989",
        -- Line,
        [3] = "Look I'm not seeing any more out there",
        -- SafeguardDelay,
        [4] = 4,
        -- StartDelay,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_329()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_329");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1015311033");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_329_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.CorpsesInPlace,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_GetPosition_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1018953688");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_40_Out,
    });
    params = {
        -- id,
        [0] = "2099740377952036868",
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_83()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "1614417436",
        -- Line,
        [3] = "What the duck are you doing? I need it alive",
        -- SafeguardDelay,
        [4] = 3,
        -- StartDelay,
        [5] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1031877946");
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
                [0] = self.f_box_OutputOrder_v2_73_Out_0,
                [1] = self.f_box_OutputOrder_v2_73_Out_1,
                [2] = self.f_box_OutputOrder_v2_73_Out_2,
                [3] = self.f_box_OutputOrder_v2_73_Out_3,
                [4] = self.f_box_OutputOrder_v2_73_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_120()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "1239627812",
        -- Line,
        [3] = "Careful",
        -- SafeguardDelay,
        [4] = 1,
        -- StartDelay,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_261()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_261");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1046429590");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_261_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_258;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1059140847");
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

function export:OnEnter_box_Gate_v3_252()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_137()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "3525401044",
        -- Line,
        [3] = "I'm coming down the zipline",
        -- SafeguardDelay,
        [4] = 1,
        -- StartDelay,
        [5] = 0,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1067097476");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104730208763393862",
        -- Entity,
        [1] = self.ePerkinsNPC,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_448()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_448");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1071545615");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_448_True,
    });
    params = {
        -- entityId,
        [0] = "2101287787618712161",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_206()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_302()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.Corpse1,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102727848006528242",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1097478233");
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
                [0] = self.f_box_OutputOrder_v2_77_Out_0,
                [1] = self.f_box_OutputOrder_v2_77_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_277()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_277");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1097712418");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2100956326264848691",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_276()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_276");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1114087546");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2100956328905163155",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_69()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.Corpse2,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102727848006528242",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1134353041");
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

function export:OnEnter_box_OutputOrder_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1136229876");
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
                [0] = self.f_box_OutputOrder_v2_91_Out_0,
                [1] = self.f_box_OutputOrder_v2_91_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_195()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_194()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_332()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_332");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1151768601");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI31_020_B10B_LureTheJudges",
            id = "639807",
        },
        -- Progress,
        [1] = self.CorpsesInPlace,
        -- ProgressId,
        [2] = self.CorpseProgressID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_310()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_310");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1157651975");
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
                [0] = self.f_box_OutputOrder_v2_310_Out_0,
                [1] = self.f_box_OutputOrder_v2_310_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_67()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = true,
        -- Dialogue,
        [2] = "3881462913",
        -- Line,
        [3] = "What did you do that for? We needed that to lure the damn Judges",
        -- SafeguardDelay,
        [4] = 4,
        -- StartDelay,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_257()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_257");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1160706877");
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
                [0] = self.f_box_OutputOrder_v2_257_Out_0,
                [1] = self.f_box_OutputOrder_v2_257_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_372()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1171766169");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1180484123");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
                [3] = self.f_box_OutputOrder_v2_28_Out_3,
                [4] = self.f_box_OutputOrder_v2_28_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_227()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_334()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_334");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1200985466");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_334_A_eq_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_334_A_lt_B,
    });
    params = {
        -- A,
        [0] = 0,
        -- B,
        [1] = self.NumBodyPickedUp,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1231140491");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_47_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI31_020_B10A_TestTheGate",
            id = "639806",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_88()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_38()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "3318956048",
        -- Line,
        [3] = "Your GFH killed a Judge",
        -- SafeguardDelay,
        [4] = 1,
        -- StartDelay,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1280864403");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_156_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_156_A_gt_B,
    });
    l0 = self.box_GroupSizeListener_v5_157;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1290710078");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_201_A_eq_B,
    });
    params = {
        -- A,
        [0] = 3,
        -- B,
        [1] = self.WaterCropse,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1301331761");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_114_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "2101370936279221548",
        -- value,
        [3] = 1E+09,
    };
    return params;
end;

function export:OnEnter_box_Switch_264()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_94()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#5B4B5B55",
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_63()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = true,
        -- Dialogue,
        [2] = "153903049",
        -- Line,
        [3] = "Not seeing any from up here",
        -- SafeguardDelay,
        [4] = 4,
        -- StartDelay,
        [5] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_299()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_299");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1323264714");
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
                [0] = self.f_box_OutputOrder_v2_299_Out_0,
                [1] = self.f_box_OutputOrder_v2_299_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_12()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = true,
        -- Dialogue,
        [2] = "3882640185",
        -- Line,
        [3] = "Open the Gate so we can get started",
        -- SafeguardDelay,
        [4] = 2,
        -- StartDelay,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_92()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1357722428");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_124_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_124_A_is_True,
    });
    params = {
        -- A,
        [0] = self.GateOpen,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_281()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100956329427354018",
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_46()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = true,
        -- Dialogue,
        [2] = "4247282946",
        -- Line,
        [3] = "Clear remaning Judges",
        -- SafeguardDelay,
        [4] = 3,
        -- StartDelay,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_255()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099877391118637192",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_443()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_443");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1402240100");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_443_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_443_A_is_True,
    });
    params = {
        -- A,
        [0] = self.GateOpen,
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_57()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = true,
        -- Dialogue,
        [2] = "2325904918",
        -- Line,
        [3] = "Good you left some alive",
        -- SafeguardDelay,
        [4] = 2,
        -- StartDelay,
        [5] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1424611618");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_172_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2102918953631256429",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI31_020_B20_RevivePerkins",
            id = "869913",
        },
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_56()
    local params;
    params = {
        -- Entity,
        [0] = "2101231427845663445",
    };
    return params;
end;

function export:OnEnter_box_Switch_256()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1443453536");
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
                [0] = self.f_box_OutputOrder_v2_186_Out_0,
                [1] = self.f_box_OutputOrder_v2_186_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1450949701");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_103_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_103_True,
    });
    params = {
        -- entityId,
        [0] = "2099807321321381700",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1456589458");
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
                [0] = self.f_box_OutputOrder_v2_165_Out_0,
                [1] = self.f_box_OutputOrder_v2_165_Out_1,
                [2] = self.f_box_OutputOrder_v2_165_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_357()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_357");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1477247997");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100983600064246231",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI31_020_B10B_LureTheJudges",
            id = "639807",
        },
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_133()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "239380637",
        -- Line,
        [3] = "Watch it looks angry",
        -- SafeguardDelay,
        [4] = 1,
        -- StartDelay,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_135()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = true,
        -- Dialogue,
        [2] = "3522439866",
        -- Line,
        [3] = "Ok lets see what you caught me",
        -- SafeguardDelay,
        [4] = 1,
        -- StartDelay,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1530291854");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Floats_42_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Floats_42_A_ne_B,
    });
    params = {
        -- A,
        [0] = self._sld_xPos_box_GetPosition_40,
        -- B,
        [1] = self._sld_xPos_box_GetPosition_39,
        -- Tolerance,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_340()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_340");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1530608911");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_340_Out,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.CorpsesInPlace,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1539996850");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1540734619");
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
                [0] = self.f_box_OutputOrder_v2_179_Out_0,
                [1] = self.f_box_OutputOrder_v2_179_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1548678804");
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
                [0] = self.f_box_OutputOrder_v2_212_Out_0,
                [1] = self.f_box_OutputOrder_v2_212_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BindMarkerOverHead_v2_139()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- eMobileMarker,
        [1] = "2102918953631256429",
        -- eNPC,
        [2] = self.ePerkinsNPC,
        -- fHeight,
        [3] = 0.45,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_290()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_290");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1574696358");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2100956326722027851",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_291()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100956326711542082",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1597233656");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_150_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_150_A_is_True,
    });
    params = {
        -- A,
        [0] = self.SetGate,
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_72()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "152055027",
        -- Line,
        [3] = "That's a nice one try to trap that one",
        -- SafeguardDelay,
        [4] = 1,
        -- StartDelay,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1617970443");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_126_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1625433116");
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
        [8] = "UNI31_020_B20 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_280()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_280");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1626252307");
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

function export:OnEnter_box_RemoveEntity_v2_230()
    local params;
    params = {
        -- Group,
        [0] = "2105599289970410220",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_50()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.ePerkinsNPC,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_93()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#1DDB9D40",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101369358113601352",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1662962365");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_224_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101272917770835729",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1671465266");
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
                [0] = self.f_box_OutputOrder_v2_234_Out_0,
                [1] = self.f_box_OutputOrder_v2_234_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1694212152");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103167809042341919",
        -- Group,
        [1] = "#5B4B5B55",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_180()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_262()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_262");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1701868880");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2099877391135414414",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1705773282");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TaggingModifier_v3_177_Disabled,
    });
    params = {
        -- Entity,
        [0] = self.CapturedJudge,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_275()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_275");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1706561520");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2100956331753095643",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1708358002");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI31_020_B10A_TestTheGate",
            id = "639806",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_MoveCorpses_405()
    local params;
    params = {
        -- Corpse,
        [0] = self.Corpse2,
        -- NearFar,
        [1] = 1.4,
        -- StratPoint,
        [2] = "2100983597138718971",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_211()
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
        [6] = "4037864395",
        -- StopEvent,
        [7] = "3660043526",
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

function export:OnEnter_box_Compare_Integers_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1723771398");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_65_A_gt_B,
    });
    l0 = self.box_GroupSizeListener_v5_66;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_250()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_250");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1726063181");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_250_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI31_020_B10A_WaitForPerkins",
            id = "682420",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1726234394");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_155_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1756500261");
    l0:SetConnections({
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI31_020_B30_KillRemainingJudge",
            id = "548418",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_148()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_315()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1793860370");
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
                [0] = self.f_box_OutputOrder_v2_235_Out_0,
                [1] = self.f_box_OutputOrder_v2_235_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MoveCorpses_399()
    local params;
    params = {
        -- Corpse,
        [0] = self.Corpse3,
        -- NearFar,
        [1] = 1.4,
        -- StratPoint,
        [2] = "2100983597138718971",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1794653859");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_106_Out,
    });
    params = {
        -- Entity,
        [0] = "2099807577392029980",
    };
    return params;
end;

function export:OnEnter_box_Switch_43()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Random_197()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1802134905");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_85_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI31_020_B10B_LureTheJudges",
            id = "639807",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_258()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#5B4B5B55",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1809401769");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_113_Out,
    });
    params = {
        -- Entity,
        [0] = "2101370954629301614",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_251()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_251");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1830478600");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2102918953631256429",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI31_020_B10A_WaitForPerkins",
            id = "682420",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_228()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1848554122");
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
                [0] = self.f_box_OutputOrder_v2_214_Out_0,
                [1] = self.f_box_OutputOrder_v2_214_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_217()
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
        [6] = "4037864395",
        -- StopEvent,
        [7] = "3660043526",
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

function export:OnEnter_box_TaggingModifier_v3_283()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_283");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1852961565");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_283_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2100956329435742635",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_36()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#C46955EA",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1855208546");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_226_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101272907415099149",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_58()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#5B4B5B55",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1876619871");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_105_Out,
    });
    params = {
        -- Entity,
        [0] = "2099807321321381700",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1894033001");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_95_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_95_A_gt_B,
    });
    l0 = self.box_GroupSizeListener_v5_94;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_343()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_343");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1895569263");
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
                [0] = self.f_box_OutputOrder_v2_343_Out_0,
                [1] = self.f_box_OutputOrder_v2_343_Out_1,
                [2] = self.f_box_OutputOrder_v2_343_Out_2,
                [3] = self.f_box_OutputOrder_v2_343_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1898626358");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI31_020_B10A_WaitForPerkins",
            id = "682420",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_274()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_274");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1905031784");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2100956327502168419",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_243()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1905481359");
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
                [0] = self.f_box_OutputOrder_v2_243_Out_0,
                [1] = self.f_box_OutputOrder_v2_243_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1906750158");
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
                [0] = self.f_box_OutputOrder_v2_127_Out_0,
                [1] = self.f_box_OutputOrder_v2_127_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1908206312");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_167_Out,
    });
    params = {
        -- FromGroup,
        [0] = self.CapturedJudge,
        -- ToGroup,
        [1] = "#C46955EA",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1922183096");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_121_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI31_020_B10A_WaitForPerkins",
            id = "682420",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_346()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_346");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1924700850");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_346_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI31_020_B10B_LureTheJudges",
            id = "639807",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1947595620");
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
                [0] = self.f_box_OutputOrder_v2_178_Out_0,
                [1] = self.f_box_OutputOrder_v2_178_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_397()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1954837523");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_35_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100872403469996093",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI31_020_B10A_TestTheGate",
            id = "639806",
        },
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_59()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = true,
        -- Dialogue,
        [2] = "3345524927",
        -- Line,
        [3] = "Good now you just need to lure one in",
        -- SafeguardDelay,
        [4] = 2,
        -- StartDelay,
        [5] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_347()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_347");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1985930256");
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
                [0] = self.f_box_OutputOrder_v2_347_Out_0,
                [1] = self.f_box_OutputOrder_v2_347_Out_1,
                [2] = self.f_box_OutputOrder_v2_347_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|1986501230");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_116_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "2101370964680951219",
        -- value,
        [3] = 1E+09,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_354()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_119()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_175()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_420()
    local params;
    params = {
        -- Pawns,
        [0] = "#5B4B5B55",
        -- SoundId,
        [1] = "731180139",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_IsGunsForHire_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsGunsForHire_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2028969374");
    l0:SetConnections({
        -- Squad,
        [3] = self.f_box_IsGunsForHire_v2_76_Squad,
    });
    l0 = self.box_HealthListener_v6_82;
    params = {
        -- targetGFHEntity,
        [2] = l0:GetDataOutValue(4),
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_320()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2034612429");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2100123056404963551",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_9()
    local params;
    DrawTextToScreen("Comment: OPEN GATE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: OPEN GATE");
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2099877630430947656",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2099740377952036868",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2037027815");
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

function export:OnEnter_box_OutputOrder_v2_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2037285806");
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
                [0] = self.f_box_OutputOrder_v2_222_Out_0,
                [1] = self.f_box_OutputOrder_v2_222_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_445()
    local params;
    params = {
        -- Group,
        [0] = "2101449532928702482",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_25()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.Corpse3,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102727848006528242",
    };
    return params;
end;

function export:OnEnter_box_PerkinsDialogue_81()
    local params;
    params = {
        -- Character,
        [0] = self.ePerkinsNPC,
        -- CheckRevive,
        [1] = false,
        -- Dialogue,
        [2] = "3335116557",
        -- Line,
        [3] = "Here comes another one. Try not to kill it this time",
        -- SafeguardDelay,
        [4] = 1,
        -- StartDelay,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2062757109");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
                [2] = self.f_box_OutputOrder_v2_26_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2077161753");
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
                [0] = self.f_box_OutputOrder_v2_107_Out_0,
                [1] = self.f_box_OutputOrder_v2_107_Out_1,
                [2] = self.f_box_OutputOrder_v2_107_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_394()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_241()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2092824286");
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

function export:OnEnter_box_SetEntity_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2095526115");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_111_Out,
    });
    params = {
        -- Entity,
        [0] = "2101370964680951219",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2113079771");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_115_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "2101370954629301614",
        -- value,
        [3] = 1E+09,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_288()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100956326256460074",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_312()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_312");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_020_B20.domino|@UNI31_020_B20_main|2140838893");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_312_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2102918953631256429",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI31_020_B10A_WaitForPerkins",
            id = "682420",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_173()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_129_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_130;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_112_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Corpse1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_373_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.CorpsesInPlace = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_360_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.NumBodyPickedUp = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_143_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.CorpseProgressID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.FriendlyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_142_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.GateOpen = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_102_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Corpse1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_159_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_159;
    self.ePerkinsNPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_203_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.WaterCropse = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_39_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_39 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_ProximityTrigger_v2_15_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_15;
    self.CapturedJudge = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_15_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_15;
    self.CapturedJudge = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_15_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_15;
    self.CapturedJudge = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_15_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_15;
    self.CapturedJudge = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_15_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_15;
    self.CapturedJudge = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_15_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_15;
    self.CapturedJudge = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_40 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_IntegerArithmetics_v2_340_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.CorpsesInPlace = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_126_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.GateOpen = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_155_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.SetGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_106_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Corpse3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_113_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Corpse2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_105_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Corpse2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_111_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Corpse3 = l0:GetDataOutValue(0);
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
