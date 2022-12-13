LUACNU -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni58/uni58_010/uni58_010_brief.domino
-- User graph: UNI58_010_BRIEF
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehiclePositionLockModifier.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_B10.MovieCrewMonitoring.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_B10.UNI58_010_B20_EVENT.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_BRIEF.CaveEntranceNavlinks.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_BRIEF.CrewIntroductionDialogs.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_BRIEF.SmokeMachines.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2903776234.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3609144583.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_BRIEF.UNI58_010_BRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Aborted",
                delayed = true,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "Finished",
                delayed = true,
            },
            [3] = {
                name = "Paused",
                delayed = true,
            },
            [4] = {
                name = "Resumed",
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
                name = "eNPC",
                type = "entity",
            },
            [1] = {
                name = "Interrupt_STP_on_Talk",
                type = "bool",
            },
            [2] = {
                name = "oObjective",
                type = "oasis",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/VehicleModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAlternativeSuspensionDisabled",
            },
            [1] = {
                name = "SetAlternativeSuspensionEnabled",
            },
            [2] = {
                name = "SetAsAnimated",
            },
            [3] = {
                name = "SetAsDestructable",
            },
            [4] = {
                name = "SetAsIndestructable",
            },
            [5] = {
                name = "SetAsNotAnimated",
            },
            [6] = {
                name = "SetAsUnusable",
            },
            [7] = {
                name = "SetAsUsable",
            },
            [8] = {
                name = "SetBrakesReleased",
            },
            [9] = {
                name = "SetCommandeerDisabled",
            },
            [10] = {
                name = "SetCommandeerEnabled",
            },
            [11] = {
                name = "SetEngineBroken",
            },
            [12] = {
                name = "SetEngineDisabled",
            },
            [13] = {
                name = "SetEngineMajorDamage",
            },
            [14] = {
                name = "SetEngineMinorDamage",
            },
            [15] = {
                name = "SetExitDisabled",
            },
            [16] = {
                name = "SetExitEnabled",
            },
            [17] = {
                name = "SetExplosion",
            },
            [18] = {
                name = "SetInputDisabled",
            },
            [19] = {
                name = "SetInputEnabled",
            },
        },
        controlInCount = 20,
        controlOut = {
            [0] = {
                name = "OnSetAlternativeSuspensionDisabled",
                delayed = false,
            },
            [1] = {
                name = "OnSetAlternativeSuspensionEnabled",
                delayed = false,
            },
            [2] = {
                name = "OnSetAsAnimated",
                delayed = false,
            },
            [3] = {
                name = "OnSetAsDestructible",
                delayed = false,
            },
            [4] = {
                name = "OnSetAsIndestructible",
                delayed = false,
            },
            [5] = {
                name = "OnSetAsNotAnimated",
                delayed = false,
            },
            [6] = {
                name = "OnSetAsUnusable",
                delayed = false,
            },
            [7] = {
                name = "OnSetAsUsable",
                delayed = false,
            },
            [8] = {
                name = "OnSetBrakesReleased",
                delayed = false,
            },
            [9] = {
                name = "OnSetCommandeerDisabled",
                delayed = false,
            },
            [10] = {
                name = "OnSetCommandeerEnabled",
                delayed = false,
            },
            [11] = {
                name = "OnSetEngineBroken",
                delayed = false,
            },
            [12] = {
                name = "OnSetEngineDisabled",
                delayed = false,
            },
            [13] = {
                name = "OnSetEngineMajorDamage",
                delayed = false,
            },
            [14] = {
                name = "OnSetEngineMinorDamage",
                delayed = false,
            },
            [15] = {
                name = "OnSetExitDisabled",
                delayed = false,
            },
            [16] = {
                name = "OnSetExitEnabled",
                delayed = false,
            },
            [17] = {
                name = "OnSetExplosion",
                delayed = false,
            },
            [18] = {
                name = "OnSetInputDisabled",
                delayed = false,
            },
            [19] = {
                name = "OnSetInputEnabled",
                delayed = false,
            },
        },
        controlOutCount = 20,
        dataIn = {
            [0] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/VehiclePositionLockModifier.lua")] = {
        stateless = true,
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
                name = "Locked",
                delayed = false,
            },
            [1] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "VehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_B10.MovieCrewMonitoring.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "DeanIsLoaded",
                delayed = false,
            },
            [1] = {
                name = "GuyIsDown",
                delayed = false,
            },
            [2] = {
                name = "OneCrewDown",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_B10.UNI58_010_B20_EVENT.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Is_B20",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_BRIEF.CaveEntranceNavlinks.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_BRIEF.CrewIntroductionDialogs.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "StopDialogs",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "DialogsStop",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PlayersGroup",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_BRIEF.SmokeMachines.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI58_010_BRIEF";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF";
    self.gFriendlyPlayers = nil;
    self.ePlayer = nil;
    self.e_GUY = nil;
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|228941892");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_RegenerateNavmesh_23 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|245214918");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_RegenerateNavmesh_23_Out,
    });
    self.box_MultipleAND_v2_31 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|401342114");
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
        [0] = self.f_box_MultipleAND_v2_31_Out,
    });
    self.box_CaveEntranceNavlinks_33 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_BRIEF.CaveEntranceNavlinks.debug.lua");
    l0 = self.box_CaveEntranceNavlinks_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CaveEntranceNavlinks_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|422219834");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_17 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|655828011");
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
                [0] = self.f_box_OnceOnly_v3_17_Out_0,
            },
            count = 2,
        },
    });
    self.box_SmokeMachines_34 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_BRIEF.SmokeMachines.debug.lua");
    l0 = self.box_SmokeMachines_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SmokeMachines_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|787574455");
    l0:SetConnections({
    });
    self.box_Delay_v5_22 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|913539386");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_22_TimeElapsed,
    });
    self.box_Brick_NarrativeQuickCinema_V4_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V4_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V4_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|915096279");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V4_10_Finished,
    });
    self.box_EntityStatusListener_42 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|956579298");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_42_Loaded,
    });
    self.box_CrewIntroductionDialogs_15 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_BRIEF.CrewIntroductionDialogs.debug.lua");
    l0 = self.box_CrewIntroductionDialogs_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CrewIntroductionDialogs_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1297930616");
    l0:SetConnections({
        -- DialogsStop,
        [0] = self.f_box_CrewIntroductionDialogs_15_DialogsStop,
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1313439302");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_UNI58_010_B20_EVENT_24 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_B10.UNI58_010_B20_EVENT.debug.lua");
    l0 = self.box_UNI58_010_B20_EVENT_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI58_010_B20_EVENT_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1338710017");
    l0:SetConnections({
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1420090202");
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
    self.box_MovieCrewMonitoring_21 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_B10.MovieCrewMonitoring.debug.lua");
    l0 = self.box_MovieCrewMonitoring_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MovieCrewMonitoring_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1441201005");
    l0:SetConnections({
        -- OneCrewDown,
        [2] = self.f_box_MovieCrewMonitoring_21_OneCrewDown,
    });
    self.box_MultipleAND_v2_18 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1673480341");
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
        [0] = self.f_box_MultipleAND_v2_18_Out,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1703756045");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_CharacterLoadedIdListener_2 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1846515928");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_2_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_2_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_2_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_2_LoadedIdReceived,
    });
    self.box_Music_Quest_v2_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1937292967");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_38 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|2055116170");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_14();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|2084442539", "2084442539", "UNI58_010_BRIEF", "In", "box_GetLocalPlayer_v2_14.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1021782888", "1021782888", "UNI58_010_BRIEF", "OnLeaveZone", "box_OutputOrder_v2_37.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|326800326", "326800326", "UNI58_010_BRIEF", "box_Simple_Node_19.Out", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RegenerateNavmesh_23();
    l0 = self.box_RegenerateNavmesh_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1716202009", "1716202009", "UNI58_010_BRIEF", "box_OutputOrder_v2_8.Out", "box_RegenerateNavmesh_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1149145460", "1149145460", "UNI58_010_BRIEF", "box_OutputOrder_v2_8.Out", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CaveEntranceNavlinks_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|274872833", "274872833", "UNI58_010_BRIEF", "box_OutputOrder_v2_8.Out", "box_CaveEntranceNavlinks_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_8_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_SmokeMachines_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1406235719", "1406235719", "UNI58_010_BRIEF", "box_OutputOrder_v2_8.Out", "box_SmokeMachines_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_8_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_42();
    l0 = self.box_EntityStatusListener_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|798859664", "798859664", "UNI58_010_BRIEF", "box_OutputOrder_v2_8.Out", "box_EntityStatusListener_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|253293199", "253293199", "UNI58_010_BRIEF", "box_OutputOrder_v2_8.Out", "box_Print_v2_9.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_1_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_2();
    l0 = self.box_CharacterLoadedIdListener_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1072470713", "1072470713", "UNI58_010_BRIEF", "box_GetPlayerGroup_v2_1.Out", "box_CharacterLoadedIdListener_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1298820925", "1298820925", "UNI58_010_BRIEF", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1727134826", "1727134826", "UNI58_010_BRIEF", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RegenerateNavmesh_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_RegenerateNavmesh_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|355764323", "355764323", "UNI58_010_BRIEF", "box_RegenerateNavmesh_23.Out", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_11_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_13();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1380215209", "1380215209", "UNI58_010_BRIEF", "box_UseContextualActionModifier_v3_11.Disabled", "box_UseContextualActionModifier_v3_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_11();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|22845448", "22845448", "UNI58_010_BRIEF", "box_OutputOrder_v2_27.Out", "box_UseContextualActionModifier_v3_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_31();
    l0 = self.box_MultipleAND_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|365884691", "365884691", "UNI58_010_BRIEF", "box_OutputOrder_v2_27.Out", "box_MultipleAND_v2_31.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_MultipleAND_v2_31;
    l1 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1379711109", "1379711109", "UNI58_010_BRIEF", "box_MultipleAND_v2_31.Out", "box_Delay_v5_22.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_13_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|132241188", "132241188", "UNI58_010_BRIEF", "box_UseContextualActionModifier_v3_13.Disabled", "box_OutputOrder_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_17_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_29();
    l0 = self.box_OnceOnly_v3_17;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|871865357", "871865357", "UNI58_010_BRIEF", "box_OnceOnly_v3_17.Out", "box_UseContextualActionModifier_v3_29.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MovieCrewMonitoring_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|662568874", "662568874", "UNI58_010_BRIEF", "box_OutputOrder_v2_30.Out", "box_MovieCrewMonitoring_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CrewIntroductionDialogs_15();
    l0 = self.box_CrewIntroductionDialogs_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|2034500591", "2034500591", "UNI58_010_BRIEF", "box_OutputOrder_v2_30.Out", "box_CrewIntroductionDialogs_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V4_10();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1529069767", "1529069767", "UNI58_010_BRIEF", "box_OutputOrder_v2_35.Out", "box_Brick_NarrativeQuickCinema_V4_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_5();
    l0 = self.box_Music_Quest_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|714759590", "714759590", "UNI58_010_BRIEF", "box_OutputOrder_v2_35.Out", "box_Music_Quest_v2_5.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_22_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_22;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|791786158", "791786158", "UNI58_010_BRIEF", "box_Delay_v5_22.TimeElapsed", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_10_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|128397481", "128397481", "UNI58_010_BRIEF", "box_Brick_NarrativeQuickCinema_V4_10.Finished", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_42_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_44();
    l0 = self.box_EntityStatusListener_42;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1542853715", "1542853715", "UNI58_010_BRIEF", "box_EntityStatusListener_42.Loaded", "box_VehicleModifier_v2_44.SetAsIndestructable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsIndestructable
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_19();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1998337743", "1998337743", "UNI58_010_BRIEF", "box_OutputOrder_v2_16.Out", "box_Simple_Node_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_18();
    l0 = self.box_MultipleAND_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|378447871", "378447871", "UNI58_010_BRIEF", "box_OutputOrder_v2_16.Out", "box_MultipleAND_v2_18.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|2001946126", "2001946126", "UNI58_010_BRIEF", "box_OutputOrder_v2_32.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_UNI58_010_B20_EVENT_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|2087985023", "2087985023", "UNI58_010_BRIEF", "box_OutputOrder_v2_32.Out", "box_UNI58_010_B20_EVENT_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_CrewIntroductionDialogs_15_DialogsStop()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_18();
    l0 = self.box_CrewIntroductionDialogs_15;
    l1 = self.box_MultipleAND_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1305542815", "1305542815", "UNI58_010_BRIEF", "box_CrewIntroductionDialogs_15.DialogsStop", "box_MultipleAND_v2_18.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_ActivityInitialized_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|17676473", "17676473", "UNI58_010_BRIEF", "box_ActivityInitialized_4.Out", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_29_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|104026552", "104026552", "UNI58_010_BRIEF", "box_UseContextualActionModifier_v3_29.ForceNormalEndCalled", "box_ActivityEnd_7.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_14_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_1();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|113942889", "113942889", "UNI58_010_BRIEF", "box_GetLocalPlayer_v2_14.Out", "box_GetPlayerGroup_v2_1.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|482942824", "482942824", "UNI58_010_BRIEF", "box_MultipleOR_3.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MovieCrewMonitoring_21_OneCrewDown()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_MovieCrewMonitoring_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1201283645", "1201283645", "UNI58_010_BRIEF", "box_MovieCrewMonitoring_21.OneCrewDown", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_44_OnSetAsIndestructible()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_45();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1633694769", "1633694769", "UNI58_010_BRIEF", "box_VehicleModifier_v2_44.OnSetAsIndestructible", "box_VehicleModifier_v2_45.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(6, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|587445823", "587445823", "UNI58_010_BRIEF", "box_OutputOrder_v2_26.Out", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_31();
    l0 = self.box_MultipleAND_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1441342831", "1441342831", "UNI58_010_BRIEF", "box_OutputOrder_v2_26.Out", "box_MultipleAND_v2_31.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleAND_v2_18_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_18;
    l1 = self.box_OnceOnly_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|306523051", "306523051", "UNI58_010_BRIEF", "box_MultipleAND_v2_18.Out", "box_OnceOnly_v3_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CrewIntroductionDialogs_15();
    l0 = self.box_MultipleOR_25;
    l1 = self.box_CrewIntroductionDialogs_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1039996654", "1039996654", "UNI58_010_BRIEF", "box_MultipleOR_25.Out", "box_CrewIntroductionDialogs_15.StopDialogs", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopDialogs
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_38();
    l0 = self.box_Music_Quest_v2_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|478636176", "478636176", "UNI58_010_BRIEF", "box_OutputOrder_v2_37.Out", "box_Music_Quest_v2_38.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_20();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1277017919", "1277017919", "UNI58_010_BRIEF", "box_OutputOrder_v2_37.Out", "box_ActivityRetry_20.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_2_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_2_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_CharacterLoadedIdListener_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|683185310", "683185310", "UNI58_010_BRIEF", "box_CharacterLoadedIdListener_2.LoadedIdReceived", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_45_OnSetAsUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehiclePositionLockModifier_43();
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1580165683", "1580165683", "UNI58_010_BRIEF", "box_VehicleModifier_v2_45.OnSetAsUnusable", "box_VehiclePositionLockModifier_43.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|@StopAllDialogs");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_19_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|12912945");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
                [3] = self.f_box_OutputOrder_v2_8_Out_3,
                [4] = self.f_box_OutputOrder_v2_8_Out_4,
                [6] = self.f_box_OutputOrder_v2_8_Out_6,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|169629409");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_23()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2102100111325674019",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|254560856");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_11_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100650452489086503",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|374217339");
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

function export:OnEnter_box_MultipleAND_v2_31()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|511602333");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_13_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100665578120296529",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|527884166");
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

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|537179739");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|824869343");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehiclePositionLockModifier_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehiclePositionLockModifier_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|827960772");
    l0:SetConnections({
    });
    params = {
        -- VehicleEntity,
        [0] = "2102100846341800356",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|837575475");
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

function export:OnEnter_box_Delay_v5_22()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V4_10()
    local params;
    params = {
        -- eNPC,
        [0] = self.e_GUY,
        -- Interrupt STP on Talk,
        [1] = true,
        -- oObjective,
        [2] = {
            section = "Objective",
            item = "UNI58_010_BRIEF_DEBRIEF_Talk",
            id = "572613",
        },
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
        [2] = "2102100846341800356",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1001781744");
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
        [8] = "UNI058_010_BRIEF script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1227809815");
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

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1231418198");
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

function export:OnEnter_box_CrewIntroductionDialogs_15()
    local params;
    params = {
        -- PlayersGroup,
        [0] = self.gFriendlyPlayers,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1367731460");
    l0:SetConnections({
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_29_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103900662109588208",
        -- Entity,
        [1] = "2100651979576452388",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1415990651");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1560079885");
    l0:SetConnections({
        -- OnSetAsIndestructible,
        [4] = self.f_box_VehicleModifier_v2_44_OnSetAsIndestructible,
    });
    params = {
        -- targets,
        [0] = "2102100846341800356",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1573735482");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_18()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1762163623");
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
                [0] = self.f_box_OutputOrder_v2_37_Out_0,
                [1] = self.f_box_OutputOrder_v2_37_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015218968301788",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_5()
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
        [6] = "3609144583",
        -- StopEvent,
        [7] = "2903776234",
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

function export:OnEnter_box_VehicleModifier_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@UNI58_010_BRIEF|1997668664");
    l0:SetConnections({
        -- OnSetAsUnusable,
        [6] = self.f_box_VehicleModifier_v2_45_OnSetAsUnusable,
    });
    params = {
        -- targets,
        [0] = "2102100846341800356",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_38()
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
        [6] = "3609144583",
        -- StopEvent,
        [7] = "2903776234",
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

function export:OnExit_box_GetPlayerGroup_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.ePlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_2_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_2;
    self.e_GUY = l0:GetDataOutValue(0);
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
