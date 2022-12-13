LUAC)� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_330/mis_330_b20.domino
-- User graph: MIS_330_B20
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/SetVehicleAsLeashAnchor.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DiplayTextModifier_v6.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/ForceInVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_ArenaWall.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_DoorManager.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_320_B20_AnnouncerCallouts.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Ammo_Regen.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_B20_Reinforcements.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_DerbyStart.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Global_Racer_Handling.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_MissionLimits.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2845456904.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3792324399.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1714860635.bnk]], "CSoundResource");
        cboxRes:LoadResource([[592319285.bnk]], "CSoundResource");
        cboxRes:LoadResource([[529584654.bnk]], "CSoundResource");
        cboxRes:LoadResource([[entityarchetypeslibrary/9015342416476679.ark.fcb]], "CEntityArchetypeRes");
        cboxRes:LoadResource([[4194450371.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1536744696.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2826918513.bnk]], "CSoundResource");
        cboxRes:LoadResource([[173225927.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3303497937.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4215135172.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
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
                name = "eObjectiveAreaMarker",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Female",
                delayed = false,
            },
            [1] = {
                name = "Male",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PlayerID",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/CHEAT_SetEnvironmentTimeScale.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetTimeScale",
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
                name = "timeScale",
                type = "float",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Coop/CoopActivePlayers.lua")] = {
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
                name = "OnePlayer",
                delayed = false,
            },
            [1] = {
                name = "PlayerAdded",
                delayed = true,
            },
            [2] = {
                name = "PlayerRemoved",
                delayed = true,
            },
            [3] = {
                name = "TwoPlayers",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Player1",
                type = "entity",
            },
            [1] = {
                name = "Player2",
                type = "entity",
            },
            [2] = {
                name = "PlayerAddedOrRemoved",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/Coop/SetVehicleAsLeashAnchor.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ClearMissionVehicle",
            },
            [1] = {
                name = "SetMissionVehicle",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnMissionVehicleCleared",
                delayed = false,
            },
            [1] = {
                name = "OnMissionVehicleSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "targetVehicleEntity",
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
    metadataTable[GetPathID("Domino/System/DiplayTextModifier_v6.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ClearText",
            },
            [1] = {
                name = "DisplayText",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "TextCleared",
                delayed = false,
            },
            [1] = {
                name = "TextDisplayed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "displayOverCinematic",
                type = "bool",
            },
            [1] = {
                name = "displayTimer",
                type = "float",
            },
            [2] = {
                name = "forceInstantDisplay",
                type = "bool",
            },
            [3] = {
                name = "isKarmaEvent",
                type = "bool",
            },
            [4] = {
                name = "textId",
                type = "oasis",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/GetPawnVehicleInfo.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InVehicle",
                delayed = false,
            },
            [1] = {
                name = "NotInVehicle",
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
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "seatType",
                type = "string",
            },
            [2] = {
                name = "vehicle",
                type = "entity",
            },
            [3] = {
                name = "vehicleType",
                type = "string",
            },
        },
        dataOutCount = 4,
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
            [1] = {
                name = "immediateDespawn",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v6.lua")] = {
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
                name = "MemberDied",
                delayed = true,
            },
            [4] = {
                name = "MemberRemoved",
                delayed = true,
            },
            [5] = {
                name = "MemberSpawned",
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
    metadataTable[GetPathID("Domino/System/NoWeaponMode_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Off",
            },
            [1] = {
                name = "On",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnEnter",
                delayed = false,
            },
            [1] = {
                name = "OnLeave",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "useAnims",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
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
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
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
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")] = {
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
            [1] = {
                name = "SeatType",
                type = "int",
            },
            [2] = {
                name = "vehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/IgnoreSignal_v2.lua")] = {
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
            [0] = {
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "signal",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/SetTimeOfDay.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "IncrementTimeOfDay",
            },
            [1] = {
                name = "SetTimeOfDay",
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
    metadataTable[GetPathID("Domino/System/SoundMixing.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "SoundMixing",
                type = "SoundMixing",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/UI/OverrideMenuAccessibility_v2.lua")] = {
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
                name = "HomebaseMenuEnabled",
                type = "bool",
            },
            [5] = {
                name = "LootMenuEnabled",
                type = "bool",
            },
            [6] = {
                name = "OnlineMenuEnabled",
                type = "bool",
            },
            [7] = {
                name = "PerksMenuEnabled",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_ArenaWall.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Lower",
            },
            [1] = {
                name = "Raise",
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_DoorManager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Opened_Door",
                delayed = false,
            },
            [1] = {
                name = "Out",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Female_Outfit",
            },
            [1] = {
                name = "Male_Outfit",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Equipped",
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
                name = "PlayerID",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_320_B20_AnnouncerCallouts.debug.lua")] = {
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
                name = "Player_Car",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Ammo_Regen.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "EnableCatapult",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
            [1] = {
                name = "Used",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Amplitude",
                type = "float",
            },
            [1] = {
                name = "Archetype",
                type = "archetype",
            },
            [2] = {
                name = "ParticleSystem",
                type = "entity",
            },
            [3] = {
                name = "Target",
                type = "entity",
            },
            [4] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_B20_Reinforcements.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "AllEnemiesSpawned",
                delayed = false,
            },
            [1] = {
                name = "Out",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "DriverDead",
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
                name = "Driver",
                type = "entity",
            },
            [1] = {
                name = "RacerGroup",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_DerbyStart.debug.lua")] = {
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
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Global_Racer_Handling.debug.lua")] = {
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
                name = "RacerGroup",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_MissionLimits.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Interior_Limit",
                type = "bool",
            },
            [1] = {
                name = "Sas_Limit",
                type = "bool",
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
    self._name = "MIS_330_B20";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20";
    self.i_driverleft = 0;
    self.gp_FriendlyPlayers = nil;
    self.e_PlayerCar = nil;
    self.i_driversKilled = 0;
    self.b_isReloaded = false;
    self.box_MIS_330_Car_Destruction_29 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|32727921");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_330_Car_Destruction_29_Out,
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|36128726");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_OnceOnly_v3_198 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|42052599");
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
    self.box_SoundModifier_v2_98 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|57715525");
    l0:SetConnections({
    });
    self.box_Delay_v5_197 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|66530247");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_197_TimeElapsed,
    });
    self.box_Delay_v5_51 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|76247309");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_51_TimeElapsed,
    });
    self.box_MIS_330_DerbyStart_19 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_DerbyStart.debug.lua");
    l0 = self.box_MIS_330_DerbyStart_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_DerbyStart_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|81424003");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_330_DerbyStart_19_Out,
    });
    self.box_Delay_v5_196 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|84151149");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_196_TimeElapsed,
    });
    self.box_SoundModifier_v2_114 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|92941162");
    l0:SetConnections({
    });
    self.box_Delay_v5_95 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|96484692");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_95_TimeElapsed,
    });
    self.box_SoundModifier_v2_102 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|107217049");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_38 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|109229572");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_201 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|119821841");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_50 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|141796411");
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
                [0] = self.f_box_OnceOnly_v3_50_Out_0,
            },
            count = 2,
        },
    });
    self.box_MIS_330_B20_Reinforcements_18 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_B20_Reinforcements.debug.lua");
    l0 = self.box_MIS_330_B20_Reinforcements_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_B20_Reinforcements_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|205893146");
    l0:SetConnections({
        -- AllEnemiesSpawned,
        [0] = self.f_box_MIS_330_B20_Reinforcements_18_AllEnemiesSpawned,
        -- Out,
        [1] = self.f_box_MIS_330_B20_Reinforcements_18_Out,
    });
    self.box_Delay_v5_96 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|237227374");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_96_TimeElapsed,
    });
    self.box_SoundModifier_v2_118 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|272489004");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_39 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|300007560");
    l0:SetConnections({
    });
    self.box_MultipleOR_86 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|332556268");
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
        [0] = self.f_box_MultipleOR_86_Out,
    });
    self.box_SoundModifier_v2_121 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|367411687");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_109 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|379031990");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_108 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|384461351");
    l0:SetConnections({
    });
    self.box_IgnoreSignal_v2_85 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|414606573");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_85_Enabled,
    });
    self.box_Delay_v5_59 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|466543864");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_59_TimeElapsed,
    });
    self.box_GetPlayerGender_171 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|499988903");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_171_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_171_Male,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|515816614");
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
    self.box_Switch_83 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|526145834");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
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
                [0] = self.f_box_Switch_83_Output_0,
                [1] = self.f_box_Switch_83_Output_1,
                [2] = self.f_box_Switch_83_Output_2,
                [3] = self.f_box_Switch_83_Output_3,
            },
            count = 4,
        },
    });
    self.box_GetPlayerGender_172 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|532782887");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_172_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_172_Male,
    });
    self.box_Delay_v5_77 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|535784427");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_77_TimeElapsed,
    });
    self.box_MultipleOR_78 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|538097578");
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
        [0] = self.f_box_MultipleOR_78_Out,
    });
    self.box_MIS_330_GiveDriverOutfit_169 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua");
    l0 = self.box_MIS_330_GiveDriverOutfit_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_GiveDriverOutfit_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|598682899");
    l0:SetConnections({
    });
    self.box_Delay_v5_167 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|609225468");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_167_TimeElapsed,
    });
    self.box_SoundModifier_v2_202 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|635667945");
    l0:SetConnections({
    });
    self.box_MIS_330_MissionLimits_87 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_MissionLimits.debug.lua");
    l0 = self.box_MIS_330_MissionLimits_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_MissionLimits_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|673656142");
    l0:SetConnections({
    });
    self.box_Delay_v5_80 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|686595202");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_80_TimeElapsed,
    });
    self.box_SpawnAI_43 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|693783836");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_43_Out,
    });
    self.box_ProximityTrigger_v3_72 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|697483496");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_72_Enter,
    });
    self.box_Delay_v5_55 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|708909314");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_55_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_55_TimeElapsed,
    });
    self.box_SoundModifier_v2_112 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|730966684");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|737453506");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_NoWeaponMode_v3_36 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|737765690");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_36_OnEnter,
    });
    self.box_SoundModifier_v2_110 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|739691853");
    l0:SetConnections({
    });
    self.box_Delay_v5_67 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|778823271");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_67_TimeElapsed,
    });
    self.box_MIS_330_Car_Destruction_30 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|789242096");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_330_Car_Destruction_30_Out,
    });
    self.box_SoundModifier_v2_120 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|799827558");
    l0:SetConnections({
    });
    self.box_SpawnAI_23 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|805094156");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_23_Out,
    });
    self.box_Music_Quest_v2_177 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|806701676");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_104 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|811137220");
    l0:SetConnections({
    });
    self.box_SpawnAI_15 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|813943456");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_15_Out,
    });
    self.box_SoundModifier_v2_105 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|822716149");
    l0:SetConnections({
    });
    self.box_MIS_330_GiveDriverOutfit_159 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua");
    l0 = self.box_MIS_330_GiveDriverOutfit_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_GiveDriverOutfit_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|835872326");
    l0:SetConnections({
    });
    self.box_Gate_v3_190 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|940422485");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_190_Out,
    });
    self.box_SoundModifier_v2_204 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|953911380");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_107 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|987560103");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_176 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1046934800");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1075014548");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
    });
    self.box_SpawnAI_27 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1114154597");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_27_Out,
    });
    self.box_SoundModifier_v2_101 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1117612464");
    l0:SetConnections({
    });
    self.box_Delay_v5_157 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1159277651");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_157_TimeElapsed,
    });
    self.box_Delay_v5_82 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1163265423");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_82_TimeElapsed,
    });
    self.box_Gate_v3_150 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1190672071");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_150_Out,
    });
    self.box_PlayDialog_v6_168 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1197613600");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_168_Started,
    });
    self.box_MIS_330_Ammo_Regen_66 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Ammo_Regen.debug.lua");
    l0 = self.box_MIS_330_Ammo_Regen_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Ammo_Regen_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1221295740");
    l0:SetConnections({
        -- Used,
        [1] = self.f_box_MIS_330_Ammo_Regen_66_Used,
    });
    self.box_SpawnAI_24 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1258235290");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_24_Out,
    });
    self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1264592746");
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
        [0] = self.f_box_MultipleOR_60_Out,
    });
    self.box_MIS_330_DoorManager_161 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_DoorManager.debug.lua");
    l0 = self.box_MIS_330_DoorManager_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_DoorManager_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1291194601");
    l0:SetConnections({
    });
    self.box_MultipleOR_79 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1298547315");
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
        [0] = self.f_box_MultipleOR_79_Out,
    });
    self.box_GetPlayerGender_162 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1366734136");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_162_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_162_Male,
    });
    self.box_Delay_v5_143 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1391650472");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_143_TimeElapsed,
    });
    self.box_MIS_330_Car_Destruction_10 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1404254449");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_330_Car_Destruction_10_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_71 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1462133611");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_71_Out,
    });
    self.box_Delay_v5_81 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1477115718");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_81_TimeElapsed,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1513652889");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_PhoneCallExclusivityModifier_183 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1521677939");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_183_Enabled,
    });
    self.box_SoundModifier_v2_119 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1553385050");
    l0:SetConnections({
    });
    self.box_Delay_v5_69 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1556680010");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_69_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_69_TimeElapsed,
    });
    self.box_Delay_v5_76 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1559081730");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_76_TimeElapsed,
    });
    self.box_SoundModifier_v2_122 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1615395080");
    l0:SetConnections({
    });
    self.box_CoopActivePlayers_160 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1622454367");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_160_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_160_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_160_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_160_TwoPlayers,
    });
    self.box_OverrideMenuAccessibility_v2_165 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1671293131");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_165_Out,
    });
    self.box_PlayDialog_v6_158 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1675847245");
    l0:SetConnections({
    });
    self.box_MIS_320_B20_AnnouncerCallouts_42 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_320_B20_AnnouncerCallouts.debug.lua");
    l0 = self.box_MIS_320_B20_AnnouncerCallouts_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B20_AnnouncerCallouts_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1700261591");
    l0:SetConnections({
    });
    self.box_Brick_Secure_Area_v5_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
    l0 = self.box_Brick_Secure_Area_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Secure_Area_v5_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1735887367");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Brick_Secure_Area_v5_41_Success,
    });
    self.box_Delay_v5_152 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1739272991");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_152_TimeElapsed,
    });
    self.box_SpawnAI_12 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1745162812");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_12_Out,
    });
    self.box_Delay_v5_188 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1748862230");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_188_TimeElapsed,
    });
    self.box_Gate_v3_153 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1755394829");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_153_Out,
    });
    self.box_MIS_330_Ammo_Regen_73 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Ammo_Regen.debug.lua");
    l0 = self.box_MIS_330_Ammo_Regen_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Ammo_Regen_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1756648956");
    l0:SetConnections({
        -- Used,
        [1] = self.f_box_MIS_330_Ammo_Regen_73_Used,
    });
    self.box_CoopActivePlayers_174 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1791037447");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_174_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_174_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_174_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_174_TwoPlayers,
    });
    self.box_MIS_330_GiveDriverOutfit_175 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua");
    l0 = self.box_MIS_330_GiveDriverOutfit_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_GiveDriverOutfit_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1833945248");
    l0:SetConnections({
    });
    self.box_MIS_330_Global_Racer_Handling_21 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Global_Racer_Handling.debug.lua");
    l0 = self.box_MIS_330_Global_Racer_Handling_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Global_Racer_Handling_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1850223931");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_330_Global_Racer_Handling_21_Out,
    });
    self.box_NoWeaponMode_v3_37 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1877706383");
    l0:SetConnections({
        -- OnLeave,
        [1] = self.f_box_NoWeaponMode_v3_37_OnLeave,
    });
    self.box_SpawnAI_28 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1878399857");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_28_Out,
    });
    self.box_SpawnAI_25 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1896021791");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_25_Out,
    });
    self.box_SoundModifier_v2_113 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1922846934");
    l0:SetConnections({
    });
    self.box_Gate_v3_193 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1935743763");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_193_Out,
    });
    self.box_GroupSizeListener_v6_34 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1936896172");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_34_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_34_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_34_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_34_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_34_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_34_MemberSpawned,
    });
    self.box_SoundModifier_v2_99 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1937192161");
    l0:SetConnections({
    });
    self.box_MIS_330_ArenaWall_46 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_ArenaWall.debug.lua");
    l0 = self.box_MIS_330_ArenaWall_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_ArenaWall_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1957253869");
    l0:SetConnections({
    });
    self.box_MIS_330_Car_Destruction_31 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1964912308");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_330_Car_Destruction_31_Out,
    });
    self.box_Delay_v5_103 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1984998910");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_103_TimeElapsed,
    });
    self.box_MIS_330_Car_Destruction_32 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1988252038");
    l0:SetConnections({
    });
    self.box_MIS_330_ArenaWall_184 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_ArenaWall.debug.lua");
    l0 = self.box_MIS_330_ArenaWall_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_ArenaWall_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2006655941");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_330_ArenaWall_184_Out,
    });
    self.box_SoundModifier_v2_206 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2027549287");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_111 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2063387759");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_164 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2089225963");
    l0:SetConnections({
    });
    self.box_SetVehicleAsLeashAnchor_92 = cbox:CreateBox("Domino/System/Coop/SetVehicleAsLeashAnchor.lua");
    l0 = self.box_SetVehicleAsLeashAnchor_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetVehicleAsLeashAnchor_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2090757026");
    l0:SetConnections({
        -- OnMissionVehicleCleared,
        [0] = self.f_box_SetVehicleAsLeashAnchor_92_OnMissionVehicleCleared,
    });
    self.box_SoundModifier_v2_117 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2093668652");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_205 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2096756837");
    l0:SetConnections({
    });
    self.box_MIS_330_Ammo_Regen_74 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Ammo_Regen.debug.lua");
    l0 = self.box_MIS_330_Ammo_Regen_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Ammo_Regen_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2100031416");
    l0:SetConnections({
        -- Used,
        [1] = self.f_box_MIS_330_Ammo_Regen_74_Used,
    });
    self.box_MIS_330_Ammo_Regen_75 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Ammo_Regen.debug.lua");
    l0 = self.box_MIS_330_Ammo_Regen_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Ammo_Regen_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2132681988");
    l0:SetConnections({
        -- Used,
        [1] = self.f_box_MIS_330_Ammo_Regen_75_Used,
    });
    self.box_Delay_v5_154 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2139525789");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_154_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1201644483", "1201644483", "MIS_330_B20", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_127_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_106();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|408732566", "408732566", "MIS_330_B20", "box_Simple_Node_127.Out", "box_OutputOrder_v2_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_48_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_69();
    l0 = self.box_Delay_v5_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1883171839", "1883171839", "MIS_330_B20", "box_Simple_Node_48.Out", "box_Delay_v5_69.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_Delay_v5_96();
    l0 = self.box_Delay_v5_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1431885766", "1431885766", "MIS_330_B20", "box_Simple_Node_48.Out", "box_Delay_v5_96.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_94_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_193();
    l0 = self.box_Gate_v3_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2060660562", "2060660562", "MIS_330_B20", "box_Simple_Node_94.Out", "box_Gate_v3_193.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_330_Ammo_Regen_73();
    l0 = self.box_MIS_330_Ammo_Regen_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1368921457", "1368921457", "MIS_330_B20", "box_Simple_Node_94.Out", "box_MIS_330_Ammo_Regen_73.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_190();
    l0 = self.box_Gate_v3_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1648427345", "1648427345", "MIS_330_B20", "box_Simple_Node_94.Out", "box_Gate_v3_190.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_330_Ammo_Regen_74();
    l0 = self.box_MIS_330_Ammo_Regen_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|172314672", "172314672", "MIS_330_B20", "box_Simple_Node_94.Out", "box_MIS_330_Ammo_Regen_74.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_72();
    l0 = self.box_ProximityTrigger_v3_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|431160229", "431160229", "MIS_330_B20", "box_Simple_Node_94.Out", "box_ProximityTrigger_v3_72.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_150();
    l0 = self.box_Gate_v3_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1662441098", "1662441098", "MIS_330_B20", "box_Simple_Node_94.Out", "box_Gate_v3_150.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_153();
    l0 = self.box_Gate_v3_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|913017856", "913017856", "MIS_330_B20", "box_Simple_Node_94.Out", "box_Gate_v3_153.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_154();
    l0 = self.box_Delay_v5_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|212483942", "212483942", "MIS_330_B20", "box_Simple_Node_94.Out", "box_Delay_v5_154.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_MIS_330_Ammo_Regen_66();
    l0 = self.box_MIS_330_Ammo_Regen_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1427547739", "1427547739", "MIS_330_B20", "box_Simple_Node_94.Out", "box_MIS_330_Ammo_Regen_66.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_330_Ammo_Regen_75();
    l0 = self.box_MIS_330_Ammo_Regen_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|120947436", "120947436", "MIS_330_B20", "box_Simple_Node_94.Out", "box_MIS_330_Ammo_Regen_75.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_210_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_330_MissionLimits_87();
    l0 = self.box_MIS_330_MissionLimits_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|907178280", "907178280", "MIS_330_B20", "box_Simple_Node_210.Out", "box_MIS_330_MissionLimits_87.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_195();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1133741802", "1133741802", "MIS_330_B20", "box_Simple_Node_210.Out", "box_OutputOrder_v2_195.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_93_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_124();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1780045123", "1780045123", "MIS_330_B20", "box_Simple_Node_93.Out", "box_OutputOrder_v2_124.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_209_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_187();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|224884937", "224884937", "MIS_330_B20", "box_Simple_Node_209.Out", "box_MissionBlockLayer_187.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_126_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_115();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1288154947", "1288154947", "MIS_330_B20", "box_Simple_Node_126.Out", "box_OutputOrder_v2_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_100();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1888846255", "1888846255", "MIS_330_B20", "box_Simple_Node_126.Out", "box_OutputOrder_v2_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_129_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_103();
    l0 = self.box_Delay_v5_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|721977660", "721977660", "MIS_330_B20", "box_Simple_Node_129.Out", "box_Delay_v5_103.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_SoundModifier_v2_39();
    l0 = self.box_SoundModifier_v2_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|111983573", "111983573", "MIS_330_B20", "box_Simple_Node_129.Out", "box_SoundModifier_v2_39.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
    params = self:OnEnter_box_SoundModifier_v2_119();
    l0 = self.box_SoundModifier_v2_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|680568604", "680568604", "MIS_330_B20", "box_Simple_Node_129.Out", "box_SoundModifier_v2_119.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_212_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_203();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|805284883", "805284883", "MIS_330_B20", "box_Simple_Node_212.Out", "box_OutputOrder_v2_203.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_128_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_116();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|822599960", "822599960", "MIS_330_B20", "box_Simple_Node_128.Out", "box_OutputOrder_v2_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_115_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_111();
    l0 = self.box_SoundModifier_v2_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|814459692", "814459692", "MIS_330_B20", "box_OutputOrder_v2_115.Out", "box_SoundModifier_v2_111.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_115_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_107();
    l0 = self.box_SoundModifier_v2_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|609600366", "609600366", "MIS_330_B20", "box_OutputOrder_v2_115.Out", "box_SoundModifier_v2_107.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_115_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_98();
    l0 = self.box_SoundModifier_v2_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|7535877", "7535877", "MIS_330_B20", "box_OutputOrder_v2_115.Out", "box_SoundModifier_v2_98.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_115_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_38();
    l0 = self.box_SoundModifier_v2_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1559230527", "1559230527", "MIS_330_B20", "box_OutputOrder_v2_115.Out", "box_SoundModifier_v2_38.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_115_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_118();
    l0 = self.box_SoundModifier_v2_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1020313184", "1020313184", "MIS_330_B20", "box_OutputOrder_v2_115.Out", "box_SoundModifier_v2_118.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_148_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_149();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1691792550", "1691792550", "MIS_330_B20", "box_ParticleSystem_v3_148.Stopped", "box_ParticleSystem_v3_149.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_330_B20_Reinforcements_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1551901048", "1551901048", "MIS_330_B20", "box_OutputOrder_v2_123.Out", "box_MIS_330_B20_Reinforcements_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_123_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_207();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|361887367", "361887367", "MIS_330_B20", "box_OutputOrder_v2_123.Out", "box_SoundMixing_207.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_156_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_155();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|64459729", "64459729", "MIS_330_B20", "box_MissionBlockLayer_156.Activated", "box_MissionBlockLayer_155.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_330_Car_Destruction_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_30();
    l0 = self.box_MIS_330_Car_Destruction_29;
    l1 = self.box_MIS_330_Car_Destruction_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1584187395", "1584187395", "MIS_330_B20", "box_MIS_330_Car_Destruction_29.Out", "box_MIS_330_Car_Destruction_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_17();
    l0 = self.box_Delay_v5_40;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|943015936", "943015936", "MIS_330_B20", "box_Delay_v5_40.TimeElapsed", "box_MissionBlockLayer_17.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_198_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_88();
    l0 = self.box_OnceOnly_v3_198;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|14025093", "14025093", "MIS_330_B20", "box_OnceOnly_v3_198.Out", "box_ParticleSystem_v3_88.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_135_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_145();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|730896601", "730896601", "MIS_330_B20", "box_ParticleSystem_v3_135.Started", "box_ParticleSystem_v3_145.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_135_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_145();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1450529631", "1450529631", "MIS_330_B20", "box_ParticleSystem_v3_135.Stopped", "box_ParticleSystem_v3_145.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_197_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_199();
    l0 = self.box_Delay_v5_197;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1900385012", "1900385012", "MIS_330_B20", "box_Delay_v5_197.TimeElapsed", "box_OutputOrder_v2_199.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_51_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_51;
    l1 = self.box_OnceOnly_v3_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|414060211", "414060211", "MIS_330_B20", "box_Delay_v5_51.TimeElapsed", "box_OnceOnly_v3_50.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_MIS_330_DerbyStart_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_123();
    l0 = self.box_MIS_330_DerbyStart_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1363554520", "1363554520", "MIS_330_B20", "box_MIS_330_DerbyStart_19.Out", "box_OutputOrder_v2_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_196_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_135();
    l0 = self.box_Delay_v5_196;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|307406588", "307406588", "MIS_330_B20", "box_Delay_v5_196.TimeElapsed", "box_ParticleSystem_v3_135.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_58_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_137();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|162130489", "162130489", "MIS_330_B20", "box_ParticleSystem_v3_58.Started", "box_OutputOrder_v2_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_95_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_189();
    l0 = self.box_Delay_v5_95;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1459021146", "1459021146", "MIS_330_B20", "box_Delay_v5_95.TimeElapsed", "box_OutputOrder_v2_189.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundMixing_207_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_129();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1200367554", "1200367554", "MIS_330_B20", "box_SoundMixing_207.Out", "box_Simple_Node_129.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_134_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_57();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|534528953", "534528953", "MIS_330_B20", "box_OutputOrder_v2_134.Out", "box_ParticleSystem_v3_57.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_134_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_140();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1075082076", "1075082076", "MIS_330_B20", "box_OutputOrder_v2_134.Out", "box_Simple_Node_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_100_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_101();
    l0 = self.box_SoundModifier_v2_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1705712417", "1705712417", "MIS_330_B20", "box_OutputOrder_v2_100.Out", "box_SoundModifier_v2_101.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_100_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_104();
    l0 = self.box_SoundModifier_v2_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1706666969", "1706666969", "MIS_330_B20", "box_OutputOrder_v2_100.Out", "box_SoundModifier_v2_104.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_100_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_113();
    l0 = self.box_SoundModifier_v2_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1517255452", "1517255452", "MIS_330_B20", "box_OutputOrder_v2_100.Out", "box_SoundModifier_v2_113.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_100_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_112();
    l0 = self.box_SoundModifier_v2_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1509071625", "1509071625", "MIS_330_B20", "box_OutputOrder_v2_100.Out", "box_SoundModifier_v2_112.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_100_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_99();
    l0 = self.box_SoundModifier_v2_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|516558011", "516558011", "MIS_330_B20", "box_OutputOrder_v2_100.Out", "box_SoundModifier_v2_99.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_50_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_OnceOnly_v3_50;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1342019126", "1342019126", "MIS_330_B20", "box_OnceOnly_v3_50.Out", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_151_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_8();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|784474327", "784474327", "MIS_330_B20", "box_MissionBlockLayer_151.Activated", "box_MissionBlockLayer_8.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_15();
    l0 = self.box_SpawnAI_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|949427565", "949427565", "MIS_330_B20", "box_OutputOrder_v2_26.Out", "box_SpawnAI_15.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_23();
    l0 = self.box_SpawnAI_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2067260089", "2067260089", "MIS_330_B20", "box_OutputOrder_v2_26.Out", "box_SpawnAI_23.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1503899670", "1503899670", "MIS_330_B20", "box_OutputOrder_v2_26.Out", "box_CoopActivePlayers_174.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_MIS_330_B20_Reinforcements_18_AllEnemiesSpawned()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Secure_Area_v5_41();
    l0 = self.box_MIS_330_B20_Reinforcements_18;
    l1 = self.box_Brick_Secure_Area_v5_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|889829974", "889829974", "MIS_330_B20", "box_MIS_330_B20_Reinforcements_18.AllEnemiesSpawned", "box_Brick_Secure_Area_v5_41.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_MIS_330_B20_Reinforcements_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_B20_AnnouncerCallouts_42();
    l0 = self.box_MIS_330_B20_Reinforcements_18;
    l1 = self.box_MIS_320_B20_AnnouncerCallouts_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1964979694", "1964979694", "MIS_330_B20", "box_MIS_330_B20_Reinforcements_18.Out", "box_MIS_320_B20_AnnouncerCallouts_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_96_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayTextModifier_v6_68();
    l0 = self.box_Delay_v5_96;
    l1 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|399327216", "399327216", "MIS_330_B20", "box_Delay_v5_96.TimeElapsed", "box_DisplayTextModifier_v6_68.DisplayText", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisplayText
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_199_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_88();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1782445569", "1782445569", "MIS_330_B20", "box_OutputOrder_v2_199.Out", "box_ParticleSystem_v3_88.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_199_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1870453110", "1870453110", "MIS_330_B20", "box_OutputOrder_v2_199.Out", "box_OnceOnly_v3_198.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_ParticleSystem_v3_53_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_134();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|903900442", "903900442", "MIS_330_B20", "box_ParticleSystem_v3_53.Started", "box_OutputOrder_v2_134.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_64_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_144();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1550676064", "1550676064", "MIS_330_B20", "box_UseContextualActionModifier_v3_64.Disabled", "box_UseContextualActionModifier_v3_144.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_203_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_205();
    l0 = self.box_SoundModifier_v2_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|611595231", "611595231", "MIS_330_B20", "box_OutputOrder_v2_203.Out", "box_SoundModifier_v2_205.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_203_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_206();
    l0 = self.box_SoundModifier_v2_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2115651729", "2115651729", "MIS_330_B20", "box_OutputOrder_v2_203.Out", "box_SoundModifier_v2_206.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_203_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_204();
    l0 = self.box_SoundModifier_v2_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1110104902", "1110104902", "MIS_330_B20", "box_OutputOrder_v2_203.Out", "box_SoundModifier_v2_204.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_203_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_201();
    l0 = self.box_SoundModifier_v2_201;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1423223008", "1423223008", "MIS_330_B20", "box_OutputOrder_v2_203.Out", "box_SoundModifier_v2_201.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_203_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_202();
    l0 = self.box_SoundModifier_v2_202;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|699665664", "699665664", "MIS_330_B20", "box_OutputOrder_v2_203.Out", "box_SoundModifier_v2_202.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_86_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGender_172();
    l0 = self.box_MultipleOR_86;
    l1 = self.box_GetPlayerGender_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|399079561", "399079561", "MIS_330_B20", "box_MultipleOR_86.Out", "box_GetPlayerGender_172.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_136_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_58();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|759945180", "759945180", "MIS_330_B20", "box_OutputOrder_v2_136.Out", "box_ParticleSystem_v3_58.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_136_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_138();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1036728643", "1036728643", "MIS_330_B20", "box_OutputOrder_v2_136.Out", "box_Simple_Node_138.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_124_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_53();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1164085202", "1164085202", "MIS_330_B20", "box_OutputOrder_v2_124.Out", "box_ParticleSystem_v3_53.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_124_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_127();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|981553343", "981553343", "MIS_330_B20", "box_OutputOrder_v2_124.Out", "box_Simple_Node_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_124_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_141();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1491873871", "1491873871", "MIS_330_B20", "box_OutputOrder_v2_124.Out", "box_Simple_Node_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_143();
    l0 = self.box_Delay_v5_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|802587895", "802587895", "MIS_330_B20", "box_EndActivityObjective_v2_45.Out", "box_Delay_v5_143.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_90_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_91();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1809865470", "1809865470", "MIS_330_B20", "box_ParticleSystem_v3_90.Started", "box_ParticleSystem_v3_91.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_90_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_91();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|438791443", "438791443", "MIS_330_B20", "box_ParticleSystem_v3_90.Stopped", "box_ParticleSystem_v3_91.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_85_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_95();
    l0 = self.box_IgnoreSignal_v2_85;
    l1 = self.box_Delay_v5_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|519419894", "519419894", "MIS_330_B20", "box_IgnoreSignal_v2_85.Enabled", "box_Delay_v5_95.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_59_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_136();
    l0 = self.box_Delay_v5_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|575636124", "575636124", "MIS_330_B20", "box_Delay_v5_59.TimeElapsed", "box_OutputOrder_v2_136.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_171_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_169();
    l0 = self.box_GetPlayerGender_171;
    l1 = self.box_MIS_330_GiveDriverOutfit_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1360959115", "1360959115", "MIS_330_B20", "box_GetPlayerGender_171.Female", "box_MIS_330_GiveDriverOutfit_169.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_171_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_169();
    l0 = self.box_GetPlayerGender_171;
    l1 = self.box_MIS_330_GiveDriverOutfit_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1383088202", "1383088202", "MIS_330_B20", "box_GetPlayerGender_171.Male", "box_MIS_330_GiveDriverOutfit_169.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|287507776", "287507776", "MIS_330_B20", "box_MultipleOR_2.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Switch_83_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Ammo_Regen_66();
    l0 = self.box_Switch_83;
    l1 = self.box_MIS_330_Ammo_Regen_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2002661103", "2002661103", "MIS_330_B20", "box_Switch_83.Output", "box_MIS_330_Ammo_Regen_66.EnableCatapult", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableCatapult
    l1:Exec(1, params);
end;

function export:f_box_Switch_83_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Ammo_Regen_73();
    l0 = self.box_Switch_83;
    l1 = self.box_MIS_330_Ammo_Regen_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|292313158", "292313158", "MIS_330_B20", "box_Switch_83.Output", "box_MIS_330_Ammo_Regen_73.EnableCatapult", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableCatapult
    l1:Exec(1, params);
end;

function export:f_box_Switch_83_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Ammo_Regen_74();
    l0 = self.box_Switch_83;
    l1 = self.box_MIS_330_Ammo_Regen_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|772330521", "772330521", "MIS_330_B20", "box_Switch_83.Output", "box_MIS_330_Ammo_Regen_74.EnableCatapult", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableCatapult
    l1:Exec(1, params);
end;

function export:f_box_Switch_83_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Ammo_Regen_75();
    l0 = self.box_Switch_83;
    l1 = self.box_MIS_330_Ammo_Regen_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1259606930", "1259606930", "MIS_330_B20", "box_Switch_83.Output", "box_MIS_330_Ammo_Regen_75.EnableCatapult", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableCatapult
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGender_172_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_175();
    l0 = self.box_GetPlayerGender_172;
    l1 = self.box_MIS_330_GiveDriverOutfit_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|423373380", "423373380", "MIS_330_B20", "box_GetPlayerGender_172.Female", "box_MIS_330_GiveDriverOutfit_175.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_172_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_175();
    l0 = self.box_GetPlayerGender_172;
    l1 = self.box_MIS_330_GiveDriverOutfit_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|406565370", "406565370", "MIS_330_B20", "box_GetPlayerGender_172.Male", "box_MIS_330_GiveDriverOutfit_175.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_77_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_77;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1601122989", "1601122989", "MIS_330_B20", "box_Delay_v5_77.TimeElapsed", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_78_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_78;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2017707756", "2017707756", "MIS_330_B20", "box_MultipleOR_78.Out", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_AddActivityObjective_v2_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|591941825", "591941825", "MIS_330_B20", "box_AddActivityObjective_v2_44.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_56_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|42361612", "42361612", "MIS_330_B20", "box_Compare_Boolean_56.A_is_False", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_56_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_55();
    l0 = self.box_Delay_v5_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|126444130", "126444130", "MIS_330_B20", "box_Compare_Boolean_56.A_is_True", "box_Delay_v5_55.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_62_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_64();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|988524576", "988524576", "MIS_330_B20", "box_UseContextualActionModifier_v3_62.Disabled", "box_UseContextualActionModifier_v3_64.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_155_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_152();
    l0 = self.box_Delay_v5_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|675861947", "675861947", "MIS_330_B20", "box_MissionBlockLayer_155.Activated", "box_Delay_v5_152.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MissionBlockLayer_155_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_188();
    l0 = self.box_Delay_v5_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1863662062", "1863662062", "MIS_330_B20", "box_MissionBlockLayer_155.Disabled", "box_Delay_v5_188.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_167_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_156();
    l0 = self.box_Delay_v5_167;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2136445420", "2136445420", "MIS_330_B20", "box_Delay_v5_167.TimeElapsed", "box_MissionBlockLayer_156.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_45();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2006285613", "2006285613", "MIS_330_B20", "box_OutputOrder_v2_70.Out", "box_EndActivityObjective_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_94();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1950010103", "1950010103", "MIS_330_B20", "box_OutputOrder_v2_70.Out", "box_Simple_Node_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_89_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_157();
    l0 = self.box_Delay_v5_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|475690162", "475690162", "MIS_330_B20", "box_ParticleSystem_v3_89.Started", "box_Delay_v5_157.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_89_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_90();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1403513945", "1403513945", "MIS_330_B20", "box_ParticleSystem_v3_89.Stopped", "box_ParticleSystem_v3_90.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGender_162();
    l0 = self.box_GetPlayerGender_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|629885705", "629885705", "MIS_330_B20", "box_OutputOrder_v2_163.Out", "box_GetPlayerGender_162.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_163_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_330_DoorManager_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|399475278", "399475278", "MIS_330_B20", "box_OutputOrder_v2_163.Out", "box_MIS_330_DoorManager_161.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_106_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_105();
    l0 = self.box_SoundModifier_v2_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1154301668", "1154301668", "MIS_330_B20", "box_OutputOrder_v2_106.Out", "box_SoundModifier_v2_105.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_106_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_109();
    l0 = self.box_SoundModifier_v2_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1922193930", "1922193930", "MIS_330_B20", "box_OutputOrder_v2_106.Out", "box_SoundModifier_v2_109.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_106_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_108();
    l0 = self.box_SoundModifier_v2_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1860627217", "1860627217", "MIS_330_B20", "box_OutputOrder_v2_106.Out", "box_SoundModifier_v2_108.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_106_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_120();
    l0 = self.box_SoundModifier_v2_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|175482396", "175482396", "MIS_330_B20", "box_OutputOrder_v2_106.Out", "box_SoundModifier_v2_120.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_106_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_121();
    l0 = self.box_SoundModifier_v2_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|543487879", "543487879", "MIS_330_B20", "box_OutputOrder_v2_106.Out", "box_SoundModifier_v2_121.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_330_DerbyStart_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1069822461", "1069822461", "MIS_330_B20", "box_OutputOrder_v2_33.Out", "box_MIS_330_DerbyStart_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_48();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|426198501", "426198501", "MIS_330_B20", "box_OutputOrder_v2_33.Out", "box_Simple_Node_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_34();
    l0 = self.box_GroupSizeListener_v6_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1386810044", "1386810044", "MIS_330_B20", "box_OutputOrder_v2_33.Out", "box_GroupSizeListener_v6_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_195_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_194();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1853167883", "1853167883", "MIS_330_B20", "box_OutputOrder_v2_195.Out", "box_MissionBlockLayer_194.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_195_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_191();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|557835385", "557835385", "MIS_330_B20", "box_OutputOrder_v2_195.Out", "box_MissionBlockLayer_191.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_195_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_192();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|829987212", "829987212", "MIS_330_B20", "box_OutputOrder_v2_195.Out", "box_MissionBlockLayer_192.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_195_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_16();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|893558317", "893558317", "MIS_330_B20", "box_OutputOrder_v2_195.Out", "box_MissionBlockLayer_16.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_195_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_9();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2069228529", "2069228529", "MIS_330_B20", "box_OutputOrder_v2_195.Out", "box_MissionBlockLayer_9.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_80_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_80;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1800240456", "1800240456", "MIS_330_B20", "box_Delay_v5_80.TimeElapsed", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_43_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_43;
    l1 = self.box_MIS_330_ArenaWall_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1758977625", "1758977625", "MIS_330_B20", "box_SpawnAI_43.Out", "box_MIS_330_ArenaWall_184.Raise", l0:GetLuaBox(), l1:GetLuaBox());
    -- Raise
    l1:Exec(1, {
    });
end;

function export:f_box_ProximityTrigger_v3_72_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_72;
    l1 = self.box_OnceOnly_v3_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1567906519", "1567906519", "MIS_330_B20", "box_ProximityTrigger_v3_72.Enter", "box_OnceOnly_v3_198.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_63_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_62();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1997859607", "1997859607", "MIS_330_B20", "box_UseContextualActionModifier_v3_63.Disabled", "box_UseContextualActionModifier_v3_62.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_55_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_158();
    l0 = self.box_Delay_v5_55;
    l1 = self.box_PlayDialog_v6_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1182270893", "1182270893", "MIS_330_B20", "box_Delay_v5_55.Started", "box_PlayDialog_v6_158.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_55_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_55;
    l1 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|602109943", "602109943", "MIS_330_B20", "box_Delay_v5_55.TimeElapsed", "box_MultipleOR_60.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SoundMixing_208_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_212();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|559716837", "559716837", "MIS_330_B20", "box_SoundMixing_208.Out", "box_Simple_Node_212.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|575761846", "575761846", "MIS_330_B20", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|510125019", "510125019", "MIS_330_B20", "box_ActivityAcknowledgeGate_4.Reloaded", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NoWeaponMode_v3_36_OnEnter()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_11();
    l0 = self.box_NoWeaponMode_v3_36;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|530142462", "530142462", "MIS_330_B20", "box_NoWeaponMode_v3_36.OnEnter", "box_GetPawnVehicleInfo_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_67_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_Delay_v5_67;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|273013446", "273013446", "MIS_330_B20", "box_Delay_v5_67.TimeElapsed", "box_ActivityEnd_7.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_145_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_197();
    l0 = self.box_Delay_v5_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1567484745", "1567484745", "MIS_330_B20", "box_ParticleSystem_v3_145.Started", "box_Delay_v5_197.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MIS_330_Car_Destruction_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_31();
    l0 = self.box_MIS_330_Car_Destruction_30;
    l1 = self.box_MIS_330_Car_Destruction_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1757445396", "1757445396", "MIS_330_B20", "box_MIS_330_Car_Destruction_30.Out", "box_MIS_330_Car_Destruction_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_25();
    l0 = self.box_SpawnAI_23;
    l1 = self.box_SpawnAI_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1189521896", "1189521896", "MIS_330_B20", "box_SpawnAI_23.Out", "box_SpawnAI_25.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_SpawnAI_15;
    l1 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1347667529", "1347667529", "MIS_330_B20", "box_SpawnAI_15.Out", "box_EntityStatusListener_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetTimeOfDay_84_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_61();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1424421095", "1424421095", "MIS_330_B20", "box_SetTimeOfDay_84.Out", "box_SetBoolean_v2_61.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_88_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_89();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|517276657", "517276657", "MIS_330_B20", "box_ParticleSystem_v3_88.Started", "box_ParticleSystem_v3_89.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_88_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_89();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1625904138", "1625904138", "MIS_330_B20", "box_ParticleSystem_v3_88.Stopped", "box_ParticleSystem_v3_89.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_57_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_59();
    l0 = self.box_Delay_v5_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|446335998", "446335998", "MIS_330_B20", "box_ParticleSystem_v3_57.Started", "box_Delay_v5_59.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_146_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_147();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1832216731", "1832216731", "MIS_330_B20", "box_ParticleSystem_v3_146.Stopped", "box_ParticleSystem_v3_147.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_8_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|298898436", "298898436", "MIS_330_B20", "box_MissionBlockLayer_8.Activated", "box_Delay_v5_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Gate_v3_190_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_81();
    l0 = self.box_Gate_v3_190;
    l1 = self.box_Delay_v5_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|833000237", "833000237", "MIS_330_B20", "box_Gate_v3_190.Out", "box_Delay_v5_81.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_61_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_61_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1724257637", "1724257637", "MIS_330_B20", "box_SetBoolean_v2_61.Out", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ForceInVehicle_v2_14();
    l0 = self.box_EntityStatusListener_13;
    l1 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1167080537", "1167080537", "MIS_330_B20", "box_EntityStatusListener_13.Loaded", "box_ForceInVehicle_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_24();
    l0 = self.box_SpawnAI_27;
    l1 = self.box_SpawnAI_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1610972977", "1610972977", "MIS_330_B20", "box_SpawnAI_27.Out", "box_SpawnAI_24.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_51();
    l0 = self.box_Delay_v5_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1915023201", "1915023201", "MIS_330_B20", "box_OutputOrder_v2_52.Out", "box_Delay_v5_51.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_93();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|961334075", "961334075", "MIS_330_B20", "box_OutputOrder_v2_52.Out", "box_Simple_Node_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_157_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_90();
    l0 = self.box_Delay_v5_157;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|604671860", "604671860", "MIS_330_B20", "box_Delay_v5_157.TimeElapsed", "box_ParticleSystem_v3_90.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_82_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_82;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1767912934", "1767912934", "MIS_330_B20", "box_Delay_v5_82.TimeElapsed", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Gate_v3_150_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_77();
    l0 = self.box_Gate_v3_150;
    l1 = self.box_Delay_v5_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1895819010", "1895819010", "MIS_330_B20", "box_Gate_v3_150.Out", "box_Delay_v5_77.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ForceInVehicle_v2_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_84();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|955743751", "955743751", "MIS_330_B20", "box_ForceInVehicle_v2_14.Out", "box_SetTimeOfDay_84.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_168_Started()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_85();
    l0 = self.box_PlayDialog_v6_168;
    l1 = self.box_IgnoreSignal_v2_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1947910962", "1947910962", "MIS_330_B20", "box_PlayDialog_v6_168.Started", "box_IgnoreSignal_v2_85.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MIS_330_Ammo_Regen_66_Used()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_150();
    l0 = self.box_MIS_330_Ammo_Regen_66;
    l1 = self.box_Gate_v3_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1533306094", "1533306094", "MIS_330_B20", "box_MIS_330_Ammo_Regen_66.Used", "box_Gate_v3_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_28();
    l0 = self.box_SpawnAI_24;
    l1 = self.box_SpawnAI_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|37403930", "37403930", "MIS_330_B20", "box_SpawnAI_24.Out", "box_SpawnAI_28.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_MultipleOR_60;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1859409260", "1859409260", "MIS_330_B20", "box_MultipleOR_60.Out", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_116_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_122();
    l0 = self.box_SoundModifier_v2_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1845367658", "1845367658", "MIS_330_B20", "box_OutputOrder_v2_116.Out", "box_SoundModifier_v2_122.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_116_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_110();
    l0 = self.box_SoundModifier_v2_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|579561741", "579561741", "MIS_330_B20", "box_OutputOrder_v2_116.Out", "box_SoundModifier_v2_110.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_116_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_102();
    l0 = self.box_SoundModifier_v2_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1309409934", "1309409934", "MIS_330_B20", "box_OutputOrder_v2_116.Out", "box_SoundModifier_v2_102.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_116_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_114();
    l0 = self.box_SoundModifier_v2_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1932175391", "1932175391", "MIS_330_B20", "box_OutputOrder_v2_116.Out", "box_SoundModifier_v2_114.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_116_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_117();
    l0 = self.box_SoundModifier_v2_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1763719510", "1763719510", "MIS_330_B20", "box_OutputOrder_v2_116.Out", "box_SoundModifier_v2_117.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_79_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_83();
    l0 = self.box_MultipleOR_79;
    l1 = self.box_Switch_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2039460835", "2039460835", "MIS_330_B20", "box_MultipleOR_79.Out", "box_Switch_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_162_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_159();
    l0 = self.box_GetPlayerGender_162;
    l1 = self.box_MIS_330_GiveDriverOutfit_159;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|845996966", "845996966", "MIS_330_B20", "box_GetPlayerGender_162.Female", "box_MIS_330_GiveDriverOutfit_159.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_162_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_159();
    l0 = self.box_GetPlayerGender_162;
    l1 = self.box_MIS_330_GiveDriverOutfit_159;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1842409415", "1842409415", "MIS_330_B20", "box_GetPlayerGender_162.Male", "box_MIS_330_GiveDriverOutfit_159.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_144_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_NoWeaponMode_v3_37();
    l0 = self.box_NoWeaponMode_v3_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1089267916", "1089267916", "MIS_330_B20", "box_UseContextualActionModifier_v3_144.Disabled", "box_NoWeaponMode_v3_37.Off", clone:GetLuaBox(), l0:GetLuaBox());
    -- Off
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_143_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetVehicleAsLeashAnchor_92();
    l0 = self.box_Delay_v5_143;
    l1 = self.box_SetVehicleAsLeashAnchor_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2057652849", "2057652849", "MIS_330_B20", "box_Delay_v5_143.TimeElapsed", "box_SetVehicleAsLeashAnchor_92.ClearMissionVehicle", l0:GetLuaBox(), l1:GetLuaBox());
    -- ClearMissionVehicle
    l1:Exec(0, params);
end;

function export:f_box_MIS_330_Car_Destruction_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_29();
    l0 = self.box_MIS_330_Car_Destruction_10;
    l1 = self.box_MIS_330_Car_Destruction_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|483392262", "483392262", "MIS_330_B20", "box_MIS_330_Car_Destruction_10.Out", "box_MIS_330_Car_Destruction_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_71;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1003339472", "1003339472", "MIS_330_B20", "box_CHEAT_SetEnvironmentTimeScale_71.Out", "box_OutputOrder_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_81_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_81;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|224453921", "224453921", "MIS_330_B20", "box_Delay_v5_81.TimeElapsed", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ActivityInitialized_5_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_5;
    l1 = self.box_PhoneCallExclusivityModifier_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2126157337", "2126157337", "MIS_330_B20", "box_ActivityInitialized_5.Out", "box_PhoneCallExclusivityModifier_183.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_PhoneCallExclusivityModifier_183_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_1();
    l0 = self.box_PhoneCallExclusivityModifier_183;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1049038160", "1049038160", "MIS_330_B20", "box_PhoneCallExclusivityModifier_183.Enabled", "box_GetPlayerGroup_v2_1.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_170_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1379178819", "1379178819", "MIS_330_B20", "box_OutputOrder_v2_170.Out", "box_MultipleOR_86.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_170_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGender_171();
    l0 = self.box_GetPlayerGender_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|388737166", "388737166", "MIS_330_B20", "box_OutputOrder_v2_170.Out", "box_GetPlayerGender_171.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_69_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_80();
    l0 = self.box_Delay_v5_69;
    l1 = self.box_Delay_v5_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1550861622", "1550861622", "MIS_330_B20", "box_Delay_v5_69.Started", "box_Delay_v5_80.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_69_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_69;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2069075243", "2069075243", "MIS_330_B20", "box_Delay_v5_69.TimeElapsed", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_76_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_76;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1329768717", "1329768717", "MIS_330_B20", "box_Delay_v5_76.TimeElapsed", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_20();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|532847236", "532847236", "MIS_330_B20", "box_SetContextualStrategy_35.Out", "box_MissionBlockLayer_20.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_189_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_210();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1278041507", "1278041507", "MIS_330_B20", "box_OutputOrder_v2_189.Out", "box_Simple_Node_210.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_189_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_330_ArenaWall_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|724716652", "724716652", "MIS_330_B20", "box_OutputOrder_v2_189.Out", "box_MIS_330_ArenaWall_46.Lower", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lower
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_189_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_67();
    l0 = self.box_Delay_v5_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1610212525", "1610212525", "MIS_330_B20", "box_OutputOrder_v2_189.Out", "box_Delay_v5_67.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_CoopActivePlayers_160_PlayerAdded()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_160_PlayerAdded();
    params = self:OnEnter_box_OutputOrder_v2_163();
    l0 = self.box_CoopActivePlayers_160;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1933181059", "1933181059", "MIS_330_B20", "box_CoopActivePlayers_160.PlayerAdded", "box_OutputOrder_v2_163.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_160_PlayerRemoved()
    self:OnExit_box_CoopActivePlayers_160_PlayerRemoved();
end;

function export:f_box_MissionBlockLayer_187_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_167();
    l0 = self.box_Delay_v5_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1768656619", "1768656619", "MIS_330_B20", "box_MissionBlockLayer_187.Activated", "box_Delay_v5_167.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_54_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_63();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1036248380", "1036248380", "MIS_330_B20", "box_UseContextualActionModifier_v3_54.Disabled", "box_UseContextualActionModifier_v3_63.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_91_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_196();
    l0 = self.box_Delay_v5_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|740576378", "740576378", "MIS_330_B20", "box_ParticleSystem_v3_91.Started", "box_Delay_v5_196.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_91_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_135();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|963421335", "963421335", "MIS_330_B20", "box_ParticleSystem_v3_91.Stopped", "box_ParticleSystem_v3_135.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OverrideMenuAccessibility_v2_165_Out()
    local l0, l1;
    l0 = self.box_OverrideMenuAccessibility_v2_165;
    l1 = self.box_CoopActivePlayers_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|861130047", "861130047", "MIS_330_B20", "box_OverrideMenuAccessibility_v2_165.Out", "box_CoopActivePlayers_160.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_137_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_65();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2139472169", "2139472169", "MIS_330_B20", "box_OutputOrder_v2_137.Out", "box_ParticleSystem_v3_65.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_137_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_142();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1868117897", "1868117897", "MIS_330_B20", "box_OutputOrder_v2_137.Out", "box_Simple_Node_142.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_54();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|991095846", "991095846", "MIS_330_B20", "box_OutputOrder_v2_22.Out", "box_UseContextualActionModifier_v3_54.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_330_Global_Racer_Handling_21();
    l0 = self.box_MIS_330_Global_Racer_Handling_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1518661211", "1518661211", "MIS_330_B20", "box_OutputOrder_v2_22.Out", "box_MIS_330_Global_Racer_Handling_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_330_Car_Destruction_10();
    l0 = self.box_MIS_330_Car_Destruction_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1959432564", "1959432564", "MIS_330_B20", "box_OutputOrder_v2_22.Out", "box_MIS_330_Car_Destruction_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_Secure_Area_v5_41_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_70();
    l0 = self.box_Brick_Secure_Area_v5_41;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|954454559", "954454559", "MIS_330_B20", "box_Brick_Secure_Area_v5_41.Success", "box_OutputOrder_v2_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_152_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_155();
    l0 = self.box_Delay_v5_152;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|317774125", "317774125", "MIS_330_B20", "box_Delay_v5_152.TimeElapsed", "box_MissionBlockLayer_155.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_43();
    l0 = self.box_SpawnAI_12;
    l1 = self.box_SpawnAI_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|97304899", "97304899", "MIS_330_B20", "box_SpawnAI_12.Out", "box_SpawnAI_43.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_188_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_151();
    l0 = self.box_Delay_v5_188;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|779451952", "779451952", "MIS_330_B20", "box_Delay_v5_188.TimeElapsed", "box_MissionBlockLayer_151.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|969869904", "969869904", "MIS_330_B20", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2055222636", "2055222636", "MIS_330_B20", "box_OutputOrder_v2_3.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_153_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_76();
    l0 = self.box_Gate_v3_153;
    l1 = self.box_Delay_v5_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|97590748", "97590748", "MIS_330_B20", "box_Gate_v3_153.Out", "box_Delay_v5_76.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MIS_330_Ammo_Regen_73_Used()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_153();
    l0 = self.box_MIS_330_Ammo_Regen_73;
    l1 = self.box_Gate_v3_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1303824968", "1303824968", "MIS_330_B20", "box_MIS_330_Ammo_Regen_73.Used", "box_Gate_v3_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_125_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_168();
    l0 = self.box_PlayDialog_v6_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1360420859", "1360420859", "MIS_330_B20", "box_OutputOrder_v2_125.Out", "box_PlayDialog_v6_168.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_125_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_128();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|559100014", "559100014", "MIS_330_B20", "box_OutputOrder_v2_125.Out", "box_Simple_Node_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_209();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2011670716", "2011670716", "MIS_330_B20", "box_OutputOrder_v2_125.Out", "box_Simple_Node_209.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_208();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|918011548", "918011548", "MIS_330_B20", "box_OutputOrder_v2_125.Out", "box_SoundMixing_208.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_177();
    l0 = self.box_Music_Quest_v2_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1769017956", "1769017956", "MIS_330_B20", "box_OutputOrder_v2_125.Out", "box_Music_Quest_v2_177.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_CoopActivePlayers_174_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_174_OnePlayer();
    l0 = self.box_CoopActivePlayers_174;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1693722403", "1693722403", "MIS_330_B20", "box_CoopActivePlayers_174.OnePlayer", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_174_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_173();
    l0 = self.box_CoopActivePlayers_174;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1375372736", "1375372736", "MIS_330_B20", "box_CoopActivePlayers_174.PlayerAdded", "box_Simple_Node_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_174_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_174_TwoPlayers();
    params = self:OnEnter_box_OutputOrder_v2_170();
    l0 = self.box_CoopActivePlayers_174;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1429259040", "1429259040", "MIS_330_B20", "box_CoopActivePlayers_174.TwoPlayers", "box_OutputOrder_v2_170.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_56();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1327570578", "1327570578", "MIS_330_B20", "box_OutputOrder_v2_47.Out", "box_Compare_Boolean_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_330_MissionLimits_87();
    l0 = self.box_MIS_330_MissionLimits_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|429554095", "429554095", "MIS_330_B20", "box_OutputOrder_v2_47.Out", "box_MIS_330_MissionLimits_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_47_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_165();
    l0 = self.box_OverrideMenuAccessibility_v2_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|518046715", "518046715", "MIS_330_B20", "box_OutputOrder_v2_47.Out", "box_OverrideMenuAccessibility_v2_165.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_47_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_176();
    l0 = self.box_Music_Quest_v2_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|983866407", "983866407", "MIS_330_B20", "box_OutputOrder_v2_47.Out", "box_Music_Quest_v2_176.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MIS_330_Global_Racer_Handling_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_44();
    l0 = self.box_MIS_330_Global_Racer_Handling_21;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|663790085", "663790085", "MIS_330_B20", "box_MIS_330_Global_Racer_Handling_21.Out", "box_AddActivityObjective_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_1_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NoWeaponMode_v3_36();
    l0 = self.box_NoWeaponMode_v3_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1614352572", "1614352572", "MIS_330_B20", "box_GetPlayerGroup_v2_1.Out", "box_NoWeaponMode_v3_36.On", clone:GetLuaBox(), l0:GetLuaBox());
    -- On
    l0:Exec(1, params);
end;

function export:f_box_NoWeaponMode_v3_37_OnLeave()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_35();
    l0 = self.box_NoWeaponMode_v3_37;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2951597", "2951597", "MIS_330_B20", "box_NoWeaponMode_v3_37.OnLeave", "box_SetContextualStrategy_35.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_SpawnAI_28;
    l1 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2020740406", "2020740406", "MIS_330_B20", "box_SpawnAI_28.Out", "box_SpawnAI_12.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_27();
    l0 = self.box_SpawnAI_25;
    l1 = self.box_SpawnAI_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2049955804", "2049955804", "MIS_330_B20", "box_SpawnAI_25.Out", "box_SpawnAI_27.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_11_InVehicle()
    self:OnExit_box_GetPawnVehicleInfo_11_InVehicle();
end;

function export:f_box_GetPawnVehicleInfo_11_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_11_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_11_Out()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_11_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_71();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|983792402", "983792402", "MIS_330_B20", "box_GetPawnVehicleInfo_11.Out", "box_CHEAT_SetEnvironmentTimeScale_71.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_193_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_82();
    l0 = self.box_Gate_v3_193;
    l1 = self.box_Delay_v5_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|903523766", "903523766", "MIS_330_B20", "box_Gate_v3_193.Out", "box_Delay_v5_82.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v6_34_Enabled()
    self:OnExit_box_GroupSizeListener_v6_34_Enabled();
end;

function export:f_box_GroupSizeListener_v6_34_MemberAdded()
    self:OnExit_box_GroupSizeListener_v6_34_MemberAdded();
end;

function export:f_box_GroupSizeListener_v6_34_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_34_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_34_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_34_MemberRemoved();
    l0 = self.box_GroupSizeListener_v6_34;
    l1 = self.box_OnceOnly_v3_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1445268213", "1445268213", "MIS_330_B20", "box_GroupSizeListener_v6_34.MemberRemoved", "box_OnceOnly_v3_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_34_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_34_MemberSpawned();
end;

function export:f_box_MIS_330_Car_Destruction_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_32();
    l0 = self.box_MIS_330_Car_Destruction_31;
    l1 = self.box_MIS_330_Car_Destruction_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|560838611", "560838611", "MIS_330_B20", "box_MIS_330_Car_Destruction_31.Out", "box_MIS_330_Car_Destruction_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_103_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_Delay_v5_103;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2066511083", "2066511083", "MIS_330_B20", "box_Delay_v5_103.TimeElapsed", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_330_ArenaWall_184_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_164();
    l0 = self.box_MIS_330_ArenaWall_184;
    l1 = self.box_GunsForHireSystemModifier_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|508565383", "508565383", "MIS_330_B20", "box_MIS_330_ArenaWall_184.Out", "box_GunsForHireSystemModifier_164.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_SetVehicleAsLeashAnchor_92_OnMissionVehicleCleared()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_125();
    l0 = self.box_SetVehicleAsLeashAnchor_92;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2037831330", "2037831330", "MIS_330_B20", "box_SetVehicleAsLeashAnchor_92.OnMissionVehicleCleared", "box_OutputOrder_v2_125.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_330_Ammo_Regen_74_Used()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_190();
    l0 = self.box_MIS_330_Ammo_Regen_74;
    l1 = self.box_Gate_v3_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|655355918", "655355918", "MIS_330_B20", "box_MIS_330_Ammo_Regen_74.Used", "box_Gate_v3_190.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_147_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_148();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1630931224", "1630931224", "MIS_330_B20", "box_ParticleSystem_v3_147.Stopped", "box_ParticleSystem_v3_148.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_330_Ammo_Regen_75_Used()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_193();
    l0 = self.box_MIS_330_Ammo_Regen_75;
    l1 = self.box_Gate_v3_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1959839715", "1959839715", "MIS_330_B20", "box_MIS_330_Ammo_Regen_75.Used", "box_Gate_v3_193.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_154_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_146();
    l0 = self.box_Delay_v5_154;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|737113834", "737113834", "MIS_330_B20", "box_Delay_v5_154.TimeElapsed", "box_ParticleSystem_v3_146.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|@Big_Fireworks_Sound_0");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|@Big_Fireworks_Sound_1");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|@Big_Fireworks_Sound_2");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|@Crowd_Cheer_Burst_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_127_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|@FlashSmoke_Fireworks_Sound_0");
    l0:SetConnections({
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|@n_AmmoDrop");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_48_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|@n_Clean");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_94_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|@n_disableFireworksLayers");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_210_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|@n_killFireworks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_93_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|@n_victoryFireworks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_209_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|@Start_Crowd_Cheer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_126_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|@Start_Crowd_Cheer_Start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_129_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|@Start_Idle_Crowd_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_212_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|@Stop_Crowd_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_128_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|5518567");
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
                [0] = self.f_box_OutputOrder_v2_115_Out_0,
                [1] = self.f_box_OutputOrder_v2_115_Out_1,
                [2] = self.f_box_OutputOrder_v2_115_Out_2,
                [3] = self.f_box_OutputOrder_v2_115_Out_3,
                [4] = self.f_box_OutputOrder_v2_115_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|7454592");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_148_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108596765260260842",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|10845192");
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

function export:OnEnter_box_MissionBlockLayer_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|24538908");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_156_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "36167512313974719",
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_29()
    local params;
    params = {
        -- Driver,
        [0] = "2107673371696184549",
        -- RacerGroup,
        [1] = "#8AE41F57",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_98()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516295122098034",
        -- SoundId,
        [1] = "173225927",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|65573451");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_135_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_135_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108777160989753240",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_197()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_51()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_196()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|86167281");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_58_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108449418505110818",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_114()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516303959496566",
        -- SoundId,
        [1] = "4194450371",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_95()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|106605198");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SoundMixing_207_Out,
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/MIS_330_Race",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_102()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516295122098034",
        -- SoundId,
        [1] = "4194450371",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_38()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516303959496566",
        -- SoundId,
        [1] = "173225927",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|115372916");
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
                [0] = self.f_box_OutputOrder_v2_134_Out_0,
                [1] = self.f_box_OutputOrder_v2_134_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_201()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516303959496566",
        -- SoundId,
        [1] = "3303497937",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|128084969");
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
                [0] = self.f_box_OutputOrder_v2_100_Out_0,
                [1] = self.f_box_OutputOrder_v2_100_Out_1,
                [2] = self.f_box_OutputOrder_v2_100_Out_2,
                [3] = self.f_box_OutputOrder_v2_100_Out_3,
                [4] = self.f_box_OutputOrder_v2_100_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|154304534");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_151_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160313074554971",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|178899637");
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

function export:OnEnter_box_Simple_Node_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|237224120");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_96()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|241389713");
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
                [0] = self.f_box_OutputOrder_v2_199_Out_0,
                [1] = self.f_box_OutputOrder_v2_199_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|250751064");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_53_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108449423460681002",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|269947985");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_64_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108679325820662820",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_118()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516308441110392",
        -- SoundId,
        [1] = "173225927",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_DisplayTextModifier_v6_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayTextModifier_v6_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|283449743");
    l0:SetConnections({
    });
    params = {
        -- displayOverCinematic,
        [0] = false,
        -- displayTimer,
        [1] = 12,
        -- forceInstantDisplay,
        [2] = true,
        -- isKarmaEvent,
        [3] = false,
        -- textId,
        [4] = {
            section = "Warnings",
            item = "MIS_330_B20_Ammo",
            id = "1021710",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_39()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516174751864686",
        -- SoundId,
        [1] = "1536744696",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|311975696");
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
                [0] = self.f_box_OutputOrder_v2_203_Out_0,
                [1] = self.f_box_OutputOrder_v2_203_Out_1,
                [2] = self.f_box_OutputOrder_v2_203_Out_2,
                [3] = self.f_box_OutputOrder_v2_203_Out_3,
                [4] = self.f_box_OutputOrder_v2_203_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|340789143");
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

function export:OnEnter_box_SoundModifier_v2_121()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516308441110392",
        -- SoundId,
        [1] = "1714860635",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_109()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516298404140916",
        -- SoundId,
        [1] = "1714860635",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_108()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516295122098034",
        -- SoundId,
        [1] = "1714860635",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|393557274");
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
                [0] = self.f_box_OutputOrder_v2_124_Out_0,
                [1] = self.f_box_OutputOrder_v2_124_Out_1,
                [2] = self.f_box_OutputOrder_v2_124_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|400580212");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_45_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_330_B20_OBJ_Eliminate",
            id = "1000683",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|409686296");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_90_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_90_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108776807418314620",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_85()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_59()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_171()
    local params, l0;
    l0 = self.box_CoopActivePlayers_174;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_Switch_83()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_172()
    local params, l0;
    l0 = self.box_CoopActivePlayers_174;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_77()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|540836280");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_44_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_330_B20_OBJ_Eliminate",
            id = "1000683",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|549665066");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_56_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_56_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_isReloaded,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|553367617");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_62_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108679324520428576",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|586467075");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_155_Activated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_155_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160313074554971",
    };
    return params;
end;

function export:OnEnter_box_MIS_330_GiveDriverOutfit_169()
    local params, l0;
    l0 = self.box_CoopActivePlayers_174;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_167()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|620991844");
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
                [0] = self.f_box_OutputOrder_v2_70_Out_0,
                [1] = self.f_box_OutputOrder_v2_70_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_202()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516308441110392",
        -- SoundId,
        [1] = "3303497937",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|641115815");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_89_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_89_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108777073882447752",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|655540057");
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

function export:OnEnter_box_OutputOrder_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|657098773");
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
                [0] = self.f_box_OutputOrder_v2_106_Out_0,
                [1] = self.f_box_OutputOrder_v2_106_Out_1,
                [2] = self.f_box_OutputOrder_v2_106_Out_2,
                [3] = self.f_box_OutputOrder_v2_106_Out_3,
                [4] = self.f_box_OutputOrder_v2_106_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|658618999");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
                [2] = self.f_box_OutputOrder_v2_33_Out_2,
            },
            count = 3,
        },
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|661869778");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|663483918");
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
                [0] = self.f_box_OutputOrder_v2_195_Out_0,
                [1] = self.f_box_OutputOrder_v2_195_Out_1,
                [2] = self.f_box_OutputOrder_v2_195_Out_2,
                [3] = self.f_box_OutputOrder_v2_195_Out_3,
                [4] = self.f_box_OutputOrder_v2_195_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_330_MissionLimits_87()
    local params;
    params = {
        -- Interior Limit,
        [0] = true,
        -- Sas Limit,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|686388392");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160318045155909",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_80()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_43()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109582169239248120",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_72()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gp_FriendlyPlayers,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109660995252155551",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|703285888");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_63_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108679321330660380",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_55()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|709593628");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SoundMixing_208_Out,
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/MIS_330_Race",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|723826903");
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
        [8] = "MIS_330_B20 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_112()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516303959496566",
        -- SoundId,
        [1] = "3792324399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_36()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_110()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516298404140916",
        -- SoundId,
        [1] = "4194450371",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_67()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|779886836");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_145_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108777023515148160",
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_30()
    local params;
    params = {
        -- Driver,
        [0] = "2107673366715448415",
        -- RacerGroup,
        [1] = "#8AE41F57",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_120()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516303959496566",
        -- SoundId,
        [1] = "1714860635",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_23()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107673352442231027",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_177()
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
        [6] = "2845456904",
        -- StopEvent,
        [7] = "4215135172",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_104()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516298404140916",
        -- SoundId,
        [1] = "3792324399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_15()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107673451526373025",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_105()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516290246219632",
        -- SoundId,
        [1] = "1714860635",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_GiveDriverOutfit_159()
    local params, l0;
    l0 = self.box_CoopActivePlayers_160;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|836204568");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_84_Out,
    });
    params = {
        -- Hour,
        [0] = 3,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|879468154");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_88_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_88_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108777020023390078",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|914040120");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_57_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108449413035738400",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|921387150");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_146_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108596595747459837",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|924624217");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_8_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160318045155909",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_190()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_204()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516295122098034",
        -- SoundId,
        [1] = "3303497937",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|955846215");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_107()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516298404140916",
        -- SoundId,
        [1] = "173225927",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1020849124");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160313059206630",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_176()
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
        [6] = "2845456904",
        -- StopEvent,
        [7] = "4215135172",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107673451538955946",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1079154591");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "36167512313974719",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_27()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107673366700768340",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_101()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516290246219632",
        -- SoundId,
        [1] = "3792324399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1124312970");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "36167517156273628",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1144495273");
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

function export:OnEnter_box_Delay_v5_157()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_82()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_150()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1193720494");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceInVehicle_v2_14_Out,
    });
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- SeatType,
        [1] = 1,
        -- vehicleEntity,
        [2] = "2107673451538955946",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_168()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "529584654",
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Ammo_Regen_66()
    local params;
    params = {
        -- Amplitude,
        [0] = 190,
        -- Archetype,
        [1] = "9015342416476679",
        -- ParticleSystem,
        [2] = "2108596595747459837",
        -- Target,
        [3] = "2108402440398190942",
        -- Trigger,
        [4] = "2108402399132531022",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_24()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107673371117370550",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1279089187");
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
                [0] = self.f_box_OutputOrder_v2_116_Out_0,
                [1] = self.f_box_OutputOrder_v2_116_Out_1,
                [2] = self.f_box_OutputOrder_v2_116_Out_2,
                [3] = self.f_box_OutputOrder_v2_116_Out_3,
                [4] = self.f_box_OutputOrder_v2_116_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1314029198");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "36167517299904169",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_162()
    local params, l0;
    l0 = self.box_CoopActivePlayers_160;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1377665938");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_144_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108679327104119848",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_143()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_10()
    local params;
    params = {
        -- Driver,
        [0] = "2107673371132050625",
        -- RacerGroup,
        [1] = "#8AE41F57",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_71()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_81()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1522544243");
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

function export:OnEnter_box_SoundModifier_v2_119()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516174751864686",
        -- SoundId,
        [1] = "2826918513",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_69()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_76()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1571866846");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_35_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2107673376733543680",
        -- Group,
        [1] = "2108641042948426572",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1593840195");
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
                [0] = self.f_box_OutputOrder_v2_189_Out_0,
                [1] = self.f_box_OutputOrder_v2_189_Out_1,
                [2] = self.f_box_OutputOrder_v2_189_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_122()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516290246219632",
        -- SoundId,
        [1] = "4194450371",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1633805028");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_187_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160313059206630",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1634551693");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_54_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108679312356946968",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1654475233");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_91_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_91_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108777077139324810",
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_165()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = true,
        -- AvatarCustomizationMenuEnabled,
        [2] = false,
        -- ChallengeMenuEnabled,
        [3] = true,
        -- HomebaseMenuEnabled,
        [4] = true,
        -- LootMenuEnabled,
        [5] = true,
        -- OnlineMenuEnabled,
        [6] = true,
        -- PerksMenuEnabled,
        [7] = true,
        -- SquadMenuEnabled,
        [8] = true,
        -- WorldmapMenuEnabled,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_158()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "592319285",
    };
    return params;
end;

function export:OnEnter_box_MIS_320_B20_AnnouncerCallouts_42()
    local params;
    params = {
        -- Player Car,
        [0] = self.e_PlayerCar,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1720316132");
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
                [0] = self.f_box_OutputOrder_v2_137_Out_0,
                [1] = self.f_box_OutputOrder_v2_137_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1727430721");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
                [2] = self.f_box_OutputOrder_v2_22_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Secure_Area_v5_41()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bRequiresObjective,
        [1] = false,
        -- gEnemyGroup,
        [3] = "#8AE41F57",
        -- Objective,
        [4] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_Secure_Area",
            id = "376594",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_152()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_12()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109371051912737200",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_188()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1752910849");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_153()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Ammo_Regen_73()
    local params;
    params = {
        -- Amplitude,
        [0] = 240,
        -- Archetype,
        [1] = "9015342416476679",
        -- ParticleSystem,
        [2] = "2108596712493816953",
        -- Target,
        [3] = "2108402913662474012",
        -- Trigger,
        [4] = "2108402909682079504",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1758654522");
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
                [0] = self.f_box_OutputOrder_v2_125_Out_0,
                [1] = self.f_box_OutputOrder_v2_125_Out_1,
                [2] = self.f_box_OutputOrder_v2_125_Out_2,
                [3] = self.f_box_OutputOrder_v2_125_Out_3,
                [4] = self.f_box_OutputOrder_v2_125_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1798567302");
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
                [0] = self.f_box_OutputOrder_v2_47_Out_0,
                [1] = self.f_box_OutputOrder_v2_47_Out_1,
                [2] = self.f_box_OutputOrder_v2_47_Out_2,
                [3] = self.f_box_OutputOrder_v2_47_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1821753178");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160313074554971",
    };
    return params;
end;

function export:OnEnter_box_MIS_330_GiveDriverOutfit_175()
    local params, l0;
    l0 = self.box_CoopActivePlayers_174;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Global_Racer_Handling_21()
    local params;
    params = {
        -- RacerGroup,
        [0] = "#8AE41F57",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1873840740");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_37()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_28()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107673371681504474",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_25()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107673366279240750",
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1915757784");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_11_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_11_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_113()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516295122098034",
        -- SoundId,
        [1] = "3792324399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_193()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_34()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#8AE41F57",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_99()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516308441110392",
        -- SoundId,
        [1] = "3792324399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1960575552");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108596765419644396",
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_31()
    local params;
    params = {
        -- Driver,
        [0] = "2107673366293920825",
        -- RacerGroup,
        [1] = "#8AE41F57",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_103()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_32()
    local params;
    params = {
        -- Driver,
        [0] = "2107673363913653269",
        -- RacerGroup,
        [1] = "#8AE41F57",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|1989555593");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108449577693631065",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_206()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516298404140916",
        -- SoundId,
        [1] = "3303497937",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2030994531");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "36167517299904169",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_111()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516290246219632",
        -- SoundId,
        [1] = "173225927",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_164()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SetVehicleAsLeashAnchor_92()
    local params;
    params = {
        -- targetVehicleEntity,
        [0] = self.e_PlayerCar,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_117()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516308441110392",
        -- SoundId,
        [1] = "4194450371",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_205()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516290246219632",
        -- SoundId,
        [1] = "3303497937",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Ammo_Regen_74()
    local params;
    params = {
        -- Amplitude,
        [0] = 170,
        -- Archetype,
        [1] = "9015342416476679",
        -- ParticleSystem,
        [2] = "2108596765260260842",
        -- Target,
        [3] = "2108402914107070240",
        -- Trigger,
        [4] = "2108402910042789652",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_B20|2117416643");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_147_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108596712493816953",
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Ammo_Regen_75()
    local params;
    params = {
        -- Amplitude,
        [0] = 235,
        -- Archetype,
        [1] = "9015342416476679",
        -- ParticleSystem,
        [2] = "2108596765419644396",
        -- Target,
        [3] = "2108402914354534180",
        -- Trigger,
        [4] = "2108402910399305496",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_154()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_61_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isReloaded = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_160_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_160;
    l1 = self.box_GetPlayerGender_162;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_MIS_330_GiveDriverOutfit_159;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_160_PlayerRemoved()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_160;
    l1 = self.box_GetPlayerGender_162;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_MIS_330_GiveDriverOutfit_159;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_174_OnePlayer()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_174;
    l1 = self.box_MIS_330_GiveDriverOutfit_175;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_GetPlayerGender_172;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_174_TwoPlayers()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_174;
    l1 = self.box_MIS_330_GiveDriverOutfit_175;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_GetPlayerGender_172;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_MIS_330_GiveDriverOutfit_169;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(1);
    l1 = self.box_GetPlayerGender_171;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayerGroup_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gp_FriendlyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_11_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.e_PlayerCar = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_11_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.e_PlayerCar = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.e_PlayerCar = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GroupSizeListener_v6_34_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_34;
    self.i_driversKilled = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_34_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_34;
    self.i_driversKilled = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_34_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_34;
    self.i_driversKilled = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_34_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_34;
    self.i_driversKilled = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_34_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_34;
    self.i_driversKilled = l0:GetDataOutValue(1);
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
